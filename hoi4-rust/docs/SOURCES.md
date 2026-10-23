# SOURCES.md — реестр источников, лицензий и статусов проверки

Легенда статуса: ✅ проверено лично в этом исследовании · 📄 изучены docs/README · ⏳ запланировано · ❓ неподтверждённо (не использовать как факт)

## Репозитории
| Источник | Лицензия | Язык | Статус | Как используем |
|---|---|---|---|---|
| CTD-Games/AnalyticalEngine | MIT | Java | ✅ (API-аудит дерева, README, LICENSE) | Референс 2D-карточного рендера/скриптинга AOC3. НЕ основа движка (Java, механики AoH не HOI4) |
| LissChenskie/AOH3decomp | проприетарные исходники (декомпиляция) | Java/smali | ✅ (локализовано в ../aoh3-decomp) | Только референс архитектуры Android-игры; код не копируем |
| rakaly/jomini | EUPL-1.2 | Rust | 📄 | Парсер paradox-форматов (CLAUSETXT). EUPL совместим для нашего использования как зависимости |
| ScottyThePilot/hoi4_province_editor | ❓ уточнить | Python | ⏳ | Методы работы с province bitmap/CSV |
| raederhans/scenario-forge | ❓ | TS | ⏳ | Векторизация карты, сценарии |
| taw/hoi4 | ❓ | JS | ⏳ | Конструктор дивизий — формулы статы/стоимость |
| ScribioTeam/Expert-AI | мод (данные Paradox) | Scala | ⏳ | Архитектура улучшенного ИИ (описания, не код) |
| malashin/hoi4treesnap | ❓ | ? | ⏳ | Разбор деревьев фокусов |
| Kaiserreich / Millennium Dawn (GitHub orgs) | CC BY-NC-SA (KR) | HOI4 DSL | ⏳ | Примеры скриптов фокусов/событий/технологий; NC-лицензии — только как справочник формата |

## Формулы HOI4 (нужна сверка с актуальной вики перед реализацией каждой!)
| Механика | Основной источник | Версия | Статус |
|---|---|---|---|
| Combat width/org/attack/defense/breakthrough | hoi4.wikia (hoi4wiki.com) «Combat» | 1.15? | ⏳ эталонные тесты по combat logs |
| Supply: base supply, rail grade, infrastructure, attrition | «Supply» hoi4wiki | ⏳ | ⏳ |
| Production: factory output, conversion, equipment models | «Factories», «Production» | ⏳ | ⏳ |
| Research: base time 70d (cat), modifiers, slots | «Research» | ⏳ | ⏳ |
| Focus: 70 days, completion rewards, AI weights | «National focus» | ⏳ | ⏳ |
| Division template stats formulas | «Division designer» + taw/hoi4 calc | ⏳ | ⏳ |
| Org recovery, manpower, reinforcement weekly | «Reinforcement» | ⏳ | ⏳ |
| Capitulation/peace conference | «Surrender» | ⏳ | ⏳ |

⚠️ Числа из памяти модели НЕ считать точными; каждая константа попадает в код только с пометкой источника и версии патча.

## Данные карты
- Официальная карта HOI4 — собственность Paradox. Пути: (а) пользователь сам указывает директорию игры (как делают calcs/моды), (б) собственная перерисованная базовая карта. Решение этапа M4.

## Нерешённые вопросы (TODO-research)
1. Точный порядок тиков (hourly/daily/weekly/monthly) в HOI4 — подтвердить по логам/дат-файлам `common/defines`.
2. Формат сохранений HOI4 — не нужен (мы делаем свой), но jomini пригодится для чтения наших же дат.
3. Лицензии scenario-forge/province_editor/hoi4treesnap — проверить перед заимствованием алгоритмов.
4. Погодные и навигационные формулы — самые мутные, отложить до этапа M9.
