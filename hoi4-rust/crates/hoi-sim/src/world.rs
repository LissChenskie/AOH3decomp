//! Мир симуляции: порядок систем на дневном/недельном/месячном тике.
//! Пока — скелет M1 с детерминированным счётчиком тиков; реальные системы (экономика,
//! боёвка и т.д.) подключаются в M5–M8 в **фиксированном порядке**, чтобы сохранить
//! совместимость с поведением HOI4 и детерминизм сохранений.

use hoi_core::calendar::{Clock, GameDay, Speed};

/// Порядок дневных систем (зафиксируем и не меняем без миграции сохранений).
#[derive(Debug, Default)]
pub struct TickStats {
    pub daily: u64,
    pub weekly: u64,
    pub monthly: u64,
}

#[derive(Debug)]
pub struct World {
    pub clock: Clock,
    pub stats: TickStats,
    /// пример простейшей моделируемой величины: политическая власть глобального «игрока»
    pub political_power: f32,
}

impl World {
    pub fn new(start: GameDay) -> Self {
        Self {
            clock: Clock::new(start, Speed::Paused),
            stats: TickStats::default(),
            political_power: 0.0,
        }
    }

    /// Один игровой день: сюда позже встраиваются daily-системы (политика, производство…).
    fn on_daily(&mut self) {
        // заглушка M1: +1 PP в день (в HOI4 базовый прирост другой — заменим на точную формулу в M6)
        self.political_power += 1.0;
    }

    fn on_weekly(&mut self) {}
    fn on_monthly(&mut self) {}

    /// Протянуть реальное время (секунды); вызывается из game-loop (headless или Android).
    pub fn advance_real_time(&mut self, dt: f64) {
        let outcome = self.clock.advance_real_time(dt);
        for _ in 0..outcome.days {
            self.on_daily();
            self.stats.daily += 1;
        }
        for _ in 0..outcome.week_starts {
            self.on_weekly();
            self.stats.weekly += 1;
        }
        for _ in 0..outcome.month_starts {
            self.on_monthly();
            self.stats.monthly += 1;
        }
    }

    pub fn date(&self) -> GameDay {
        self.clock.date
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn deterministic_ticks() {
        let mut w = World::new(GameDay::from_ymd(1936, 1, 1));
        w.clock.speed = Speed::S5; // 5 дней/сек
        // прокрутим ровно год: 1936 високосный → 366 дней. После 366 тиков дата = 1937-01-01
        w.advance_real_time(366.0 / 5.0);
        assert_eq!(w.stats.daily, 366);
        assert_eq!(w.date(), GameDay::from_ymd(1937, 1, 1));
        // ещё один день → 1937-01-02
        w.advance_real_time(0.2);
        assert_eq!(w.date(), GameDay::from_ymd(1937, 1, 2));
        assert_eq!(w.stats.monthly, 12); // по одному началу месяца на февраль..январь
        assert_eq!(w.political_power, 367.0);
    }

    #[test]
    fn week_boundaries_counted() {
        let mut w = World::new(GameDay::from_ymd(1936, 1, 1));
        w.clock.speed = Speed::S1;
        w.advance_real_time(7.0); // до 1936-01-08; понедельник был 06.01
        assert_eq!(w.stats.weekly, 1);
    }
}
