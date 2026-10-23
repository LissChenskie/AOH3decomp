# IronFront — HOI4-подобная стратегия на Rust для Android

Цель: воссоздание механик Hearts of Iron 4 на Android на собственном движке (Rust),
визуальный стиль карты — Age of History 3 (плоская 2D-карта, цвет провинции = тип рельефа).

## Структура

```
hoi4-rust/
├── crates/
│   ├── hoi-core/     # календарь, игровое время, тики
│   ├── hoi-map/      # формат .mapbin: парсер + тесты (~13 900 провинций, штаты, рельеф)
│   ├── hoi-sim/      # симуляция государств (заготовка)
│   └── hoi-app/      # приложение: рендер, ввод, меню; JNI-слой для Android
├── android/          # Java-обёртка (SurfaceView + JNI), манифест, assets/world.mapbin
├── assets/map/       # карта .mapbin для десктоп-превью
├── tools/            # mapconv.py / mapconv2.py — конвертер карты AOH3 (Earth3) → .mapbin
└── docs/             # AUDIT.md, ARCHITECTURE.md, SOURCES.md, ROADMAP.md, MECHANICS.md
```

## Сборка

Десктоп-превью карты:
```
cargo run --bin mapview            # растеризует world.mapbin в PNG
```

Android (arm64-v8a):
```
cargo ndk -t arm64-v8a build --release -p hoi-app --target aarch64-linux-android
# затем: javac MainActivity.java -> d8 -> zipalign -> apksigner (см. android/)
```

## Формат .mapbin (little-endian)

Заголовок: magic "MAPB", версия, число провинций, число штатов.
Далее записи провинций: id, x/y (нормализованные координаты), state_id, terrain_type;
штаты: id, name_off; строки в пуле. Парсер: `crates/hoi-map/src/lib.rs`.

## Статус (v0.1.2)

- [x] Карта ~13 900 провинций со штатами и рельефом (источник — Earth3 из AOH3)
- [x] Рендер: цвета по типу местности, границы, пан/зум/тап-выбор
- [x] Главное меню, JNI-мост, подписанный APK (debug-ключ)
- [ ] Точная топология границ HOI4 (adjacency)
- [ ] Сценарий 1936, экономики/фокусы/боёвка — см. ROADMAP.md

## Лицензии

MIT (см. LICENSE). Данные карты получены из открытой декомпиляции AOH3 — только
для исследования; не распространяйте ассеты Paradox Interactive и Lukasz Jakowski.
