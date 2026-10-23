//! ironfront — headless-раннер (этап M1). Позже сюда подключатся wgpu-рендер и egui UI.
use hoi_core::calendar::{GameDay, Speed};
use hoi_sim::world::World;
use std::time::Instant;

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let seconds: f64 = args.get(1).and_then(|s| s.parse().ok()).unwrap_or(10.0);

    let mut w = World::new(GameDay::from_ymd(1936, 1, 1));
    w.clock.speed = Speed::S5;
    println!("IronFront headless: старт {}, speed {:?}, прогон {} c реального времени", w.date(), w.clock.speed, seconds);

    // эмуляция фиксированного кадра 60 FPS
    let frame = 1.0 / 60.0;
    let frames = (seconds * 60.0) as u64;
    let t0 = Instant::now();
    for _ in 0..frames {
        w.advance_real_time(frame);
    }
    let dt = t0.elapsed();
    println!(
        "готов: дата {} | PP={:.0} | daily={} weekly={} monthly={} | {:.2} мс симуляции ({} дней)",
        w.date(), w.political_power, w.stats.daily, w.stats.weekly, w.stats.monthly,
        dt.as_secs_f64() * 1000.0, w.stats.daily
    );
}
