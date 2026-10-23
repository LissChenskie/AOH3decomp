//! mapview — desktop-превью карты тем же кодом, что и на Android. Пишет BMP.
use std::io::Write;

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let map_path = args.get(1).cloned().unwrap_or("assets/map/world.mapbin".into());
    let m = ironfront::render::load_map(&map_path);
    println!("карта: {}x{}, провинций {}, штатов {}", m.width, m.height, m.provinces.len(), m.states.len());
    for (mode, name) in [(0u8, "terrain"), (1, "political"), (2, "continents")] {
        let mut fr = ironfront::render::Frame::new(1600, 800, 0xFF1A2430);
        ironfront::render::render_map(&mut fr, &m, mode);
        ironfront::render::draw_text(&mut fr, 10, 10, &format!("IRONFRONT {} MODE", name.to_uppercase()), 0xFFFFC840, 3);
        let path = format!("assets/map/world_{name}.bmp");
        let mut f = std::fs::File::create(&path).unwrap();
        f.write_all(&fr.to_bmp()).unwrap();
        println!("сохранено {}", path);
    }
}
