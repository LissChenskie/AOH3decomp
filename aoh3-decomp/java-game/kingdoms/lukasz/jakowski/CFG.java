package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.zOther.Point_XY;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.DecimalFormat;
import java.text.Normalizer;
import java.util.Random;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CFG {
    public static final String AGE_OF_HISTORY = "Age of History III";
    private static final String ALPHABET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    private static final int ALPHABET_LENGTH = 62;
    public static int BUTTON_HEIGHT = 68;
    public static int BUTTON_HEIGHT2 = 58;
    public static int BUTTON_HEIGHT3 = 46;
    public static int BUTTON_HEIGHT4 = 48;
    public static int BUTTON_WIDTH = 90;
    public static final String CIVILIZATION_FLAG_NOT_FOUND = "ran.png";
    public static int CIV_COLOR_WIDTH = 3;
    public static int CIV_FLAG_HEIGHT = 18;
    public static int CIV_FLAG_WIDTH = 27;
    public static int COLOR_WIDTH = 3;
    public static float DENSITY = 1.0f;
    public static final String FILE_ADVISORS_1_PATH = "advisors/";
    public static final String FILE_ADVISORS_2_PATH = "advisors2/";
    public static final String FILE_ADVISORS_PATH = "advisors/";
    public static final String FILE_AGES_LIST = "Ages.json";
    public static final String FILE_AI_VALUES = "AI_Values.json";
    public static final String FILE_AI_VALUES_ARMIES = "AI_Armies.json";
    public static final String FILE_AI_VALUES_BUILD = "AI_Build.json";
    public static final String FILE_AI_VALUES_CONVERT = "AI_ConvertReligion.json";
    public static final String FILE_AI_VALUES_CORES = "AI_Cores.json";
    public static final String FILE_AI_VALUES_DIPLOMACY = "AI_Diplomacy.json";
    public static final String FILE_AI_VALUES_PATH = "AI/";
    public static final String FILE_AMBIENCE_PATH = "audio/ambience/";
    public static final String FILE_ARMY_MAP_PATH = "army26/";
    public static final String FILE_ARMY_MAP_PATH_2 = "army32/";
    public static final String FILE_ARMY_PATH = "army/";
    public static final String FILE_CONFIG = "Config.json";
    public static final String FILE_CONFIG_FILE = "Config.txt";
    public static final String FILE_CONFIG_LOW = "ConfigLow.json";
    public static final String FILE_CURSOR_PATH = "cursor/";
    public static final String FILE_EDITOR_FLAGS_DIVISIONS_LIST = "divisions.json";
    public static final String FILE_EDITOR_FLAGS_DIVISIONS_PATH = "divisions/";
    public static final String FILE_EDITOR_FLAGS_OVERLAYS_LIST = "overlays.json";
    public static final String FILE_EDITOR_FLAGS_OVERLAYS_PATH = "overlays/";
    public static final String FILE_EDITOR_FLAGS_PATH = "editorFlags/";
    public static final String FILE_FONTS_PATH = "game/fonts/";
    public static final String FILE_FORMABLE_CIVS_DATA = "formableCivs/";
    public static final String FILE_GAME_ADVANTAGES_GROUPS = "AdvantagesGroups.txt";
    public static final String FILE_GAME_ADVANTAGES_IMAGES_PATH = "advantagesImages/";
    public static final String FILE_GAME_ADVANTAGES_LIST = "Advantages.json";
    public static final String FILE_GAME_ADVANTAGES_PATH = "advantages/";
    public static final String FILE_GAME_BUILDINGS_IMAGES_PATH = "buildingsImages/";
    public static final String FILE_GAME_BUILDINGS_LIST = "Buildings.json";
    public static final String FILE_GAME_BUILDINGS_PATH = "buildings/";
    public static final String FILE_GAME_BUILDINGS_RESOURCES_LIST = "BuildingsResources.json";
    public static final String FILE_GAME_CFG_FILE = "Age_of_History.txt";
    public static final String FILE_GAME_CHARACTERS_PATH = "characters/";
    public static final String FILE_GAME_CITIES_PATH = "cities/";
    public static final String FILE_GAME_CIVILIZATIONS_FILE = "Civilizations.txt";
    public static final String FILE_GAME_CIVILIZATIONS_PATH = "civilizations/";
    public static final String FILE_GAME_DISEASES_IMAGES_PATH = "images/";
    public static final String FILE_GAME_DISEASES_LIST = "Diseases.json";
    public static final String FILE_GAME_DISEASES_PATH = "diseases/";
    public static final String FILE_GAME_EVENTS_COMMON_PATH = "common/";
    public static final String FILE_GAME_EVENTS_GENERATE_LIST = "generate_list.txt";
    public static final String FILE_GAME_EVENTS_GLOBAL_PATH = "global/";
    public static final String FILE_GAME_EVENTS_IMAGES_PATH = "images/";
    public static final String FILE_GAME_EVENTS_LIST_COMMON = "list_common.txt";
    public static final String FILE_GAME_EVENTS_LIST_GLOBAL = "list_global.txt";
    public static final String FILE_GAME_EVENTS_LIST_SIEGE = "list_siege.txt";
    public static final String FILE_GAME_EVENTS_PATH = "events/";
    public static final String FILE_GAME_EVENTS_SIEGE_PATH = "siege/";
    public static final String FILE_GAME_EVENTS_SOUND_PATH = "sound/";
    public static final String FILE_GAME_FLAGSH_PATH = "flagsH/";
    public static final String FILE_GAME_FLAGSXH_PATH = "flagsXH/";
    public static final String FILE_GAME_FLAGS_PATH = "flags/";
    public static final String FILE_GAME_GENERALS_RANDOM_NAMES_PATH = "names/";
    public static final String FILE_GAME_GENERALS_RANDOM_PATH = "randomNames/";
    public static final String FILE_GAME_GENERALS_RANDOM_SURNAMES_PATH = "surnames/";
    public static final String FILE_GAME_GROUPS_PATH = "groups/";
    public static final String FILE_GAME_LAWS_IMAGES_PATH = "lawsImages/";
    public static final String FILE_GAME_LAWS_LIST = "Laws.json";
    public static final String FILE_GAME_LAWS_PATH = "laws/";
    public static final String FILE_GAME_LEGACY_GROUPS = "LegaciesGroups.txt";
    public static final String FILE_GAME_LEGACY_IMAGES_PATH = "legaciesImages/";
    public static final String FILE_GAME_LEGACY_LIST = "Legacies.json";
    public static final String FILE_GAME_LEGACY_PATH = "legacies/";
    public static final String FILE_GAME_LIST = "AoH.json";
    public static final String FILE_GAME_LIST_TXT = "AoH.txt";
    public static final String FILE_GAME_MISSIONS_EVENTS_PATH = "missionsEvents/";
    public static final String FILE_GAME_MISSIONS_IMAGES_PATH = "missionsImages/";
    public static final String FILE_GAME_MISSIONS_LIST = "Missions.json";
    public static final String FILE_GAME_MISSIONS_PATH = "missions/";
    public static final String FILE_GAME_MISSION_IMAGES_PATH = "imagesMissions/";
    public static final String FILE_GAME_PATH = "game/";
    public static final String FILE_GAME_RANDOM_PATH = "random/";
    public static final String FILE_GAME_RESOURCES_IMAGES_PATH = "resourcesImages/";
    public static final String FILE_GAME_RESOURCES_LIST = "Resources.json";
    public static final String FILE_GAME_RESOURCES_PATH = "resources/";
    public static final String FILE_GAME_RULERS_2_IMAGES_PATH = "rulersImages2/";
    public static final String FILE_GAME_RULERS_IMAGES_PATH = "rulersImages/";
    public static final String FILE_GAME_RULERS_LINK_PATH = "link/";
    public static final String FILE_GAME_RULERS_PATH = "rulers/";
    public static final String FILE_GAME_RULERS_RANDOM_PATH = "rulersRandom/";
    public static final String FILE_GAME_SETTINGS = "settings/";
    public static final String FILE_GAME_SETTINGS_PROVINCE_BORDER_HIGH = "ProvinceBorder_High.json";
    public static final String FILE_GAME_SETTINGS_PROVINCE_BORDER_LOW = "ProvinceBorder_Low.json";
    public static final String FILE_GAME_SETTINGS_PROVINCE_BORDER_MEDIUM = "ProvinceBorder_Medium.json";
    public static final String FILE_GAME_SETTINGS_PROVINCE_BORDER_VERY_HIGH = "ProvinceBorder_VeryHigh.json";
    public static final String FILE_GAME_TECHNOLOGY_IMAGES_PATH = "technologiesImages/";
    public static final String FILE_GAME_TECHNOLOGY_LIST = "Technologies.json";
    public static final String FILE_GAME_TECHNOLOGY_PATH = "technologies/";
    public static final String FILE_GAME_UNITS_IMAGES_PATH = "unitsImages/";
    public static final String FILE_GAME_UNITS_LIST = "Units.json";
    public static final String FILE_GAME_UNITS_PATH = "units/";
    public static final String FILE_GAME_VALUES = "GameValues.json";
    public static final String FILE_GAME_VALUES_ADVANTAGES = "GV_Advantages.json";
    public static final String FILE_GAME_VALUES_ADVISORS = "GV_Advisors.json";
    public static final String FILE_GAME_VALUES_AGGRESSIVE_EXPANSION = "GV_AggressiveExpansion.json";
    public static final String FILE_GAME_VALUES_ARMY = "GV_Army.json";
    public static final String FILE_GAME_VALUES_ATOMIC = "GV_Atomic.json";
    public static final String FILE_GAME_VALUES_BATTLE = "GV_Battle.json";
    public static final String FILE_GAME_VALUES_BATTLE_TACTICS = "GV_BattleTactics.json";
    public static final String FILE_GAME_VALUES_BUDGET = "GV_Budget.json";
    public static final String FILE_GAME_VALUES_BUILDINGS = "GV_Buildings.json";
    public static final String FILE_GAME_VALUES_CAPITAL = "GV_Capital.json";
    public static final String FILE_GAME_VALUES_CIV_RANK = "GV_CivRank.json";
    public static final String FILE_GAME_VALUES_CIV_STABILITY = "GV_CivStability.json";
    public static final String FILE_GAME_VALUES_CLICK_ANIMATION = "GV_ClickAnimation.json";
    public static final String FILE_GAME_VALUES_COLONIZATION = "GV_Colonization.json";
    public static final String FILE_GAME_VALUES_CONSOLE = "GV_Console.json";
    public static final String FILE_GAME_VALUES_CORE = "GV_Core.json";
    public static final String FILE_GAME_VALUES_COURT = "GV_Court.json";
    public static final String FILE_GAME_VALUES_DIFFICULTY = "GV_Difficulty.json";
    public static final String FILE_GAME_VALUES_DIPLOMACY = "GV_Diplomacy.json";
    public static final String FILE_GAME_VALUES_ECONOMY = "GV_Economy.json";
    public static final String FILE_GAME_VALUES_EVENTS = "GV_Events.json";
    public static final String FILE_GAME_VALUES_FOG_OF_WAR = "GV_FogOfWar.json";
    public static final String FILE_GAME_VALUES_GAME_SPEED = "GV_GameSpeed.json";
    public static final String FILE_GAME_VALUES_GAME_UPDATE = "GV_GameUpdate.json";
    public static final String FILE_GAME_VALUES_GAME_UPDATE_AI = "GV_GameUpdateAI.json";
    public static final String FILE_GAME_VALUES_GENERALS = "GV_Generals.json";
    public static final String FILE_GAME_VALUES_GOLDEN_AGES = "GV_GoldenAges.json";
    public static final String FILE_GAME_VALUES_GOVERNMENT = "GV_Government.json";
    public static final String FILE_GAME_VALUES_GROWTH_RATE = "GV_GrowthRate.json";
    public static final String FILE_GAME_VALUES_HOVER = "GV_Hover.json";
    public static final String FILE_GAME_VALUES_HRE = "GV_HRE.json";
    public static final String FILE_GAME_VALUES_INFLATION = "GV_Inflation.json";
    public static final String FILE_GAME_VALUES_INFO = "GV_Info.json";
    public static final String FILE_GAME_VALUES_INFRASTRUCTURE = "GV_Infrastructure.json";
    public static final String FILE_GAME_VALUES_INGAME = "GV_InGame.json";
    public static final String FILE_GAME_VALUES_LAWS = "GV_Laws.json";
    public static final String FILE_GAME_VALUES_LEGACY = "GV_Legacy.json";
    public static final String FILE_GAME_VALUES_LOAN = "GV_Loan.json";
    public static final String FILE_GAME_VALUES_LOGS = "GV_Logs.json";
    public static final String FILE_GAME_VALUES_LUCKY_CIVS = "GV_LuckyCivs.json";
    public static final String FILE_GAME_VALUES_MANPOWER = "GV_Manpower.json";
    public static final String FILE_GAME_VALUES_MAP_MODES = "GV_MapModes.json";
    public static final String FILE_GAME_VALUES_MILITARY_ACADEMY = "GV_MilitaryAcademy.json";
    public static final String FILE_GAME_VALUES_MOVE = "GV_Move.json";
    public static final String FILE_GAME_VALUES_NEWGAME = "GV_NewGame.json";
    public static final String FILE_GAME_VALUES_NOTIFICATIONS = "GV_Notifications.json";
    public static final String FILE_GAME_VALUES_PATH = "gameValues/";
    public static final String FILE_GAME_VALUES_PEACE = "GV_Peace.json";
    public static final String FILE_GAME_VALUES_PLAGUES = "GV_Plagues.json";
    public static final String FILE_GAME_VALUES_PRODUCTION = "GV_Production.json";
    public static final String FILE_GAME_VALUES_PROSPERITY = "GV_Prosperity.json";
    public static final String FILE_GAME_VALUES_PROVINCE = "GV_Province.json";
    public static final String FILE_GAME_VALUES_PROVINCE_BORDER_WAR = "GV_ProvinceBorder.json";
    public static final String FILE_GAME_VALUES_REBELS = "GV_Rebels.json";
    public static final String FILE_GAME_VALUES_RELIGION = "GV_Religion.json";
    public static final String FILE_GAME_VALUES_RESEARCH = "GV_Research.json";
    public static final String FILE_GAME_VALUES_RIVALS = "GV_Rivals.json";
    public static final String FILE_GAME_VALUES_SANDBOX = "GV_Sandbox.json";
    public static final String FILE_GAME_VALUES_SHIPS = "GV_Ships.json";
    public static final String FILE_GAME_VALUES_SIEGE = "GV_Siege.json";
    public static final String FILE_GAME_VALUES_SPY = "GV_Spy.json";
    public static final String FILE_GAME_VALUES_SUPREME_COURT = "GV_SupremeCourt.json";
    public static final String FILE_GAME_VALUES_TAX_EFFICIENCY = "GV_TaxEfficiency.json";
    public static final String FILE_GAME_VALUES_TEXT = "GameValues_Text.json";
    public static final String FILE_GAME_VALUES_VASSAL = "GV_Vassals.json";
    public static final String FILE_GAME_VALUES_WAR = "GV_War.json";
    public static final String FILE_GAME_VALUES_WAR_WEARINESS = "GV_WarWeariness.json";
    public static final String FILE_GAME_VALUES_ZOOM = "GV_Zoom.json";
    public static final String FILE_GAME_WONDERS_IMAGES_BIG_PATH = "wondersImagesBig/";
    public static final String FILE_GAME_WONDERS_IMAGES_PATH = "wondersImages/";
    public static final String FILE_GAME_WONDERS_LIST = "Wonders.json";
    public static final String FILE_GAME_WONDERS_PATH = "wonders/";
    public static final String FILE_GENERALS_1_PATH = "generals/";
    public static final String FILE_GENERALS_2_PATH = "generals2/";
    public static final String FILE_GENERALS_3_PATH = "generals3/";
    public static final String FILE_GENERALS_PATH = "generals/";
    public static final String FILE_GFX_CITIES_2_PATH = "cities2/";
    public static final String FILE_GFX_CITIES_FORT_PATH = "fort/";
    public static final String FILE_GFX_CITIES_PATH = "cities/";
    public static final String FILE_GFX_CLOUDS_PATH = "clouds/";
    public static final String FILE_GFX_GOVERNMENT_PATH = "government/";
    public static final String FILE_GFX_MAP_BORDER = "MapBorder.json";
    public static final String FILE_GFX_MAP_NUKE_PATH = "nuke/";
    public static final String FILE_GFX_MAP_OUTSIDE_MAP_IMG_BELOW = "OutsideMapImages_Below.json";
    public static final String FILE_GFX_MAP_OUTSIDE_MAP_IMG_OVER = "OutsideMapImages_Over.json";
    public static final String FILE_GFX_MAP_PATH = "map/";
    public static final String FILE_GFX_MAP_REBELS_PATH = "rebels/";
    public static final String FILE_GFX_MAP_SPARKS_PATH = "sparks/";
    public static final String FILE_GFX_MAP_UNIONS_PATH = "unions/";
    public static final String FILE_GFX_MOVE_PATH = "move/";
    public static final String FILE_GFX_PATH = "gfx/";
    public static final String FILE_GFX_RELIGION_PATH = "religion/";
    public static final String FILE_IDEOLOGIES_LIST = "Governments.json";
    public static final String FILE_IMAGE_NOT_FOUND = "gfx/imageNotFound.png";
    public static final String FILE_LANGUAGES_CIVS_PATH = "game/languages/civilizations/Bundle";
    public static final String FILE_LANGUAGES_LIST = "languages/Languages.txt";
    public static final String FILE_LANGUAGES_LOADING_PATH = "game/languages/loading/Bundle";
    public static final String FILE_LANGUAGES_MOD_PATH = "languages/Bundle";
    public static final String FILE_LANGUAGES_PATH = "game/languages/Bundle";
    public static final String FILE_LOADING_PATH = "loading/";
    public static final String FILE_MAPS_LIST = "Maps.json";
    public static final String FILE_MAP_AVAILABLE_SCALES = "AvailableScales.txt";
    public static final String FILE_MAP_BACKGROUND2_PATH = "background/zoomOut/";
    public static final String FILE_MAP_BACKGROUND_MINIMAP_PATH = "background/minimap/";
    public static final String FILE_MAP_BACKGROUND_PATH = "background/main/";
    public static final String FILE_MAP_CITIES = "cities/";
    public static final String FILE_MAP_CITIES_0_JSON = "cities.json";
    public static final String FILE_MAP_CITIES_GENERATE = "build_cities.txt";
    public static final String FILE_MAP_CONTINENTS = "Continents.json";
    public static final String FILE_MAP_DATA = "data/";
    public static final String FILE_MAP_DEFINED_SCALES = "DefinedScales.json";
    public static final String FILE_MAP_DEFINED_SCALES_LOW = "DefinedScales_Low.json";
    public static final String FILE_MAP_GEO_REGIONS = "GeographicalRegions.json";
    public static final String FILE_MAP_ICON = "icon.png";
    public static final String FILE_MAP_LINES_SEA = "Lines_Sea.txt";
    public static final String FILE_MAP_OVERLAYS_FILE = "Overlays.json";
    public static final String FILE_MAP_OVERLAYS_HIGH_PATH = "high/";
    public static final String FILE_MAP_OVERLAYS_LOW_PATH = "low/";
    public static final String FILE_MAP_OVERLAYS_PATH = "background/overlays/";
    public static final String FILE_MAP_OVERLAYS_SEA_FILE = "OverlaysSea.json";
    public static final String FILE_MAP_PATH = "map/";
    public static final String FILE_MAP_PROVINCES_IMG = "provinces/";
    public static final String FILE_MAP_SCALES_BG = "scales/";
    public static final String FILE_MAP_SCENARIOS = "scenarios/";
    public static final String FILE_MAP_SCENARIOS_FILE = "Scenarios.txt";
    public static final String FILE_MAP_SCENARIO_ALLIANCES_FILE = "Alliances.json";
    public static final String FILE_MAP_SCENARIO_ALLIANCES_SPECIAL_FILE = "AlliancesSpecial.json";
    public static final String FILE_MAP_SCENARIO_ARMIES_FILE = "Armies.json";
    public static final String FILE_MAP_SCENARIO_BUILDINGS_FILE = "Buildings.json";
    public static final String FILE_MAP_SCENARIO_CHARACTERS_FILE = "Characters.json";
    public static final String FILE_MAP_SCENARIO_CIVS_DESCRIPTIONS_PATH = "descriptions/";
    public static final String FILE_MAP_SCENARIO_CORES_FILE = "Cores.json";
    public static final String FILE_MAP_SCENARIO_DATA_FILE = "Data.json";
    public static final String FILE_MAP_SCENARIO_DATA_LANG_FILE = "Data_";
    public static final String FILE_MAP_SCENARIO_DATA_PROVINCES_FILE = "DataProvinces.json";
    public static final String FILE_MAP_SCENARIO_DEFENSIVE_FILE = "Defensive.json";
    public static final String FILE_MAP_SCENARIO_DESC_FILE = "Desc.txt";
    public static final String FILE_MAP_SCENARIO_DETAILS_FILE = "Details.json";
    public static final String FILE_MAP_SCENARIO_EVENTS_PATH = "events/";
    public static final String FILE_MAP_SCENARIO_GUARANTEE_FILE = "Guarantee.json";
    public static final String FILE_MAP_SCENARIO_MILITARY_ACCESS_FILE = "MilitaryAccess.json";
    public static final String FILE_MAP_SCENARIO_NON_AGGRESSION_FILE = "NonAggression.json";
    public static final String FILE_MAP_SCENARIO_PREVIEW = "preview.png";
    public static final String FILE_MAP_SCENARIO_PREVIEW_MAIN = "previewSpecial.png";
    public static final String FILE_MAP_SCENARIO_RELATIONS_FILE = "Relations.json";
    public static final String FILE_MAP_SCENARIO_RELIGIONS_FILE = "Religions.json";
    public static final String FILE_MAP_SCENARIO_TRUCES_FILE = "Truces.json";
    public static final String FILE_MAP_SCENARIO_WASTELAND_FILE = "Wasteland.txt";
    public static final String FILE_MAP_SUGGESTED_CIVS_PATH = "suggestedCivilizations/";
    public static final String FILE_MODS_CIVS_PATH = "GameCivs/";
    public static final String FILE_MODS_PATH = "mods/";
    public static final String FILE_MODS_TURNED_OFF_FILE = "ModsOff.txt";
    public static final String FILE_MOVE_PATH = "gfx/test_move/";
    public static final String FILE_MUSIC_PATH = "audio/music/";
    public static final String FILE_PROVINCE_DETAILS = "ProvinceDetails.json";
    public static final String FILE_PROVINCE_NAME_POINTS = "ProvinceNamePoints.json";
    public static final String FILE_PROVINCE_NEIGHBORING = "ProvinceNeighboringProvinces/ProvinceNeighboringProvinces";
    public static final String FILE_PROVINCE_POINTS = "ProvincePoints/ProvincePoints";
    public static final String FILE_PROVINCE_POINTS_CROP = "ProvincePoints_Cut/ProvincePoints_Cut";
    public static final String FILE_PROVINCE_REGIONS = "ProvinceOptimizationRegions.txt";
    public static final String FILE_RELIGIONS_LIST = "Religions.json";
    public static final String FILE_SAVES_AUTOSAVE = "Autosave";
    public static final String FILE_SAVES_PATH = "saves/";
    public static final String FILE_SAVE_AI_BUDGET = "AI_Budget.json";
    public static final String FILE_SAVE_AI_CREATE_NEW_ARMY = "AI_CreateNewArmy.json";
    public static final String FILE_SAVE_AI_DIPLOMACY = "AI_Diplomacy.json";
    public static final String FILE_SAVE_AI_MERGE = "AI_Merge.json";
    public static final String FILE_SAVE_CIVS_ADVISORS_ADM = "AdvisorAdministration.json";
    public static final String FILE_SAVE_CIVS_ADVISORS_ADM_BONUSES = "AdvisorAdministrationBonuses.json";
    public static final String FILE_SAVE_CIVS_ADVISORS_ECONOMY = "AdvisorEconomy.json";
    public static final String FILE_SAVE_CIVS_ADVISORS_ECONOMY_BONUSES = "AdvisorEconomyBonuses.json";
    public static final String FILE_SAVE_CIVS_ADVISORS_INNOVATION = "AdvisorInnovation.json";
    public static final String FILE_SAVE_CIVS_ADVISORS_INNOVATION_BONUSES = "AdvisorInnovationBonuses.json";
    public static final String FILE_SAVE_CIVS_ADVISORS_MILITARY = "AdvisorMilitary.json";
    public static final String FILE_SAVE_CIVS_ADVISORS_MILITARY_BONUSES = "AdvisorMilitaryBonuses.json";
    public static final String FILE_SAVE_CIVS_ALLIANCES = "Alliances.json";
    public static final String FILE_SAVE_CIVS_ALLIANCE_SPECIAL = "AllianceSpecial.json";
    public static final String FILE_SAVE_CIVS_BONUSES_TEMPORARY = "BonusesTemp.json";
    public static final String FILE_SAVE_CIVS_CREATE_NEW_ARMY = "RecruitArmyCreate.json";
    public static final String FILE_SAVE_CIVS_DATA = "Civs.json";
    public static final String FILE_SAVE_CIVS_DATA2 = "Civs2.json";
    public static final String FILE_SAVE_CIVS_DATA3 = "Civs3.json";
    public static final String FILE_SAVE_CIVS_DATA4 = "Civs4.json";
    public static final String FILE_SAVE_CIVS_DEFENSIVE = "Defensive.json";
    public static final String FILE_SAVE_CIVS_EVENTS_DATA = "EventsData.json";
    public static final String FILE_SAVE_CIVS_EVENTS_DATA2 = "EventsData2.json";
    public static final String FILE_SAVE_CIVS_EVENTS_DATA3 = "EventsData3.json";
    public static final String FILE_SAVE_CIVS_EVENTS_VARIABLES = "EventsVariables.json";
    public static final String FILE_SAVE_CIVS_EVENTS_VARIABLES_2 = "EventsVariables2.json";
    public static final String FILE_SAVE_CIVS_GENERALS_NOT_ASSIGNED = "GeneralsNotAssigned.json";
    public static final String FILE_SAVE_CIVS_GOLDEN_AGE = "GoldenAge.json";
    public static final String FILE_SAVE_CIVS_GUARANTEE = "Guarantee.json";
    public static final String FILE_SAVE_CIVS_LAWS = "Laws.json";
    public static final String FILE_SAVE_CIVS_LEGACIES = "Legacies.json";
    public static final String FILE_SAVE_CIVS_LOANS = "Loans.json";
    public static final String FILE_SAVE_CIVS_MILITARY_ACCESS = "MilitaryAccess.json";
    public static final String FILE_SAVE_CIVS_MOVE_UNITS = "MoveUnits.json";
    public static final String FILE_SAVE_CIVS_NON_AGGRESSION = "NonAggression.json";
    public static final String FILE_SAVE_CIVS_NUKES_PRODUCTION = "NukesProduction.json";
    public static final String FILE_SAVE_CIVS_RECRUIT_ARMY = "RecruitArmy.json";
    public static final String FILE_SAVE_CIVS_RELATIONS = "Relations.json";
    public static final String FILE_SAVE_CIVS_RELATIONS_2 = "Relations2.json";
    public static final String FILE_SAVE_CIVS_RELATIONS_DAMAGING = "RelationsDamage.json";
    public static final String FILE_SAVE_CIVS_RELATIONS_IMPROVING = "RelationsImprove.json";
    public static final String FILE_SAVE_CIVS_RESEARCH_PROGRESS = "ResearchProgress.json";
    public static final String FILE_SAVE_CIVS_RIVALS = "Rivals.json";
    public static final String FILE_SAVE_CIVS_RULERS = "Rulers.json";
    public static final String FILE_SAVE_CIVS_RULERS_BONUSES = "RulersBonuses.json";
    public static final String FILE_SAVE_CIVS_TRUCES = "Trcues.json";
    public static final String FILE_SAVE_CIVS_UNLOCKED_ADVANTAGES = "Advantages.json";
    public static final String FILE_SAVE_CIVS_UNLOCKED_TECHNOLOGIES = "UnlockedTechnologies.json";
    public static final String FILE_SAVE_CIVS_VASSALS = "Vassals.json";
    public static final String FILE_SAVE_DETAILS = "Details.json";
    public static final String FILE_SAVE_MAP_ACTIVE_PLAGUES = "Plagues.json";
    public static final String FILE_SAVE_MAP_BATTLES = "Battles.json";
    public static final String FILE_SAVE_PLAYER_DATA = "PlayerData.json";
    public static final String FILE_SAVE_PLAYER_STATS = "PlayerStats.json";
    public static final String FILE_SAVE_PLAYER_STATS2 = "PlayerStats2.json";
    public static final String FILE_SAVE_PLAYER_STATS3 = "PlayerStats3.json";
    public static final String FILE_SAVE_PLAYER_STATS4 = "PlayerStats4.json";
    public static final String FILE_SAVE_PROVINCES_DATA = "Provinces_Data.json";
    public static final String FILE_SAVE_PROVINCES_DATA10 = "Provinces_Data10.json";
    public static final String FILE_SAVE_PROVINCES_DATA2 = "Provinces_Data2.json";
    public static final String FILE_SAVE_PROVINCES_DATA3 = "Provinces_Data3.json";
    public static final String FILE_SAVE_PROVINCES_DATA4 = "Provinces_Data4.json";
    public static final String FILE_SAVE_PROVINCES_DATA5 = "Provinces_Data5.json";
    public static final String FILE_SAVE_PROVINCES_DATA6 = "Provinces_Data6.json";
    public static final String FILE_SAVE_PROVINCES_DATA7 = "Provinces_Data7.json";
    public static final String FILE_SAVE_PROVINCES_DATA8 = "Provinces_Data8.json";
    public static final String FILE_SAVE_PROVINCES_DATA9 = "Provinces_Data9.json";
    public static final String FILE_SAVE_PROVINCES_DATA_ARMIES_MORE_FILES = "Provinces_Armies_";
    public static final String FILE_SAVE_PROVINCES_DATA_BUILDINGS_CONSTRUCTION = "Provinces_BuildingsConstruction.json";
    public static final String FILE_SAVE_PROVINCES_DATA_BUILDINGS_MORE_FILES = "Provinces_Buildings_";
    public static final String FILE_SAVE_PROVINCES_DATA_CORES_CONSTRUCTION = "Provinces_CoreCreation.json";
    public static final String FILE_SAVE_PROVINCES_DATA_INVEST = "Provinces_InvestEconomy.json";
    public static final String FILE_SAVE_PROVINCES_DATA_INVEST_GROWTH_RATE = "Provinces_InvestGrowth.json";
    public static final String FILE_SAVE_PROVINCES_DATA_INVEST_INFRASTRUCTURE = "Provinces_InvestInfrastructure.json";
    public static final String FILE_SAVE_PROVINCES_DATA_INVEST_MANPOWER = "Provinces_InvestManpower.json";
    public static final String FILE_SAVE_PROVINCES_DATA_INVEST_TAX = "Provinces_InvestTax.json";
    public static final String FILE_SAVE_PROVINCES_DATA_PLAGUES = "Provinces_Plagues.json";
    public static final String FILE_SAVE_PROVINCES_DATA_POPULATION = "Provinces_Population.json";
    public static final String FILE_SAVE_PROVINCES_DATA_RELIGION_CONVERSION = "Provinces_Conversion.json";
    public static final String FILE_SAVE_PROVINCES_DATA_WONDER_CONSTRUCTION = "Provinces_WonderConstruction.json";
    public static final String FILE_SAVE_REBELS_DATA = "Rebels.json";
    public static final String FILE_SAVE_REBELS_MOVE_UNITS = "RebelsMoveUnits.json";
    public static final String FILE_SAVE_WARS = "Wars.json";
    public static final String FILE_SELECTED_PROVINCES = "selectedProvinces.txt";
    public static final String FILE_SETTINGS_FILE = "Settings.txt";
    public static final String FILE_SETTINGS_PATH = "settings/";
    public static final String FILE_SFX_PATH = "audio/sfx/";
    public static final String FILE_SFX_RANDOM_LIST = "list.txt";
    public static final String FILE_SFX_RANDOM_PATH = "audio/random/";
    public static final String FILE_SOUNDS_PATH = "audio/sounds/";
    public static final String FILE_STATS_LIST_FILE = "AoH.txt";
    public static final String FILE_STATS_PATH = "statistics/";
    public static final String FILE_TERRAIN_IMAGES_PATH = "terrainImages/";
    public static final String FILE_TERRAIN_LIST = "TerrainTypes.json";
    public static final String FILE_TERRAIN_PATH = "terrain/";
    public static final String FILE_TEXTURES_HIGH = "LoadTexturesHigh.txt";
    public static final String FILE_TILES_HOVER_PATH = "hover/";
    public static final String FILE_TILES_MAIN_PATH = "main/";
    public static final String FILE_TILES_OVERLAY_PATH = "overlay/";
    public static final String FILE_TILES_PATH = "gfx/tiles/";
    public static final String FILE_UI_BOXES_PATH = "boxes/";
    public static final String FILE_UI_BUILDINGS_PATH = "buildings/";
    public static final String FILE_UI_BUTTONS_PATH = "buttons/";
    public static final String FILE_UI_FLAGS_PATH = "flags/";
    public static final String FILE_UI_FLAG_PATH = "flag/";
    public static final String FILE_UI_GRADIENT_PATH = "gradients/";
    public static final String FILE_UI_GRAPH_PATH = "graph/";
    public static final String FILE_UI_HRE_PATH = "hre/";
    public static final String FILE_UI_ICONS_PATH = "icons/";
    public static final String FILE_UI_INFO_BOX_PATH = "infoBox/";
    public static final String FILE_UI_LEVEL_PATH = "level/";
    public static final String FILE_UI_LINES_PATH = "lines/";
    public static final String FILE_UI_MAIN_PATH = "mainMenu/";
    public static final String FILE_UI_MENUS_PATH = "menus/";
    public static final String FILE_UI_MESSAGE_PATH = "message/";
    public static final String FILE_UI_MINIMAP_PATH = "minimap/";
    public static final String FILE_UI_OTHER_PATH = "other/";
    public static final String FILE_UI_OVERLAY_PATH = "overlay/";
    public static final String FILE_UI_PATH = "ui/";
    public static final String FILE_UI_PATTERNS_PATH = "ui/patterns/";
    public static final String FILE_UI_PICKER_PATH = "ui/picker/";
    public static final String FILE_UI_PIECHART_PATH = "piechart/";
    public static final String FILE_UI_RULER_PATH = "ruler/";
    public static final String FILE_UI_SCROLL_PATH = "scroll/";
    public static final String FILE_UI_TOP_PATH = "top/";
    public static final String FILE_UI_TUTORIAL_PATH = "tutorial/";
    public static final String FILE_UI_UNITS_PATH = "units/";
    public static final String FILE_UNITS_PATH = "gfx/units/";
    public static int FONT_ARMY = 0;
    public static int FONT_BOLD = 0;
    public static int FONT_BOLD_SMALL = 0;
    public static int FONT_CITIES = 0;
    public static int FONT_REGULAR = 1;
    public static int FONT_REGULAR_SMALL = 1;
    public static int GAME_HEIGHT = 1;
    public static int GAME_WIDTH = 1;
    public static final float GRAPH_DESC_TEXT_SCALE = 0.7f;
    public static final float GRAPH_DESC_TEXT_SCALE2 = 0.8f;
    public static float GUI_SCALE = 1.0f;
    private static final int KEY_LENGTH = 5;
    private static final int KEY_LENGTH2 = 7;
    public static int LEFT_MENU_WIDTH = 400;
    public static int LEFT_MENU_WIDTH2 = 600;
    public static final boolean LOGS = true;
    public static final String LOGS_FILE = "logs.txt";
    public static int PADDING = 5;
    public static final float PROVINCE_ALPHA_GROWTH_RATE = 0.75f;
    public static final float PROVINCE_ALPHA_GROWTH_RATE_INGAME = 0.6f;
    public static final int PROVINCE_OWNER_COLOR_INTERVAL = 725;
    public static final int RESIZE_PADDING_XY = 6;
    public static int TEXT_HEIGHT = 1;
    public static int TEXT_HEIGHT_SMALL = 1;
    public static final String WWW_LUKASZJAKOWSKI = "http://lukaszjakowski.pl";
    public static final String WWW_WIKI = "https://en.wikipedia.org/wiki/";
    public static boolean XHDPI = false;
    public static boolean XXHDPI = false;
    public static long currentTimeMillis = 0;
    public static boolean debugMode = false;
    public static int iCreateScenario_ActiveProvinceID = 0;
    public static boolean isAndroid = false;
    public static boolean isDesktop = true;
    public static boolean isiOS;
    public static Color COLOR_PROVINCE_DASHED = new Color(0.04f, 0.04f, 0.04f, 0.525f);
    public static Color COLOR_PROVINCE_STRAIGHT = new Color(0.0f, 0.0f, 0.0f, 1.0f);
    public static Color COLOR_PROVINCE_STRAIGHT2 = new Color(0.0f, 0.0f, 0.0f, 0.3f);
    public static Color COLOR_PROVINCE_STRAIGHT_WAR = new Color(0.7176471f, 0.35686275f, 0.039215688f, 1.0f);
    public static Color COLOR_PROVINCE_STRAIGHT_WAR2 = new Color(0.54901963f, 0.3019608f, 0.047058824f, 1.0f);
    public static Color COLOR_PROVINCE_STRAIGHT2_WAR = new Color(0.0f, 0.0f, 0.0f, 0.3f);
    public static Color COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE = new Color(0.0f, 0.0f, 0.0f, 1.0f);
    public static Color COLOR_PROVINCE_SEABYSEA = new Color(0.94f, 0.94f, 0.95f, 0.07f);
    public static Color COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER = new Color(0.8235294f, 0.74509805f, 0.039215688f, 1.0f);
    public static Color COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER2 = new Color(0.8235294f, 0.74509805f, 0.039215688f, 0.3f);
    public static boolean brushTool = false;
    public static boolean actionBrush = false;
    public static boolean selectMode = true;
    public static int iCreateScenario_AssignProvinces_Civ = -1;
    public static final Color COLOR_ARMY_TEXT = new Color(0.88235295f, 0.88235295f, 0.27450982f, 1.0f);
    public static int[] rotateXMoveUnits = {0, 0, 0, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 9, 9, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 14, 14, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 0, 0, -1, -1, -1, -2, -2, -2, -3, -3, -3, -4, -4, -4, -5, -5, -5, -5, -5, -6, -6, -6, -7, -7, -7, -7, -8, -8, -8, -8, -8, -8, -8, -8, -9, -9, -9, -10, -10, -11, -11, -11, -11, -12, -12, -12, -13, -13, -13, -13, -13, -13, -13, -14, -14, -14, -14, -14, -14, -14, -14, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -15, -14, -14, -14, -14, -14, -14, -13, -13, -13, -13, -13, -13, -13, -11, -11, -11, -11, -11, -11, -11, -11, -10, -10, -10, -10, -9, -9, -9, -9, -8, -8, -8, -8, -7, -7, -7, -7, -7, -7, -6, -6, -6, -5, -5, -5, -5, -5, -4, -4, -4, -3, -3, -2, -2, -1, -1, -1, -1, -1, 0, 0};
    public static int[] rotateYMoveUnits = {-16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -17, -17, -17, -17, -17, -17, -18, -18, -18, -18, -18, -18, -18, -19, -19, -19, -19, -19, -19, -20, -20, -20, -20, -20, -20, -21, -21, -21, -21, -22, -22, -22, -22, -22, -22, -23, -23, -23, -23, -24, -24, -24, -24, -25, -25, -25, -25, -26, -26, -26, -27, -27, -27, -27, -28, -28, -28, -29, -29, -29, -29, -30, -30, -30, -31, -32, -32, -32, -32, -32, -32, -32, -33, -33, -34, -34, -34, -34, -34, -34, -34, -35, -36, -36, -36, -36, -36, -36, -37, -37, -37, -37, -37, -39, -39, -39, -39, -39, -39, -40, -40, -40, -40, -41, -41, -41, -42, -42, -43, -43, -43, -43, -43, -43, -44, -44, -44, -44, -44, -45, -45, -45, -45, -45, -45, -45, -45, -46, -46, -46, -46, -46, -46, -46, -46, -46, -47, -47, -47, -47, -47, -47, -47, -47, -47, -47, -47, -47, -47, -47, -47, -47, -47, -47, -48, -48, -48, -48, -48, -48, -48, -48, -48, -48, -48, -48, -48, -48, -48, -48, -48, -48, -48, -47, -47, -47, -47, -47, -47, -47, -47, -46, -46, -46, -46, -46, -46, -46, -46, -45, -45, -45, -45, -45, -45, -45, -44, -44, -43, -43, -43, -43, -42, -42, -42, -41, -41, -41, -41, -41, -41, -41, -40, -40, -40, -40, -40, -40, -40, -40, -39, -39, -39, -39, -37, -37, -37, -37, -36, -36, -36, -36, -35, -35, -35, -34, -34, -34, -34, -34, -33, -33, -33, -33, -32, -32, -32, -32, -31, -31, -30, -30, -30, -30, -29, -29, -29, -28, -28, -28, -27, -27, -27, -26, -26, -26, -26, -25, -25, -25, -25, -25, -25, -24, -24, -24, -24, -24, -24, -23, -23, -23, -23, -23, -23, -23, -23, -22, -22, -20, -20, -20, -20, -20, -20, -20, -20, -19, -19, -19, -19, -19, -19, -19, -19, -18, -18, -18, -18, -18, -18, -18, -18, -18, -18, -18, -18, -18, -18, -17, -17, -17, -17, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16, -16};
    public static int[] rotateXMoveUnits_64 = {0, 0, 0, 1, 2, 3, 3, 3, 4, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 11, 12, 13, 13, 13, 14, 14, 14, 15, 15, 16, 16, 17, 17, 18, 19, 19, 19, 20, 20, 20, 21, 21, 21, 22, 22, 22, 23, 23, 24, 24, 25, 25, 25, 26, 26, 26, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 30, 30, 30, 30, 31, 31, 31, 31, 31, 31, 31, 31, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 31, 31, 31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 30, 30, 30, 30, 29, 29, 29, 29, 29, 29, 29, 28, 28, 27, 27, 26, 26, 26, 26, 26, 26, 25, 25, 25, 25, 24, 24, 24, 23, 23, 23, 22, 22, 21, 21, 20, 20, 19, 19, 18, 18, 17, 16, 16, 15, 14, 14, 13, 12, 12, 11, 10, 10, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 4, 3, 3, 2, 2, 1, 1, 0, 0, -1, -1, -2, -3, -3, -4, -5, -5, -6, -7, -7, -8, -9, -9, -9, -10, -10, -11, -12, -12, -13, -13, -14, -14, -15, -15, -15, -15, -16, -16, -16, -16, -17, -18, -18, -19, -20, -21, -21, -22, -22, -23, -23, -24, -25, -25, -25, -26, -26, -26, -26, -27, -27, -27, -28, -28, -28, -28, -28, -29, -29, -29, -29, -30, -30, -30, -30, -30, -30, -30, -30, -30, -30, -31, -31, -31, -31, -31, -31, -31, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -31, -31, -31, -31, -31, -31, -31, -31, -30, -30, -30, -30, -30, -30, -30, -30, -29, -29, -29, -29, -29, -29, -29, -28, -28, -28, -27, -27, -27, -26, -26, -25, -25, -24, -24, -23, -23, -22, -22, -22, -22, -21, -21, -21, -20, -20, -19, -19, -18, -18, -17, -17, -16, -16, -15, -15, -14, -14, -14, -13, -13, -13, -12, -12, -11, -10, -10, -10, -9, -9, -8, -8, -7, -6, -5, -4, -3, -2, -2, -1, -1, -2, 0, 0};
    public static int[] rotateYMoveUnits_64 = {-32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -34, -34, -34, -34, -34, -34, -36, -36, -36, -36, -36, -36, -36, -38, -38, -38, -38, -38, -38, -40, -40, -40, -40, -40, -40, -42, -42, -42, -42, -44, -44, -44, -44, -44, -44, -46, -46, -46, -46, -48, -48, -48, -48, -50, -50, -50, -50, -52, -52, -52, -54, -54, -54, -54, -56, -56, -56, -58, -58, -58, -58, -60, -60, -60, -62, -64, -64, -64, -64, -64, -64, -64, -66, -66, -68, -68, -68, -68, -68, -68, -68, -70, -72, -72, -72, -72, -72, -72, -74, -74, -74, -74, -74, -78, -78, -78, -78, -78, -78, -80, -80, -80, -80, -82, -82, -82, -84, -84, -86, -86, -86, -86, -86, -86, -88, -88, -88, -88, -88, -90, -90, -90, -90, -90, -90, -90, -90, -92, -92, -92, -92, -92, -92, -92, -92, -92, -94, -94, -94, -94, -94, -94, -94, -94, -94, -94, -94, -94, -94, -94, -94, -94, -94, -94, -96, -96, -96, -96, -96, -96, -96, -96, -96, -96, -96, -96, -96, -96, -96, -96, -96, -96, -96, -94, -94, -94, -94, -94, -94, -94, -94, -92, -92, -92, -92, -92, -92, -92, -92, -90, -90, -90, -90, -90, -90, -90, -88, -88, -86, -86, -86, -86, -84, -84, -84, -82, -82, -82, -82, -82, -82, -82, -80, -80, -80, -80, -80, -80, -80, -80, -78, -78, -78, -78, -74, -74, -74, -74, -72, -72, -72, -72, -70, -70, -70, -68, -68, -68, -68, -68, -66, -66, -66, -66, -64, -64, -64, -64, -62, -62, -60, -60, -60, -60, -58, -58, -58, -56, -56, -56, -54, -54, -54, -52, -52, -52, -52, -50, -50, -50, -50, -50, -50, -48, -48, -48, -48, -48, -48, -46, -46, -46, -46, -46, -46, -46, -46, -44, -44, -40, -40, -40, -40, -40, -40, -40, -40, -38, -38, -38, -38, -38, -38, -38, -38, -36, -36, -36, -36, -36, -36, -36, -36, -36, -36, -36, -36, -36, -36, -34, -34, -34, -34, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32, -32};
    public static boolean reverseDirectionX = true;
    public static boolean reverseDirectionY = true;
    public static int UIScale = 0;
    public static char[] suffix = {' ', 'k', 'M', 'B', 'T', 'P', 'E'};
    public static boolean append = false;
    public static int appendNum = 0;
    public static Color[] COLOR_GROWTH_RATE = {new Color(1.0f, 0.9764706f, 0.64705884f, 0.75f), new Color(0.99607843f, 0.9607843f, 0.0f, 0.75f), new Color(0.99607843f, 0.8901961f, 0.0f, 0.75f), new Color(0.99607843f, 0.7490196f, 0.0f, 0.75f), new Color(0.99607843f, 0.60784316f, 0.0f, 0.75f), new Color(0.99607843f, 0.42352942f, 0.0f, 0.75f), new Color(0.99607843f, 0.23529412f, 0.0f, 0.75f), new Color(0.8627451f, 0.0f, 0.0f, 0.75f), new Color(0.54901963f, 0.0f, 0.0f, 0.75f), new Color(0.39215687f, 0.0f, 0.0f, 0.75f), new Color(0.3137255f, 0.0f, 0.0f, 0.75f)};

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.CFG$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$badlogic$gdx$Application$ApplicationType;

        static {
            int[] iArr = new int[Application.ApplicationType.values().length];
            $SwitchMap$com$badlogic$gdx$Application$ApplicationType = iArr;
            try {
                iArr[Application.ApplicationType.Android.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$Application$ApplicationType[Application.ApplicationType.iOS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$badlogic$gdx$Application$ApplicationType[Application.ApplicationType.Desktop.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static void LOG(String str) {
        LOG("DEFAULT", str);
        if (GameValues.logs.SAVE_LOGS_TO_FILE) {
            (FileManager.IS_MAC ? Gdx.files.external(LOGS_FILE) : Gdx.files.local(LOGS_FILE)).writeString("\n" + str, append);
            append = true;
            int i = appendNum;
            appendNum = i + 1;
            if (i > GameValues.logs.SAVE_LOGS_LIMIT) {
                append = false;
                appendNum = 0;
            }
        }
    }

    public static void LOG(String str, String str2) {
        Gdx.app.log(str, str2);
        if (GameValues.logs.SAVE_LOGS_TO_FILE) {
            boolean z = FileManager.IS_MAC;
            String str3 = lJxd.voVTbclGdp;
            FileHandle fileHandleExternal = z ? Gdx.files.external(str3) : Gdx.files.local(str3);
            fileHandleExternal.writeString("\n[" + str + "] ", append);
            append = true;
            fileHandleExternal.writeString(str2, true);
            int i = appendNum;
            appendNum = i + 1;
            if (i > GameValues.logs.SAVE_LOGS_LIMIT) {
                append = false;
                appendNum = 0;
            }
        }
    }

    public static void LOG(Throwable th) {
        th.printStackTrace();
        Game.menuManager.addToast_Error(th.toString());
        if (GameValues.logs.SAVE_LOGS_TO_FILE) {
            FileHandle fileHandleExternal = FileManager.IS_MAC ? Gdx.files.external(LOGS_FILE) : Gdx.files.local(LOGS_FILE);
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            fileHandleExternal.writeString(stringWriter.toString(), append);
            append = true;
            int i = appendNum;
            appendNum = i + 1;
            if (i > GameValues.logs.SAVE_LOGS_LIMIT) {
                append = false;
                appendNum = 0;
            }
        }
    }

    public static final float changeAnimationPos(int i, float f, boolean z, int i2) {
        float f2;
        int i3 = -1;
        switch (i) {
            case 0:
            case 1:
            case 12:
                f2 = (i2 * 2.5f) / 100.0f;
                if (!z) {
                }
                return f - (f2 * i3);
            case 2:
            case 3:
            case 10:
            case 11:
                f2 = (i2 * 5.0f) / 100.0f;
                if (!z) {
                }
                return f - (f2 * i3);
            case 4:
            case 5:
            case 8:
            case 9:
                f2 = (i2 * 10.0f) / 100.0f;
                if (!z) {
                }
                return f - (f2 * i3);
            case 6:
            case 7:
                f2 = (i2 * 15.0f) / 100.0f;
                if (!z) {
                }
                return f - (f2 * i3);
            case 13:
                return (-i2) * (z ? -1 : 1);
            default:
                return f;
        }
        i3 = 1;
        return f - (f2 * i3);
    }

    public static String checkName(String str) {
        if (str == null) {
            return str;
        }
        try {
            StringBuilder sb = new StringBuilder();
            int length = str.length();
            for (int i = 0; i < length; i++) {
                if (Renderer.charset.indexOf(str.charAt(i)) == -1) {
                    sb.append(Normalizer.normalize("" + str.charAt(i), Normalizer.Form.NFD).replaceAll("\\p{InCombiningDiacriticalMarks}+", ""));
                } else {
                    sb.append(str.charAt(i));
                }
            }
            return sb.toString();
        } catch (Exception e) {
            exceptionStack(e);
            return str;
        }
    }

    public static final boolean compareAlphabetic_TwoString(String str, String str2) {
        for (int i = 0; i < str.length() && i < str2.length() && str.charAt(i) >= str2.charAt(i); i++) {
            if (str.charAt(i) != str2.charAt(i)) {
                return true;
            }
        }
        return false;
    }

    public static void exceptionStack(Throwable th) {
        th.printStackTrace();
        if (GameValues.logs.SAVE_LOGS_TO_FILE) {
            FileHandle fileHandleExternal = FileManager.IS_MAC ? Gdx.files.external(LOGS_FILE) : Gdx.files.local(LOGS_FILE);
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            fileHandleExternal.writeString(stringWriter.toString(), append);
            append = true;
            int i = appendNum;
            appendNum = i + 1;
            if (i > GameValues.logs.SAVE_LOGS_LIMIT) {
                append = false;
                appendNum = 0;
            }
        }
    }

    public static final String extraRandomTag() {
        StringBuilder sb = new StringBuilder(5);
        for (int i = 0; i < 5; i++) {
            sb.append(ALPHABET.charAt(Game.oR.nextInt(62)));
        }
        return sb.toString();
    }

    public static final String extraRandomTag2() {
        StringBuilder sb = new StringBuilder(7);
        for (int i = 0; i < 7; i++) {
            sb.append(ALPHABET.charAt(Game.oR.nextInt(62)));
        }
        return sb.toString();
    }

    public static final String extraRandomTag_Old() {
        Random random = new Random();
        String str = "";
        for (int i = 0; i < 5; i++) {
            str = str + ((char) (random.nextInt(26) + 97));
        }
        return str;
    }

    public static final Color getColorMixed(Color color, Color color2) {
        float f = 1.0f - ((1.0f - color.a) * (1.0f - color2.a));
        return new Color(((color2.r * color2.a) / f) + (((color.r * color.a) * (1.0f - color2.a)) / f), ((color2.g * color2.a) / f) + (((color.g * color.a) * (1.0f - color2.a)) / f), ((color2.b * color2.a) / f) + (((color.b * color.a) * (1.0f - color2.a)) / f), color.a);
    }

    public static final Color getColorMixed_2(Color color, Color color2) {
        return new Color((color2.r * GameValues.vassal.VASSAL_COLOR_LORD_PERC) + (color.r * GameValues.vassal.VASSAL_COLOR_VASSAL_PERC), (color2.g * GameValues.vassal.VASSAL_COLOR_LORD_PERC) + (color.g * GameValues.vassal.VASSAL_COLOR_VASSAL_PERC), (color2.b * GameValues.vassal.VASSAL_COLOR_LORD_PERC) + (color.b * GameValues.vassal.VASSAL_COLOR_VASSAL_PERC), color.a);
    }

    public static final float getColorStep(float f, float f2, float f3, float f4) {
        int i = (f > f2 ? 1 : (f == f2 ? 0 : -1));
        return f + (((f2 - f) * f3) / f4);
    }

    public static final float getColorStep(int i, int i2, int i3, int i4) {
        return (i + (((i2 - i) * i3) / i4)) / 255.0f;
    }

    public static final Color getColorStep(Color color, Color color2, int i, int i2, float f) {
        float f2 = color.r;
        int i3 = (color.r > color2.r ? 1 : (color.r == color2.r ? 0 : -1));
        float f3 = f2 + (((color2.r - color.r) * i) / i2);
        float f4 = color.g;
        int i4 = (color.g > color2.g ? 1 : (color.g == color2.g ? 0 : -1));
        float f5 = f4 + (((color2.g - color.g) * i) / i2);
        float f6 = color.b;
        int i5 = (color.b > color2.b ? 1 : (color.b == color2.b ? 0 : -1));
        return new Color(f3, f5, f6 + (((color2.b - color.b) * i) / i2), f);
    }

    public static final Color getColorStep_WithAlpha(Color color, Color color2, int i, int i2) {
        float f = color.r;
        int i3 = (color.r > color2.r ? 1 : (color.r == color2.r ? 0 : -1));
        float f2 = f + (((color2.r - color.r) * i) / i2);
        float f3 = color.g;
        int i4 = (color.g > color2.g ? 1 : (color.g == color2.g ? 0 : -1));
        float f4 = f3 + (((color2.g - color.g) * i) / i2);
        float f5 = color.b;
        int i5 = (color.b > color2.b ? 1 : (color.b == color2.b ? 0 : -1));
        float f6 = f5 + (((color2.b - color.b) * i) / i2);
        float f7 = color.a;
        int i6 = (color.a > color2.a ? 1 : (color.a == color2.a ? 0 : -1));
        return new Color(f2, f4, f6, f7 + (((color2.a - color.a) * i) / i2));
    }

    public static final int getDarker(int i, int i2) {
        return Math.round(Math.max(0, i - i2));
    }

    public static final Color getDarker(Color color, int i, float f) {
        float f2 = i;
        return new Color(Math.max(0.0f, (color.r * 255.0f) - f2) / 255.0f, Math.max(0.0f, (color.g * 255.0f) - f2) / 255.0f, Math.max(0.0f, (color.b * 255.0f) - f2) / 255.0f, f);
    }

    public static final Color getGrowthRateColor(int i, float f) {
        switch (i / 10) {
            case 0:
                Color[] colorArr = COLOR_GROWTH_RATE;
                return getColorStep(colorArr[0], colorArr[1], i % 10, 10, f);
            case 1:
                Color[] colorArr2 = COLOR_GROWTH_RATE;
                return getColorStep(colorArr2[1], colorArr2[2], i % 10, 10, f);
            case 2:
                Color[] colorArr3 = COLOR_GROWTH_RATE;
                return getColorStep(colorArr3[2], colorArr3[3], i % 10, 10, f);
            case 3:
                Color[] colorArr4 = COLOR_GROWTH_RATE;
                return getColorStep(colorArr4[3], colorArr4[4], i % 10, 10, f);
            case 4:
                Color[] colorArr5 = COLOR_GROWTH_RATE;
                return getColorStep(colorArr5[4], colorArr5[5], i % 10, 10, f);
            case 5:
                Color[] colorArr6 = COLOR_GROWTH_RATE;
                return getColorStep(colorArr6[5], colorArr6[6], i % 10, 10, f);
            case 6:
                Color[] colorArr7 = COLOR_GROWTH_RATE;
                return getColorStep(colorArr7[6], colorArr7[7], i % 10, 10, f);
            case 7:
                Color[] colorArr8 = COLOR_GROWTH_RATE;
                return getColorStep(colorArr8[7], colorArr8[8], i % 10, 10, f);
            case 8:
                Color[] colorArr9 = COLOR_GROWTH_RATE;
                return getColorStep(colorArr9[8], colorArr9[9], i % 10, 10, f);
            case 9:
                Color[] colorArr10 = COLOR_GROWTH_RATE;
                return getColorStep(colorArr10[9], colorArr10[10], i % 10, 10, f);
            case 10:
                Color[] colorArr11 = COLOR_GROWTH_RATE;
                float f2 = colorArr11[colorArr11.length - 1].r;
                Color[] colorArr12 = COLOR_GROWTH_RATE;
                float f3 = colorArr12[colorArr12.length - 1].g;
                Color[] colorArr13 = COLOR_GROWTH_RATE;
                return new Color(f2, f3, colorArr13[colorArr13.length - 1].b, f);
            default:
                Color[] colorArr14 = COLOR_GROWTH_RATE;
                float f4 = colorArr14[colorArr14.length - 1].r;
                Color[] colorArr15 = COLOR_GROWTH_RATE;
                float f5 = colorArr15[colorArr15.length - 1].g;
                Color[] colorArr16 = COLOR_GROWTH_RATE;
                return new Color(f4, f5, colorArr16[colorArr16.length - 1].b, f);
        }
    }

    public static final Color getLighter(Color color, int i, float f) {
        float f2 = i;
        return new Color(Math.min(255.0f, (color.r * 255.0f) + f2) / 255.0f, Math.min(255.0f, (color.g * 255.0f) + f2) / 255.0f, Math.min(255.0f, (color.b * 255.0f) + f2) / 255.0f, f);
    }

    public static boolean getMetProvince(int i) {
        return true;
    }

    public static final String getNumberWithSpaces(String str) {
        int length = str.length();
        String string = "";
        while (true) {
            int i = 0;
            if (length <= 0) {
                break;
            }
            StringBuilder sb = new StringBuilder(CvuNnwgYwe.FAYBeAq);
            int i2 = length - 3;
            if (i2 > 0) {
                i = i2;
            }
            string = sb.append(str.substring(i, length)).append(string).toString();
            length -= 3;
        }
        return string.charAt(0) == ' ' ? string.substring(1, string.length()) : string;
    }

    public static final String getNumber_SHORT(int i) {
        StringBuilder sbAppend;
        String str;
        StringBuilder sbAppend2;
        String str2;
        if (i < 1000) {
            return "" + i;
        }
        String str3 = ALZmnpZHj.sYqHnCmfxpXdK;
        if (i >= 1000000) {
            String str4 = "" + (i / 1000000.0f);
            try {
                StringBuilder sb = new StringBuilder("");
                if (str4.charAt(str4.indexOf(str3) + 1) == '0') {
                    sbAppend = new StringBuilder("").append(i / 1000);
                    str = Game.lang.get("Value_Million");
                } else {
                    sbAppend = new StringBuilder().append(str4.substring(0, str4.indexOf(str3) + 2));
                    str = Game.lang.get("Value_Million");
                }
                return sb.append(sbAppend.append(str).toString()).toString();
            } catch (IndexOutOfBoundsException unused) {
                return "" + (i / 1000) + Game.lang.get("Value_Million");
            }
        }
        String str5 = "" + (i / 1000.0f);
        try {
            Gdx.app.log("AoC", "" + str5.charAt(str5.indexOf(str3) + 1));
            StringBuilder sb2 = new StringBuilder("");
            if (str5.charAt(str5.indexOf(str3) + 1) == '0') {
                sbAppend2 = new StringBuilder("").append(i / 1000);
                str2 = Game.lang.get("Value_Thousand");
            } else {
                sbAppend2 = new StringBuilder().append(str5.substring(0, str5.indexOf(str3) + 2));
                str2 = Game.lang.get("Value_Thousand");
            }
            return sb2.append(sbAppend2.append(str2).toString()).toString();
        } catch (IndexOutOfBoundsException unused2) {
            return "" + (i / 1000) + Game.lang.get("Value_Thousand");
        }
    }

    public static final String getPercentage(float f, int i) {
        return ("" + f).substring(0, Math.min(i, ("" + f).length()));
    }

    public static final String getPercentage(int i, int i2, int i3) {
        float f = (i / i2) * 100.0f;
        double d = f;
        return d - Math.floor(d) == 0.0d ? "" + ((int) f) : ("" + f).substring(0, Math.min(i3, ("" + f).length()));
    }

    public static final String getPrecision2(double d, int i) {
        String strSubstring = "" + (((int) (d * ((double) i))) / i);
        while (strSubstring.length() > 1 && strSubstring.indexOf(46) >= 0 && strSubstring.charAt(strSubstring.length() - 1) == '0') {
            try {
                strSubstring = strSubstring.substring(0, strSubstring.length() - 2);
            } catch (Exception unused) {
                return strSubstring;
            }
        }
        return strSubstring.indexOf(46) == strSubstring.length() - 1 ? strSubstring.substring(0, strSubstring.length() - 2) : strSubstring;
    }

    public static final String getPrecision2(float f, int i) {
        float f2 = i;
        String strSubstring = "" + (((int) (f * f2)) / f2);
        while (strSubstring.length() > 1 && strSubstring.indexOf(46) >= 0 && strSubstring.charAt(strSubstring.length() - 1) == '0') {
            try {
                strSubstring = strSubstring.substring(0, strSubstring.length() - 2);
            } catch (Exception unused) {
                return strSubstring;
            }
        }
        return strSubstring.indexOf(46) == strSubstring.length() - 1 ? strSubstring.substring(0, strSubstring.length() - 2) : strSubstring;
    }

    public static Color getRandomColor() {
        return new Color(Game.oR.nextInt(256) / 255.0f, Game.oR.nextInt(256) / 255.0f, Game.oR.nextInt(256) / 255.0f, 1.0f);
    }

    protected static Point_XY getRandomPointToCenterTheMap() {
        Random random = new Random();
        return new Point_XY(random.nextInt(Game.mapBG.getWidth() / Game.mapBG.iMapScale), random.nextInt(Game.mapBG.getHeight() / Game.mapBG.iMapScale));
    }

    public static final String getRescouresPath() {
        if (XXHDPI) {
            return "interface/XXH/";
        }
        return XHDPI ? "interface/XH/" : "interface/H/";
    }

    public static final String getRescouresPath_Short() {
        if (XXHDPI) {
            return "XXH/";
        }
        return XHDPI ? "XH/" : "H/";
    }

    public static final String getRescouresPath_Short_H() {
        return "H/";
    }

    public static String getShortNumber(int i) {
        double d = i;
        try {
            int iFloor = (int) Math.floor(Math.log10(d));
            int i2 = iFloor / 3;
            if (iFloor < 3 || i2 >= suffix.length) {
                return new DecimalFormat("#,##0").format(i);
            }
            String strReplace = new DecimalFormat("#0.0").format(d / Math.pow(10.0d, i2 * 3)).replace(",", ".");
            while (strReplace.length() > 1 && strReplace.indexOf(46) >= 0 && strReplace.charAt(strReplace.length() - 1) == '0') {
                strReplace = strReplace.substring(0, strReplace.length() - 2);
            }
            return strReplace + suffix[i2];
        } catch (Exception e) {
            exceptionStack(e);
            return "" + i;
        }
    }

    public static String getShortNumber(long j) {
        double d = j;
        try {
            int iFloor = (int) Math.floor(Math.log10(d));
            int i = iFloor / 3;
            if (iFloor < 3 || i >= suffix.length) {
                return new DecimalFormat("#,##0").format(j);
            }
            String strReplace = new DecimalFormat("#0.0").format(d / Math.pow(10.0d, i * 3)).replace(",", ".");
            while (strReplace.length() > 1 && strReplace.indexOf(46) >= 0 && strReplace.charAt(strReplace.length() - 1) == '0') {
                strReplace = strReplace.substring(0, strReplace.length() - 2);
            }
            return strReplace + suffix[i];
        } catch (Exception e) {
            exceptionStack(e);
            return "" + j;
        }
    }

    public static final int getUIScale() {
        if (XXHDPI) {
            return 2;
        }
        return XHDPI ? 1 : 0;
    }

    public static final boolean isAndroid() {
        return Gdx.app.getType() == Application.ApplicationType.Android || Gdx.app.getType() == Application.ApplicationType.iOS;
    }

    public static final boolean isDesktop() {
        return Gdx.app.getType() == Application.ApplicationType.Desktop;
    }

    public static final boolean isIOS() {
        return Gdx.app.getType() == Application.ApplicationType.iOS;
    }

    public static final String readFile(String str) {
        try {
            return FileManager.loadFile(str).readString();
        } catch (GdxRuntimeException e) {
            LOG(e);
            LOG("CFG.readFile() - ERROR" + str);
            Game.menuManager.addToast_Error("CFG.readFile() - ERROR" + str);
            return "";
        }
    }

    public static final boolean readLocalFiles() {
        int i = AnonymousClass1.$SwitchMap$com$badlogic$gdx$Application$ApplicationType[Gdx.app.getType().ordinal()];
        return i == 1 || i == 2;
    }

    public final String getDev() {
        return "Łukasz Jakowski";
    }
}
