#!/usr/bin/env python3
"""mapconv2: корректный pack/unpack формата MAPB v1 (u16 center, 10-байтные провинции).

Центры провинций раскладываются детерминированно сеткой в координатах карты
(MAP_W x MAP_H) — пиксельная bitmap Earth3 пока не импортирована.
"""
import json, struct, sys, math, pathlib

SRC = pathlib.Path(__file__).resolve().parent.parent / "assets/map/map_earth3_base.json"
DST = pathlib.Path(sys.argv[1]) if len(sys.argv) > 1 else SRC.parent / "world.mapbin"
MAP_W, MAP_H = 4096, 2048

data = json.loads(SRC.read_text())
provs = data["provinces"]
raw_terr = data.get("terrain_types", [])
terr = [t["name"] if isinstance(t, dict) else str(t) for t in raw_terr] or [f"T{i}" for i in range(16)]
n = len(provs)

# --- штаты: группировка по (continent, region) ---
states = {}
for p in provs:
    key = (p["continent"], p["region"])
    states.setdefault(key, []).append(p["pid"])
state_ids = {k: i + 1 for i, k in enumerate(sorted(states))}  # 0 = none
prov_state = {pid: state_ids[k] for k, plist in states.items() for pid in plist}

# --- сетка центров в реальных координатах карты ---
cols = int(math.ceil(math.sqrt(n * MAP_W / MAP_H)))
rows = (n + cols - 1) // cols
tw = max(MAP_W // cols, 1)
th = max(MAP_H // rows, 1)

strings = bytearray()
def add_str(s: str) -> int:
    off = len(strings)
    strings.extend(s.encode("utf-8") + b"\x00")
    return off

out = bytearray()
out += b"MAPB"
out += struct.pack("<IHH", 1, MAP_W, MAP_H)
out += struct.pack("<I", n)
for i, p in enumerate(provs):
    cx = min((i % cols) * tw, MAP_W - 1)
    cy = min((i // cols) * th, MAP_H - 1)
    out += struct.pack("<HBHBBHHBH",
                       p["pid"], min(p["terrain"], 255), prov_state[p["pid"]],
                       1 if p["terrain"] == 0 else 0,
                       1 if p.get("lake_proxy", -1) >= 0 else 0,
                       cx, cy, p["continent"], p["region"])

out += struct.pack("<I", len(state_ids))
for k, sid in sorted(state_ids.items(), key=lambda kv: kv[1]):
    noff = add_str(f"STATE_{k[0]}_{k[1]}")
    out += struct.pack("<HIH", sid, noff, len(states[k]))
toff = add_str("\x1e".join(terr))
out += struct.pack("<I", toff)

adjacency_data = bytearray()          # граф borders — этап M2b
adjacency_offsets = array_offs = [0] * (n + 1)
out += struct.pack("<II", 0, len(adjacency_offsets))
out += struct.pack(f"<{len(adjacency_offsets)}I", *adjacency_offsets)
out += struct.pack("<I", len(strings))
out += bytes(strings)

DST.write_bytes(out)
print(f"OK: {n} provinces, {len(state_ids)} states -> {DST} ({len(out)} bytes)")
