# ROADMAP — Iron Front (HOI4-like на Rust/Android)

Статусы: ⬜ не начато · 🟡 в работе · ✅ готово и протестировано · 🔵 сверено с HOI4

## M0. Аудит и планирование — ✅ (этот этап)
- [x] Аудит AnalyticalEngine (MIT, Java, AOC3-движок; не основа для Rust/HOI4 — см. AUDIT.md)
- [x] Аудит AOH3 decomp (референс Android-архитектуры)
- [x] Архитектура workspace, риски, правовая рамка, реестр источников
- [x] Инструменты песочницы: Rust 1.99 установлен; NDK нет → сборка APK через CI

## M1. Минимальный запускаемый проект 🟡 (текущий)
- [ ] cargo-workspace: hoi-core, hoi-data, hoi-sim, hoi-app (headless), hoi-render, hoi-save, hoi-native
- [ ] Календарь HOI4 (дата 1936-01-01 старт, speed-тики) + логирование + конфиг
- [ ] Headless-runner: гоняет симуляцию без GPU (для тестов/CI)
- [ ] CI GitHub Actions: build+test linux
- [ ] (позже в M1) wgpu-окно desktop + android-activity cdylib-скелет
Критерий выхода: `cargo test` зелёный, раннер печатает даты/тики.

## M2. Карта (данные+рендер AoH3-стиль)
- [ ] Генератор province-bitmap → индексы/полигоны/adjacency (Python, Pillow)
- [ ] Тестовая мини-карта (10–50 провинций), выбор кликом, pan/zoom
- [ ] Mapmode-слой «политический», границы, выделение

## M3. Сценарий 1936 (минимальный)
- [ ] Формат данных (jomini-парсер наших .dat), registry стран/штатов/провинций
- [ ] Стартовые владельцы, ресурсы, армии-заглушки, political power/stability/war support

## M4. Время, сохранения
- [ ] Порядок тиков (hourly/daily/weekly/monthly) + детерминизм-тест
- [ ] hoi-save: roundtrip-автотесты, версионирование

## M5. Экономика
- [ ] CIV/MIL/NAV factory, строительство (IC-формулы), ресурсы+торговля, production lines (conversion/equipment)

## M6. Политика/исследования/фокусы/события
- [ ] Идеологии, правительственные законы, national spirits, decisions
- [ ] Research slots/base time/modifiers; tech prerequisites
- [ ] National focus tree engine (70d, prereq, mutually exclusive, rewards/effects DSL)
- [ ] Event engine (trigger/option/effects — общий interpreter для фокусов/событий/решений)

## M7. Армии и боёвка
- [ ] Division templates (батальоны/роты, формулы статов — эталонные тесты против taw-calc)
- [ ] Equipment/manpower/reinforcement/org
- [ ] Movement (rail/road/speed formulas), generals/experience/doctrines
- [ ] Ground combat: width, phase, attack/defense/breakthrough/armor-penetration, terrain/forts, encirclement, retreat, losses
- [ ] Combat-log-parity тесты

## M8. Снабжение/дипломатия/остальное
- [ ] Supply hubs/rail/infra/attrition; naval invasion; occupation/resistance
- [ ] Diplomacy: wars, factions, guarantees, AI stance; capitulation & peace conference

## M9. ИИ
- [ ] Эконом-план, research/focus picking, army building, front ops; сверка поведения

## M10. Оптимизация/полировка
- [ ] Профилирование Android, память/APK бюджет, баланс-тесты long-run, доп. сценарии, мультиплеер-разведка

Известные ошибки: (пусто — ведётся в issue-трекере репо)
