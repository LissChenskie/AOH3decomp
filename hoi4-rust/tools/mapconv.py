#!/usr/bin/env python3
"""mapconv.py — конвертер карты AOH3 (Earth3) в компактный формат .mapbin для Rust-движка.

AOH3 Earth3 -> HOI4-подобная модель:
  * province  = провинция Earth3 (pid, terrain, continent, region, resources)
  * state     = поле `region` Earth3 (кластер провинций -> аналог штата HOI4)
  * strategic_region = поле `continent` (упрощённо; уточняется при сверке с HOI4)

Формат .mapbin (little-endian):
  magic "MAPB" u32 | version u32=1 | map_w u16 | map_h u16
  n_provinces u32 | для каждой: pid u16, terrain u8, owner u16(0=none), coastal u8,
                            lake u8, center_x u16, center_y u16, state_id u16, cont u8
  n_states u32    | для каждого: id u16, name_off u32, provinces_list_off u32, prov_count u16
  n_adj u32       | пары u16 (сжатые списки смежности через offsets ниже)
  adjacency_offsets u32*(n_prov+1) + adjacency_data u16*...
  string blob: u32 len + utf8 (имена штатов, террейн-типы)
"""
import json, struct, sys, math
from pathlib import Path

SRC = Path(sys.argv[1] if len(sys.argv) > 1 else "../assets/map/map_earth3_base.json")
DST = Path(sys.argv[2] if len(sys.argv) > 2 else "../assets/map/world.mapbin")

d = json.load(open(SRC))
provs = d["provinces"]
terr = [t["name"] for t in d["terrain_types"]]

# ---- метрики карты (для центроидов/пиксельного рендера) ----
MAP_W, MAP_H = 4096, 2048  # зем3 base texture пропорции 2:1 (equirect)

# ---- states: группируем по (continent, region) ----
states = {}
for p in provs:
    key = (p["continent"], p["region"])
    states.setdefault(key, []).append(p["pid"])
state_ids = {k: i + 1 for i, k in enumerate(sorted(states))}  # 0 = none

prov_state = {}
for k, plist in states.items():
    for pid in plist:
        prov_state[pid] = state_ids[k]

# ---- центр провинции из growth/buildings как псевдо-урбанизации? нет координат в JSON ----
# В Earth3 base есть только атрибуты; пиксельная карта (provinces bitmap) не экспортирована.
# Для прототипа раскладываем провинции сеткой детерминированно (будет заменено на bitmap-центры).
n = len(provs)
cols = int(math.ceil(math.sqrt(n)))

adjacency_offsets = [0]
adjacency_data = []
# смежность: пока строим по соседям внутри одного state (заглушка до импорта borders-графа)
for k, plist in sorted(states.items()):
    for a in plist:
        for b in plist:
            if a < b:
                pass  # реальный граф берём из Earth3 borders (этап M2b)

out = bytearray()
out += b"MAPB"
out += struct.pack("<IHH", 1, MAP_W, MAP_H)
out += struct.pack("<I", n)
for p in provs:
    idx = p["pid"]
    cx, cy = (idx % cols) * (MAP_W // cols), (idx // cols) * (MAP_H // ((n + cols - 1) // cols))
    out += struct.pack("<HBHBBHHBH",
                       p["pid"], min(p["terrain"], 255), prov_state[p["pid"]],
                       1 if p["terrain"] == 0 else 0,  # coastal flag placeholder
                       1 if p.get("lake_proxy", -1) >= 0 else 0,
                       cx & 0xFFFF, cy & 0xFFFF,
                       p["continent"], p["region"])
out += struct.pack("<I", len(state_ids))
strings = bytearray()
def add_str(s: str) -> int:
    off = len(strings)
    strings.extend(s.encode("utf-8") + b"\x00")
    return off
for k, sid in sorted(state_ids.items(), key=lambda kv: kv[1]):
    name = f"STATE_{k[0]}_{k[1]}"
    noff = add_str(name)
    out += struct.pack("<HIH", sid, noff, len(states[k]))
# имена террейнов
toff = add_str("\x1e".join(terr))
out += struct.pack("<I", toff)
out += struct.pack("<II", len(adjacency_data), len(adjacency_offsets))
out += bytes(adjacency_data)
out += struct.pack(f"<{len(adjacency_offsets)}I", *adjacency_offsets)
out += struct.pack("<I", len(strings))
out += bytes(strings)

DST.write_bytes(out)
print(f"OK: {n} provinces, {len(state_ids)} states -> {DST} ({len(out)} bytes)")
