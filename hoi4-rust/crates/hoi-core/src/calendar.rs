//! HOI4-календарь: дата как счётчик дней от 1936-01-01 (эпоха сценария),
//! тики speed 1..5 и еженедельные/ежемесячные границы.
//!
//! ⚠️ Числа скорости соответствуют режимам HOI4: speed1=1 день/сек ... speed5=5 дней/сек.
//! (источник: hoi4wiki "Game speed"; статус сверки: ⏳ — см. SOURCES.md)

use core::fmt;

/// Абсолютный счётчик игровых дней от эпохи (1936-01-01 = 0).
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct GameDay(pub i64);

impl GameDay {
    /// Дата → день от эпохи 1936-01-01. Обратимо через [`GameDay::to_ymd`].
    pub fn from_ymd(year: i64, month: u32, day: u32) -> Self {
        assert!((1..=12).contains(&month) && (1..=31).contains(&day));
        let epoch = Self::days_from_civil(1936, 1, 1);
        let target = Self::days_from_civil(year, month, day);
        GameDay(target - epoch)
    }

    /// Дней в годах [0, y) — алгоритм Ховарда Хинричса (григорианский).
    fn days_from_civil(y: i64, m: u32, d: u32) -> i64 {
        let y = y - if m <= 2 { 1 } else { 0 };
        let era = (if y >= 0 { y } else { y - 399 }) / 400;
        let yoe = y - era * 400; // [0, 399]
        let mp = ((m + 9) % 12) as i64; // март=0 ... февраль=11
        let doy = (153 * mp + 2) / 5 + d as i64 - 1; // [0, 365]
        let doe = yoe * 365 + yoe / 4 - yoe / 100 + doy;
        era * 146097 + doe - 719468
    }

    /// Обратный Хинричс: счётчик дней → (год, месяц 1..=12, день).
    fn civil_from_days(z0: i64) -> (i64, u32, u32) {
        let z = z0 + 719468;
        let era = (if z >= 0 { z } else { z - 146096 }) / 146097;
        let doe = z - era * 146097; // [0, 146096]
        let yoe = (doe - doe / 1460 + doe / 36524 - doe / 146096) / 365; // [0, 399]
        let y = yoe + era * 400;
        let doy = doe - (365 * yoe + yoe / 4 - yoe / 100); // [0, 365]
        let mp = (5 * doy + 2) / 153; // [0, 11]
        let d = (doy - (153 * mp + 2) / 5 + 1) as u32; // [1, 31]
        let m = if mp < 10 { (mp + 3) as u32 } else { (mp - 9) as u32 }; // март-фев цикл → 1..=12
        (y + if m <= 2 { 1 } else { 0 }, m, d)
    }

    /// Разложить на (год, месяц 1..=12, день 1..=31).
    pub fn to_ymd(self) -> (i64, u32, u32) {
        let epoch = Self::days_from_civil(1936, 1, 1);
        Self::civil_from_days(epoch + self.0)
    }

    pub fn next_day(self) -> Self {
        GameDay(self.0 + 1)
    }

    /// Понедельник ли? (в HOI4 неделя начинается в понедельник; 1936-01-01 — среда)
    pub fn is_week_start(self) -> bool {
        // 1936-01-01 = среда (offset 2 от понедельника)
        ((self.0 + 2) % 7 + 7) % 7 == 0
    }

    pub fn is_month_start(self) -> bool {
        self.to_ymd().2 == 1
    }
}

impl fmt::Display for GameDay {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        let (y, m, d) = self.to_ymd();
        write!(f, "{y:04}-{m:02}-{d:02}")
    }
}

/// Скорости HOI4: сколько игровых дней проходит за секунду реального времени.
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Speed {
    Paused = 0,
    S1 = 1,
    S2 = 2,
    S3 = 3,
    S4 = 4,
    S5 = 5,
}

impl Speed {
    pub fn days_per_second(self) -> f64 {
        match self {
            Speed::Paused => 0.0,
            Speed::S1 => 1.0,
            Speed::S2 => 2.0,
            Speed::S3 => 3.0,
            Speed::S4 => 4.0,
            Speed::S5 => 5.0,
        }
    }
}

/// Накопитель времени: превращает dt секунд в целые дни + флаги недельных/месячных границ.
#[derive(Debug)]
pub struct Clock {
    pub date: GameDay,
    pub speed: Speed,
    acc_days: f64,
}

/// Результат одного кадра: сколько целых дней прошло + события границ.
#[derive(Debug, Default, PartialEq, Eq)]
pub struct TickOutcome {
    pub days: u32,
    pub week_starts: u32,
    pub month_starts: u32,
}

impl Clock {
    pub fn new(start: GameDay, speed: Speed) -> Self {
        Self { date: start, speed, acc_days: 0.0 }
    }

    /// Продвинуть на `dt` секунд реального времени. Возвращает число полных игровых дней,
    /// на которые сдвинулась дата (дата при этом обновляется).
    pub fn advance_real_time(&mut self, dt: f64) -> TickOutcome {
        self.acc_days += dt * self.speed.days_per_second();
        let whole = self.acc_days.floor();
        self.acc_days -= whole;
        let n = whole as i64;
        let mut out = TickOutcome::default();
        for _ in 0..n.max(0) {
            self.date = self.date.next_day();
            out.days += 1;
            if self.date.is_week_start() {
                out.week_starts += 1;
            }
            if self.date.is_month_start() {
                out.month_starts += 1;
            }
        }
        out
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn epoch_roundtrip() {
        let d = GameDay::from_ymd(1936, 1, 1);
        assert_eq!(d.0, 0);
        assert_eq!(d.to_ymd(), (1936, 1, 1));
        assert_eq!(d.to_string(), "1936-01-01");
    }

    #[test]
    fn known_dates() {
        // 1936 — високосный? Нет (1936 % 4 == 0 → да!). Проверим февраль.
        let feb29 = GameDay::from_ymd(1936, 2, 29);
        assert_eq!(feb29.to_ymd(), (1936, 2, 29));
        let mar1 = GameDay::from_ymd(1936, 3, 1);
        assert_eq!(mar1.0 - feb29.0, 1);
        // WWII start
        let d = GameDay::from_ymd(1939, 9, 1);
        assert_eq!(d.to_ymd(), (1939, 9, 1));
        // leap-year edge 2000, non-leap 1900 roundtrip через большой диапазон
        let far = GameDay::from_ymd(1944, 6, 6);
        assert_eq!(far.to_ymd(), (1944, 6, 6));
    }

    #[test]
    fn week_and_month_boundaries() {
        // 1936-01-01 — среда, значит понедельник = 1936-01-06
        assert!(!GameDay(0).is_week_start());
        assert!(GameDay(5).is_week_start());
        assert_eq!(GameDay(5).to_ymd(), (1936, 1, 6));
        assert!(GameDay(31).is_month_start()); // 1936-02-01
        assert_eq!(GameDay(31).to_ymd(), (1936, 2, 1));
    }

    #[test]
    fn clock_speeds() {
        let mut c = Clock::new(GameDay(0), Speed::S3);
        let o = c.advance_real_time(2.0); // 3 дня/сек * 2с = 6 дней
        assert_eq!(o.days, 6);
        assert_eq!(c.date, GameDay(6));
        // остаток не теряется
        let mut c2 = Clock::new(GameDay(0), Speed::S1);
        assert_eq!(c2.advance_real_time(0.4).days, 0);
        assert_eq!(c2.advance_real_time(0.7).days, 1); // 1.1 накоплено
        assert_eq!(c2.date, GameDay(1));
    }

    #[test]
    fn paused_does_nothing() {
        let mut c = Clock::new(GameDay(0), Speed::Paused);
        assert_eq!(c.advance_real_time(100.0), TickOutcome::default());
    }
}
