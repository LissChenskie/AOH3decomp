package aoc.kingdoms.lukasz.jakowski;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.jakowski.AI.Values.AI_Values;
import aoc.kingdoms.lukasz.jakowski.AI.Values.AI_ValuesArmies;
import aoc.kingdoms.lukasz.jakowski.AI.Values.AI_ValuesBuild;
import aoc.kingdoms.lukasz.jakowski.AI.Values.AI_ValuesConvert;
import aoc.kingdoms.lukasz.jakowski.AI.Values.AI_ValuesCores;
import aoc.kingdoms.lukasz.jakowski.AI.Values.AI_ValuesDiplomacy;
import aoc.kingdoms.lukasz.jakowski.Missions.MissionTree;
import aoc.kingdoms.lukasz.menu.HoverManager;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.Json;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class GameValues {
    public static int iGoldenAge_MilitarySize;
    public static int iGoldenAge_ProsperitySize;
    public static int iGoldenAge_ScienceSize;
    public static GameValue value = new GameValue();
    public static GameValue_Text text = new GameValue_Text();
    public static GameValue_Notifications notifications = new GameValue_Notifications();
    public static GameValue_GameSpeed gameSpeed = new GameValue_GameSpeed();
    public static GameValue_Events events = new GameValue_Events();
    public static GameValue_FOG fog = new GameValue_FOG();
    public static GameValue_Diplomacy diplomacy = new GameValue_Diplomacy();
    public static GameValue_HRE hre = new GameValue_HRE();
    public static GameValue_BattleTactics battleTactics = new GameValue_BattleTactics();
    public static GameValue_Court court = new GameValue_Court();
    public static GameValue_GoldenAge goldenAge = new GameValue_GoldenAge();
    public static GameValue_Manpower manpower = new GameValue_Manpower();
    public static GameValue_Generals generals = new GameValue_Generals();
    public static GameValue_Advisors advisors = new GameValue_Advisors();
    public static GameValue_Atomic atomic = new GameValue_Atomic();
    public static GameValue_Infrastructure infrastructure = new GameValue_Infrastructure();
    public static GameValue_Peace peace = new GameValue_Peace();
    public static GameValue_TaxEfficiency tax = new GameValue_TaxEfficiency();
    public static GameValue_Spy spy = new GameValue_Spy();
    public static GameValue_Budget budget = new GameValue_Budget();
    public static GameValue_MilitaryAcademy militaryAcademy = new GameValue_MilitaryAcademy();
    public static GameValue_Economy economy = new GameValue_Economy();
    public static GameValue_GrowthRate growthRate = new GameValue_GrowthRate();
    public static GameValue_Production production = new GameValue_Production();
    public static GameValue_Prosperity prosperity = new GameValue_Prosperity();
    public static GameValue_Capital capital = new GameValue_Capital();
    public static GameValue_CivRank civRank = new GameValue_CivRank();
    public static GameValue_Buildings buildings = new GameValue_Buildings();
    public static GameValue_Battle battle = new GameValue_Battle();
    public static GameValue_Siege siege = new GameValue_Siege();
    public static GameValue_Colonization colonization = new GameValue_Colonization();
    public static GameValue_SupremeCourt supremeCourt = new GameValue_SupremeCourt();
    public static GameValue_Loan loan = new GameValue_Loan();
    public static GameValue_War war = new GameValue_War();
    public static GameValue_Vassal vassal = new GameValue_Vassal();
    public static GameValue_Army army = new GameValue_Army();
    public static GameValue_Core core = new GameValue_Core();
    public static GameValue_Religion religion = new GameValue_Religion();
    public static GameValue_Province province = new GameValue_Province();
    public static GameValue_Research research = new GameValue_Research();
    public static GameValue_Laws laws = new GameValue_Laws();
    public static GameValue_Plagues plagues = new GameValue_Plagues();
    public static GameValue_Legacy legacy = new GameValue_Legacy();
    public static GameValue_Government government = new GameValue_Government();
    public static GameValue_Inflation inflation = new GameValue_Inflation();
    public static GameValue_ClickAnimation clickAnim = new GameValue_ClickAnimation();
    public static GameValue_Ships ships = new GameValue_Ships();
    public static GameValue_Console console = new GameValue_Console();
    public static GameValue_Rivals rivals = new GameValue_Rivals();
    public static GameValue_AggressiveExpansion aggressiveExpansion = new GameValue_AggressiveExpansion();
    public static GameValue_WarWeariness warWeariness = new GameValue_WarWeariness();
    public static GameValue_Difficulty difficulty = new GameValue_Difficulty();
    public static GameValue_CivStability civStability = new GameValue_CivStability();
    public static GameValue_MapModes mapModes = new GameValue_MapModes();
    public static GameValue_Advantages advantages = new GameValue_Advantages();
    public static GameValue_Sandbox sandbox = new GameValue_Sandbox();
    public static GameValue_Rebels rebels = new GameValue_Rebels();
    public static GameValue_GameUpdate gameUpdate = new GameValue_GameUpdate();
    public static GameValue_GameUpdate_AI gameUpdateAI = new GameValue_GameUpdate_AI();
    public static GameValue_ProvinceBorderWar provinceBorderWar = new GameValue_ProvinceBorderWar();
    public static GameValue_Hover hover = new GameValue_Hover();
    public static GameValue_LuckyCivs luckyCivs = new GameValue_LuckyCivs();
    public static GameValue_Zoom zoom = new GameValue_Zoom();
    public static GameValue_InGame inGame = new GameValue_InGame();
    public static GameValue_Info info = new GameValue_Info();
    public static GameValue_NewGame newGame = new GameValue_NewGame();
    public static GameValue_Move move = new GameValue_Move();
    public static GameValue_Logs logs = new GameValue_Logs();

    public static class GameValue {
        public int[] AUTO_SAVE_DAYS;
        public int AUTO_SAVE_SLOTS;
        public boolean AUTO_SAVE_SPECTATOR;
        public int AUTO_SAVE_STATS_DAYS;
        public int DEFAULT_FONT_ARMY_SIZE;
        public int DEFAULT_FONT_ARMY_SIZE_2;
        public int DEFAULT_FONT_SIZE;
        public boolean DRAW_DIPLOMACY_LINES_WAR_DECLARED;
        public boolean DRAW_DIPLOMACY_LINES_WHEN_ALLIANCE_SIGNED;
        public boolean DRAW_DIPLOMACY_LINES_WHEN_DEFENSIVE_PACT_SIGNED;
        public boolean DRAW_DIPLOMACY_LINES_WHEN_NON_AGGRESSION_SIGNED;
        public int FBO_NUM_TO_GENERATE_NAMES;
        public int FBO_NUM_TO_GENERATE_PB;
        public int LOADING_NUM_OF_PROVINCES_MOBILE;
        public int LOADING_NUM_OF_PROVINCES_PC;
        public boolean LOAD_HOVERED_SEA_PROVINCE;
        public boolean LOAD_SEA_PROVINCES;
        public boolean MOBILE_DISABLE_FBO;
        public boolean MOBILE_DISABLE_MAP_OVERLAYS;
        public boolean MOBILE_DISABLE_SEA_WAVES;
        public boolean MOBILE_HIDE_MINIMAP;
        public boolean MOBILE_LOAD_AMBIENCE;
        public boolean MOBILE_LOAD_CITIES_2;
        public boolean MOBILE_LOAD_CLOUDS;
        public int PADDING;
        public int SAVE_PROVINCES_ARMIES_PER_FILE;
        public int SAVE_PROVINCES_BUILDINGS_PER_FILE;
        public boolean SETTINGS_MENU_DRAW_TIMES;
        public int SETTINGS_MENU_UPDATE_TIME;
    }

    public static class GameValue_Advantages {
        public int ADVANTAGES_RANDOM_INIT;
        public int ADVANTAGES_RANDOM_INIT_RANDOM;
        public int ADVANTAGE_POINTS_START_GAME;
        public int ADVANTAGE_POINTS_START_GAME_RANDOM;
    }

    public static class GameValue_Advisors {
        public float ADVISOR_ARMY_MAINTENANCE_MIN;
        public float ADVISOR_ARMY_MAINTENANCE_RANDOM;
        public float ADVISOR_ARMY_MOVEMENT_SPEED_MIN;
        public float ADVISOR_ARMY_MOVEMENT_SPEED_RANDOM;
        public float ADVISOR_BONUSES_UPGRADE_PER_LEVEL;
        public float ADVISOR_CONSTRUCTION_COST_MIN;
        public float ADVISOR_CONSTRUCTION_COST_RANDOM;
        public float ADVISOR_CONSTRUCTION_GROUP_COST_MIN;
        public float ADVISOR_CONSTRUCTION_GROUP_COST_RANDOM;
        public float ADVISOR_CONSTRUCTION_TIME_MIN;
        public float ADVISOR_CONSTRUCTION_TIME_RANDOM;
        public float ADVISOR_CONVERT_RELIGION_COST_MIN;
        public float ADVISOR_CONVERT_RELIGION_COST_RANDOM;
        public float ADVISOR_CORE_COST_MIN;
        public float ADVISOR_CORE_COST_RANDOM;
        public float ADVISOR_DEVELOP_INFRASTRUCTURE_COST_MIN;
        public float ADVISOR_DEVELOP_INFRASTRUCTURE_COST_RANDOM;
        public float ADVISOR_GENERAL_ATTACK_MIN;
        public float ADVISOR_GENERAL_ATTACK_RANDOM;
        public float ADVISOR_GENERAL_DEFENSE_MIN;
        public float ADVISOR_GENERAL_DEFENSE_RANDOM;
        public float ADVISOR_GROWTH_RATE_MIN;
        public float ADVISOR_GROWTH_RATE_RANDOM;
        public float ADVISOR_IMPROVE_RELATIONS_MIN;
        public float ADVISOR_IMPROVE_RELATIONS_RANDOM;
        public float ADVISOR_INCOME_PRODUCTION_MIN;
        public float ADVISOR_INCOME_PRODUCTION_RANDOM;
        public float ADVISOR_INCREASE_GROWTH_RATE_COST_MIN;
        public float ADVISOR_INCREASE_GROWTH_RATE_COST_RANDOM;
        public float ADVISOR_INCREASE_MANPOWER_COST_MIN;
        public float ADVISOR_INCREASE_MANPOWER_COST_RANDOM;
        public float ADVISOR_INCREASE_TAX_EFFICIENCY_COST_MIN;
        public float ADVISOR_INCREASE_TAX_EFFICIENCY_COST_RANDOM;
        public float ADVISOR_INVEST_COST_MIN;
        public float ADVISOR_INVEST_COST_RANDOM;
        public float ADVISOR_LEGACY_MIN;
        public float ADVISOR_LEGACY_RANDOM;
        public float ADVISOR_LOAN_INTEREST_MIN;
        public float ADVISOR_LOAN_INTEREST_RANDOM;
        public int ADVISOR_MAX_LVL;
        public float ADVISOR_MAX_MANPOWER_MIN;
        public float ADVISOR_MAX_MANPOWER_RANDOM;
        public float ADVISOR_PRODUCTION_EFFICIENCY_MIN;
        public float ADVISOR_PRODUCTION_EFFICIENCY_RANDOM;
        public float ADVISOR_PROMOTE_COST_LEGACY_PER_LEVEL;
        public float ADVISOR_PROMOTE_COST_PER_LEVEL;
        public float ADVISOR_PROVINCE_MAINTENANCE_MIN;
        public float ADVISOR_PROVINCE_MAINTENANCE_RANDOM;
        public float ADVISOR_RECRUITMENT_TIME_MIN;
        public float ADVISOR_RECRUITMENT_TIME_RANDOM;
        public float ADVISOR_RECRUIT_ARMY_COST_MIN;
        public float ADVISOR_RECRUIT_ARMY_COST_RANDOM;
        public float ADVISOR_REGIMENTS_LIMIT_MIN;
        public float ADVISOR_REGIMENTS_LIMIT_RANDOM;
        public float ADVISOR_RESEARCH_MIN;
        public float ADVISOR_RESEARCH_RANDOM;
        public float ADVISOR_RESEARCH_RANDOM2;
        public float ADVISOR_SIEGE_EFFECTIVENESS_MIN;
        public float ADVISOR_SIEGE_EFFECTIVENESS_RANDOM;
        public float ADVISOR_TAX_EFFICIENCY_MIN;
        public float ADVISOR_TAX_EFFICIENCY_RANDOM;
        public float ADVISOR_UNITS_ATTACK_MIN;
        public float ADVISOR_UNITS_ATTACK_RANDOM;
        public float ADVISOR_UNITS_DEFENSE_MIN;
        public float ADVISOR_UNITS_DEFENSE_RANDOM;
        public int ADVISOR_YEARS_OLD_MIN;
        public int ADVISOR_YEARS_OLD_RANDOM;
        public int[] CHANCE_OF_DEATH;
        public int RECRUIT_ADVISOR_DEFAULT_POOL;
        public int RECRUIT_ADVISOR_GOLD_COST;
        public int RECRUIT_ADVISOR_LEGACY_COST;
        public int RECRUIT_ADVISOR_REGENERATE_YEARS;
    }

    public static class GameValue_AggressiveExpansion {
        public float AE_DECAY_PER_TICK;
        public float AE_DECLARE_WAR;
        public float AE_DIFFERENT_RELIGION;
        public float AE_DISTANCE;
        public float AE_MAX_VALUE;
        public float AE_PER_PROVINCE_VALUE;
        public float AE_PER_PROVINCE_VALUE_SUBJECT_TRANSFER;
        public float AE_PER_PROVINCE_VALUE_VASSALIZATION;
        public float AE_PROVINCE_MAX;
        public float AE_SAME_RELIGION;
        public float COALITION_ARMY_OVER_PERC;
        public float COALITION_STARTED_REDUCE_AGGRESSIVE_EXPANSION;
        public float DECLARE_WAR_RELATION_CHANGE_WITH_NEIGHBORS;
        public int GAME_UPDATE_AE_DECAY_TURNS;
        public float PEACE_TREATY_AE_FROM_WAR_LIMIT;
        public float START_COALITION_IF_AE_OVER;
    }

    public static class GameValue_Army {
        public float ARMY_MAINTENANCE_OVER_REGIMENTS_LIMIT_MODIFIER;
        public boolean CAN_RECRUIT_OBSOLETE_UNITS;
        public float MERCENARIES_COST_EXTRA_PER_REGIMENT;
        public int MERCENARIES_LIMIT_TO_CHOOSE_FROM;
        public float MIN_ARMY_MOVEMENT_SPEED;
        public float MORALE_BASE_VALUE;
        public float MORALE_RECOVERY_PER_MONTH;
        public float MOVE_UNITS_LOCKED_MOVE;
        public float MOVE_UNITS_TRY_MOVING_LAND_IF_PATH_IS_BELOW;
        public float MOVE_UNITS_TRY_MOVING_LAND_IF_PATH_IS_BELOW_PLAYER;
        public float REGIMENTS_LIMIT_MANPOWER_LEVEL;
        public int REGIMENTS_LIMIT_PER_VASSAL;
        public float REGIMENTS_LIMIT_RECRUIT_COST_OVER;
        public float REGIMENTS_LIMIT_VASSAL;
        public float REINFORCE_ARMY_COST_MODIFIER;
        public int REINFORCE_MIN_MANPOWER;
        public float REINFORCE_PER_MONTH;
        public float RETREATING_ARMY_MOVEMENT_SPEED;
        public float UPGRADE_REGIMENT_COST;
    }

    public static class GameValue_Atomic {
        public int AI_NUKES_LIMIT;
        public float AI_NUKE_IF_DEVASTATION_BELOW;
        public int AI_NUKE_PRODUCTION_LIMIT_PER_ACTION;
        public float ATOMIC_BOMB_ANIMATION_TIME;
        public float ATOMIC_BOMB_ARMY;
        public float ATOMIC_BOMB_COST;
        public float ATOMIC_BOMB_COST_PER_ATOMIC_BOMB;
        public float ATOMIC_BOMB_DEVASTATION;
        public float ATOMIC_BOMB_ECONOMY;
        public float ATOMIC_BOMB_POPULATION_CASUALTIES;
        public float ATOMIC_BOMB_PRODUCTION_TIME;
        public int ATOMIC_BOMB_SOUND_EFFECT_LOCK_TIME;
        public float NUCLEAR_REACTOR_ATOMIC_BOMB_COST_PER_LEVEL;
        public float NUCLEAR_REACTOR_COST;
        public float NUCLEAR_REACTOR_COST_PER_LVL;
        public int NUCLEAR_REACTOR_LVL_TO_CONSTRUCT_NUKE;
        public int NUCLEAR_REACTOR_MAX_LVL;
        public float NUCLEAR_REACTOR_PRODUCTION_EFFICIENCY_PER_LVL;
    }

    public static class GameValue_Battle {
        public float BATTLE_ARMY_DESTROYED_IF_MANPOWER_PERC_BELOW;
        public int BATTLE_ARMY_DESTROYED_ROUND_ID;
        public int BATTLE_CASUALTIES;
        public int BATTLE_DEPLOYMENT_PHASE_TURNS;
        public float BATTLE_FULL_RETREAT_IF_MORALE_BELOW;
        public int BATTLE_MAX_BATTLE_WIDTH;
        public int BATTLE_MAX_DICE_ROLL;
        public int BATTLE_MAX_DICE_ROLL_REGIMENT;
        public int BATTLE_MIN_BATTLE_WIDTH;
        public float BATTLE_MIN_MORALE_DEFEATED_ARMY;
        public float BATTLE_MIN_MORALE_VICTORIOUS_ARMY;
        public float BATTLE_MORALE_LOSS_MULTIPLIER;
        public float BATTLE_SIDES_RATIO;
        public float BATTLE_WAR_SCORE_CASUALTIES;
        public float BATTLE_WAR_SCORE_MAX;
        public boolean DRAW_BATTLE_NOT_IN_VIEW;
        public String RIGHT_BATTLE_TEXT;
    }

    public static class GameValue_BattleTactics {
        public String[] BATTLE_TACTICS;
        public int[] BATTLE_TACTICS_ATTACK;
        public int[] BATTLE_TACTICS_DEFENSE;
    }

    public static class GameValue_Budget {
        public int MAX_AMOUNT_OF_GOLD_MIN;
        public float MAX_AMOUNT_OF_GOLD_PER_INCOME;
        public float[] MILITARY_LEVEL_ARMY_MAINTENANCE;
        public float[] MILITARY_LEVEL_MANPOWER;
        public float[] MILITARY_LEVEL_MORALE;
        public float[] MILITARY_LEVEL_REINFORCE_SPEED;
        public float[] RESEARCH_LEVEL_COST;
        public float[] RESEARCH_LEVEL_RESEARCH;
        public float[] TAXATION_LEVEL_EFFICIENCY;
        public float[] TAXATION_LEVEL_INCOME_ECONOMY;
        public float[] TAXATION_LEVEL_LEGACY;
        public float[] TAXATION_LEVEL_RESEARCH;
        public float[] TAXATION_LEVEL_UNREST_PER_MONTH;
    }

    public static class GameValue_Buildings {
        public int BUILDINGS_LIMIT_CAPITAL;
        public int BUILDINGS_LIMIT_DEFAULT;
        public float BUILDINGS_SLOT_PER_ECONOMY;
    }

    public static class GameValue_Capital {
        public float CAPITAL_COST;
        public float CAPITAL_COST_PER_LVL;
        public int CAPITAL_FORT_LVL;
        public float CAPITAL_GROWTH_RATE;
        public int CAPITAL_IMAGES;
        public float CAPITAL_INCOME_PER_LVL;
        public int CAPITAL_MAX_LVL;
        public float CAPITAL_MAX_RESEARCH_PER_LVL;
        public float CAPITAL_MONTHLY_INCOME;
        public float CAPITAL_PROVINCES_MAINTENANCE_COST_PER_LVL;
        public float MOVE_CAPITAL_COST;
    }

    public static class GameValue_CivRank {
        public float[] CIV_BASE_INCOME;
        public float[] CIV_BASE_INCOME_VASSAL;
        public float[] CIV_RANK_ADVISOR_COST;
        public int[] CIV_RANK_AI_EXTRA_AGGRESSIVENESS;
        public float[] CIV_RANK_ARMY_MAINTENANCE;
        public float[] CIV_RANK_BUILDING_CONSTRUCTION_COST;
        public float[] CIV_RANK_GENERAL_COST;
        public float[] CIV_RANK_INVEST_ECONOMY_COST;
        public float[] CIV_RANK_LOAN_INTEREST;
        public int[] CIV_RANK_MANPOWER_MAX;
        public float[] CIV_RANK_MONTHLY_LEGACY;
        public float[] CIV_RANK_MONTHLY_RESEARCH;
        public String[] CIV_RANK_NAME;
        public int[] CIV_RANK_NUM_OF_STARTING_GENERALS;
        public int[] CIV_RANK_PROVINCES;
        public float[] CIV_RANK_PROVINCE_MAINTENANCE;
        public int[] CIV_RANK_STARTING_ADVISOR_ADMINISTRATIVE_CHANCE;
        public int[] CIV_RANK_STARTING_ADVISOR_ECONOMY_CHANCE;
        public int[] CIV_RANK_STARTING_ADVISOR_INNOVATION_CHANCE;
        public int[] CIV_RANK_STARTING_ADVISOR_MILITARY_CHANCE;
        public int[] CIV_RANK_STARTING_ARMY;
        public int[] CIV_RANK_STARTING_ARMY_RANDOM;
        public float CIV_RANK_STARTING_ARMY_VASSAL;
        public int[] CIV_RANK_STARTING_GENERAL_CHANCE;
        public float[] CIV_RANK_WAR_SCORE_COST;
        public float CIV_SCORE_DIFFERENT_RELIGION;
        public float CIV_SCORE_MAX_PER_REGIMENT;
        public float CIV_SCORE_NON_CORE;
        public float CIV_SCORE_PER_BUILDING;
        public float CIV_SCORE_PER_ECONOMY;
        public float CIV_SCORE_PER_LARGEST_PRODUCER;
        public float CIV_SCORE_PER_LEGACY;
        public float CIV_SCORE_PER_LEVELS_UPGRADES;
        public float CIV_SCORE_PER_TAX_EFFICIENCY;
        public float CIV_SCORE_PER_TECHNOLOGY;
        public float[] CIV_SCORE_RANK;
        public float CIV_SCORE_VASSALS;
        public float[] STARTING_ARMY_SIEGE_UNITS_PERC;
    }

    public static class GameValue_CivStability {
        public float CS_ARMY_MORALE_RECOVERY_PER_POINT;
        public float CS_MAX_VALUE;
        public float CS_SCORE_DIFFERENT_RELIGION;
        public float CS_SCORE_MAX_PER_PROVINCE;
        public float CS_SCORE_NON_CORE;
        public float CS_UNREST_DIFFERENT_RELIGION_PER_POINT;
        public float CS_UNREST_NON_CORE_PER_POINT;
        public float CS_UNREST_PERC_GROWTH_RATE;
        public float CS_UNREST_PERC_MIN;
        public float CS_UNREST_PER_POINT;
        public float CS_WARSCORE_COST_PER_POINT;
    }

    public static class GameValue_ClickAnimation {
        public float[] CLICK_ANIM_SPEED_X;
        public float[] CLICK_ANIM_SPEED_Y;
        public float[] CLICK_ANIM_X;
        public float[] CLICK_ANIM_Y;
        public float CLICK_WIDTH;
        public float CLICK_WIDTH_RANDOM;
        public boolean ENABLE_ACTION_DOTS_ANIMATION;
    }

    public static class GameValue_Colonization {
        public int AI_COLONIZE_NEIGH_CIV_MIN_TURN_ID;
        public boolean AI_DONT_CHANGE_GOVERNMENT_IF_CAN_COLONIZE;
        public boolean AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS;
        public int AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS_MIN_TURN_ID;
        public boolean ALLOW_COLONIZATION_BY_SPENDING_GOLD;
        public float ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST;
        public boolean ALLOW_COLONIZATION_BY_SPENDING_GOLD_PLAYER_TRIBAL;
        public int ALLOW_COLONIZATION_BY_SPENDING_GOLD_SETTLERS;
        public int ALLOW_COLONIZATION_BY_SPENDING_GOLD_SETTLERS_RANDOM;
        public int AUTO_EXPAND_CHANCE;
        public int AUTO_EXPAND_POPULATION;
        public float COLONIZATION_GROWTH_RATE_EXTRA;
        public int COLONIZATION_MAX_SETTLERS;
        public int COLONIZATION_TIME;
    }

    public static class GameValue_Console {
        public int CONSOLE_ADVANTAGE;
        public String CONSOLE_COMMAND_ADVANTAGE;
        public String CONSOLE_COMMAND_DIPLOMACY;
        public String CONSOLE_COMMAND_EXPLODE;
        public String CONSOLE_COMMAND_GOLD;
        public String CONSOLE_COMMAND_KILL_RULER;
        public String CONSOLE_COMMAND_LEGACY;
        public String CONSOLE_COMMAND_MANPOWER;
        public String CONSOLE_COMMAND_NUKE;
        public float CONSOLE_DIPLOMACY;
        public float CONSOLE_GOLD;
        public float CONSOLE_LEGACY;
        public float CONSOLE_MANPOWER;
    }

    public static class GameValue_Core {
        public float BASE_INCOME_NON_CORE;
        public float CORE_CREATION_COST_DEFAULT;
        public float CORE_CREATION_COST_PER_ECONOMY;
        public float CORE_CREATION_TIME_DEFAULT;
        public float CORE_CREATION_TIME_PER_TAX_EFFICIENCY;
    }

    public static class GameValue_Court {
        public String ADVISOR_NAME_ADMINISTRATIVE;
        public String ADVISOR_NAME_DIPLOMATIC;
        public String ADVISOR_NAME_ECONOMIC;
        public String ADVISOR_NAME_INNOVATION;
        public String ADVISOR_NAME_MILITARY;
        public String COUNCIL_NAME;
        public boolean COUNCIL_VIEW_VASSAL_GRAPH_INCLUDE_PLAYER;
        public float RULER_CONSTRUCTION_COST_MIN;
        public float RULER_CONSTRUCTION_COST_RANDOM;
        public float RULER_DEVASTATION_MIN;
        public float RULER_DEVASTATION_RANDOM;
        public float RULER_DEVELOP_INFRASTRUCTURE_COST_MIN;
        public float RULER_DEVELOP_INFRASTRUCTURE_COST_RANDOM;
        public int RULER_GENERALS_ATTACK_MIN;
        public int RULER_GENERALS_ATTACK_RANDOM;
        public int RULER_GENERALS_DEFENSE_MIN;
        public int RULER_GENERALS_DEFENSE_RANDOM;
        public float RULER_GENERAL_COST_MIN;
        public float RULER_GENERAL_COST_RANDOM;
        public float RULER_IMPROVE_RELATIONS_MIN;
        public float RULER_IMPROVE_RELATIONS_RANDOM;
        public float RULER_INCREASE_GROWTH_RATE_COST_MIN;
        public float RULER_INCREASE_GROWTH_RATE_COST_RANDOM;
        public float RULER_INCREASE_MANPOWER_COST_MIN;
        public float RULER_INCREASE_MANPOWER_COST_RANDOM;
        public float RULER_INCREASE_TAX_EFFICIENCY_COST_MIN;
        public float RULER_INCREASE_TAX_EFFICIENCY_COST_RANDOM;
        public float RULER_INVEST_COST_MIN;
        public float RULER_INVEST_COST_RANDOM;
        public float RULER_LOAN_INTEREST_MIN;
        public float RULER_LOAN_INTEREST_RANDOM;
        public float RULER_MAX_MANPOWER_MIN;
        public float RULER_MAX_MANPOWER_RANDOM;
        public float RULER_MONTHLY_INCOME_MIN;
        public float RULER_MONTHLY_INCOME_RANDOM;
        public float RULER_MONTHLY_LEGACY_MIN;
        public float RULER_MONTHLY_LEGACY_RANDOM;
        public float RULER_PRODUCTION_EFFICIENCY_MIN;
        public float RULER_PRODUCTION_EFFICIENCY_RANDOM;
        public float RULER_PROVINCE_MAINTENANCE_MIN;
        public float RULER_PROVINCE_MAINTENANCE_RANDOM;
        public float RULER_RECRUITMENT_TIME_MIN;
        public float RULER_RECRUITMENT_TIME_RANDOM;
        public float RULER_RESEARCH_MIN;
        public float RULER_RESEARCH_RANDOM;
        public int RULER_ROMAN_NUMBER_MAX_RANDOM;
        public float RULER_TAX_EFFICIENCY_MIN;
        public float RULER_TAX_EFFICIENCY_RANDOM;
        public int RULER_THIRD_BONUS_CHANCE;
        public int RULER_UNITS_ATTACK_MIN;
        public int RULER_UNITS_ATTACK_RANDOM;
        public int RULER_UNITS_DEFENSE_MIN;
        public int RULER_UNITS_DEFENSE_RANDOM;
        public int RULER_YEARS_OLD_MIN;
        public int RULER_YEARS_OLD_RANDOM;
        public int SIDEBAR_MAX_NUMBER = 99;
    }

    public static class GameValue_Difficulty {
        public int BONUS_DURATION;
        public boolean[] CAN_VASSAL_PROCLAIM_INDEPENDENCE_AGAINST_PLAYER;
        public float[] CONSTRUCTION_COST;
        public float[] CORE_COST;
        public float[] INCOME_PRODUCTION;
        public float[] LEGACY;
        public float[] MANPOWER;
        public float[] MONTHLY_INCOME;
        public String[] NAME;
        public int NORMAL_ID;
        public float[] RECRUIT_ARMY_COST;
        public float[] RECRUIT_ARMY_TIME;
        public int[] REGIMENTS_LIMIT;
        public float[] RELIGION_COST;
    }

    public static class GameValue_Diplomacy {
        public float ALLIANCE_SCORE_AT_WAR;
        public float ALLIANCE_SCORE_BASE_RANK_SCORE_MAX;
        public float ALLIANCE_SCORE_BASE_RANK_SCORE_MIN;
        public float ALLIANCE_SCORE_BASE_VALUE;
        public float ALLIANCE_SCORE_DIFFERENT_GOVERNMENT;
        public float ALLIANCE_SCORE_DIFFERENT_GOVERNMENT_GROUP;
        public float ALLIANCE_SCORE_DIFFERENT_RELIGION;
        public float ALLIANCE_SCORE_DIFFERENT_RELIGION_GROUP;
        public float ALLIANCE_SCORE_DISTANCE;
        public float ALLIANCE_SCORE_FOR_VASSAL_OF_CIV;
        public int ALLIANCE_SCORE_MAX_NUM_OF_ALLIANCES;
        public float ALLIANCE_SCORE_PER_AGGRESSIVE_EXPANSION;
        public float ALLIANCE_SCORE_PER_RELATION;
        public float ALLIANCE_SCORE_PER_SAME_RIVAL;
        public float ALLIANCE_SCORE_RIVALS;
        public int BASE_MAX_NUM_OF_ALLIANCES;
        public float CALL_TO_ARMS_REFUSE_LEGACY;
        public float DEFENSIVE_PACT_SCORE_AT_WAR;
        public float DEFENSIVE_PACT_SCORE_BASE_RANK_SCORE_MAX;
        public float DEFENSIVE_PACT_SCORE_BASE_RANK_SCORE_MIN;
        public float DEFENSIVE_PACT_SCORE_BASE_VALUE;
        public float DEFENSIVE_PACT_SCORE_DIFFERENT_GOVERNMENT;
        public float DEFENSIVE_PACT_SCORE_DIFFERENT_GOVERNMENT_GROUP;
        public float DEFENSIVE_PACT_SCORE_DIFFERENT_RELIGION;
        public float DEFENSIVE_PACT_SCORE_DIFFERENT_RELIGION_GROUP;
        public float DEFENSIVE_PACT_SCORE_DISTANCE;
        public float DEFENSIVE_PACT_SCORE_PER_AGGRESSIVE_EXPANSION;
        public float DEFENSIVE_PACT_SCORE_PER_DEFENSIVE_PACT;
        public float DEFENSIVE_PACT_SCORE_PER_RELATION;
        public float DEFENSIVE_PACT_SCORE_PER_SAME_RIVAL;
        public float DEFENSIVE_PACT_SCORE_RIVALS;
        public float DIPLOMACY_ALLIANCE_COST;
        public int DIPLOMACY_ALLIANCE_EXPIRES;
        public int DIPLOMACY_ALLIANCE_EXPIRES_EXTRA_RANDOM;
        public float DIPLOMACY_DAMAGE_RELATIONS_COST_PER_MONTH;
        public float DIPLOMACY_DAMAGE_RELATIONS_MAX;
        public int DIPLOMACY_DAMAGE_RELATIONS_TIME;
        public float DIPLOMACY_DAMAGE_RELATIONS_VALUE;
        public float DIPLOMACY_DECLARE_WAR_COST;
        public float DIPLOMACY_DECLARE_WAR_LOW_MANPOWER_INFO_IF_BELOW;
        public float DIPLOMACY_DEFENSIVE_PACT_COST;
        public int DIPLOMACY_DEFENSIVE_PACT_EXPIRES;
        public float DIPLOMACY_DEMAND_MILITARY_ACCESS_COST;
        public int DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW;
        public float DIPLOMACY_GIFT_COST;
        public float DIPLOMACY_GIFT_GOLD_PER_CLICK;
        public int DIPLOMACY_GIFT_MAX_CLICKS;
        public float DIPLOMACY_GIFT_REFUSE_MULTIPLE;
        public float DIPLOMACY_GIFT_RELATION_PER_CLICK;
        public float DIPLOMACY_GUARANTEE_COST;
        public int DIPLOMACY_GUARANTEE_EXPIRES;
        public float DIPLOMACY_IMPROVE_RELATIONS_COST_PER_MONTH;
        public float DIPLOMACY_IMPROVE_RELATIONS_MAX;
        public int DIPLOMACY_IMPROVE_RELATIONS_TIME;
        public float DIPLOMACY_IMPROVE_RELATIONS_VALUE;
        public float DIPLOMACY_IMPROVE_RELATIONS_VALUE_PRESTIGE;
        public int DIPLOMACY_MESSAGE_DAYS;
        public int DIPLOMACY_MESSAGE_RELATIONS_DAYS;
        public int DIPLOMACY_MILITARY_ACCESS_EXPIRES;
        public float DIPLOMACY_NON_AGGRESSION_PACT_COST;
        public int DIPLOMACY_NON_AGGRESSION_PACT_EXPIRES;
        public float DIPLOMACY_OFFER_MILITARY_ACCESS_COST;
        public int DIPLOMACY_POINTS_MAX;
        public float DIPLOMACY_POINTS_MAX_PER_PROVINCE;
        public int DIPLOMACY_POINTS_MIN;
        public float DIPLOMACY_POINTS_PER_MONTH_BASE_VALUE;
        public float DIPLOMACY_POINTS_RANK_BLACK;
        public float DIPLOMACY_POINTS_RANK_BRONZE;
        public float DIPLOMACY_POINTS_RANK_GOLD;
        public float DIPLOMACY_POINTS_RANK_SILVER;
        public float DIPLOMACY_REFUSE_ALLIANCE_OPINION_CHANGE_TO;
        public float DIPLOMACY_RELATIONS_FRIENDLY;
        public float DIPLOMACY_RELATIONS_MAX;
        public float DIPLOMACY_RELATIONS_MIN;
        public int DIPLOMACY_RELATIONS_WAR_EXTRA;
        public float DIPLOMACY_RELATION_COOPERATIVE;
        public float DIPLOMACY_RELATION_DETACHED;
        public float DIPLOMACY_RELATION_NEUTRAL;
        public float DIPLOMACY_RELATION_STRAINED;
        public float DIPLOMACY_RELATION_UNFAVORABLE;
        public float DIPLOMACY_RELATION_WARM;
        public float DIPLOMACY_SEND_AN_INSULT_COST_LEGACY;
        public float DIPLOMACY_SEND_AN_INSULT_DAMAGE;
        public float DIPLOMACY_SEND_INSULT_COST;
        public int DIPLOMACY_TRUCE_EXPIRES;
        public int DIPLOMACY_VIEW_BIGGEST_CITIES_LINES_MAX;
        public int DIPLOMACY_VIEW_BIGGEST_CITIES_LINES_MIN;
        public float DIPLOMACY_VIEW_BIGGEST_CITIES_LINES_PERC_OF_PROVINCES;
        public float INTERVENE_IN_WAR_IMPROVE_RELATIONS_VALUE;
        public float NON_AGGRESSION_SCORE_AT_WAR;
        public float NON_AGGRESSION_SCORE_BASE_RANK_SCORE_MAX;
        public float NON_AGGRESSION_SCORE_BASE_RANK_SCORE_MIN;
        public float NON_AGGRESSION_SCORE_BASE_VALUE;
        public float NON_AGGRESSION_SCORE_DIFFERENT_GOVERNMENT;
        public float NON_AGGRESSION_SCORE_DIFFERENT_GOVERNMENT_GROUP;
        public float NON_AGGRESSION_SCORE_DIFFERENT_RELIGION;
        public float NON_AGGRESSION_SCORE_DIFFERENT_RELIGION_GROUP;
        public float NON_AGGRESSION_SCORE_DISTANCE;
        public float NON_AGGRESSION_SCORE_PER_NON_AGGRESSION_PACTS;
        public float NON_AGGRESSION_SCORE_PER_RELATION;
        public float NON_AGGRESSION_SCORE_PER_SAME_RIVAL;
        public float NON_AGGRESSION_SCORE_RIVALS;
        public float RANDOM_RELATIONS_DISTANCE;
        public float RELATIONS_CHANGE_PER_UPDATE_TO_NEUTRAL;
        public float SELL_PROVINCE_GOLD_PER_PROVINCE_VALUE;
        public float SHARE_TECHNOLOGY_OPINION;
        public boolean SHOW_LIST_OF_CIVS_RELATIONS_IN_PLAYERS_CIV_VIEW;
        public float STARTING_DIPLOMACY_POINTS;
        public int STARTING_RANDOM_RELATIONS;
        public int STARTING_RANDOM_RELATIONS_CHANCE;
        public int STARTING_RANDOM_RELATIONS_MIN;
        public float DIPLOMACY_SEND_ULTIMATUM_COST_LEGACY = 10.0f;
        public float DIPLOMACY_SEND_ULTIMATUM_COST = 10.0f;
        public float ULTIMATUM_ARMY_MODIFIER = 1.75f;
        public float ULTIMATUM_RELATION_CHANGE = -25.0f;
        public float DIPLOMACY_UNION_COST = 25.0f;
        public int MAX_UNIONS = 1;
    }

    public static class GameValue_Economy {
        public float BASE_ECONOMY_NEUTRAL;
        public float EXPLOIT_ECONOMY;
        public float EXPLOIT_ECONOMY_GAIN_PER_INVEST_COST;
        public float EXPLOIT_ECONOMY_MIN_ECONOMY;
        public float INCOME_ECONOMY_PER_ECONOMY;
        public float INVEST_COST;
        public float INVEST_COST_LEGACY;
        public float INVEST_COST_LEGACY_PER_ECONOMY;
        public float INVEST_COST_PER_ECONOMY;
        public float INVEST_ECONOMY_GROWTH;
        public int INVEST_IN_PROVINCE_DAYS;
        public float MAX_ECONOMY_GROWTH_RATE;
    }

    public static class GameValue_Events {
        public int EVENT_CHANGE_PRICE_INCREASE_CHANCE;
        public boolean EVENT_CHANGE_PRICE_SHOW_ONLY_THOSE_THAT_PLAYER_HAS;
        public int EVENT_EXPLODE_MIN_GOLD;
        public int EVENT_EXPLODE_MIN_LEGACY;
        public int EVENT_EXPLODE_MIN_MANPOWER;
        public int EVENT_TIME_TO_RESPOND;
        public int RUN_GLOBAL_EVENTS_EVERY_X_TURNS;
        public boolean SHOW_EVENTS_IN_MISSION_MENU;
    }

    public static class GameValue_FOG {
        public boolean DEFAULT_FOG_OF_WAR;
        public boolean HIDE_ARMIES;
        public boolean HIDE_MANPOWER;
        public float PROVINCE_FOG_COLOR_DIFFERENCE;
        public String TEXT_UNKNOWN_ARMIES;
        public String TEXT_UNKNOWN_MANPOWER;
    }

    public static class GameValue_GameSpeed {
        public int GAME_SPEED_1;
        public int GAME_SPEED_2;
        public int GAME_SPEED_3;
        public int GAME_SPEED_4;
        public int GAME_SPEED_5;
        public int GAME_SPEED_SPECTATOR_MODE;
        public int MIN_THREAD_SLEEP;
    }

    public static class GameValue_GameUpdate {
        public int GAME_UPDATE_ARMIES_MORALE_REINFORCE_STEPS;
        public int GAME_UPDATE_CHANGE_PRICE_EXPIRED;
        public int GAME_UPDATE_CIV_BONUSES;
        public int GAME_UPDATE_COALITION;
        public int GAME_UPDATE_CURRENT_SITUATION_EVERY_X_DAYS;
        public int GAME_UPDATE_CURRENT_SITUATION_MISSION_TREE_EVERY_X_DAYS;
        public int GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS;
        public int GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS;
        public int GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS_NOT_ASSIGNED;
        public int GAME_UPDATE_DEATH_RULER_EVERY_X_DAYS;
        public int GAME_UPDATE_DEATH_RULER_MIN_TURN_ID;
        public int GAME_UPDATE_DEVASTATION_STEPS;
        public int GAME_UPDATE_DIPLOMACY_EXPIRED;
        public int GAME_UPDATE_DIPLOMACY_IMPROVE_DAMAGE_RELATIONS;
        public int GAME_UPDATE_EVENTS_CIVS;
        public int GAME_UPDATE_EVENTS_EVENTS;
        public int GAME_UPDATE_GOLDEN_AGE;
        public float GAME_UPDATE_INCOME_PER_DEVASTATION_CHANGE;
        public int GAME_UPDATE_MINIMAP;
        public int GAME_UPDATE_PLAYER_WEAKNESS;
        public int GAME_UPDATE_POPULATION_STEPS;
        public int GAME_UPDATE_REBELS_ARMIES_STEPS;
        public int GAME_UPDATE_REBELS_INDEPENDENCE_STEPS;
        public int GAME_UPDATE_REGIMENTS_LIMIT_STEPS;
        public int GAME_UPDATE_RELATIONS_TO_NEUTRAL;
        public int GAME_UPDATE_RETURN_OCCUPIED_PROVINCES_NOT_AT_WAR;
        public int GAME_UPDATE_UNREST_STEPS;
        public int GAME_UPDATE_UPRISING_STEPS;
        public int GAME_UPDATE_VASSAL_LIBERTY_DESIRE;
        public int GAME_UPDATE_WAR_ALL_PROVINCES_OCCUPIED_MONTHS;
    }

    public static class GameValue_GameUpdate_AI {
        public int GAME_UPDATE_AI;
        public int GAME_UPDATE_AI_ADVANTAGES;
        public int GAME_UPDATE_AI_BUDGET;
        public int GAME_UPDATE_AI_BUDGET_DEFAULT;
        public int GAME_UPDATE_AI_BUILD_INVEST;
        public int GAME_UPDATE_AI_BUILD_INVEST_IF_GOLD_OVER;
        public int GAME_UPDATE_AI_BUILD_NUKES;
        public int GAME_UPDATE_AI_CHANGE_GOVERNMENT;
        public int GAME_UPDATE_AI_CHOOSE_RIVALS;
        public int GAME_UPDATE_AI_COLONIZE;
        public int GAME_UPDATE_AI_COLONIZE_NEIGH_CIV;
        public int GAME_UPDATE_AI_CORES_RELIGION;
        public int GAME_UPDATE_AI_CORES_RELIGION_IF_GOLD_OVER;
        public int GAME_UPDATE_AI_DECLARE_WAR;
        public int GAME_UPDATE_AI_DIPLOMACY_ALLIANCES;
        public int GAME_UPDATE_AI_DIPLOMACY_PACTS;
        public int GAME_UPDATE_AI_DISBAND_ARMIES;
        public int GAME_UPDATE_AI_FORMABLE_CIVS;
        public int GAME_UPDATE_AI_LAWS;
        public int GAME_UPDATE_AI_MISSIONS;
        public int GAME_UPDATE_AI_MOVE_ARMIES;
        public int GAME_UPDATE_AI_MOVE_ARMIES_PLAYER;
        public int GAME_UPDATE_AI_MOVE_UNITS_NO_CONNECTIONS;
        public int GAME_UPDATE_AI_PREPARE_FOR_WAR;
        public int GAME_UPDATE_AI_RECRUIT_ADVISORS;
        public int GAME_UPDATE_AI_RECRUIT_ARMY_AT_PEACE;
        public int GAME_UPDATE_AI_RECRUIT_ARMY_IF_GOLD_OVER;
        public int GAME_UPDATE_AI_RECRUIT_GENERALS;
        public int GAME_UPDATE_AI_RECRUIT_GENERALS_IF_GOLD_OVER;
        public int GAME_UPDATE_AI_RELATIONS;
        public int GAME_UPDATE_AI_RELATIONS_DAMAGE;
        public int GAME_UPDATE_AI_REORGANIZE_ARMIES_AT_PEACE;
        public int GAME_UPDATE_AI_UNLOCK_LEGACY;
        public int GAME_UPDATE_AI_UPGRADE_UNITS;
        public int GAME_UPDATE_AI_VASSAL_PROCLAIM_INDEPENDENCE;
        public int GAME_UPDATE_AI_WONDERS;
    }

    public static class GameValue_Generals {
        public int COMBAT_EXPERIENCE_BATTLE_WON_EXPERIENCE_PER_DAY_OF_BATTLE;
        public int COMBAT_EXPERIENCE_BATTLE_WON_LIMIT;
        public int COMBAT_EXPERIENCE_BATTLE_WON_LIMIT_PER_DAY_OF_BATTLE;
        public int COMBAT_EXPERIENCE_BATTLE_WON_MIN;
        public int COMBAT_EXPERIENCE_BATTLE_WON_MIN_RANDOM;
        public int COMBAT_EXPERIENCE_INCREASE_ATTACK_CHANCE;
        public int COMBAT_EXPERIENCE_JOIN_BATTLE;
        public int COMBAT_EXPERIENCE_MAX;
        public int COMBAT_EXPERIENCE_MAX_ATTACK;
        public int COMBAT_EXPERIENCE_MAX_DEFENSE;
        public int COMBAT_EXPERIENCE_NEW_GENERAL_MIN;
        public int COMBAT_EXPERIENCE_NEW_GENERAL_RANDOM;
        public int GENERALS_DEFAULT_POOL_SIZE;
        public int GENERALS_REGENERATE_YEARS;
        public int GENERAL_ATTACK_BASE_VALUE;
        public int GENERAL_ATTACK_RANDOM;
        public int GENERAL_ATTACK_RANDOM2;
        public int GENERAL_DEFENSE_BASE_VALUE;
        public int GENERAL_DEFENSE_RANDOM;
        public int GENERAL_DEFENSE_RANDOM2;
        public int GENERAL_YEARS_OLD_MIN;
        public int GENERAL_YEARS_OLD_RANDOM;
        public int MODERN_WORLD_GENERALS_SINCE_YEAR;
        public int RECRUIT_GENERAL_GOLD_COST;
        public int RECRUIT_GENERAL_LEGACY_COST;
    }

    public static class GameValue_GoldenAge {
        public int[] GA_MILITARY_DURATION_DAYS;
        public float[] GA_MILITARY_INCREASED_MANPOWER;
        public float[] GA_MILITARY_MAX_MANPOWER_PERC;
        public int[] GA_MILITARY_MILITARY_BUILDINGS;
        public int[] GA_MILITARY_UNITS_ATTACK;
        public int[] GA_MILITARY_UNITS_DEFENSE;
        public int[] GA_PROSPERITY_DURATION_DAYS;
        public int[] GA_PROSPERITY_ECONOMY_BUILDINGS;
        public float[] GA_PROSPERITY_INCOME_PRODUCTION;
        public float[] GA_PROSPERITY_INVESTED_IN_ECONOMY;
        public float[] GA_PROSPERITY_MONTHLY_INCOME;
        public int[] GA_SCIENCE_ADMINISTRATIVE_BUILDINGS;
        public float[] GA_SCIENCE_DEVELOPED_INFRASTRUCTURE;
        public int[] GA_SCIENCE_DURATION_DAYS;
        public float[] GA_SCIENCE_LEGACY;
        public float[] GA_SCIENCE_RESEARCH;
    }

    public static class GameValue_Government {
        public float CHANGE_GOVERNMENT_COST;
        public float CHANGE_GOVERNMENT_COST_LEGACY;
        public int FORM_CIV_COST_GOLD;
    }

    public static class GameValue_GrowthRate {
        public int GROWTH_RATE_CITY;
        public int GROWTH_RATE_MAJOR_CITY;
        public int GROWTH_RATE_TOWN;
        public int GROWTH_RATE_VILLAGE;
        public float INCREASE_GROWTH_RATE_COST;
        public float INCREASE_GROWTH_RATE_COST_PER_GROWTH_RATE;
        public float INCREASE_GROWTH_RATE_GROWTH;
        public int INCREASE_GROWTH_RATE_IN_PROVINCE_DAYS;
    }

    public static class GameValue_HRE {
        public float HRE_BONUS_R0;
        public int HRE_BONUS_R0_DAYS;
        public int HRE_BONUS_R1;
        public float HRE_BONUS_R10;
        public int HRE_BONUS_R10_DAYS;
        public float HRE_BONUS_R11;
        public int HRE_BONUS_R11_DAYS;
        public float HRE_BONUS_R12;
        public int HRE_BONUS_R12_DAYS;
        public int HRE_BONUS_R13_OPINION_MIN;
        public int HRE_BONUS_R13_OPINION_RANDOM;
        public int HRE_BONUS_R2_CIVS;
        public float HRE_BONUS_R2_OPINION;
        public float HRE_BONUS_R3;
        public int HRE_BONUS_R3_DAYS;
        public float HRE_BONUS_R4;
        public int HRE_BONUS_R4_DAYS;
        public float HRE_BONUS_R5;
        public int HRE_BONUS_R5_DAYS;
        public float HRE_BONUS_R7;
        public int HRE_BONUS_R7_DAYS;
        public float HRE_BONUS_R8;
        public int HRE_BONUS_R8_DAYS;
        public float HRE_BONUS_R9;
        public int HRE_BONUS_R9_DAYS;
        public boolean HRE_ELECTORS_WAR_DEFEND_HRE;
        public float HRE_EMPEROR_INCOME;
        public float HRE_EMPEROR_MANPOWER;
        public float HRE_EMPEROR_REGIMENTS;
        public boolean HRE_EMPEROR_WAR_DEFEND_HRE;
        public boolean HRE_PRINCES_WAR_DEFEND_HRE;
        public float[] HRE_REFORM_COST_DIPLOMACY;
        public float[] HRE_REFORM_COST_GOLD;
        public float[] HRE_REFORM_COST_LEGACY;
        public int[] HRE_REFORM_COST_REQUIRED_TECH;
        public int HRE_VIEW_ELECTIONS_TOP_CIVS;
    }

    public static class GameValue_Hover {
        public int HOVER_EXTRA_INFO_TIME;
        public int HOVER_MOBILE_TIME_VISIBLE;
        public float HOVER_SOUND_VOLUME;
    }

    public static class GameValue_InGame {
        public float AMBIENCE_SCALE;
        public int ARMY_LEFT_IMAGES;
        public int COURT_PROVINCES_LIMIT;
        public float DIPLOMACY_LINES_ANIMATION_DURATION;
        public boolean ENABLE_VASSAL_LORD_FLAG;
        public int[] INGAME_FLAG_PADDING_X;
        public int[] INGAME_FLAG_PADDING_Y;
        public float MOVE_UNITS_ANIMATION_DURATION;
        public boolean SHOW_BUILDINGS_NO_PROVINCES_SIDEBAR;
        public boolean SHOW_OBSOLETE_UNITS;
        public boolean SHOW_TO_BE_RESEARCHED_BUILDINGS;
        public boolean SHOW_TO_BE_RESEARCHED_BUILDINGS_SIDEBAR;
        public boolean SHOW_TO_BE_RESEARCHED_UNITS;
        public int SOUNDS_RANDOM_MIN;
        public int SOUNDS_RANDOM_RANDOM;
        public int TECH_TREE_NUM_OF_ROWS;
        public int WAR_MUSIC_BREAK_BETWEEN_LAST_TIME_PLAYED;
    }

    public static class GameValue_Inflation {
        public float INFLATION_CURRENT_SITUATION_INFO;
        public float INFLATION_MAX;
        public float INFLATION_REDUCE_COST_LEGACY_PER_INFLATION;
    }

    public static class GameValue_Info {
        public boolean DESKTOP_KEYBOARD_DRAW_EXTRA_TEXT;
        public boolean ENABLE_PROVINCE_ARMY_COMPOSITION_INFO;
        public int ENABLE_PROVINCE_ARMY_COMPOSITION_INFO_UNTIL_TURN_ID;
    }

    public static class GameValue_Infrastructure {
        public int DEVELOP_INFRASTRUCTURE_COST_GOLD;
        public int DEVELOP_INFRASTRUCTURE_COST_GOLD_PER_INFRASTRUCTURE;
        public int DEVELOP_INFRASTRUCTURE_COST_LEGACY;
        public int DEVELOP_INFRASTRUCTURE_COST_LEGACY_PER_INFRASTRUCTURE;
        public int DEVELOP_INFRASTRUCTURE_TIME;
        public int DEVELOP_INFRASTRUCTURE_TIME_PER_INFRASTRUCTURE;
        public float INFRASTRUCTURE_ARMY_MOVEMENT_PER_LVL;
        public int INFRASTRUCTURE_BUILDINGS_SLOT_PER_LVL;
        public float INFRASTRUCTURE_CONSTRUCTION_COST_PER_LVL;
        public float INFRASTRUCTURE_CONSTRUCTION_TIME_PER_LVL;
        public float INFRASTRUCTURE_CORE_COST_PER_LVL;
        public float INFRASTRUCTURE_DISEASE_DEATH_RATE_PER_LVL;
        public float INFRASTRUCTURE_GROWTH_RATE_PER_LVL;
        public float INFRASTRUCTURE_INVEST_COST_PER_LVL;
        public int INFRASTRUCTURE_MAX_CAPITAL;
        public int INFRASTRUCTURE_MAX_DEFAULT;
        public int INFRASTRUCTURE_MAX_LVL;
        public float INFRASTRUCTURE_MAX_PER_ECONOMY;
        public float INFRASTRUCTURE_MAX_PER_GROWTH_RATE;
        public float INFRASTRUCTURE_PRODUCTION_EFFICIENCY_PER_LVL;
        public float INFRASTRUCTURE_PROVINCE_MAINTENANCE_PER_LVL;
        public float INFRASTRUCTURE_RECRUITMENT_TIME_PER_LVL;
        public float INFRASTRUCTURE_TAX_EFFICIENCY_PER_LVL;
        public float INFRASTRUCTURE_WONDER_CONSTRUCTION_COST_PER_LVL;
    }

    public static class GameValue_Laws {
        public int LAW_ADAPT_REFORM_COST_GOLD;
        public int LAW_ADAPT_REFORM_COST_LEGACY_POINTS;
    }

    public static class GameValue_Legacy {
        public float LEGACY_PER_UNIQUE_RESOURCE;
        public float LEGACY_PER_UNIQUE_RESOURCE_PER_TECHS;
        public float LEGACY_PER_UNIQUE_RESOURCE_PER_TECHS_MAX;
        public int LEGACY_VIEW_ANIMATION_TIME;
        public float MAX_LEGACY_POINTS;
        public float MIN_LEGACY_POINTS;
    }

    public static class GameValue_Loan {
        public int LOAN_DAYS;
        public float LOAN_DEFAULT_INTEREST;
        public float LOAN_INFLATION;
        public float LOAN_VALUE_BY_ECONOMY;
        public float LOAN_VALUE_MIN;
        public int LOAN_YEARS;
        public int MAX_NUMBER_OF_LOANS;
    }

    public static class GameValue_Logs {
        public boolean SAVE_LOGS_TO_FILE = false;
        public int SAVE_LOGS_LIMIT = MissionTree.MISSION_TYPE_ID;
    }

    public static class GameValue_LuckyCivs {
        public int BONUS_EXPIRES;
        public int BONUS_MAX_MANPOWER;
        public float BONUS_MONTHLY_INCOME;
        public float BONUS_PRODUCTION_EFFICIENCY;
        public int BONUS_REGIMENTS_LIMIT;
        public int BONUS_UNITS_ATTACK;
        public int LUCKY_CIVS_LIMIT;
        public float LUCKY_CIVS_LIMIT_PERC_ALL_CIVS;
    }

    public static class GameValue_Manpower {
        public float BASE_MANPOWER_NEUTRAL;
        public float INCREASE_MANPOWER_COST;
        public float INCREASE_MANPOWER_COST_LEGACY;
        public float INCREASE_MANPOWER_COST_LEGACY_PER_LEVEL;
        public float INCREASE_MANPOWER_COST_PER_LEVEL;
        public float INCREASE_MANPOWER_GROWTH;
        public int INCREASE_MANPOWER_IN_PROVINCE_DAYS;
        public float MANPOWER_FULL_RECOVERY_MONTHS;
        public int MANPOWER_MAX_BASE;
        public float MANPOWER_MAX_DIFFERENT_RELIGION;
        public float MANPOWER_MAX_NON_CORE;
        public int MANPOWER_MAX_PER_PROVINCE_MANPOWER_LVL;
        public int MANPOWER_MAX_PER_PROVINCE_MAX_GROWTH_RATE;
        public float MANPOWER_RECOVERY_FROM_DISBANDED_ARMY_DEFAULT;
    }

    public static class GameValue_MapModes {
        public boolean ENABLE_PROVINCE_INCOME_MAP_MODE;
        public long HOVER_TIME;
        public int[] MAP_MODES_ORDER;
        public boolean PROVINCE_INFO_HOVER_DEVASTATION;
        public boolean PROVINCE_INFO_HOVER_ECONOMY;
        public boolean PROVINCE_INFO_HOVER_FORTS;
        public boolean PROVINCE_INFO_HOVER_GROWTH_RATE;
        public boolean PROVINCE_INFO_HOVER_INFRASTRUCTURE;
        public boolean PROVINCE_INFO_HOVER_LOOT;
        public boolean PROVINCE_INFO_HOVER_MANPOWER;
        public boolean PROVINCE_INFO_HOVER_POPULATION;
        public boolean PROVINCE_INFO_HOVER_PROVINCE_INCOME;
        public boolean PROVINCE_INFO_HOVER_PROVINCE_VALUE;
        public boolean PROVINCE_INFO_HOVER_RELIGION;
        public boolean PROVINCE_INFO_HOVER_TAX_EFFICIENCY;
        public boolean PROVINCE_INFO_HOVER_UNREST;
        public boolean TOP_HOVER_ARMY;
        public boolean TOP_HOVER_BUDGET;
        public int WAR_BUTTON_WARS_MAX;
    }

    public static class GameValue_MilitaryAcademy {
        public int MILITARY_ACADEMY_ATTACK_PER_LVL;
        public float MILITARY_ACADEMY_COST;
        public float MILITARY_ACADEMY_COST_PER_LVL;
        public int MILITARY_ACADEMY_DEFENSE_PER_LVL;
        public int MILITARY_ACADEMY_FOR_GENERALS_ATTACK_PER_LVL;
        public float MILITARY_ACADEMY_FOR_GENERALS_COST;
        public float MILITARY_ACADEMY_FOR_GENERALS_COST_PER_LVL;
        public int MILITARY_ACADEMY_FOR_GENERALS_DEFENSE_PER_LVL;
        public float MILITARY_ACADEMY_FOR_GENERALS_MAINTENANCE_COST_PER_LVL;
        public int MILITARY_ACADEMY_FOR_GENERALS_MAX_LVL;
        public float MILITARY_ACADEMY_MAINTENANCE_COST_PER_LVL;
        public int MILITARY_ACADEMY_MAX_LVL;
        public int MILITARY_ACADEMY_REGIMENTS_LIMIT_PER_LVL;
    }

    public static class GameValue_Move {
        public boolean DESKTOP_SHOW_MOVE_BUTTON;
        public boolean ENABLE_MOVE_UNITS_TO_ANY_PROVINCE;
        public boolean PLAYER_CAN_MOVE_ALL_ARMIES;
        public boolean PLAYER_CAN_MOVE_VASSALS_ARMIES;
    }

    public static class GameValue_NewGame {
        public int NEW_GAME_AI_AGGRESSIVENESS_PER_CLICK;
        public int NEW_GAME_FLAGS_LIMIT;
    }

    public static class GameValue_Notifications {
        public int HOVER_HIDE_TIME;
        public boolean NOTIFICATION_NEIGHBOR_OR_RIVAL_IS_AT_WAR;
        public int NUMBER_OF_NOTIFICATIONS;
        public boolean RELATIONS_FROM_AS_NOTIFICATION;
        public int REMOVE_NOTIFICATION_DAYS;
        public int TOAST_MAX_SIZE;
    }

    public static class GameValue_Peace {
        public int AI_ABANDON_DEMAND_PROVINCES_HAVE_ONLY_ACCESS_TO_MAIN_SEA_CHANCE;
        public boolean AI_ABANDON_DEMAND_PROVINCES_IF_ARE_NOT_CONNECTED;
        public int AI_ABANDON_DEMAND_PROVINCES_IF_ARE_NOT_CONNECTED_CHANCE;
        public float AI_PEACE_DEMAND_PROVINCE_DISTANCE;
        public float AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_LOSER_SCORE;
        public float AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA;
        public float AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA_BEGIN;
        public float AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_PERC;
        public float AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_SCORE;
        public boolean AI_PEACE_DEMAND_VASSALIZE_PLAYER;
        public boolean AI_PEACE_EXTRA_DEMAND_SURROUNDED_PROVINCES;
        public float PEACE_ANNEX_PROVINCE_ECONOMY_CHANGE;
        public float PEACE_ANNEX_PROVINCE_GROWTH_RATE_CHANGE;
        public float PEACE_ANNEX_PROVINCE_MANPOWER_CHANGE;
        public float PEACE_ANNEX_PROVINCE_MAX_UNREST;
        public float PEACE_ANNEX_PROVINCE_TAX_CHANGE;
        public float PEACE_GOLD_COST_SCORE;
        public int PEACE_GOLD_MAX;
        public float PEACE_GOLD_MODIFIER;
        public float PEACE_GOVERNMENT_CHANGE_COST_SCORE;
        public float PEACE_HUMILIATE_AGGRESSIVE_EXPANSION_GAIN;
        public float PEACE_HUMILIATE_COST_SCORE;
        public float PEACE_HUMILIATE_LEGACY_GAIN;
        public float PEACE_HUMILIATE_LEGACY_LOSER;
        public float PEACE_LIBERATE_CIV_COST_SCORE;
        public float PEACE_LIBERATE_CIV_LEGACY;
        public float PEACE_LIBERATE_CIV_RELATIONS;
        public float PEACE_MILITARY_ACCESS_COST_SCORE;
        public float PEACE_RELATION;
        public int PEACE_RELATION_RANDOM;
        public float PEACE_RELIGION_CONVERSION_COST_SCORE;
        public float PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT;
        public float PEACE_SCORE_COALITION_WAR;
        public float PEACE_SCORE_CONQUER_VASSAL_WAR;
        public float PEACE_SCORE_LOSING_SIDE;
        public float PEACE_SCORE_WINNING_SIDE;
        public float PEACE_SCORE_WINNING_SIDE_VASSALS;
        public float PEACE_SUBJECT_TRANSFER_COST_SCORE;
        public boolean PEACE_TAKE_PROVINCES_FROM_ALLIES;
        public float PEACE_VASSALIZATION_COST_SCORE;
        public int PEACE_WAR_DAYS;
        public float PEACE_WAR_REPARATIONS;
        public float PEACE_WAR_REPARATIONS_COST_SCORE;
        public int PEACE_WAR_REPARATIONS_TURNS;
        public float WAR_MAKE_DEMANDS_MIN_WAR_SCORE;
        public float WAR_WHITE_PEACE_MIN_WAR_SCORE;
        public int[] AI_PEACE_DEMAND_VASSALIZE_PLAYER_PEACE_ORDER = {1, 2, 5, 6, 4, 3, 7, 8, 0};
        public int[] AI_PEACE_DEMAND_ANNEX_VASSAL_PEACE_ORDER = {0, 2, 5, 8, 1, 3, 4, 8};
        public int[] AI_PEACE_DEMAND_COALITION = {6, 9};
    }

    public static class GameValue_Plagues {
        public int DISEASE_DAYS_LEFT_RANDOM;
        public float DISEASE_DEATH_RATE_CHANGE_PER_DAY;
        public int DISEASE_DEATH_RATE_CHANGE_PER_DAY_RANDOM;
        public float DISEASE_MAX_DEATH_RATE_REDUCTION;
        public int DISEASE_OUTBREAK_MODIFY;
        public int DISEASE_OUTBREAK_RANDOM;
        public int PLAGUE_PAUSE_FOR_X_DAYS;
        public int SEND_NOTIFICATION_CHANCE;
    }

    public static class GameValue_Production {
        public float BASE_PRODUCTION;
        public float BASE_PRODUCTION_EFFICIENCY;
        public float GOODS_PRODUCED_PER_ECONOMY;
        public float PRODUCTION_EFFICIENCY_PER_ECONOMY;
    }

    public static class GameValue_Prosperity {
        public float PROSPERITY_INCOME;
        public String[] PROSPERITY_LEVELS;
        public float[] PROSPERITY_LEVELS_VALUE;
    }

    public static class GameValue_Province {
        public int AUTO_ASSIMILATION_ALL_IF_BELOW;
        public int AUTO_ASSIMILATION_MIN;
        public float AUTO_ASSIMILATION_PERC;
        public int AUTO_ASSIMILATION_UPDATE_STEPS;
        public int CORES_STARTING_POPULATION_MIN;
        public int CORES_STARTING_POPULATION_RANDOM;
        public int MIN_POPULATION;
        public float PROVINCE_MAINTENANCE_PER_ECONOMY;
        public float PROVINCE_MAINTENANCE_PER_MANPOWER;
        public float PROVINCE_MAINTENANCE_PER_TAX;
        public float PROVINCE_MAX_UNREST;
        public float PROVINCE_VALUE_BASE;
        public float PROVINCE_VALUE_CAPITAL;
        public float PROVINCE_VALUE_PER_ECONOMY;
        public float PROVINCE_VALUE_PER_ECONOMY_MAX;
        public float PROVINCE_VALUE_PER_GROWTH_RATE;
        public float PROVINCE_VALUE_PER_GROWTH_RATE_MAX;
        public float PROVINCE_VALUE_WONDER_BUILT;
        public boolean PROVINCE_VIEW_USE_SAME_BUTTONS;
        public float UNREST_DECREASE_COST_GOLD;
        public float UNREST_DECREASE_COST_LEGACY;
    }

    public static class GameValue_ProvinceBorderWar {
        public int[] COLOR_ACTIVE;
        public int[] COLOR_ACTIVE_2;
        public float COLOR_ACTIVE_2_ALPHA;
        public float COLOR_ACTIVE_ALPHA;
        public int[] COLOR_DASHED;
        public float COLOR_DASHED_ALPHA;
        public int[] COLOR_SEA;
        public float COLOR_SEA_ALPHA;
        public int[] COLOR_STRAIGHT;
        public int[] COLOR_STRAIGHT_2;
        public float COLOR_STRAIGHT_2_ALPHA;
        public float COLOR_STRAIGHT_ALPHA;
        public boolean ENABLE_WAR_BORDER;
        public int[] WAR_COLOR_BORDER;
        public int[] WAR_COLOR_BORDER_2;
        public float WAR_COLOR_BORDER_ALPHA;
        public float WAR_COLOR_BORDER_ALPHA_2;
        public float WAR_COLOR_BORDER_ALPHA_DOUBLE;
        public int[] WAR_COLOR_BORDER_DOUBLE;
        public int WAR_COLOR_TIME_ANIMATION;
        public int WAR_COLOR_TIME_PAUSE;
        public int WAR_COLOR_TIME_PAUSE2;
    }

    public static class GameValue_Rebels {
        public int DECLARE_INDEPENDENCE_AFTER_X_DAYS;
        public boolean DECLARE_INDEPENDENCE_ENABLE_DIFFERENT_GOVERNMENT;
        public int DECLARE_INDEPENDENCE_MIN_OCCUPIED_DAYS;
        public float DECREASE_UNREST_IN_PROVINCES_BY_AFTER_REVOLT;
        public int DISBAND_REBELS_ARMIES_AFTER_X_DAYS;
        public int GOVERNMENT_VIEW_PROVINCES_OCCUPIED_LIMIT;
        public int GOVERNMENT_VIEW_PROVINCES_UNREST_LIMIT;
        public int INDEPENDENCE_GOLD;
        public int INDEPENDENCE_GOLD_RANDOM;
        public int INDEPENDENCE_LEGACY;
        public int INDEPENDENCE_LEGACY_RANDOM;
        public int INDEPENDENCE_MAX_ADVANTAGE_POINTS;
        public int NOTIFICATIONS_UNREST_LIMIT;
        public float REBELS_FORT_DEFENSE;
        public float REBELS_MAX_MORALE;
        public float REBELS_MORALE_RECOVERY;
        public boolean REBELS_OCCUPY_NEIGHBORING_PROVINCES;
        public int SEND_NOTIFICATION_IF_UNREST_OVER;
        public int START_UPRISING_MIN_UNREST;
        public float UNREST_AFTER_REVOLUTION_IN_PROVINCE;
        public int UPRISING_MAX_REGIMENTS_IN_PROVINCE;
        public float UPRISING_PERC_OF_REGIMENTS_LIMIT;
        public float UPRISING_PROVINCES_PERC;
        public int UPRISING_REGIMENTS_MIN;
    }

    public static class GameValue_Religion {
        public float BASE_INCOME_DIFFERENT_RELIGION;
        public float CHANGE_RELIGION_COST;
        public float CHANGE_RELIGION_COST_LEGACY;
        public float CONVERSION_COST_DIFFERENT_RELIGION_GROUP;
        public float CONVERSION_COST_PER_GROWTH_RATE;
        public float CONVERSION_TIME_DIFFERENT_RELIGION_GROUP;
        public float DEFAULT_CONVERSION_COST;
        public int DEFAULT_CONVERSION_TIME;
        public float DEFAULT_CONVERSION_TIME_POPULATION;
        public float DEFAULT_CONVERSION_TIME_POPULATION_MIN;
    }

    public static class GameValue_Research {
        public float BASE_RESEARCH;
        public float MAX_RESEARCH_BASE;
        public float MAX_RESEARCH_PER_GROWTH_RATE_IN_CAPITAL;
        public float RESEARCH_BUILDING_COST_PER_RESEARCH_POINT;
        public float RESEARCH_MAINTENANCE_COST;
    }

    public static class GameValue_Rivals {
        public float AI_RIVALS_SCORE_RELATION;
        public int END_OF_RIVALRY_AFTER_EXTRA_DAYS_RANDOM;
        public int END_OF_RIVALRY_AFTER_YEARS;
        public int END_RIVALRY_COST_LEGACY;
        public int NUM_OF_RIVALS_TO_CHOOSE_FROM;
        public int RIVALS_LIMIT;
        public int RIVALS_OPINION_CHANGE;
        public float RIVALS_SCORE_DISTANCE;
        public float RIVALS_SCORE_MIN;
        public float RIVAL_LEGACY_MIN;
        public int RIVAL_MANPOWER_MIN;
    }

    public static class GameValue_Sandbox {
        public int GOLD_1;
        public int GOLD_2;
        public int LEGACY_1;
        public int LEGACY_2;
        public int MANPOWER_1;
        public int MANPOWER_2;
        public int RESEARCH_1;
        public int RESEARCH_2;
    }

    public static class GameValue_Ships {
        public boolean PAUSE_MOVE_SHIPS;
        public int SHIP_AGES;
        public int SHIP_IMAGES;
        public int SHIP_LINE_PRECISION;
        public float SHIP_SPEED_MIN;
        public int SHIP_SPEED_RANDOM;
    }

    public static class GameValue_Siege {
        public float DEVASTATION_LOOTED;
        public float DEVASTATION_MAX;
        public float DEVASTATION_PER_MONTH_DEFAULT;
        public float DEVASTATION_PER_MONTH_OCCUPIED;
        public float LOOT_PROVINCE_PER_PROVINCE_INCOME;
        public float LOOT_PROVINCE_RECOVERY_PER_MONTH;
        public float OCCUPY_PROVINCE_DECREASE_GROWTH_RATE;
        public float SIEGE_FORT_DEFENSE_DEFAULT;
        public float SIEGE_FORT_DEFENSE_PER_FORT_LVL;
        public float SIEGE_FORT_DEFENSE_PER_GROWTH_RATE_LVL;
        public float SIEGE_FORT_DEFENSE_PER_MANPOWER_LVL;
        public float SIEGE_MAX_PROGRESS;
        public float SIEGE_MIN_MORALE;
        public int SIEGE_REGIMENTS_MIN;
    }

    public static class GameValue_Spy {
        public float SEND_SPY_COST;
        public float SEND_SPY_COST_PER_PROVINCE;
        public float SEND_SPY_DISTANCE_COST_MODIFIER;
        public float SEND_SPY_DISTANCE_TIME_MODIFIER;
        public int SEND_SPY_REPORT_ACTIVE;
        public float SEND_SPY_TIME;
        public float SEND_SPY_TIME_PER_PROVINCE;
        public float SEND_SPY_TO_RIVAL_COST_REDUCTION;
        public float SEND_SPY_TO_RIVAL_TIME_REDUCTION;
    }

    public static class GameValue_SupremeCourt {
        public float CORRUPTION_BASE_VALUE;
        public float CORRUPTION_MAX;
        public float CORRUPTION_MIN;
        public float SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL;
        public float SUPREME_COURT_COST;
        public float SUPREME_COURT_COST_PER_LVL;
        public int SUPREME_COURT_MAX_LVL;
    }

    public static class GameValue_TaxEfficiency {
        public float BASE_INCOME_POPULATION_INCOME;
        public float BASE_TAX_EFFICIENCY_NEUTRAL;
        public int INCREASE_TAX_EFFICIENCY_COST;
        public float INCREASE_TAX_EFFICIENCY_COST_LEGACY;
        public float INCREASE_TAX_EFFICIENCY_COST_LEGACY_PER_TAX;
        public float INCREASE_TAX_EFFICIENCY_COST_PER_TAX_EFFICIENCY;
        public float INCREASE_TAX_EFFICIENCY_GROWTH;
        public int INCREASE_TAX_EFFICIENCY_IN_PROVINCE_DAYS;
        public int TAX_EFFICIENCY_MAX_POPULATION;
        public float TAX_EFFICIENCY_POPULATION_DIVIDE;
    }

    public static class GameValue_Text {
        public int MAIN_MENU_BG_ANIMATION_TIME;
        public int MAIN_MENU_BG_CHANGE_BG_EVERY_X_MS;
        public boolean MAIN_MENU_BG_ENABLE_AUTO_BG_CHANGE;
        public boolean MAIN_MENU_BG_ENABLE_AUTO_BG_CHANGE_MOBILE;
        public String[] MAIN_MENU_LOGO_HOVER_TEXT;
        public String VERSION;
    }

    public static class GameValue_Vassal {
        public float AI_DAMAGE_RELATIONS_IF_LIBERTY_DESIRE_OVER;
        public int DECLARE_INDEPENDENCE_MIN_LIBERTY_DESIRE;
        public float LIBERTY_DESIRE_CANT_DECLARE_WAR;
        public float LIBERTY_DESIRE_CHANGE_PER_RELATION;
        public float LIBERTY_DESIRE_CHANGE_PER_UPDATE;
        public float LIBERTY_DESIRE_IF_NOT_RANK_POSITION_HIGHER_THAN_LORD;
        public float LIBERTY_DESIRE_IF_RANK_POSITION_HIGHER_THAN_LORD;
        public float LIBERTY_DESIRE_LORD_CALL_TO_WAR;
        public float LIBERTY_DESIRE_MAX;
        public float LIBERTY_DESIRE_MIN;
        public float LIBERTY_DESIRE_PER_REGIMENT_LESS_THAN_LORD;
        public float LIBERTY_DESIRE_PER_REGIMENT_MORE_THAN_LORD;
        public boolean LORD_AUTO_JOIN_VASSALS_DEFENSIVE_WAR;
        public boolean LORD_CAN_CALL_VASSALS_TO_A_WAR;
        public boolean VASSAL_CAN_DECLARE_WAR_DEFAULT;
        public float VASSAL_COLOR_LORD_PERC;
        public float VASSAL_COLOR_VASSAL_PERC;
        public float[] VASSAL_INCOME_TO_LORD;
        public float[] VASSAL_MANPOWER_TO_LORD;
    }

    public static class GameValue_War {
        public int AI_AT_WAR_MAX_MILITARY_LEVEL;
        public int AI_AT_WAR_MIN_MILITARY_LEVEL;
        public float AI_MAX_MILITARY_LEVEL_IF_REGIMENTS_RATIO_OVER;
        public int GAME_UPDATE_WAR_AI_PEACE;
        public int GAME_UPDATE_WAR_AUTO_WHITE_PEACE;
        public int RELATIONS_TO_DECLARE_WAR;
        public float TICKING_WAR_SCORE_EACH_MONTH;
        public float TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED;
        public float TICKING_WAR_SCORE_LIMIT;
        public int WAR_AUTO_WHITE_PEACE_AFTER_X_DAYS_OF_WAR;
        public float WAR_AUTO_WHITE_PEACE_AFTER_X_DAYS_OF_WAR_IF_WARSCORE_BELOW;
        public int WAR_AUTO_WHITE_PEACE_IF_NOTHING_HAPPENS_IN_WAR_DAYS;
        public float WAR_AUTO_WHITE_PEACE_IF_WARSCORE_BELOW;
        public String[] WAR_NAMES;
        public float WAR_SCORE_ALLIES;
        public float WAR_WAR_WEARINESS_BATTLE;
        public float WAR_WAR_WEARINESS_OCCUPIED_PROVINCE;
    }

    public static class GameValue_WarWeariness {
        public int GAME_UPDATE_WAR_WEARINESS_TICK_TURNS;
        public float WAR_WEARINESS_MAX;
        public float WAR_WEARINESS_PER_TICK_AT_PEACE;
        public float WAR_WEARINESS_PER_TICK_AT_WAR;
        public float WAR_WEARINESS_PER_TICK_AT_WAR_DEFENDER;
        public float WW_ARMY_MOVEMENT_SPEED_PER_POINT;
        public float WW_CONVERSION_COST_PER_POINT;
        public float WW_CORE_COST_PER_POINT;
        public float WW_GOODS_PRODUCTION_PER_POINT;
        public float WW_LEGACY_PER_POINT;
        public float WW_RECRUITMENT_TIME_PER_POINT;
        public float WW_REDUCE;
        public float WW_REDUCE_COST_GOLD;
        public float WW_REDUCE_COST_LEGACY;
        public float WW_SIEGE_EFFECTIVENESS_PER_POINT;
        public float WW_UNREST_DIFFERENT_RELIGION_PER_POINT;
        public float WW_UNREST_NON_CORE_PER_POINT;
        public float WW_UNREST_PERC_GROWTH_RATE;
        public float WW_UNREST_PERC_MIN;
        public float WW_UNREST_PER_POINT;
    }

    public static class GameValue_Zoom {
        public float PROVINCE_ALPHA_ZOOM_IN;
        public float PROVINCE_ALPHA_ZOOM_OUT;
        public boolean SIDEBAR_ZOOM_SCALE_BUTTONS;
    }

    public static final void init() {
        Json json = new Json();
        try {
            diplomacy = (GameValue_Diplomacy) json.fromJson(GameValue_Diplomacy.class, FileManager.loadFile("game/gameValues/GV_Diplomacy.json"));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            hre = (GameValue_HRE) json.fromJson(GameValue_HRE.class, FileManager.loadFile("game/gameValues/GV_HRE.json"));
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        try {
            battleTactics = (GameValue_BattleTactics) json.fromJson(GameValue_BattleTactics.class, FileManager.loadFile("game/gameValues/GV_BattleTactics.json"));
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
        try {
            court = (GameValue_Court) json.fromJson(GameValue_Court.class, FileManager.loadFile("game/gameValues/GV_Court.json"));
        } catch (Exception e4) {
            CFG.exceptionStack(e4);
        }
        try {
            goldenAge = (GameValue_GoldenAge) json.fromJson(GameValue_GoldenAge.class, FileManager.loadFile("game/gameValues/GV_GoldenAges.json"));
        } catch (Exception e5) {
            CFG.exceptionStack(e5);
        }
        try {
            manpower = (GameValue_Manpower) json.fromJson(GameValue_Manpower.class, FileManager.loadFile("game/gameValues/GV_Manpower.json"));
        } catch (Exception e6) {
            CFG.exceptionStack(e6);
        }
        try {
            generals = (GameValue_Generals) json.fromJson(GameValue_Generals.class, FileManager.loadFile("game/gameValues/GV_Generals.json"));
        } catch (Exception e7) {
            CFG.exceptionStack(e7);
        }
        try {
            advisors = (GameValue_Advisors) json.fromJson(GameValue_Advisors.class, FileManager.loadFile("game/gameValues/GV_Advisors.json"));
        } catch (Exception e8) {
            CFG.exceptionStack(e8);
        }
        try {
            atomic = (GameValue_Atomic) json.fromJson(GameValue_Atomic.class, FileManager.loadFile("game/gameValues/GV_Atomic.json"));
        } catch (Exception e9) {
            CFG.exceptionStack(e9);
        }
        try {
            infrastructure = (GameValue_Infrastructure) json.fromJson(GameValue_Infrastructure.class, FileManager.loadFile("game/gameValues/GV_Infrastructure.json"));
        } catch (Exception e10) {
            CFG.exceptionStack(e10);
        }
        try {
            peace = (GameValue_Peace) json.fromJson(GameValue_Peace.class, FileManager.loadFile("game/gameValues/GV_Peace.json"));
        } catch (Exception e11) {
            CFG.exceptionStack(e11);
        }
        try {
            tax = (GameValue_TaxEfficiency) json.fromJson(GameValue_TaxEfficiency.class, FileManager.loadFile("game/gameValues/GV_TaxEfficiency.json"));
        } catch (Exception e12) {
            CFG.exceptionStack(e12);
        }
        try {
            spy = (GameValue_Spy) json.fromJson(GameValue_Spy.class, FileManager.loadFile("game/gameValues/GV_Spy.json"));
        } catch (Exception e13) {
            CFG.exceptionStack(e13);
        }
        try {
            budget = (GameValue_Budget) json.fromJson(GameValue_Budget.class, FileManager.loadFile("game/gameValues/GV_Budget.json"));
        } catch (Exception e14) {
            CFG.exceptionStack(e14);
        }
        try {
            militaryAcademy = (GameValue_MilitaryAcademy) json.fromJson(GameValue_MilitaryAcademy.class, FileManager.loadFile("game/gameValues/GV_MilitaryAcademy.json"));
        } catch (Exception e15) {
            CFG.exceptionStack(e15);
        }
        try {
            economy = (GameValue_Economy) json.fromJson(GameValue_Economy.class, FileManager.loadFile("game/gameValues/GV_Economy.json"));
        } catch (Exception e16) {
            CFG.exceptionStack(e16);
        }
        try {
            growthRate = (GameValue_GrowthRate) json.fromJson(GameValue_GrowthRate.class, FileManager.loadFile("game/gameValues/GV_GrowthRate.json"));
        } catch (Exception e17) {
            CFG.exceptionStack(e17);
        }
        try {
            production = (GameValue_Production) json.fromJson(GameValue_Production.class, FileManager.loadFile("game/gameValues/GV_Production.json"));
        } catch (Exception e18) {
            CFG.exceptionStack(e18);
        }
        try {
            prosperity = (GameValue_Prosperity) json.fromJson(GameValue_Prosperity.class, FileManager.loadFile("game/gameValues/GV_Prosperity.json"));
        } catch (Exception e19) {
            CFG.exceptionStack(e19);
        }
        try {
            capital = (GameValue_Capital) json.fromJson(GameValue_Capital.class, FileManager.loadFile("game/gameValues/GV_Capital.json"));
        } catch (Exception e20) {
            CFG.exceptionStack(e20);
        }
        try {
            civRank = (GameValue_CivRank) json.fromJson(GameValue_CivRank.class, FileManager.loadFile("game/gameValues/GV_CivRank.json"));
        } catch (Exception e21) {
            CFG.exceptionStack(e21);
        }
        try {
            buildings = (GameValue_Buildings) json.fromJson(GameValue_Buildings.class, FileManager.loadFile("game/gameValues/GV_Buildings.json"));
        } catch (Exception e22) {
            CFG.exceptionStack(e22);
        }
        try {
            battle = (GameValue_Battle) json.fromJson(GameValue_Battle.class, FileManager.loadFile("game/gameValues/GV_Battle.json"));
        } catch (Exception e23) {
            CFG.exceptionStack(e23);
        }
        try {
            siege = (GameValue_Siege) json.fromJson(GameValue_Siege.class, FileManager.loadFile("game/gameValues/GV_Siege.json"));
        } catch (Exception e24) {
            CFG.exceptionStack(e24);
        }
        try {
            colonization = (GameValue_Colonization) json.fromJson(GameValue_Colonization.class, FileManager.loadFile("game/gameValues/GV_Colonization.json"));
        } catch (Exception e25) {
            CFG.exceptionStack(e25);
        }
        try {
            supremeCourt = (GameValue_SupremeCourt) json.fromJson(GameValue_SupremeCourt.class, FileManager.loadFile("game/gameValues/GV_SupremeCourt.json"));
        } catch (Exception e26) {
            CFG.exceptionStack(e26);
        }
        try {
            loan = (GameValue_Loan) json.fromJson(GameValue_Loan.class, FileManager.loadFile("game/gameValues/GV_Loan.json"));
        } catch (Exception e27) {
            CFG.exceptionStack(e27);
        }
        try {
            war = (GameValue_War) json.fromJson(GameValue_War.class, FileManager.loadFile("game/gameValues/GV_War.json"));
        } catch (Exception e28) {
            CFG.exceptionStack(e28);
        }
        try {
            vassal = (GameValue_Vassal) json.fromJson(GameValue_Vassal.class, FileManager.loadFile("game/gameValues/GV_Vassals.json"));
        } catch (Exception e29) {
            CFG.exceptionStack(e29);
        }
        try {
            army = (GameValue_Army) json.fromJson(GameValue_Army.class, FileManager.loadFile("game/gameValues/GV_Army.json"));
        } catch (Exception e30) {
            CFG.exceptionStack(e30);
        }
        try {
            core = (GameValue_Core) json.fromJson(GameValue_Core.class, FileManager.loadFile("game/gameValues/GV_Core.json"));
        } catch (Exception e31) {
            CFG.exceptionStack(e31);
        }
        try {
            religion = (GameValue_Religion) json.fromJson(GameValue_Religion.class, FileManager.loadFile("game/gameValues/GV_Religion.json"));
        } catch (Exception e32) {
            CFG.exceptionStack(e32);
        }
        try {
            province = (GameValue_Province) json.fromJson(GameValue_Province.class, FileManager.loadFile("game/gameValues/GV_Province.json"));
        } catch (Exception e33) {
            CFG.exceptionStack(e33);
        }
        try {
            research = (GameValue_Research) json.fromJson(GameValue_Research.class, FileManager.loadFile("game/gameValues/GV_Research.json"));
        } catch (Exception e34) {
            CFG.exceptionStack(e34);
        }
        try {
            laws = (GameValue_Laws) json.fromJson(GameValue_Laws.class, FileManager.loadFile("game/gameValues/GV_Laws.json"));
        } catch (Exception e35) {
            CFG.exceptionStack(e35);
        }
        try {
            plagues = (GameValue_Plagues) json.fromJson(GameValue_Plagues.class, FileManager.loadFile("game/gameValues/GV_Plagues.json"));
        } catch (Exception e36) {
            CFG.exceptionStack(e36);
        }
        try {
            legacy = (GameValue_Legacy) json.fromJson(GameValue_Legacy.class, FileManager.loadFile("game/gameValues/GV_Legacy.json"));
        } catch (Exception e37) {
            CFG.exceptionStack(e37);
        }
        try {
            government = (GameValue_Government) json.fromJson(GameValue_Government.class, FileManager.loadFile("game/gameValues/GV_Government.json"));
        } catch (Exception e38) {
            CFG.exceptionStack(e38);
        }
        try {
            inflation = (GameValue_Inflation) json.fromJson(GameValue_Inflation.class, FileManager.loadFile("game/gameValues/GV_Inflation.json"));
        } catch (Exception e39) {
            CFG.exceptionStack(e39);
        }
        try {
            clickAnim = (GameValue_ClickAnimation) json.fromJson(GameValue_ClickAnimation.class, FileManager.loadFile(qIuEvFbUtcea.oSzTelERqtMTmJp));
        } catch (Exception e40) {
            CFG.exceptionStack(e40);
        }
        try {
            ships = (GameValue_Ships) json.fromJson(GameValue_Ships.class, FileManager.loadFile("game/gameValues/GV_Ships.json"));
        } catch (Exception e41) {
            CFG.exceptionStack(e41);
        }
        try {
            console = (GameValue_Console) json.fromJson(GameValue_Console.class, FileManager.loadFile("game/gameValues/GV_Console.json"));
        } catch (Exception e42) {
            CFG.exceptionStack(e42);
        }
        try {
            rivals = (GameValue_Rivals) json.fromJson(GameValue_Rivals.class, FileManager.loadFile("game/gameValues/GV_Rivals.json"));
        } catch (Exception e43) {
            CFG.exceptionStack(e43);
        }
        try {
            aggressiveExpansion = (GameValue_AggressiveExpansion) json.fromJson(GameValue_AggressiveExpansion.class, FileManager.loadFile("game/gameValues/GV_AggressiveExpansion.json"));
        } catch (Exception e44) {
            CFG.exceptionStack(e44);
        }
        try {
            warWeariness = (GameValue_WarWeariness) json.fromJson(GameValue_WarWeariness.class, FileManager.loadFile("game/gameValues/GV_WarWeariness.json"));
        } catch (Exception e45) {
            CFG.exceptionStack(e45);
        }
        try {
            difficulty = (GameValue_Difficulty) json.fromJson(GameValue_Difficulty.class, FileManager.loadFile("game/gameValues/GV_Difficulty.json"));
        } catch (Exception e46) {
            CFG.exceptionStack(e46);
        }
        try {
            civStability = (GameValue_CivStability) json.fromJson(GameValue_CivStability.class, FileManager.loadFile("game/gameValues/GV_CivStability.json"));
        } catch (Exception e47) {
            CFG.exceptionStack(e47);
        }
        try {
            mapModes = (GameValue_MapModes) json.fromJson(GameValue_MapModes.class, FileManager.loadFile("game/gameValues/GV_MapModes.json"));
        } catch (Exception e48) {
            CFG.exceptionStack(e48);
        }
        try {
            advantages = (GameValue_Advantages) json.fromJson(GameValue_Advantages.class, FileManager.loadFile("game/gameValues/GV_Advantages.json"));
        } catch (Exception e49) {
            CFG.exceptionStack(e49);
        }
        try {
            sandbox = (GameValue_Sandbox) json.fromJson(GameValue_Sandbox.class, FileManager.loadFile("game/gameValues/GV_Sandbox.json"));
        } catch (Exception e50) {
            CFG.exceptionStack(e50);
        }
        try {
            text = (GameValue_Text) json.fromJson(GameValue_Text.class, FileManager.loadFile("game/gameValues/GameValues_Text.json"));
        } catch (Exception e51) {
            CFG.exceptionStack(e51);
        }
        try {
            notifications = (GameValue_Notifications) json.fromJson(GameValue_Notifications.class, FileManager.loadFile("game/gameValues/GV_Notifications.json"));
        } catch (Exception e52) {
            CFG.exceptionStack(e52);
        }
        try {
            gameSpeed = (GameValue_GameSpeed) json.fromJson(GameValue_GameSpeed.class, FileManager.loadFile("game/gameValues/GV_GameSpeed.json"));
        } catch (Exception e53) {
            CFG.exceptionStack(e53);
        }
        try {
            rebels = (GameValue_Rebels) json.fromJson(GameValue_Rebels.class, FileManager.loadFile("game/gameValues/GV_Rebels.json"));
        } catch (Exception e54) {
            CFG.exceptionStack(e54);
        }
        try {
            events = (GameValue_Events) json.fromJson(GameValue_Events.class, FileManager.loadFile("game/gameValues/GV_Events.json"));
        } catch (Exception e55) {
            CFG.exceptionStack(e55);
        }
        try {
            fog = (GameValue_FOG) json.fromJson(GameValue_FOG.class, FileManager.loadFile("game/gameValues/GV_FogOfWar.json"));
        } catch (Exception e56) {
            CFG.exceptionStack(e56);
        }
        try {
            gameUpdate = (GameValue_GameUpdate) json.fromJson(GameValue_GameUpdate.class, FileManager.loadFile("game/gameValues/GV_GameUpdate.json"));
        } catch (Exception e57) {
            CFG.exceptionStack(e57);
        }
        try {
            gameUpdateAI = (GameValue_GameUpdate_AI) json.fromJson(GameValue_GameUpdate_AI.class, FileManager.loadFile("game/gameValues/GV_GameUpdateAI.json"));
        } catch (Exception e58) {
            CFG.exceptionStack(e58);
        }
        try {
            provinceBorderWar = (GameValue_ProvinceBorderWar) json.fromJson(GameValue_ProvinceBorderWar.class, FileManager.loadFile("game/gameValues/GV_ProvinceBorder.json"));
        } catch (Exception e59) {
            CFG.exceptionStack(e59);
        }
        try {
            hover = (GameValue_Hover) json.fromJson(GameValue_Hover.class, FileManager.loadFile("game/gameValues/GV_Hover.json"));
        } catch (Exception e60) {
            CFG.exceptionStack(e60);
        }
        try {
            luckyCivs = (GameValue_LuckyCivs) json.fromJson(GameValue_LuckyCivs.class, FileManager.loadFile("game/gameValues/GV_LuckyCivs.json"));
        } catch (Exception e61) {
            CFG.exceptionStack(e61);
        }
        try {
            inGame = (GameValue_InGame) json.fromJson(GameValue_InGame.class, FileManager.loadFile("game/gameValues/GV_InGame.json"));
        } catch (Exception e62) {
            CFG.exceptionStack(e62);
        }
        try {
            zoom = (GameValue_Zoom) json.fromJson(GameValue_Zoom.class, FileManager.loadFile("game/gameValues/GV_Zoom.json"));
        } catch (Exception e63) {
            CFG.exceptionStack(e63);
        }
        try {
            info = (GameValue_Info) json.fromJson(GameValue_Info.class, FileManager.loadFile("game/gameValues/GV_Info.json"));
        } catch (Exception e64) {
            CFG.exceptionStack(e64);
        }
        try {
            newGame = (GameValue_NewGame) json.fromJson(GameValue_NewGame.class, FileManager.loadFile("game/gameValues/GV_NewGame.json"));
        } catch (Exception e65) {
            CFG.exceptionStack(e65);
        }
        try {
            move = (GameValue_Move) json.fromJson(GameValue_Move.class, FileManager.loadFile("game/gameValues/GV_Move.json"));
        } catch (Exception e66) {
            CFG.exceptionStack(e66);
        }
        try {
            logs = (GameValue_Logs) json.fromJson(GameValue_Logs.class, FileManager.loadFile(qIuEvFbUtcea.fpxAnlFCPyILe));
        } catch (Exception e67) {
            CFG.exceptionStack(e67);
        }
        try {
            Game.aiValues = (AI_Values) json.fromJson(AI_Values.class, FileManager.loadFile("game/gameValues/AI/AI_Values.json"));
        } catch (Exception e68) {
            CFG.exceptionStack(e68);
        }
        try {
            Game.aiValuesArmies = (AI_ValuesArmies) json.fromJson(AI_ValuesArmies.class, FileManager.loadFile("game/gameValues/AI/AI_Armies.json"));
        } catch (Exception e69) {
            CFG.exceptionStack(e69);
        }
        try {
            Game.aiValuesBuild = (AI_ValuesBuild) json.fromJson(AI_ValuesBuild.class, FileManager.loadFile("game/gameValues/AI/AI_Build.json"));
        } catch (Exception e70) {
            CFG.exceptionStack(e70);
        }
        try {
            Game.aiValuesConvert = (AI_ValuesConvert) json.fromJson(AI_ValuesConvert.class, FileManager.loadFile("game/gameValues/AI/AI_ConvertReligion.json"));
        } catch (Exception e71) {
            CFG.exceptionStack(e71);
        }
        try {
            Game.aiValuesCores = (AI_ValuesCores) json.fromJson(AI_ValuesCores.class, FileManager.loadFile("game/gameValues/AI/AI_Cores.json"));
        } catch (Exception e72) {
            CFG.exceptionStack(e72);
        }
        try {
            Game.aiValuesDiplomacy = (AI_ValuesDiplomacy) json.fromJson(AI_ValuesDiplomacy.class, FileManager.loadFile("game/gameValues/AI/AI_Diplomacy.json"));
        } catch (Exception e73) {
            CFG.exceptionStack(e73);
        }
        Game.difficultyID = difficulty.NORMAL_ID;
        iGoldenAge_ProsperitySize = goldenAge.GA_PROSPERITY_INVESTED_IN_ECONOMY.length;
        iGoldenAge_MilitarySize = goldenAge.GA_MILITARY_INCREASED_MANPOWER.length;
        iGoldenAge_ScienceSize = goldenAge.GA_SCIENCE_DEVELOPED_INFRASTRUCTURE.length;
        Game.mapBG.updateMapBGSea();
        updateSettingsFBO();
        Game.FOG_OF_WAR = fog.DEFAULT_FOG_OF_WAR;
        Game.ENABLE_CALL_VASSALS = vassal.LORD_CAN_CALL_VASSALS_TO_A_WAR;
        Game.soundsManager.hoverVolume = Math.max(0.0f, Math.min(1.0f, hover.HOVER_SOUND_VOLUME));
        MenuElement_Hover.DRAW_EXTRA_TIME = hover.HOVER_EXTRA_INFO_TIME;
        HoverManager.HOVER_MOBILE_TIME_VISIBLE = hover.HOVER_MOBILE_TIME_VISIBLE;
        try {
            CFG.COLOR_PROVINCE_STRAIGHT_WAR = new Color(provinceBorderWar.WAR_COLOR_BORDER[0] / 255.0f, provinceBorderWar.WAR_COLOR_BORDER[1] / 255.0f, provinceBorderWar.WAR_COLOR_BORDER[2] / 255.0f, provinceBorderWar.WAR_COLOR_BORDER_ALPHA);
            CFG.COLOR_PROVINCE_STRAIGHT_WAR2 = new Color(provinceBorderWar.WAR_COLOR_BORDER_2[0] / 255.0f, provinceBorderWar.WAR_COLOR_BORDER_2[1] / 255.0f, provinceBorderWar.WAR_COLOR_BORDER_2[2] / 255.0f, provinceBorderWar.WAR_COLOR_BORDER_ALPHA_2);
            CFG.COLOR_PROVINCE_STRAIGHT2_WAR = new Color(provinceBorderWar.WAR_COLOR_BORDER_DOUBLE[0] / 255.0f, provinceBorderWar.WAR_COLOR_BORDER_DOUBLE[1] / 255.0f, provinceBorderWar.WAR_COLOR_BORDER_DOUBLE[2] / 255.0f, provinceBorderWar.WAR_COLOR_BORDER_ALPHA_DOUBLE);
            CFG.COLOR_PROVINCE_DASHED = new Color(provinceBorderWar.COLOR_DASHED[0] / 255.0f, provinceBorderWar.COLOR_DASHED[1] / 255.0f, provinceBorderWar.COLOR_DASHED[2] / 255.0f, provinceBorderWar.COLOR_DASHED_ALPHA);
            CFG.COLOR_PROVINCE_STRAIGHT = new Color(provinceBorderWar.COLOR_STRAIGHT[0] / 255.0f, provinceBorderWar.COLOR_STRAIGHT[1] / 255.0f, provinceBorderWar.COLOR_STRAIGHT[2] / 255.0f, provinceBorderWar.COLOR_STRAIGHT_ALPHA);
            CFG.COLOR_PROVINCE_STRAIGHT2 = new Color(provinceBorderWar.COLOR_STRAIGHT_2[0] / 255.0f, provinceBorderWar.COLOR_STRAIGHT_2[1] / 255.0f, provinceBorderWar.COLOR_STRAIGHT_2[2] / 255.0f, provinceBorderWar.COLOR_STRAIGHT_2_ALPHA);
            CFG.COLOR_PROVINCE_SEABYSEA = new Color(provinceBorderWar.COLOR_SEA[0] / 255.0f, provinceBorderWar.COLOR_SEA[1] / 255.0f, provinceBorderWar.COLOR_SEA[2] / 255.0f, provinceBorderWar.COLOR_SEA_ALPHA);
            CFG.COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER = new Color(provinceBorderWar.COLOR_ACTIVE[0] / 255.0f, provinceBorderWar.COLOR_ACTIVE[1] / 255.0f, provinceBorderWar.COLOR_ACTIVE[2] / 255.0f, provinceBorderWar.COLOR_ACTIVE_ALPHA);
            CFG.COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER2 = new Color(provinceBorderWar.COLOR_ACTIVE_2[0] / 255.0f, provinceBorderWar.COLOR_ACTIVE_2[1] / 255.0f, provinceBorderWar.COLOR_ACTIVE_2[2] / 255.0f, provinceBorderWar.COLOR_ACTIVE_2_ALPHA);
        } catch (Exception e74) {
            CFG.exceptionStack(e74);
        }
    }

    public static final void initGameValue() {
        value = (GameValue) new Json().fromJson(GameValue.class, FileManager.loadFile("game/gameValues/GameValues.json"));
    }

    public static void updateSettingsFBO() {
        if (CFG.isDesktop() || !value.MOBILE_DISABLE_FBO) {
            return;
        }
        Game.settingsManager.FBO_PROVINCE_NAMES = false;
        Game.settingsManager.FBO_PROVINCES = false;
    }
}
