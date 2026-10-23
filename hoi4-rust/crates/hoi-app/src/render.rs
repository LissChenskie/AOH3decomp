//! render — собственный 2D-растеризатор карты в стиле AOH3/HOI4 (без внешних зависимостей).

use hoi_map::WorldMap;

/// Хелпер для bin-целей: загрузка с понятной ошибкой.
pub fn load_map(path: &str) -> WorldMap {
    WorldMap::load(path).expect("failed to load world.mapbin")
}

pub const TERRAIN_COLORS: [[u8; 3]; 14] = [
    [90, 130, 180],  // Sea
    [120, 170, 90],  // Plains
    [225, 205, 110], // Desert
    [200, 185, 100], // Drylands
    [60, 120, 55],   // Forest
    [140, 135, 120], // Hills
    [30, 90, 40],    // Jungle
    [80, 130, 140],  // Marsh
    [110, 105, 100], // Mountains
    [170, 190, 110], // Steppes
    [210, 160, 80],  // Savanna
    [230, 235, 235], // Tundra
    [70, 130, 75],   // Taiga
    [200, 170, 100], // Semidesert
];

pub struct Frame {
    pub w: usize,
    pub h: usize,
    pub px: Vec<u32>, // 0xFFRRGGBB
}

impl Frame {
    pub fn new(w: usize, h: usize, fill: u32) -> Self {
        Frame { w, h, px: vec![fill; w * h] }
    }
    #[inline]
    pub fn set(&mut self, x: usize, y: usize, c: u32) {
        if x < self.w && y < self.h {
            self.px[y * self.w + x] = c;
        }
    }
    #[inline]
    pub fn fill_rect(&mut self, x0: usize, y0: usize, x1: usize, y1: usize, c: u32) {
        for py in y0..y1.min(self.h) {
            let row = py * self.w;
            for px in x0..x1.min(self.w) {
                self.px[row + px] = c;
            }
        }
    }
    /// Экспорт в RGB565 (формат Android-поверхности RGBA_565 little-endian).
    pub fn to_rgb565(&self) -> Vec<u8> {
        let mut out = Vec::with_capacity(self.w * self.h * 2);
        for &p in &self.px {
            let r = (p >> 16) & 0xFF;
            let g = (p >> 8) & 0xFF;
            let b = p & 0xFF;
            let v = ((r >> 3) << 11) | ((g >> 2) << 5) | (b >> 3);
            out.push((v & 0xFF) as u8);
            out.push((v >> 8) as u8);
        }
        out
    }
    /// Экспорт в BMP 24bpp (для desktop-превью).
    pub fn to_bmp(&self) -> Vec<u8> {
        let row = self.w * 3;
        let data = row * self.h;
        let mut b = Vec::with_capacity(54 + data);
        b.extend_from_slice(b"BM");
        b.extend_from_slice(&((54 + data) as u32).to_le_bytes());
        b.extend_from_slice(&[0u8; 4]);
        b.extend_from_slice(&54u32.to_le_bytes());
        b.extend_from_slice(&40u32.to_le_bytes());
        b.extend_from_slice(&(self.w as i32).to_le_bytes());
        b.extend_from_slice(&(self.h as i32).to_le_bytes());
        b.extend_from_slice(&1u16.to_le_bytes());
        b.extend_from_slice(&24u16.to_le_bytes());
        b.extend_from_slice(&[0u8; 24]);
        for y in (0..self.h).rev() {
            for x in 0..self.w {
                let p = self.px[y * self.w + x];
                b.push((p & 0xFF) as u8);
                b.push(((p >> 8) & 0xFF) as u8);
                b.push(((p >> 16) & 0xFF) as u8);
            }
        }
        b
    }
}

// ---------- растровый шрифт 7x7 (латиница + кириллица), hex = 7 байт по строкам ----------
fn build_font() -> std::collections::HashMap<char, [u8; 7]> {
    const F: &[(&str, &str)] = &[
        (" ", "00000000000000"), ("!", "0020202020002000"), (".", "0000000000606000"),
        (",", "0000000060602000"), ("-", "0000E0000000000"), ("/", "001020408102040"),
        ("(", "004081010100804"), (")", "020408081010204"), (":", "000060000060000"),
        ("'", "020200000000000"), ("?", "3C4204081000100"), ("%", "222408104884000"),
        ("+", "000040E04000000"), ("=", "00E0000E0000000"), ("\"", "505000000000000"),
        ("_", "000000000000FF0"), ("#", "2A7E2A2A7E2A000"),
        ("0", "3C425A66423C000"), ("1", "1030101010103C0"), ("2", "3C42040810207E0"),
        ("3", "3C42041C02423C0"), ("4", "081828487E08080"), ("5", "7E40780402423C0"),
        ("6", "3C42407846423C0"), ("7", "7E4408101010100"), ("8", "3C42423C42423C0"),
        ("9", "3C42423E06423C0"),
        ("A", "182442427E42420"), ("B", "7C427C4242427C0"), ("C", "3C42404040423C0"),
        ("D", "784442424244780"), ("E", "7E40784040407E0"), ("F", "7E4078404040400"),
        ("G", "3C42405A42423C0"), ("H", "42427E424242420"), ("I", "3C10101010103C0"),
        ("J", "1E0808084848300"), ("K", "44485060584C440"), ("L", "4040404040407E0"),
        ("M", "42665A424242420"), ("N", "4262524A4642420"), ("O", "3C42424242423C0"),
        ("P", "7C427C404040400"), ("Q", "3C42425A46423C0"), ("R", "7C427C504C42420"),
        ("S", "3E403C02423C0"), ("T", "7F1010101010100"), ("U", "4242424242423C0"),
        ("V", "424242424224180"), ("W", "4242425A6642420"), ("X", "422418182442420"),
        ("Y", "442818101010100"), ("Z", "7E04081020407E0"),
        ("А", "182442427E42420"), ("Б", "7C407C4242427C0"), ("В", "7C427C4242427C0"),
        ("Г", "7E4040404040400"), ("Д", "1E12121212127F8"), ("Е", "7E40784040407E0"),
        ("Ж", "DB933E93DB93DB0"), ("З", "3C420C0242423C0"), ("И", "42464A526242420"),
        ("Й", "5A464A526242420"), ("К", "44485060584C440"), ("Л", "0E12121212127F8"),
        ("М", "42665A424242420"), ("Н", "42427E424242420"), ("О", "3C42424242423C0"),
        ("П", "7E1212121212120"), ("Р", "7C427C404040400"), ("С", "3C42404040423C0"),
        ("Т", "7F1010101010100"), ("У", "444448304444380"), ("Ф", "08FE121212FE080"),
        ("Х", "422418182442420"), ("Ц", "52525252525F420"), ("Ч", "42423E020202020"),
        ("Ш", "5252525252527F0"), ("Щ", "52525252525F5A0"), ("Ъ", "247C203C22223C0"),
        ("Ы", "4A4A4A7A42427C0"), ("Ь", "40407C4242427C0"), ("Э", "3C027E0202423C0"),
        ("Ю", "DB933E93DB93DB0"), ("Я", "3E427E424242420"),
    ];
    let mut m = std::collections::HashMap::new();
    for (ch, hex) in F {
        let c = ch.chars().next().unwrap();
        let mut rows = [0u8; 7];
        for i in 0..7 {
            let s = &hex[i * 2..(i * 2 + 2).min(hex.len())];
            rows[i] = u8::from_str_radix(s, 16).unwrap_or(0);
        }
        m.insert(c, rows);
    }
    m
}

fn glyph_rows(ch: char) -> Option<[u8; 7]> {
    static FONT: std::sync::OnceLock<std::collections::HashMap<char, [u8; 7]>> = std::sync::OnceLock::new();
    FONT.get_or_init(build_font).get(&ch.to_ascii_uppercase()).copied()
}

/// Нарисовать текст (шкала = размер пикселя). Возвращает конечный x.
pub fn draw_text(fr: &mut Frame, x: usize, y: usize, text: &str, color: u32, scale: usize) -> usize {
    let mut cx = x;
    for ch in text.chars() {
        if let Some(rows) = glyph_rows(ch) {
            for (ry, byte) in rows.iter().enumerate() {
                for bit in 0..7 {
                    if (byte >> (6 - bit)) & 1 == 1 {
                        fr.fill_rect(cx + bit * scale, y + ry * scale,
                                     cx + bit * scale + scale, y + ry * scale + scale, color);
                    }
                }
            }
        }
        cx += 8 * scale;
    }
    cx
}

/// Растеризация карты мира. mode: 0=terrain, 1=political (штаты), 2=supply-подобная (континенты).
pub fn render_map(fr: &mut Frame, m: &WorldMap, mode: u8) {
    let n = m.provinces.len();
    let cols = ((n as f64).sqrt().ceil() as usize).max(1);
    let rows = (n + cols - 1) / cols;
    let tw = (m.width as usize / cols).max(1);
    let th = (m.height as usize / rows).max(1);
    let sx = fr.w as f64 / m.width as f64;
    let sy = fr.h as f64 / m.height as f64;

    // детерминированные цвета штатов
    let mut state_color: Vec<u32> = Vec::with_capacity(m.states.len() + 1);
    for st in &m.states {
        let h = (st.id as u32).wrapping_mul(2654435761);
        let r = ((h >> 16) & 0x7F) + 0x60;
        let g = ((h >> 8) & 0x7F) + 0x60;
        let b = (h & 0x7F) + 0x60;
        state_color.push(0xFF000000 | (r << 16) | (g << 8) | b);
    }
    state_color.resize(m.states.len().max(1) + 1, 0xFF404040);

    let cont_colors: [u32; 7] = [
        0xFFD8B060, 0xFF90C878, 0xFF78B8D8, 0xFFD89090, 0xFFB090D8, 0xFF90D8B8, 0xFFD8D090,
    ];

    for (idx, p) in m.provinces.iter().enumerate() {
        let gx = (p.center[0] as usize / tw).min(cols - 1);
        let gy = (p.center[1] as usize / th).min(rows - 1);
        let c = match mode {
            1 => state_color.get(p.owner as usize).copied().unwrap_or(0xFF303030),
            2 => cont_colors[p.continent as usize % cont_colors.len()],
            _ => {
                let t = TERRAIN_COLORS[p.terrain as usize % TERRAIN_COLORS.len()];
                0xFF000000 | ((t[0] as u32) << 16) | ((t[1] as u32) << 8) | t[2] as u32
            }
        };
        let x0 = (gx * tw) as f64 * sx;
        let y0 = (gy * th) as f64 * sy;
        let x1 = ((gx + 1) * tw).min(m.width as usize) as f64 * sx;
        let y1 = ((gy + 1) * th).min(m.height as usize) as f64 * sy;
        fr.fill_rect(x0 as usize, y0 as usize, x1 as usize, y1 as usize, c);
        // границы между разными владельцами
        let diff_r = gx + 1 < cols && idx + 1 < n && m.provinces[idx + 1].owner != p.owner;
        let diff_d = gy + 1 < rows && idx + cols < n && m.provinces[idx + cols].owner != p.owner;
        if diff_r {
            let bx = (x1 as usize).saturating_sub(1);
            fr.fill_rect(bx, y0 as usize, bx + 1, y1 as usize, 0xFF101014);
        }
        if diff_d {
            let by = (y1 as usize).saturating_sub(1);
            fr.fill_rect(x0 as usize, by, x1 as usize, by + 1, 0xFF101014);
        }
    }
}
