//! hoi-map — карта мира в стиле HOI4, построенная на данных AOH3 (Earth3).
//!
//! Загружает компактный бинарный формат `.mapbin` (см. tools/mapconv.py):
//! провинции, штаты, террейн-типы, смежность. Никаких зависимостей от времени рантинга —
//! чистые данные + индексация, готовые для растеризатора и симуляции.

use std::path::Path;

use thiserror::Error;

#[derive(Debug, Error)]
pub enum MapError {
    #[error("io: {0}")]
    Io(#[from] std::io::Error),
    #[error("bad magic: expected MAPB")]
    BadMagic,
    #[error("unsupported version {0}")]
    UnsupportedVersion(u32),
    #[error("truncated mapbin at offset {0}")]
    Truncated(usize),
}

pub type ProvinceId = u16;
pub type StateId = u16;

/// Провинция (аналог province из definition.csv HOI4, данные из Earth3).
#[derive(Debug, Clone, Copy)]
pub struct Province {
    pub id: ProvinceId,
    pub terrain: u8,
    pub owner: StateId, // 0 = не занята (в истории будет владелец-страна)
    pub coastal: bool,
    pub lake: bool,
    pub center: [u16; 2], // пиксельный центр на карте map_w×map_h
    pub continent: u8,
    pub region: u16,
}

/// Штат — кластер провинций (в Earth3 это поле `region`; сверяется с states/*.txt HOI4).
#[derive(Debug, Clone)]
pub struct State {
    pub id: StateId,
    pub name: String,
    pub province_count: u16,
}

/// Вся карта: статические данные, неизменяемые после загрузки.
#[derive(Debug, Clone)]
pub struct WorldMap {
    pub width: u16,
    pub height: u16,
    pub provinces: Vec<Province>,
    pub states: Vec<State>,
    pub terrain_names: Vec<String>,
    /// CSR-смежность: neighbors_start[p]..neighbors_start[p+1] индексы в neighbors.
    pub neighbors_start: Vec<u32>,
    pub neighbors: Vec<ProvinceId>,
}

impl WorldMap {
    pub fn load(path: impl AsRef<Path>) -> Result<Self, MapError> {
        let bytes = std::fs::read(path)?;
        Self::parse(&bytes)
    }

    pub fn parse(b: &[u8]) -> Result<Self, MapError> {
        let mut o = 0usize;
        macro_rules! rd {
            ($fmt:literal) => {{
                let size = match $fmt { "I" => 4, "H" => 2, "B" => 1, _ => unreachable!() };
                if o + size > b.len() { return Err(MapError::Truncated(o)); }
                let v: u32 = match $fmt {
                    "I" => u32::from_le_bytes(b[o..o + 4].try_into().unwrap()),
                    "H" => u16::from_le_bytes(b[o..o + 2].try_into().unwrap()).into(),
                    "B" => b[o] as u32,
                    _ => unreachable!(),
                };
                o += size;
                v
            }};
        }

        if b.len() < 8 || &b[0..4] != b"MAPB" {
            return Err(MapError::BadMagic);
        }
        o = 4;
        let ver = rd!("I");
        if ver != 1 {
            return Err(MapError::UnsupportedVersion(ver));
        }
        let width = rd!("H") as u16;
        let height = rd!("H") as u16;

        let n = rd!("I") as usize;
        if n > b.len() * 2 { return Err(MapError::Truncated(o)); } // защита от битых заголовков (OOM-crash)
        let mut provinces = Vec::with_capacity(n.min(b.len()));
        for _ in 0..n {
            let id = rd!("H") as u16;
            let terrain = rd!("B") as u8;
            let owner = rd!("H") as u16;
            let coastal = rd!("B") != 0;
            let lake = rd!("B") != 0;
            let cx = rd!("H") as u16;
            let cy = rd!("H") as u16;
            let continent = rd!("B") as u8;
            let region = rd!("H") as u16;
            provinces.push(Province { id, terrain, owner, coastal, lake, center: [cx, cy], continent, region });
        }

        let ns = rd!("I") as usize;
        if ns > b.len() { return Err(MapError::Truncated(o)); }
        let mut raw_states = Vec::with_capacity(ns.min(b.len()));
        for _ in 0..ns {
            let id = rd!("H") as u16;
            let name_off = rd!("I") as usize;
            let pc = rd!("H") as u16;
            raw_states.push((id, name_off, pc));
        }
        let toff = rd!("I") as usize;

        let adj_n = rd!("I") as usize;
        let offs_n = rd!("I") as usize;
        if adj_n > b.len() * 2 || offs_n > b.len() { return Err(MapError::Truncated(o)); }
        let mut neighbors = Vec::with_capacity(adj_n.min(b.len()));
        for _ in 0..adj_n {
            neighbors.push(rd!("H") as u16);
        }
        let mut neighbors_start = Vec::with_capacity(offs_n);
        for _ in 0..offs_n {
            neighbors_start.push(rd!("I"));
        }

        let str_len = rd!("I") as usize;
        if o + str_len > b.len() { return Err(MapError::Truncated(o)); }
        let strings = &b[o..o + str_len];
        let get_str = |off: usize| -> String {
            let s = &strings[off..];
            let end = s.iter().position(|&c| c == 0).unwrap_or(s.len());
            String::from_utf8_lossy(&s[..end]).into_owned()
        };

        let states = raw_states
            .into_iter()
            .map(|(id, noff, pc)| State { id, name: get_str(noff), province_count: pc })
            .collect();
        let terrain_names = get_str(toff)
            .split('\x1e')
            .map(str::to_string)
            .collect();

        Ok(WorldMap { width, height, provinces, states, terrain_names, neighbors_start, neighbors })
    }

    #[inline]
    pub fn province(&self, id: ProvinceId) -> Option<&Province> {
        self.provinces.get(id as usize)
    }

    /// Соседи провинции по графу смежности.
    pub fn neighbors_of(&self, id: ProvinceId) -> &[ProvinceId] {
        let p = id as usize;
        if p + 1 >= self.neighbors_start.len() {
            return &[];
        }
        let (s, e) = (self.neighbors_start[p] as usize, self.neighbors_start[p + 1] as usize);
        &self.neighbors[s.min(self.neighbors.len())..e.min(self.neighbors.len())]
    }

    pub fn state_of(&self, id: ProvinceId) -> Option<&State> {
        let st = self.province(id)?.owner;
        if st == 0 {
            return None;
        }
        self.states.iter().find(|s| s.id == st)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn parse_real_mapbin() {
        let path = concat!(env!("CARGO_MANIFEST_DIR"), "/../../assets/map/world.mapbin");
        let m = WorldMap::load(path).expect("world.mapbin must load");
        assert_eq!(m.provinces.len(), 13892);
        assert!(!m.states.is_empty());
        assert_eq!(m.terrain_names.first().map(String::as_str), Some("Sea"));
        // все ссылки валидны
        for p in &m.provinces {
            assert!(p.terrain < m.terrain_names.len() as u8, "terrain idx {}", p.terrain);
        }
    }

    #[test]
    fn bad_magic_rejected() {
        assert!(matches!(WorldMap::parse(b"XXXX...."), Err(MapError::BadMagic)));
    }
}
