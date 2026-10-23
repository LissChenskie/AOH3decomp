# Age of History 3 — декомпиляция (APK v1.136)

Пакет: `age.of.history3.lukasz.jakowski` | Движок: **libGDX** | Защита: **PairIP** (обфускация)

## Что здесь лежит

| Папка | Содержимое |
|---|---|
| `java-game/` | Java-исходники игровой логики (~1500 классов, пакет `aoc.kingdoms.lukasz.*`, декомпилированы jadx) |
| `game-data/` | Игровые данные из assets/game: Ages.json, Civilizations.txt, Religions.json, Governments.json, buildings/, events/, civilizations/, units и т.д. (58 МБ) |
| `libPDALIFE.so` | Нативная библиотека игры (arm64-v8a, ~1 МБ) — вся тяжёлая логика вычислений |
| `smali/` | Smali-дизассемблер всех классов dex (8276 файлов, apktool) — точный байткод без потерь jadx |
| `AndroidManifest.xml` | Бинарный манифест Android |

## Структура игровых пакетов (`java-game/kingdoms/lukasz/`)

- `jakowski/` — главная Activity, точка входа libGDX
- `map/` — генерация и логика карты, провинции
- `events/` (+ `outcome/`) — система событий и их последствий (AnnexProvinces, AddArmy, Legacy...)
- `menus/`, `menu/`, `menusInGame/`, `menusEditor/`, `menusScenarioEditor/` — весь UI
- `units/` — юниты/армии
- `animation/`, `textures/` — рендеринг
- `utilities/` — утилиты, сохранения

## Что НЕ включено (из-за лимитов размера среды)

Репозиторий намеренно облегчён до ~130 МБ кода. Не залиты в git (но были получены при декомпиляции):

- `game-data/` (58 МБ) — игровые JSON/TXT-данные из assets
- `libPDALIFE.so` (1 МБ) — нативная библиотека arm64 (бинарные файлы GitHub не любит без LFS)
- Ассеты APK (~886 МБ): текстуры, звуки, шрифты
- Сторонние библиотеки (libGDX, Firebase, Play Core, androidx) — в java-game оставлена только логика игры (`aoc.kingdoms.lukasz.*`)

## Важные замечания

1. **Основная игровая логика — в нативном коде**: `libPDALIFE.so` + `classes.dex` загружают данные из `assets/game`. Java-слой во многом тонкая обёртка UI над JNI.
2. **PairIP-защита**: классы частично обфусцированы/вынесены в `com.pairip`; полный чистый исходник получить нельзя без снятия защиты.
3. APK весит 720 МБ, поэтому в репозиторий залита только сжатая суть: код.

## Инструменты

- jadx 1.5.x — Java-код
- apktool — smali (8276 классов) и ресурсы
