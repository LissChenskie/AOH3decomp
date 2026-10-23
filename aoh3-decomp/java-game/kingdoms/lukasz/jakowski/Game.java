package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.jakowski.AI.AI_Manager;
import aoc.kingdoms.lukasz.jakowski.AI.Values.AI_Values;
import aoc.kingdoms.lukasz.jakowski.AI.Values.AI_ValuesArmies;
import aoc.kingdoms.lukasz.jakowski.AI.Values.AI_ValuesBuild;
import aoc.kingdoms.lukasz.jakowski.AI.Values.AI_ValuesConvert;
import aoc.kingdoms.lukasz.jakowski.AI.Values.AI_ValuesCores;
import aoc.kingdoms.lukasz.jakowski.AI.Values.AI_ValuesDiplomacy;
import aoc.kingdoms.lukasz.jakowski.FlagsEditor.FlagManager;
import aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread;
import aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread_Events;
import aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread_Turns;
import aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread_Update;
import aoc.kingdoms.lukasz.jakowski.Player.Player;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.LoadManager;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveManager;
import aoc.kingdoms.lukasz.jakowski.Stats.StatsManager;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamAchievementsManager;
import aoc.kingdoms.lukasz.jakowski.setting.SettingsManager;
import aoc.kingdoms.lukasz.jakowski.zOther.Point_XY;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.GeneralManager;
import aoc.kingdoms.lukasz.map.IdeologiesManager;
import aoc.kingdoms.lukasz.map.ReligionManager;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.map.allianceHRE.Alliance;
import aoc.kingdoms.lukasz.map.army.ArmyDivision_Shadow;
import aoc.kingdoms.lukasz.map.army.ArmyRecruit;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.map.clouds.CloudsManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.map.Continents;
import aoc.kingdoms.lukasz.map.map.GeographicalRegions;
import aoc.kingdoms.lukasz.map.map.Map;
import aoc.kingdoms.lukasz.map.map.MapBG;
import aoc.kingdoms.lukasz.map.map.MapCities;
import aoc.kingdoms.lukasz.map.map.MapCoords;
import aoc.kingdoms.lukasz.map.map.MapEdgeMove;
import aoc.kingdoms.lukasz.map.map.MapModeManager;
import aoc.kingdoms.lukasz.map.map.MapOver;
import aoc.kingdoms.lukasz.map.map.MapScale;
import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.map.map.MapScroll;
import aoc.kingdoms.lukasz.map.map.MapTouchManager;
import aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_RegroupLine;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceCut;
import aoc.kingdoms.lukasz.map.province.ProvinceHover;
import aoc.kingdoms.lukasz.map.province.animation.ProvinceAnimation;
import aoc.kingdoms.lukasz.map.province.animation.ProvinceAnimationHover;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData10;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData2;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData3;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData4;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData5;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData6;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData7;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData8;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData9;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData_Population;
import aoc.kingdoms.lukasz.map.rebels.RevolutionManager;
import aoc.kingdoms.lukasz.map.rebels.RevolutionMoveUnits;
import aoc.kingdoms.lukasz.map.terrain.TerrainManager;
import aoc.kingdoms.lukasz.menu.HoverManager;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menus.Init_SelectLanguage;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.InGameDrawOver;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.InGameDrawOver_InvasionArmy;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.InGameDrawOver_RegroupArmy;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Cursor;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.ConcurrentLinkedDeque;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Game {
    private static final float HIGHLIGHTED_PROVINCES_ANIMATION_TIME = 750.0f;
    private static final float HIGHLIGHTED_PROVINCES_ANIMATION_TIME_BACK = 350.0f;
    public static int HOURS_PER_TURN;
    public static AmbienceManager ambienceManager;
    public static AnimationManager animationManager;
    public static BattleManager battleManager;
    public static FlagData flagData;
    public static HoverManager hoverManager;
    public static long lDashedLineTime_Percentage_HighlitedProvinceBorder;
    public static LanguageManager lang;
    public static Map map;
    public static MapBG mapBG;
    public static MenuManager menuManager;
    public static MenuElement_Hover provinceHover_Informations;
    public static SettingsManager settingsManager;
    public static SoundsManager soundsManager;
    public static int versionWidth;
    public static Random oR = new Random();
    public static AI_Manager aiManager = new AI_Manager();
    public static AI_Values aiValues = new AI_Values();
    public static AI_ValuesBuild aiValuesBuild = new AI_ValuesBuild();
    public static AI_ValuesConvert aiValuesConvert = new AI_ValuesConvert();
    public static AI_ValuesCores aiValuesCores = new AI_ValuesCores();
    public static AI_ValuesArmies aiValuesArmies = new AI_ValuesArmies();
    public static AI_ValuesDiplomacy aiValuesDiplomacy = new AI_ValuesDiplomacy();
    public static MapCoords mapCoords = new MapCoords();
    public static MapScale mapScale = new MapScale();
    public static MapEdgeMove mapEdgeMove = new MapEdgeMove();
    public static MapScroll mapScroll = new MapScroll();
    public static CloudsManager cloudsAnimation = new CloudsManager();
    public static MapCities mapCities = new MapCities();
    public static MapOver mapOver = new MapOver();
    public static MapOver mapOverSea = new MapOver();
    public static MapModeManager mapModes = new MapModeManager();
    public static MapTouchManager mapTouchManager = new MapTouchManager();
    public static TerrainManager terrainManager = new TerrainManager();
    public static Continents continents = new Continents();
    public static GeographicalRegions geographicalRegions = new GeographicalRegions();
    public static GeneralManager generalManager = new GeneralManager();
    public static AdvisorManager advisorManager = new AdvisorManager();
    public static Keyboard keyboard = new Keyboard();
    public static GameThread gameThread = new GameThread();
    public static GameThread_Update gameThreadUpdate = new GameThread_Update();
    public static GameThread_Turns gameThreadTurns = new GameThread_Turns();
    public static GameThread_Events gameThreadEvents = new GameThread_Events();
    public static IdeologiesManager ideologiesManager = new IdeologiesManager();
    public static ReligionManager religionManager = new ReligionManager();
    public static Game_Ages gameAges = new Game_Ages();
    public static FlagManager flagManager = new FlagManager();
    public static UnionManager_Flags unionManagerFlags = new UnionManager_Flags();
    public static StatsManager stats = new StatsManager();
    public static boolean FOG_OF_WAR = false;
    public static boolean SPECTATOR_MODE = false;
    public static boolean SANDBOX = false;
    public static boolean SCENARIO_EVENTS = true;
    public static boolean ENABLE_CALL_VASSALS = false;
    public static int scenarioID = 0;
    public static boolean reloadScenario = false;
    public static MapScenarios mapScenarios = new MapScenarios();
    public static boolean highTextureSettings = true;
    public static int aiAggressivnes = 0;
    public static int difficultyID = 0;
    public static float DRAW_CITIES_MIN_SCALE = 1.3f;
    public static float DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE = 0.6f;
    public static float DRAW_INNER_BORDERS = 0.6f;
    public static float DRAW_OCCUPIED_PROVINCES_MIN_SCALE = 0.15f;
    public static float DRAW_ARMY_MIN_SCALE = 0.5f;
    public static float DRAW_OCCUPIED_SCALE = 2.0f;
    public static List<Province> lProvinces = new ArrayList();
    public static int iProvincesSize = 0;
    public static List<ProvinceData> lProvincesData = new ArrayList();
    public static List<ProvinceData2> lProvincesData2 = new ArrayList();
    public static List<ProvinceData3> lProvincesData3 = new ArrayList();
    public static List<ProvinceData4> lProvincesData4 = new ArrayList();
    public static List<ProvinceData5> lProvincesData5 = new ArrayList();
    public static List<ProvinceData6> lProvincesData6 = new ArrayList();
    public static List<ProvinceData7> lProvincesData7 = new ArrayList();
    public static List<ProvinceData8> lProvincesData8 = new ArrayList();
    public static List<ProvinceData9> lProvincesData9 = new ArrayList();
    public static List<ProvinceData10> lProvincesData10 = new ArrayList();
    public static List<ProvinceData_Population> lProvincesPopulation = new ArrayList();
    public static List<Alliance> alliancesSpecial = new ArrayList();
    public static int alliancesSpecialSize = 0;
    public static List<Image> alliancesSpecial_Flag = new ArrayList();
    public static ArmyRecruit armyRecruit = new ArmyRecruit(0, 0, 0, null);
    public static GameActiveProvince gameActiveProvince = new GameActiveProvince();
    public static ProvinceAnimation activeProvince_Animation_Data = new ProvinceAnimation();
    public static ProvinceAnimation selectedProvinces_Animation_Data = new ProvinceAnimation();
    public static ProvinceAnimationHover animationHover = new ProvinceAnimationHover();
    public static int iActiveProvince = -1;
    public static int iHoveredProvinceID = -1;
    public static int iOldActiveProvinceID = -1;
    public static int iOldHoveredProvinceID = 0;
    public static HoveredArmy hoveredArmy = new HoveredArmy();
    public static List<HoveredArmy> activeArmy = new ArrayList();
    public static int activeArmySize = 0;
    public static int iHoveredCapitalProvinceID = -1;
    public static boolean invasionArmyMode = false;
    public static List<Integer> invasionArmyProvinces = new ArrayList();
    public static int invasionArmyProvincesSize = 0;
    public static boolean regroupArmyMode = false;
    public static List<Integer> regroupArmyProvinces = new ArrayList();
    public static List<ArmyDivision_Shadow> regroupArmyShadows = new ArrayList();
    public static int iRegroupArmyProvincesSize = 0;
    public static MoveUnits_RegroupLine regroupArmyLine = null;
    public static int hoveredShipID = -1;
    public static HoveredBattle hoveredBattle = new HoveredBattle();
    public static int hoveredSiegeID = -1;
    public static boolean chooseProvinceMode = false;
    public static int MAX_BELOW_ZERO_POINT_X = 0;
    public static List<ProvinceCut> cutProvinces = null;
    public static RegionManager regions = new RegionManager();
    public static boolean updateProvincesInView = true;
    public static List<Integer> lProvincesInView = new ArrayList();
    public static List<Integer> lSeaProvincesInView = new ArrayList();
    public static List<Integer> lWastelandProvincesInView = new ArrayList();
    public static List<Integer> lExtraProvincesInView = new ArrayList();
    public static int NUM_OF_PROVINCES_IN_VIEW = 0;
    public static int NUM_OF_EXTRA_PROVINCES_IN_VIEW = 0;
    public static int NUM_OF_SEA_PROVINCES_IN_VIEW = 0;
    public static int NUM_OF_WASTELAND_PROVINCES_IN_VIEW = 0;
    public static List<Civilization> lCivs = new ArrayList();
    public static int iCivsSize = 0;
    public static RevolutionManager revolutionManager = new RevolutionManager();
    public static RevolutionMoveUnits revolutionMoveUnits = new RevolutionMoveUnits();
    public static Player player = new Player();
    public static float deltaTime = Gdx.graphics.getDeltaTime();
    private static ConcurrentLinkedDeque<SimpleTask> simpleTasks = new ConcurrentLinkedDeque<>();
    public static List<Cursor> lCursors = new ArrayList();
    public static int activeCursorID = -1;
    public static int maxWastelandLvl = 99;
    public static int hoveredProvinceBG_LoadedID = -1;
    public static Image hoveredProvinceBG = null;
    public static float fDashedLine_Percentage_HighlitedProvinceBorder = 0.0f;
    public static boolean highlightedProvinceBorder_BackAnimation = false;
    public static boolean highlightedProvinceBorder_Update = false;
    public static int inViewY_CordsY = 0;
    public static int inViewY_CordsY_Height = 0;
    public static int inViewX_CordsX = 0;
    public static int inViewX_CordsX_Width = 0;
    public static float iMaxDistance = 1.0f;
    public static float iMaxDistanceManhattan = 1.0f;
    public static MapDistance mapDistance = new AnonymousClass8();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Game$1, reason: invalid class name */
    class AnonymousClass1 extends SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_ProvinceArmy(true, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Game$10, reason: invalid class name */
    class AnonymousClass10 implements MapDistance {
        AnonymousClass10() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.MapDistance
        public float getDistanceFromProvinceToProvince(int i, int i2) {
            Province province = Game.getProvince(i);
            Province province2 = Game.getProvince(i2);
            try {
                return (float) Math.sqrt(Math.pow(province2.getCenterX_Real() - province.getCenterX_Real(), 2.0d) + Math.pow(province2.getCenterY_Real() - province.getCenterY_Real(), 2.0d));
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return Game.iMaxDistance;
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.MapDistance
        public float getManhattanDistance(int i, int i2) {
            Province province = Game.getProvince(i);
            Province province2 = Game.getProvince(i2);
            return Math.abs(province.getCenterX_Real() - province2.getCenterX_Real()) + Math.abs(province.getCenterY_Real() - province2.getCenterY_Real());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Game$2, reason: invalid class name */
    class AnonymousClass2 extends SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_ProvinceArmy(true, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Game$3, reason: invalid class name */
    class AnonymousClass3 extends SimpleTask {
        AnonymousClass3(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                Game.getProvince(i).clearArmiesCivID(this.id);
            }
            for (int i2 = 1; i2 < Game.iCivsSize; i2++) {
                Game.getCiv(i2).setCivID_Just(i2);
                if (Game.getCiv(i2).getPuppetOfCivID() > this.id) {
                    Game.getCiv(i2).setPuppetOfCivID(Game.getCiv(i2).getPuppetOfCivID() - 1);
                } else if (Game.getCiv(i2).getPuppetOfCivID() == this.id) {
                    Game.getCiv(i2).setPuppetOfCivID(Game.getCiv(i2).getCivID());
                }
            }
            for (int i3 = 0; i3 < Game.iProvincesSize; i3++) {
                if (Game.getProvince(i3).getCivID() > this.id) {
                    Game.getProvince(i3).setCivID_Just(Game.getProvince(i3).getCivID() - 1);
                } else if (Game.getProvince(i3).getCivID() == this.id) {
                    Game.getProvince(i3).setCivID_Just(0);
                    Game.updateProvinceBorder(i3);
                }
                for (int armySize = Game.getProvince(i3).getArmySize() - 1; armySize >= 0; armySize--) {
                    if (Game.getProvince(i3).getArmy(armySize).civID > this.id) {
                        Game.getProvince(i3).getArmy(armySize).civID--;
                    } else if (Game.getProvince(i3).getArmy(armySize).civID == this.id) {
                        Game.getProvince(i3).removeArmy(armySize);
                    }
                }
                Game.getProvince(i3).updateCores_AfterRemoveCiv(this.id);
            }
            for (int i4 = 0; i4 < Game.alliancesSpecialSize; i4++) {
                try {
                    Game.alliancesSpecial.get(i4).updateAfterRemoveOfCiv(this.id);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            DiplomacyManager.updateAfterRemoveCiv(this.id);
            Game.updateProvincesInView = true;
            CivilizationRegionsManager.updateRegionsInView = true;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Game$4, reason: invalid class name */
    class AnonymousClass4 extends SimpleTask {
        AnonymousClass4(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.getCiv(this.id).loadFlag();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Game$5, reason: invalid class name */
    class AnonymousClass5 extends SimpleTask {
        AnonymousClass5(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            CivilizationRegionsManager.buildCivilizationsRegion(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Game$6, reason: invalid class name */
    class AnonymousClass6 extends SimpleTask {
        AnonymousClass6(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            CivilizationRegionsManager.buildCivilizationsRegions_TextOver(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Game$7, reason: invalid class name */
    class AnonymousClass7 extends SimpleTask {
        AnonymousClass7(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            CivilizationRegionsManager.buildCivilizationsRegions_TextOver(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Game$8, reason: invalid class name */
    class AnonymousClass8 implements MapDistance {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.MapDistance
        public float getDistanceFromProvinceToProvince(int i, int i2) {
            return 0.0f;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.MapDistance
        public float getManhattanDistance(int i, int i2) {
            return 0.0f;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Game$9, reason: invalid class name */
    class AnonymousClass9 implements MapDistance {
        AnonymousClass9() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.MapDistance
        public float getDistanceFromProvinceToProvince(int i, int i2) {
            Province province = Game.getProvince(i);
            Province province2 = Game.getProvince(i2);
            try {
                return Math.min(Math.min((float) Math.sqrt(Math.pow((province2.getCenterX_Real() + Game.mapBG.getWidth_Real()) - province.getCenterX_Real(), 2.0d) + Math.pow(province2.getCenterY_Real() - province.getCenterY_Real(), 2.0d)), (float) Math.sqrt(Math.pow(province2.getCenterX_Real() - (province.getCenterX_Real() + Game.mapBG.getWidth_Real()), 2.0d) + Math.pow(province2.getCenterY_Real() - province.getCenterY_Real(), 2.0d))), (float) Math.sqrt(Math.pow(province2.getCenterX_Real() - province.getCenterX_Real(), 2.0d) + Math.pow(province2.getCenterY_Real() - province.getCenterY_Real(), 2.0d)));
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return Game.iMaxDistance;
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.MapDistance
        public float getManhattanDistance(int i, int i2) {
            Province province = Game.getProvince(i);
            Province province2 = Game.getProvince(i2);
            return Math.min(Math.abs(province.getCenterX_Real() - province2.getCenterX_Real()) + Math.abs(province.getCenterY_Real() - province2.getCenterY_Real()), Math.abs((province.getCenterX_Real() + Game.mapBG.getWidth_Real()) - province2.getCenterX_Real()) + Math.abs(province.getCenterY_Real() - province2.getCenterY_Real()));
        }
    }

    public static class ArmyPos {
        public int iID;
        public int iProvinceID;

        public ArmyPos(int i, int i2) {
            this.iProvinceID = i;
            this.iID = i2;
        }
    }

    public static class FlagData {
        public int NumOfFlags;
    }

    public static class HoveredArmy {
        public int iArmyID;
        public int iCivID;
        public int iProvinceID = -1;
        public String key;
    }

    public static class HoveredBattle {
        public int iProvinceID = -1;
        public String key;
    }

    public static class LoadCivilizationData {
        public int ReligionID;
        public String Tag;
        public String Wiki;
        public int iB;
        public int iG;
        public int iR;
        public String Name = null;
        public int GroupID = 0;
    }

    public interface MapDistance {
        float getDistanceFromProvinceToProvince(int i, int i2);

        float getManhattanDistance(int i, int i2);
    }

    public static class SimpleTask {
        public int id;
        public int id2;
        public String taskKey;

        public SimpleTask(String str) {
            this.taskKey = str;
        }

        public SimpleTask(String str, int i) {
            this.taskKey = str;
            this.id = i;
        }

        public SimpleTask(String str, int i, int i2) {
            this.taskKey = str;
            this.id = i;
            this.id2 = i2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SimpleTask) {
                return Objects.equals(this.taskKey, ((SimpleTask) obj).taskKey);
            }
            return false;
        }

        public int hashCode() {
            return 0;
        }

        public void update() {
        }
    }

    public static class VassalsToRelease {
        public int iCivID;
        public int iNumOfProvinces;

        public VassalsToRelease(int i, int i2) {
            this.iCivID = i;
            this.iNumOfProvinces = i2;
        }
    }

    public static final void addActiveArmy(HoveredArmy hoveredArmy2) {
        for (int i = 0; i < activeArmySize; i++) {
            if (activeArmy.get(i).key.equals(hoveredArmy2.key)) {
                return;
            }
        }
        activeArmy.add(hoveredArmy2);
        activeArmySize = activeArmy.size();
    }

    public static void addAllianceSpecial(Alliance alliance) {
        for (int i = 0; i < alliancesSpecial.size(); i++) {
            if (alliancesSpecial.get(i).Name_Alliance.equals(alliance.Name_Alliance)) {
                alliancesSpecial.set(i, alliance);
                return;
            }
        }
        alliancesSpecial.add(alliance);
    }

    public static final boolean addCivilization(String str, int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        for (int i2 = 0; i2 < getCivsSize(); i2++) {
            if (getCiv(i2).getCivTag().equals(str)) {
                return false;
            }
        }
        LoadCivilizationData loadCivilizationDataLoadCivilization = loadCivilization(str);
        if (z5) {
            lCivs.add(new Civilization(getCivsSize(), str, iCivsSize, loadCivilizationDataLoadCivilization.iR, loadCivilizationDataLoadCivilization.iG, loadCivilizationDataLoadCivilization.iB, i, loadCivilizationDataLoadCivilization.ReligionID, loadCivilizationDataLoadCivilization.GroupID, true));
            List<Civilization> list = lCivs;
            list.get(list.size() - 1).loadScenario_A();
            addSimpleTask(new AnonymousClass4("LOAD_FLAG" + lCivs.size() + CFG.extraRandomTag(), lCivs.size() - 1));
        } else {
            lCivs.add(new Civilization(getCivsSize(), str, iCivsSize, loadCivilizationDataLoadCivilization.iR, loadCivilizationDataLoadCivilization.iG, loadCivilizationDataLoadCivilization.iB, i, loadCivilizationDataLoadCivilization.ReligionID, loadCivilizationDataLoadCivilization.GroupID));
        }
        int size = lCivs.size();
        iCivsSize = size;
        lCivs.get(size - 1).initTechTree();
        lCivs.get(iCivsSize - 1).initGoodsProduced();
        if (z4) {
            int civID = getProvince(i).getCivID();
            getCiv(iCivsSize - 1).addProvince(i);
            getProvince(i).setCivID_RemoveOldAddNewToCiv(iCivsSize - 1);
            getProvince(i).setIsCapital(true);
            getProvince(i).setDrawCities(true);
            if (civID > 0) {
                getCiv(civID).removeProvince(i);
                addSimpleTask(new AnonymousClass5("buildCivilizationsRegion" + civID, civID));
            }
        }
        return true;
    }

    public static final void addSimpleTask(SimpleTask simpleTask) {
        if (simpleTasks.contains(simpleTask)) {
            return;
        }
        simpleTasks.add(simpleTask);
    }

    public static final void addSimpleTask_First(SimpleTask simpleTask) {
        if (simpleTasks.contains(simpleTask)) {
            return;
        }
        simpleTasks.addFirst(simpleTask);
    }

    public static final void buildDistanceToCapital() {
        for (int i = 0; i < getProvincesSize(); i++) {
            getProvince(i).buildDistanceToCapital();
        }
    }

    public static final void buildProsperity_AverageEconomy() {
        for (int i = 1; i < getCivsSize(); i++) {
            getCiv(i).updateProsperity_AverageEconomy();
        }
    }

    public static final void buildProvinceIsCapital() {
        for (int i = 1; i < getCivsSize(); i++) {
            if (getCiv(i).getCapitalProvinceID() >= 0 && getProvince(getCiv(i).getCapitalProvinceID()).getCivID() == i) {
                getProvince(getCiv(i).getCapitalProvinceID()).setIsCapital(true);
            }
        }
    }

    public static void buildSuggestedCivs_ToSmallerMap_OnlyToConvert() {
        for (int i = 0; i < getProvincesSize(); i++) {
            if (getProvince(i).getCitiesSize() > 0 && FileManager.loadFile("map/" + map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SUGGESTED_CIVS_PATH + i + ".txt").exists()) {
                for (String str : FileManager.loadFile("map/" + map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SUGGESTED_CIVS_PATH + i + ".txt").readString().split(";")) {
                    Gdx.files.local("map/" + map.getFile_ActiveMap_Path() + "SUGGESTED_TEST.txt").writeString((getProvince(i).getCity(0).getPosX() / mapBG.iMapScale) + ";" + (getProvince(i).getCity(0).getPosY() / mapBG.iMapScale) + ";" + str + ";", true);
                }
            }
        }
    }

    public static final void buildWastelandLevels() {
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < getProvincesSize(); i++) {
                if (getProvince(i).getWasteland() >= 0 && !getProvince(i).getSeaProvince()) {
                    arrayList.add(Integer.valueOf(i));
                    getProvince(i).setWasteland(0);
                }
            }
            buildWastelandLevels(arrayList, 0, arrayList.size());
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void buildWastelandLevels(List<Integer> list, int i, int i2) {
        boolean z;
        int i3 = 0;
        boolean z2 = false;
        while (i3 < i2) {
            try {
                if (getProvince(list.get(i3).intValue()).getWasteland() != i || getProvince(list.get(i3).intValue()).getNeighboringSeaProvincesSize() > 0) {
                    list.remove(i3);
                    i3--;
                    i2 = list.size();
                } else {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= getProvince(list.get(i3).intValue()).getNeighboringProvincesSize()) {
                            z = true;
                            break;
                        } else {
                            if (getProvince(getProvince(list.get(i3).intValue()).getNeighboringProvinces(i4)).getWasteland() < i) {
                                z = false;
                                break;
                            }
                            i4++;
                        }
                    }
                    if (z) {
                        getProvince(list.get(i3).intValue()).setWasteland(i + 1);
                        z2 = true;
                    } else {
                        list.remove(i3);
                        i3--;
                        i2 = list.size();
                    }
                }
                i3++;
            } catch (StackOverflowError e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        if (!z2 || i >= maxWastelandLvl) {
            return;
        }
        buildWastelandLevels(list, i + 1, i2);
    }

    public static boolean canInvestInEconomy(int i) {
        return getProvince(i).getEconomyWithBonuses() + (((float) getProvince(i).iProvinceInvestSize) * getInvestEconomyGrowth(i)) > getMaxEconomy(i);
    }

    public static final void centerToRandomMapPosition() {
        mapScroll.stopScrollingTheMap();
        mapScale.setCurrentScale(MapScale.STANDARD_SCALE);
        Point_XY randomPointToCenterTheMap = CFG.getRandomPointToCenterTheMap();
        mapCoords.setNewPosX(-((randomPointToCenterTheMap.getPosX() * mapBG.iMapScale) - (CFG.GAME_WIDTH / 2)));
        mapCoords.setNewPosY(-((randomPointToCenterTheMap.getPosY() * mapBG.iMapScale) - (CFG.GAME_HEIGHT / 2)));
    }

    public static final boolean checkActiveArmy_Fog() {
        int i = 0;
        boolean z = false;
        while (i < activeArmySize) {
            try {
                if (!getProvince(activeArmy.get(i).iProvinceID).getFogDrawArmy()) {
                    activeArmy.remove(i);
                    activeArmySize = activeArmy.size();
                    i--;
                    z = true;
                }
                i++;
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        return z;
    }

    public static final boolean checkClosedSea(int i) {
        for (int i2 = 0; i2 < getProvince(i).getNeighboringSeaProvincesSize(); i2++) {
            if (getProvince(getProvince(i).getNeighboringSeaProvinces(i2)).getLevelOfPort() == -2) {
                return true;
            }
        }
        return false;
    }

    public static final void checkHoveredArmy_Fog() {
        if (hoveredArmy.iProvinceID < 0 || getProvince(hoveredArmy.iProvinceID).getFogDrawArmy()) {
            return;
        }
        hoveredArmy.iProvinceID = -1;
    }

    public static final float checkPosOfClickX(float f) {
        if ((-f) > mapBG.getWidth()) {
            while ((-f) > mapBG.getWidth()) {
                f += mapBG.getWidth();
            }
        } else if (f > 0.0f) {
            while (f > 0.0f) {
                f -= mapBG.getWidth();
            }
        }
        return f;
    }

    public static final void clearActiveArmy() {
        activeArmy.clear();
        activeArmySize = 0;
        setRegroupArmyMode(false);
    }

    public static final void clearAllianceSpecial() {
        try {
            alliancesSpecial.clear();
            alliancesSpecialSize = 0;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            for (int size = alliancesSpecial_Flag.size() - 1; size >= 0; size--) {
                alliancesSpecial_Flag.get(size).dispose();
                alliancesSpecial_Flag.set(size, null);
            }
            alliancesSpecial_Flag.clear();
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static final int countContinentProvinces(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < getProvincesSize(); i3++) {
            if (getProvince(i3).getContinent() == i) {
                i2++;
            }
        }
        return i2;
    }

    public static int countPlayableProvince() {
        int i = 0;
        for (int i2 = 0; i2 < getProvincesSize(); i2++) {
            if (!getProvince(i2).getSeaProvince() && getProvince(i2).getWasteland() < 0) {
                i++;
            }
        }
        return i;
    }

    public static final void dispose() {
        map.dispose();
        mapBG.dispose();
    }

    public static final void disposeCivilizations() {
        if (lCivs != null) {
            clearActiveArmy();
            for (int i = 0; i < getCivsSize(); i++) {
                try {
                    getCiv(i).disposeFlag();
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            for (int i2 = 0; i2 < getProvincesSize(); i2++) {
                getProvince(i2).clearData();
            }
            lProvincesData.clear();
            lProvincesData2.clear();
            lProvincesData3.clear();
            lProvincesData4.clear();
            lProvincesData5.clear();
            lProvincesData6.clear();
            lProvincesData7.clear();
            lProvincesData8.clear();
            lProvincesData9.clear();
            lProvincesData10.clear();
            lProvincesPopulation.clear();
            for (int i3 = 0; i3 < getProvincesSize(); i3++) {
                lProvincesData.add(new ProvinceData());
                lProvincesData2.add(new ProvinceData2());
                lProvincesData3.add(new ProvinceData3());
                lProvincesData4.add(new ProvinceData4());
                lProvincesData5.add(new ProvinceData5());
                lProvincesData6.add(new ProvinceData6());
                lProvincesData7.add(new ProvinceData7());
                lProvincesData8.add(new ProvinceData8());
                lProvincesData9.add(new ProvinceData9());
                lProvincesData10.add(new ProvinceData10());
                lProvincesPopulation.add(new ProvinceData_Population());
            }
            lCivs.clear();
            iCivsSize = 0;
            WondersManager.initProvinceWonders();
        }
    }

    public static final void disposeCutProvinces() {
        cutProvinces.clear();
        cutProvinces = null;
    }

    public static final void drawActiveProvince(SpriteBatch spriteBatch) {
        updateProvinceBG_ActiveHoveredProvince();
        spriteBatch.setShader(Renderer.shaderDefaultProvince);
        try {
            if (mapScale.getCurrentScale() >= DRAW_INNER_BORDERS) {
                int i = iActiveProvince;
                if (i >= 0 && getProvince(i).getDrawProvince()) {
                    try {
                        if (chooseProvinceMode) {
                            spriteBatch.setColor(new Color(CFG.getColorStep(255, 55, activeProvince_Animation_Data.getColorStepID(), 30), CFG.getColorStep(255, 55, activeProvince_Animation_Data.getColorStepID(), 30), CFG.getColorStep(255, 55, activeProvince_Animation_Data.getColorStepID(), 30), (getProvince(iActiveProvince).getSeaProvince() ? ((activeProvince_Animation_Data.getAlpha() + 35.0f) / 255.0f) / 3.0f : ((activeProvince_Animation_Data.getAlpha() + 35.0f) / 255.0f) * (fDashedLine_Percentage_HighlitedProvinceBorder / 100.0f)) / (mapScale.getCurrentScale() > 1.0f ? mapScale.getCurrentScale() : 1.0f)));
                            getProvince(iActiveProvince).drawProvince_ActiveProvince(spriteBatch);
                        } else {
                            if (getProvince(iActiveProvince).getSeaProvince()) {
                                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (activeProvince_Animation_Data.getAlpha() / 2.0f) / 255.0f));
                            } else {
                                spriteBatch.setColor(new Color(0.96f, 0.96f, 0.94f, (activeProvince_Animation_Data.getAlpha() / 255.0f) / (mapScale.getCurrentScale() > 1.0f ? mapScale.getCurrentScale() : 1.0f)));
                            }
                            getProvince(iActiveProvince).drawProvince_ActiveProvince(spriteBatch);
                        }
                    } catch (Exception unused) {
                    }
                }
                try {
                    int i2 = iHoveredProvinceID;
                    if (i2 >= 0 && getProvince(i2).getDrawProvince()) {
                        float f = 0.02f;
                        if (!GameValues.value.LOAD_SEA_PROVINCES && getProvince(iHoveredProvinceID).getSeaProvince()) {
                            if (!getProvince(iHoveredProvinceID).getSeaProvince()) {
                                f = 0.05f;
                            }
                            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f / (mapScale.getCurrentScale() > 1.0f ? mapScale.getCurrentScale() : 1.0f)));
                            getProvince(iHoveredProvinceID).drawProvince_ActiveProvince(spriteBatch, hoveredProvinceBG);
                        } else if (iActiveProvince != iHoveredProvinceID) {
                            try {
                                if (!getProvince(iHoveredProvinceID).getSeaProvince()) {
                                    f = 0.05f;
                                }
                                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f / (mapScale.getCurrentScale() > 1.0f ? mapScale.getCurrentScale() : 1.0f)));
                                getProvince(iHoveredProvinceID).drawProvince_ActiveProvince(spriteBatch);
                            } catch (Exception unused2) {
                            }
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
                spriteBatch.setColor(Color.WHITE);
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        spriteBatch.setShader(Renderer.shaderDefault);
    }

    public static final int dropAtomicBomb(int i, int i2) {
        if (getCiv(i).getNukes() <= 0 || !DiplomacyManager.isAtWar(i, getProvince(i2).getCivID())) {
            return -1;
        }
        getCiv(i).setNukes(getCiv(i).getNukes() - 1);
        int iAtomicBombDropped = getProvince(i2).atomicBombDropped();
        if (i == player.iCivID || getProvince(i2).getCivID() == player.iCivID) {
            InGame_Info.iCivID = i;
            InGame_Info.iCivID2 = getProvince(i2).getCivID();
            menuManager.rebuildInGame_Info(lang.get("AtomicBombing") + ": " + getProvince(i2).getProvinceName(), lang.get("Casualties") + ": " + CFG.getNumberWithSpaces("" + CFG.getPrecision2(iAtomicBombDropped, 1)));
            InGame_Info.imgID = Images.infoAtomic;
            if (i == player.iCivID) {
                SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.DROP_NUKE);
            }
        }
        RendererGame.addNuke(i2);
        return -1;
    }

    public static final boolean exploitEconomy(int i) {
        if (getProvince(i).getEconomy() <= GameValues.economy.EXPLOIT_ECONOMY_MIN_ECONOMY) {
            return false;
        }
        getCiv(getProvince(i).getCivID()).addGold(getExploitEconomy_Gain(i));
        getProvince(i).setEconomy(getProvince(i).getEconomy() - getExploitEconomy_Lose(i));
        getProvince(i).updateAfterEconomyChange();
        getCiv(getProvince(i).getCivID()).updateTotalIncomePerMonth();
        return true;
    }

    public static ArmyPos findArmy(int i, String str) {
        if (str == null) {
            return null;
        }
        try {
            Civilization civ = getCiv(i);
            for (int numOfProvinces = civ.getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
                for (int armySize = getProvince(civ.getProvinceID(numOfProvinces)).getArmySize() - 1; armySize >= 0; armySize--) {
                    if (getProvince(civ.getProvinceID(numOfProvinces)).getArmy(armySize).civID == i && getProvince(civ.getProvinceID(numOfProvinces)).getArmy(armySize).key.equals(str)) {
                        return new ArmyPos(civ.getProvinceID(numOfProvinces), armySize);
                    }
                }
            }
            return null;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    public static ArmyPos findArmy_FullCheck(int i, String str) {
        if (str == null) {
            return null;
        }
        try {
            Civilization civ = getCiv(i);
            for (int i2 = civ.iArmyPositionSize - 1; i2 >= 0; i2--) {
                for (int armySize = getProvince(civ.getArmyPosition(i2)).getArmySize() - 1; armySize >= 0; armySize--) {
                    if (getProvince(civ.getArmyPosition(i2)).getArmy(armySize).civID == i && getProvince(civ.getArmyPosition(i2)).getArmy(armySize).key.equals(str)) {
                        return new ArmyPos(civ.getArmyPosition(i2), armySize);
                    }
                }
            }
            for (int numOfProvinces = civ.getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
                for (int armySize2 = getProvince(civ.getProvinceID(numOfProvinces)).getArmySize() - 1; armySize2 >= 0; armySize2--) {
                    if (getProvince(civ.getProvinceID(numOfProvinces)).getArmy(armySize2).civID == i && getProvince(civ.getProvinceID(numOfProvinces)).getArmy(armySize2).key.equals(str)) {
                        return new ArmyPos(civ.getProvinceID(numOfProvinces), armySize2);
                    }
                }
            }
            for (int i3 = 0; i3 < getProvincesSize(); i3++) {
                for (int armySize3 = getProvince(i3).getArmySize() - 1; armySize3 >= 0; armySize3--) {
                    if (getProvince(i3).getArmy(armySize3).civID == i && getProvince(i3).getArmy(armySize3).key.equals(str)) {
                        return new ArmyPos(i3, armySize3);
                    }
                }
            }
            return null;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    public static ArmyPos findArmy_IncludeVassals(int i, String str) {
        if (str == null) {
            return null;
        }
        try {
            Civilization civ = getCiv(i);
            for (int numOfProvinces = civ.getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
                for (int armySize = getProvince(civ.getProvinceID(numOfProvinces)).getArmySize() - 1; armySize >= 0; armySize--) {
                    if (getProvince(civ.getProvinceID(numOfProvinces)).getArmy(armySize).civID == i && getProvince(civ.getProvinceID(numOfProvinces)).getArmy(armySize).key.equals(str)) {
                        return new ArmyPos(civ.getProvinceID(numOfProvinces), armySize);
                    }
                }
            }
            for (int i2 = 0; i2 < civ.diplomacy.iVassalsSize; i2++) {
                for (int numOfProvinces2 = getCiv(civ.diplomacy.lVassals.get(i2).c).getNumOfProvinces() - 1; numOfProvinces2 >= 0; numOfProvinces2--) {
                    for (int armySize2 = getProvince(getCiv(civ.diplomacy.lVassals.get(i2).c).getProvinceID(numOfProvinces2)).getArmySize() - 1; armySize2 >= 0; armySize2--) {
                        if (getProvince(getCiv(civ.diplomacy.lVassals.get(i2).c).getProvinceID(numOfProvinces2)).getArmy(armySize2).civID == i && getProvince(getCiv(civ.diplomacy.lVassals.get(i2).c).getProvinceID(numOfProvinces2)).getArmy(armySize2).key.equals(str)) {
                            return new ArmyPos(getCiv(civ.diplomacy.lVassals.get(i2).c).getProvinceID(numOfProvinces2), armySize2);
                        }
                    }
                }
            }
            return null;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    public static void generateSuggestedCivs_ToSmallerMap_OnlyToConvert() {
        String[] strArrSplit = FileManager.loadFile("map/" + map.getFile_ActiveMap_Path() + "SUGGESTED_TEST.txt").readString().split(";");
        for (int i = 0; i < strArrSplit.length; i += 3) {
            int i2 = Integer.parseInt(strArrSplit[i]) * mapBG.iMapScale;
            int i3 = Integer.parseInt(strArrSplit[i + 1]) * mapBG.iMapScale;
            for (int i4 = 0; i4 < getProvincesSize(); i4++) {
                if (getProvince(i4).getMinX() <= i2 && getProvince(i4).getMaxX() >= i2 && getProvince(i4).getMinY() <= i3 && getProvince(i4).getMaxY() >= i3 && pathContains(i4, i2, i3)) {
                    if (!FileManager.loadFile("map/" + map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SUGGESTED_CIVS_PATH + i4 + ".txt").exists()) {
                        Gdx.files.local("map/" + map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SUGGESTED_CIVS_PATH + i4 + ".txt").writeString(strArrSplit[i + 2] + ";", false);
                        break;
                    }
                    boolean z = true;
                    for (String str : FileManager.loadFile("map/" + map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SUGGESTED_CIVS_PATH + i4 + ".txt").readString().split(";")) {
                        if (str.equals(strArrSplit[i + 2])) {
                            z = false;
                        }
                    }
                    if (!z) {
                        break;
                    }
                    Gdx.files.local("map/" + map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SUGGESTED_CIVS_PATH + i4 + ".txt").writeString(strArrSplit[i + 2] + ";", true);
                    break;
                }
            }
        }
    }

    public static int getAllianceSpecialNumOfCivs(int i) {
        int i2 = (getCiv(alliancesSpecial.get(i).iLeaderCivID).getNumOfProvinces() <= 0 || alliancesSpecial.get(i).firstTier.contains(Integer.valueOf(alliancesSpecial.get(i).iLeaderCivID)) || alliancesSpecial.get(i).secondTier.contains(Integer.valueOf(alliancesSpecial.get(i).iLeaderCivID))) ? 0 : 1;
        try {
            for (int size = alliancesSpecial.get(i).firstTier.size() - 1; size >= 0; size--) {
                if (getCiv(alliancesSpecial.get(i).firstTier.get(size).intValue()).getNumOfProvinces() > 0) {
                    i2++;
                }
            }
            for (int size2 = alliancesSpecial.get(i).secondTier.size() - 1; size2 >= 0; size2--) {
                if (getCiv(alliancesSpecial.get(i).secondTier.get(size2).intValue()).getNumOfProvinces() > 0) {
                    i2++;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return i2;
    }

    public static final float getAtomicBombCasualties(int i) {
        return GameValues.atomic.ATOMIC_BOMB_POPULATION_CASUALTIES * Math.max(0.01f, getProvince(i).provBonuses.CasualtiesNuclearAttacks + 1.0f);
    }

    public static final float getAtomicBombCost(int i) {
        return Math.max(1.0f, (GameValues.atomic.ATOMIC_BOMB_COST + (GameValues.atomic.ATOMIC_BOMB_COST_PER_ATOMIC_BOMB * (getCiv(i).getNukes() + getCiv(i).iNukesSize))) * (getNuclearReactor_AtomicBombCost(i) + 1.0f));
    }

    public static final int getAtomicBombProductionTime(int i) {
        return (int) GameValues.atomic.ATOMIC_BOMB_PRODUCTION_TIME;
    }

    public static int getBuildingConstructionCost(int i, int i2, int i3, int i4) {
        Province province = i2 >= 0 ? getProvince(i2) : null;
        return Math.max(1, (int) Math.ceil((BuildingsManager.buildings.get(i3).CostGold[i4] + (BuildingsManager.buildings.get(i3).ResearchPoints != null ? GameValues.research.RESEARCH_BUILDING_COST_PER_RESEARCH_POINT * getCiv(i).fResearchPerMonth : 0.0f)) * (i2 >= 0 ? terrainManager.terrains.get(province.getTerrainID()).BuildCost + getCiv(i).getInflation() + (GameValues.infrastructure.INFRASTRUCTURE_CONSTRUCTION_COST_PER_LVL * province.getInfrastructure()) + province.provBonuses.ConstructionCost + getCiv(i).civBonuses.ConstructionCost + getBuildingGroupCost(i, i3) : 1.0f)));
    }

    public static int getBuildingConstructionTime(int i, int i2, int i3, int i4) {
        Province province = i2 >= 0 ? getProvince(i2) : null;
        return Math.max(1, (int) Math.ceil(BuildingsManager.buildings.get(i3).ConstructionTime[i4] * ((i2 >= 0 ? (province.getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_CONSTRUCTION_TIME_PER_LVL) + province.provBonuses.ConstructionTimeBonus : 0.0f) + 1.0f + getCiv(i).civBonuses.ConstructionTime)));
    }

    public static float getBuildingGroupCost(int i, int i2) {
        int i3 = BuildingsManager.buildings.get(i2).GroupID;
        if (i3 == 0) {
            return getCiv(i).civBonuses.AdministrationBuildingsCost;
        }
        if (i3 == 1) {
            return getCiv(i).civBonuses.MilitaryBuildingsCost;
        }
        if (i3 != 2) {
            return 0.0f;
        }
        return getCiv(i).civBonuses.EconomyBuildingsCost;
    }

    public static final float getCapital_Cost(int i) {
        return GameValues.capital.CAPITAL_COST + (GameValues.capital.CAPITAL_COST_PER_LVL * getCiv(i).getCapitalLevel());
    }

    public static final float getCapital_Income(int i) {
        return GameValues.capital.CAPITAL_INCOME_PER_LVL * getCiv(i).getCapitalLevel();
    }

    public static final int getCapital_MaxLvl(int i) {
        return GameValues.capital.CAPITAL_MAX_LVL + getCiv(i).civBonuses.MaximumLevelOfCapitalCity;
    }

    public static final float getCapital_MaxResearch(int i) {
        return GameValues.capital.CAPITAL_MAX_RESEARCH_PER_LVL * getCiv(i).getCapitalLevel();
    }

    public static final float getCapital_ProvincesMaintenance(int i) {
        return GameValues.capital.CAPITAL_PROVINCES_MAINTENANCE_COST_PER_LVL * getCiv(i).getCapitalLevel();
    }

    public static final Civilization getCiv(int i) {
        try {
            return lCivs.get(i);
        } catch (Exception unused) {
            return lCivs.get(0);
        }
    }

    public static final int getCivID(String str) {
        for (int i = 1; i < getCivsSize(); i++) {
            try {
                if (getCiv(i).getCivTag().equals(str)) {
                    return i;
                }
            } catch (Exception unused) {
                return -1;
            }
        }
        for (int i2 = 1; i2 < getCivsSize(); i2++) {
            if (getCiv(i2).realTag.equals(str)) {
                return i2;
            }
        }
        return -1;
    }

    public static final int getCivilizationsInGame() {
        int i = 0;
        for (int i2 = 1; i2 < getCivsSize(); i2++) {
            if (getCiv(i2).getNumOfProvinces() > 0) {
                i++;
            }
        }
        return i;
    }

    public static final int getCivsSize() {
        return iCivsSize;
    }

    public static float getCoreCreationCost(int i) {
        Province province = getProvince(i);
        Civilization civ = getCiv(province.getCivID());
        return Math.max(1.0f, (GameValues.core.CORE_CREATION_COST_DEFAULT + (province.getEconomyWithBonuses() * GameValues.core.CORE_CREATION_COST_PER_ECONOMY) + (province.getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_CORE_COST_PER_LVL)) * (civ.getInflation() + 1.0f + (civ.getWarWeariness() * GameValues.warWeariness.WW_CORE_COST_PER_POINT) + (civ.civBonuses.CoreCost / 100.0f)));
    }

    public static int getCoreCreationTime(int i) {
        return Math.max(1, (int) (GameValues.core.CORE_CREATION_TIME_DEFAULT + (getProvince(i).getTaxEfficiencyWithBonuses() * GameValues.core.CORE_CREATION_TIME_PER_TAX_EFFICIENCY)));
    }

    public static float getDevastationOccupiedProvince(int i) {
        return GameValues.siege.DEVASTATION_LOOTED * (getCiv(i).civBonuses.Devastation + 1.0f);
    }

    public static final float getDevelopInfrastructureCost(int i) {
        Province province = getProvince(i);
        return Math.max(1.0f, (GameValues.infrastructure.DEVELOP_INFRASTRUCTURE_COST_GOLD + ((province.getInfrastructure() + province.iProvinceDevelopInfrastructureSize) * GameValues.infrastructure.DEVELOP_INFRASTRUCTURE_COST_GOLD_PER_INFRASTRUCTURE)) * (province.provBonuses.DevelopInfrastructureCost + 1.0f + getCiv(province.getCivID()).civBonuses.DevelopInfrastructureCost));
    }

    public static final float getDevelopInfrastructureCostLegacy(int i) {
        Province province = getProvince(i);
        return Math.max(1.0f, (GameValues.infrastructure.DEVELOP_INFRASTRUCTURE_COST_LEGACY + ((province.getInfrastructure() + province.iProvinceDevelopInfrastructureSize) * GameValues.infrastructure.DEVELOP_INFRASTRUCTURE_COST_LEGACY_PER_INFRASTRUCTURE)) * (province.provBonuses.DevelopInfrastructureCost + 1.0f + getCiv(province.getCivID()).civBonuses.DevelopInfrastructureCost));
    }

    public static final int getDevelopInfrastructureTime(int i) {
        Province province = getProvince(i);
        return Math.max(1, GameValues.infrastructure.DEVELOP_INFRASTRUCTURE_TIME + ((province.getInfrastructure() + province.iProvinceDevelopInfrastructureSize) * GameValues.infrastructure.DEVELOP_INFRASTRUCTURE_TIME_PER_INFRASTRUCTURE));
    }

    public static final float getDistanceFromAToB_Km(int i, int i2) {
        return getDistanceFromProvinceToProvince(i, i2) * map.lMaps.get(map.getActiveMapID()).mapData.DistanceKm;
    }

    public static final float getDistanceFromProvinceToProvince(int i, int i2) {
        getProvince(i);
        getProvince(i2);
        return mapDistance.getDistanceFromProvinceToProvince(i, i2);
    }

    public static final float getDistanceFromProvinceToProvince_Simpler(int i, int i2) {
        Province province = getProvince(i);
        Province province2 = getProvince(i2);
        try {
            return (float) Math.sqrt(Math.pow(province2.getCenterX_Real() - province.getCenterX_Real(), 2.0d) + Math.pow(province2.getCenterY_Real() - province.getCenterY_Real(), 2.0d));
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return iMaxDistance;
        }
    }

    public static final float getDistance_PercOfMax(int i, int i2) {
        return getDistanceFromProvinceToProvince(i, i2) / iMaxDistance;
    }

    public static final float getDistance_PercOfMax_Simpler(int i, int i2) {
        return getDistanceFromProvinceToProvince_Simpler(i, i2) / iMaxDistance;
    }

    public static final float getExploitEconomy_Gain(int i) {
        return ((getInvestCost(i) * getExploitEconomy_Lose(i)) / GameValues.economy.INVEST_ECONOMY_GROWTH) * GameValues.economy.EXPLOIT_ECONOMY_GAIN_PER_INVEST_COST;
    }

    public static final float getExploitEconomy_Lose(int i) {
        return Math.min(GameValues.economy.EXPLOIT_ECONOMY, getProvince(i).getEconomy() > GameValues.economy.EXPLOIT_ECONOMY_MIN_ECONOMY ? getProvince(i).getEconomy() - GameValues.economy.EXPLOIT_ECONOMY_MIN_ECONOMY : 0.0f);
    }

    public static final int getExtraProvinceInViewID(int i) {
        try {
            return lExtraProvincesInView.get(i).intValue();
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return 0;
        }
    }

    protected static final String getFogOfWarName(int i) {
        if (i != 0) {
            return i != 2 ? lang.get("Classic") : lang.get("Discovery");
        }
        return lang.get("Off");
    }

    public static float getIncomeFromEconomy(int i) {
        Province province = getProvince(i);
        Civilization civ = getCiv(province.getCivID());
        return province.getEconomyWithBonuses() * GameValues.economy.INCOME_ECONOMY_PER_ECONOMY * Math.max(0.01f, (((((GameValues.budget.TAXATION_LEVEL_INCOME_ECONOMY[civ.getTaxationLevel()] + 1.0f) + ((civ.fProsperity_AverageEconomy / 100.0f) * GameValues.prosperity.PROSPERITY_INCOME)) + civ.civBonuses.IncomeEconomy) - province.getDevastation()) - civ.getCorruption()) + (province.getReligion() == civ.getReligionID() ? 0.0f : GameValues.religion.BASE_INCOME_DIFFERENT_RELIGION) + (province.haveACore ? 0.0f : GameValues.core.BASE_INCOME_NON_CORE));
    }

    public static float getIncomeFromEconomy_Invest(int i) {
        Province province = getProvince(i);
        Civilization civ = getCiv(province.getCivID());
        return getInvestEconomyGrowth(i) * GameValues.economy.INCOME_ECONOMY_PER_ECONOMY * Math.max(0.01f, (((((GameValues.budget.TAXATION_LEVEL_INCOME_ECONOMY[civ.getTaxationLevel()] + 1.0f) + ((civ.fProsperity_AverageEconomy / 100.0f) * GameValues.prosperity.PROSPERITY_INCOME)) + civ.civBonuses.IncomeEconomy) - province.getDevastation()) - civ.getCorruption()) + (province.getReligion() == civ.getReligionID() ? 0.0f : GameValues.religion.BASE_INCOME_DIFFERENT_RELIGION) + (province.haveACore ? 0.0f : GameValues.core.BASE_INCOME_NON_CORE));
    }

    public static float getIncomeFromVassal(int i, int i2) {
        return getIncomeFromVassal(i, i2, getCiv(i).diplomacy.getVassal_TributeLevel(i2));
    }

    public static float getIncomeFromVassal(int i, int i2, int i3) {
        return getCiv(i2).fTotalIncomePerMonth * GameValues.vassal.VASSAL_INCOME_TO_LORD[i3] * (getCiv(i).civBonuses.IncomeFromVassals + 1.0f);
    }

    public static float getIncomePopulationTaxation(int i) {
        return getIncomePopulationTaxation(i, getProvinceTaxEfficiency(i));
    }

    public static float getIncomePopulationTaxation(int i, float f) {
        Province province = getProvince(i);
        Civilization civ = getCiv(province.getCivID());
        return GameValues.tax.BASE_INCOME_POPULATION_INCOME + ((Math.min(province.getPopulationTotal(), GameValues.tax.TAX_EFFICIENCY_MAX_POPULATION) / GameValues.tax.TAX_EFFICIENCY_POPULATION_DIVIDE) * (f / 100.0f) * Math.max(0.01f, (((civ.civBonuses.IncomeTaxation + 1.0f) - province.getDevastation()) - civ.getCorruption()) + (province.getReligion() == civ.getReligionID() ? 0.0f : GameValues.religion.BASE_INCOME_DIFFERENT_RELIGION) + (province.haveACore ? 0.0f : GameValues.core.BASE_INCOME_NON_CORE)));
    }

    public static float getIncomePopulationTaxation_Invest(int i) {
        return getIncomePopulationTaxation(i, getProvinceTaxEfficiency(i) + GameValues.tax.INCREASE_TAX_EFFICIENCY_GROWTH) - getIncomePopulationTaxation(i, getProvinceTaxEfficiency(i));
    }

    public static int getIncreasTaxEfficiencyTime(int i) {
        return GameValues.tax.INCREASE_TAX_EFFICIENCY_IN_PROVINCE_DAYS;
    }

    public static float getIncreaseGrowthRateCost(int i) {
        return Math.max(1, (int) ((GameValues.growthRate.INCREASE_GROWTH_RATE_COST + ((getProvince(i).getGrowthRateWithBonuses() + (getProvince(i).iProvinceIncreaseGrowthRateSize * GameValues.growthRate.INCREASE_GROWTH_RATE_GROWTH)) * GameValues.growthRate.INCREASE_GROWTH_RATE_COST_PER_GROWTH_RATE)) * (terrainManager.terrains.get(getProvince(i).getTerrainID()).IncreaseGrowthRateCost + getProvince(i).provBonuses.IncreaseGrowthRateCost + getCiv(getProvince(i).getCivID()).civBonuses.IncreaseGrowthRateCost)));
    }

    public static int getIncreaseGrowthRateTime(int i) {
        return GameValues.growthRate.INCREASE_GROWTH_RATE_IN_PROVINCE_DAYS;
    }

    public static float getIncreaseManpowerCost(int i) {
        return Math.max(1.0f, (GameValues.manpower.INCREASE_MANPOWER_COST + (getProvince(i).getManpower() * GameValues.manpower.INCREASE_MANPOWER_COST_PER_LEVEL)) * (getProvince(i).provBonuses.IncreaseManpowerCost + 1.0f + (getCiv(getProvince(i).getCivID()).civBonuses.IncreaseManpowerCost / 100.0f)));
    }

    public static float getIncreaseManpowerCostLegacy(int i) {
        return Math.max(0.05f, (GameValues.manpower.INCREASE_MANPOWER_COST_LEGACY + (getProvince(i).getManpower() * GameValues.manpower.INCREASE_MANPOWER_COST_LEGACY_PER_LEVEL)) * (getProvince(i).provBonuses.IncreaseManpowerCost + 1.0f + (getCiv(getProvince(i).getCivID()).civBonuses.IncreaseManpowerCost / 100.0f)));
    }

    public static float getIncreaseTaxEfficiencyCost(int i) {
        return Math.max(1.0f, (GameValues.tax.INCREASE_TAX_EFFICIENCY_COST + (getProvince(i).getTaxEfficiencyWithBonuses() * GameValues.tax.INCREASE_TAX_EFFICIENCY_COST_PER_TAX_EFFICIENCY)) * (getProvince(i).provBonuses.IncreaseTaxEfficiencyCost + 1.0f + getCiv(getProvince(i).getCivID()).getInflation() + getCiv(getProvince(i).getCivID()).civBonuses.IncreaseTaxEfficiencyCost));
    }

    public static float getIncreaseTaxEfficiencyCostLegacy(int i) {
        return Math.max(1.0f, (GameValues.tax.INCREASE_TAX_EFFICIENCY_COST_LEGACY + (getProvince(i).getTaxEfficiencyWithBonuses() * GameValues.tax.INCREASE_TAX_EFFICIENCY_COST_LEGACY_PER_TAX)) * (getProvince(i).provBonuses.IncreaseTaxEfficiencyCost + 1.0f + getCiv(getProvince(i).getCivID()).getInflation() + getCiv(getProvince(i).getCivID()).civBonuses.IncreaseTaxEfficiencyCost));
    }

    public static int getIncreseManpowerTime(int i) {
        return GameValues.manpower.INCREASE_MANPOWER_IN_PROVINCE_DAYS;
    }

    public static float getIncreseManpower_ManpowerPerMonthInfo(int i) {
        return getIncreseManpower_MaximumManpowerInfo(i) / GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS;
    }

    public static int getIncreseManpower_MaximumManpowerInfo(int i) {
        Province province = getProvince(i);
        return (int) (GameValues.manpower.MANPOWER_MAX_PER_PROVINCE_MANPOWER_LVL * GameValues.manpower.INCREASE_MANPOWER_GROWTH * (Math.min(province.getGrowthRateWithBonuses(), GameValues.manpower.MANPOWER_MAX_PER_PROVINCE_MAX_GROWTH_RATE) / 100.0f) * (province.provBonuses.LocalManpower + 1.0f + (province.getReligion() != getCiv(province.getCivID()).getReligionID() ? GameValues.manpower.MANPOWER_MAX_DIFFERENT_RELIGION : 0.0f) + (province.haveACore(province.getCivID()) ? 0.0f : GameValues.manpower.MANPOWER_MAX_NON_CORE)));
    }

    public static float getInflationReduceCost_Legacy(int i) {
        return getCiv(i).getInflation() * 100.0f * GameValues.inflation.INFLATION_REDUCE_COST_LEGACY_PER_INFLATION;
    }

    public static float getInvestCost(int i) {
        Province province = getProvince(i);
        try {
            if (province.iProvinceInvestSize > 0) {
                return Math.max(1.0f, (GameValues.economy.INVEST_COST + ((province.getEconomyWithBonuses() + ((getInvestEconomyGrowth(i) * province.provinceInvestDaysLeft.get(0).daysLeft) / province.provinceInvestDaysLeft.get(0).investTime) + (getInvestEconomyGrowth(i) * (province.iProvinceInvestSize - 1))) * GameValues.economy.INVEST_COST_PER_ECONOMY)) * (province.provBonuses.InvestInEconomyCost + 1.0f + (province.getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_INVEST_COST_PER_LVL) + getCiv(province.getCivID()).getInflation() + getCiv(province.getCivID()).civBonuses.InvestInEconomyCost + GameValues.civRank.CIV_RANK_INVEST_ECONOMY_COST[getCiv(province.getCivID()).iCivRankID]));
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return Math.max(1.0f, (GameValues.economy.INVEST_COST + (province.getEconomyWithBonuses() * GameValues.economy.INVEST_COST_PER_ECONOMY)) * (province.provBonuses.InvestInEconomyCost + 1.0f + (province.getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_INVEST_COST_PER_LVL) + getCiv(province.getCivID()).getInflation() + getCiv(province.getCivID()).civBonuses.InvestInEconomyCost + GameValues.civRank.CIV_RANK_INVEST_ECONOMY_COST[getCiv(province.getCivID()).iCivRankID]));
    }

    public static float getInvestCost_Legacy(int i) {
        Province province = getProvince(i);
        try {
            if (province.iProvinceInvestSize > 0) {
                return Math.max(1.0f, (GameValues.economy.INVEST_COST_LEGACY + ((province.getEconomyWithBonuses() + ((getInvestEconomyGrowth(i) * province.provinceInvestDaysLeft.get(0).daysLeft) / province.provinceInvestDaysLeft.get(0).investTime) + (getInvestEconomyGrowth(i) * (province.iProvinceInvestSize - 1))) * GameValues.economy.INVEST_COST_LEGACY_PER_ECONOMY)) * (province.provBonuses.InvestInEconomyCost + 1.0f + (province.getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_INVEST_COST_PER_LVL) + getCiv(province.getCivID()).getInflation() + getCiv(province.getCivID()).civBonuses.InvestInEconomyCost + GameValues.civRank.CIV_RANK_INVEST_ECONOMY_COST[getCiv(province.getCivID()).iCivRankID]));
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return Math.max(1.0f, (GameValues.economy.INVEST_COST_LEGACY + (province.getEconomyWithBonuses() * GameValues.economy.INVEST_COST_LEGACY_PER_ECONOMY)) * (province.provBonuses.InvestInEconomyCost + 1.0f + (province.getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_INVEST_COST_PER_LVL) + getCiv(province.getCivID()).getInflation() + getCiv(province.getCivID()).civBonuses.InvestInEconomyCost + GameValues.civRank.CIV_RANK_INVEST_ECONOMY_COST[getCiv(province.getCivID()).iCivRankID]));
    }

    public static final float getInvestEconomyGrowth(int i) {
        return GameValues.economy.INVEST_ECONOMY_GROWTH;
    }

    public static int getInvestTime(int i) {
        return GameValues.economy.INVEST_IN_PROVINCE_DAYS;
    }

    public static float getLegacyPerUniqueResources(int i) {
        return GameValues.legacy.LEGACY_PER_UNIQUE_RESOURCE * getCiv(i).iUniqueResources * Math.min(GameValues.legacy.LEGACY_PER_UNIQUE_RESOURCE_PER_TECHS_MAX, getCiv(i).getResearchedTechnologies() * GameValues.legacy.LEGACY_PER_UNIQUE_RESOURCE_PER_TECHS);
    }

    public static int getLoanExpires() {
        return GameValues.loan.LOAN_DAYS * getLoanExpires_Years();
    }

    public static int getLoanExpires_Years() {
        return GameValues.loan.LOAN_YEARS;
    }

    public static float getLoanInterest(int i) {
        return GameValues.loan.LOAN_DEFAULT_INTEREST * (((getCiv(i).civBonuses.LoanInterest + GameValues.civRank.CIV_RANK_LOAN_INTEREST[getCiv(i).iCivRankID]) / 100.0f) + 1.0f);
    }

    public static float getLoanInterestValue(int i) {
        return getLoanValue(i) * (getLoanInterest(i) / 100.0f) * getLoanExpires_Years();
    }

    public static int getLoanMaxNumber(int i) {
        return GameValues.loan.MAX_NUMBER_OF_LOANS + getCiv(i).civBonuses.MaxNumberOfLoans;
    }

    public static float getLoanMonthlyExpenses(float f) {
        return f / (getLoanExpires_Years() * 12);
    }

    public static float getLoanValue(int i) {
        float economyWithBonuses = GameValues.loan.LOAN_VALUE_MIN;
        for (int i2 = 0; i2 < getCiv(i).getNumOfProvinces(); i2++) {
            economyWithBonuses += getProvince(getCiv(i).getProvinceID(i2)).getEconomyWithBonuses();
        }
        return economyWithBonuses * GameValues.loan.LOAN_VALUE_BY_ECONOMY;
    }

    public static float getLootValue(int i) {
        return getProvince(i).getProvinceIncome() * GameValues.siege.LOOT_PROVINCE_PER_PROVINCE_INCOME * getProvince(i).getLoot();
    }

    public static float getManhattanDistance(int i, int i2) {
        return mapDistance.getManhattanDistance(i, i2);
    }

    public static final float getManhattanDistance_PercOfMax(int i, int i2) {
        return getManhattanDistance(i, i2) / iMaxDistanceManhattan;
    }

    public static final float getManpowerFromProvincePerMonth_Info(int i) {
        return getManpowerMaxFromProvinceManpowerLvl(i) / GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS;
    }

    public static double getManpowerFromVassal_INFO(int i, int i2, int i3) {
        return ((getCiv(i2).fManpowerMax + getCiv(i2).fManpowerMax_ToLord) - ((double) GameValues.manpower.MANPOWER_MAX_BASE)) * ((double) GameValues.vassal.VASSAL_MANPOWER_TO_LORD[i3]);
    }

    public static final int getManpowerMaxFromProvinceManpowerLvl(int i) {
        Province province = getProvince(i);
        return (int) (province.getManpower() * GameValues.manpower.MANPOWER_MAX_PER_PROVINCE_MANPOWER_LVL * (Math.min(province.getGrowthRateWithBonuses(), GameValues.manpower.MANPOWER_MAX_PER_PROVINCE_MAX_GROWTH_RATE) / 100.0f) * (province.provBonuses.LocalManpower + 1.0f + (province.getReligion() != getCiv(province.getCivID()).getReligionID() ? GameValues.manpower.MANPOWER_MAX_DIFFERENT_RELIGION : 0.0f) + (province.haveACore(province.getCivID()) ? 0.0f : GameValues.manpower.MANPOWER_MAX_NON_CORE)));
    }

    public static final double getManpowerPerMonth(int i, double d) {
        return (d / ((double) GameValues.manpower.MANPOWER_FULL_RECOVERY_MONTHS)) * ((double) (getCiv(i).civBonuses.ManpowerRecoverySpeed + 1.0f));
    }

    public static final float getManpowerRecoveryFromADisbandedArmy(int i) {
        return Math.min(1.0f, GameValues.manpower.MANPOWER_RECOVERY_FROM_DISBANDED_ARMY_DEFAULT + getCiv(i).civBonuses.ManpowerRecoveryFromADisbandedArmy);
    }

    public static int getMaxAmountOfGold(int i) {
        Civilization civ = getCiv(i);
        return (int) ((GameValues.budget.MAX_AMOUNT_OF_GOLD_MIN + ((int) civ.civBonuses.MaximumAmountOfGold) + ((int) (civ.fTotalIncomePerMonth * GameValues.budget.MAX_AMOUNT_OF_GOLD_PER_INCOME))) * (civ.civBonuses.MaximumAmountOfGold_Percentage + 1.0f));
    }

    public static float getMaxEconomy(int i) {
        return getProvince(i).getGrowthRateWithBonuses() * GameValues.economy.MAX_ECONOMY_GROWTH_RATE;
    }

    public static final float getMilitaryAcademyForGenerals_Cost(int i) {
        return GameValues.militaryAcademy.MILITARY_ACADEMY_FOR_GENERALS_COST + (GameValues.militaryAcademy.MILITARY_ACADEMY_FOR_GENERALS_COST_PER_LVL * getCiv(i).getMilitaryAcademyForGeneralsLevel());
    }

    public static final int getMilitaryAcademyForGenerals_GeneralAttack(int i) {
        return GameValues.militaryAcademy.MILITARY_ACADEMY_FOR_GENERALS_ATTACK_PER_LVL * getCiv(i).getMilitaryAcademyForGeneralsLevel();
    }

    public static final int getMilitaryAcademyForGenerals_GeneralDefense(int i) {
        return GameValues.militaryAcademy.MILITARY_ACADEMY_FOR_GENERALS_DEFENSE_PER_LVL * getCiv(i).getMilitaryAcademyForGeneralsLevel();
    }

    public static final float getMilitaryAcademyForGenerals_MaintenanceCost(int i) {
        return GameValues.militaryAcademy.MILITARY_ACADEMY_FOR_GENERALS_MAINTENANCE_COST_PER_LVL * getCiv(i).getMilitaryAcademyForGeneralsLevel();
    }

    public static final int getMilitaryAcademyForGenerals_MaxLvl(int i) {
        return GameValues.militaryAcademy.MILITARY_ACADEMY_FOR_GENERALS_MAX_LVL + getCiv(i).civBonuses.MaximumLevelOfTheMilitaryAcademyForGenerals;
    }

    public static final int getMilitaryAcademy_Attack(int i) {
        return GameValues.militaryAcademy.MILITARY_ACADEMY_ATTACK_PER_LVL * getCiv(i).getMilitaryAcademyLevel();
    }

    public static final float getMilitaryAcademy_Cost(int i) {
        return GameValues.militaryAcademy.MILITARY_ACADEMY_COST + (GameValues.militaryAcademy.MILITARY_ACADEMY_COST_PER_LVL * getCiv(i).getMilitaryAcademyLevel());
    }

    public static final int getMilitaryAcademy_Defense(int i) {
        return GameValues.militaryAcademy.MILITARY_ACADEMY_DEFENSE_PER_LVL * getCiv(i).getMilitaryAcademyLevel();
    }

    public static final float getMilitaryAcademy_MaintenanceCost(int i) {
        return GameValues.militaryAcademy.MILITARY_ACADEMY_MAINTENANCE_COST_PER_LVL * getCiv(i).getMilitaryAcademyLevel();
    }

    public static final int getMilitaryAcademy_MaxLvl(int i) {
        return GameValues.militaryAcademy.MILITARY_ACADEMY_MAX_LVL + getCiv(i).civBonuses.MaximumLevelOfTheMilitaryAcademy;
    }

    public static final int getMilitaryAcademy_RegimentsLimit(int i) {
        return GameValues.militaryAcademy.MILITARY_ACADEMY_REGIMENTS_LIMIT_PER_LVL * getCiv(i).getMilitaryAcademyLevel();
    }

    public static final Civilization getNeutralCivilization() {
        return new Civilization(0, "neu", 0, 251, 251, 221, -1, 0, 0);
    }

    public static final float getNuclearReactor_AtomicBombCost(int i) {
        return GameValues.atomic.NUCLEAR_REACTOR_ATOMIC_BOMB_COST_PER_LEVEL * getCiv(i).getNuclearReactorLevel();
    }

    public static final float getNuclearReactor_Cost(int i) {
        return GameValues.atomic.NUCLEAR_REACTOR_COST + (GameValues.atomic.NUCLEAR_REACTOR_COST_PER_LVL * getCiv(i).getNuclearReactorLevel());
    }

    public static final int getNuclearReactor_MaxLvl(int i) {
        return GameValues.atomic.NUCLEAR_REACTOR_MAX_LVL + getCiv(i).civBonuses.MaximumLevelOfTheSupremeCourt;
    }

    public static final float getNuclearReactor_ProductionEfficiency(int i) {
        return GameValues.atomic.NUCLEAR_REACTOR_PRODUCTION_EFFICIENCY_PER_LVL * getCiv(i).getNuclearReactorLevel();
    }

    public static String getProsperityLevel(int i) {
        for (int i2 = 0; i2 < GameValues.prosperity.PROSPERITY_LEVELS_VALUE.length; i2++) {
            if (getCiv(i).fProsperity_AverageEconomy < GameValues.prosperity.PROSPERITY_LEVELS_VALUE[i2]) {
                return lang.get(GameValues.prosperity.PROSPERITY_LEVELS[i2]);
            }
        }
        return lang.get(GameValues.prosperity.PROSPERITY_LEVELS[GameValues.prosperity.PROSPERITY_LEVELS.length - 1]);
    }

    public static final Province getProvince(int i) {
        return lProvinces.get(i);
    }

    public static final ProvinceData getProvinceData(int i) {
        return lProvincesData.get(i);
    }

    public static final ProvinceData10 getProvinceData10(int i) {
        return lProvincesData10.get(i);
    }

    public static final ProvinceData2 getProvinceData2(int i) {
        return lProvincesData2.get(i);
    }

    public static final ProvinceData3 getProvinceData3(int i) {
        return lProvincesData3.get(i);
    }

    public static final ProvinceData4 getProvinceData4(int i) {
        return lProvincesData4.get(i);
    }

    public static final ProvinceData5 getProvinceData5(int i) {
        return lProvincesData5.get(i);
    }

    public static final ProvinceData6 getProvinceData6(int i) {
        return lProvincesData6.get(i);
    }

    public static final ProvinceData7 getProvinceData7(int i) {
        return lProvincesData7.get(i);
    }

    public static final ProvinceData8 getProvinceData8(int i) {
        return lProvincesData8.get(i);
    }

    public static final ProvinceData9 getProvinceData9(int i) {
        return lProvincesData9.get(i);
    }

    public static final int getProvinceInViewID(int i) {
        try {
            return lProvincesInView.get(i).intValue();
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return 0;
        }
    }

    public static float getProvinceMaintenanceEconomy(int i, int i2) {
        return GameValues.province.PROVINCE_MAINTENANCE_PER_ECONOMY * getProvince(i2).getEconomyWithBonuses();
    }

    public static float getProvinceMaintenanceManpower(int i, int i2) {
        return GameValues.province.PROVINCE_MAINTENANCE_PER_MANPOWER * getProvince(i2).getEconomyWithBonuses();
    }

    public static float getProvinceMaintenanceTax(int i, int i2) {
        return GameValues.province.PROVINCE_MAINTENANCE_PER_TAX * getProvince(i2).getEconomyWithBonuses();
    }

    public static final ProvinceData_Population getProvincePopulation(int i) {
        return lProvincesPopulation.get(i);
    }

    public static float getProvinceTaxEfficiency(int i) {
        return Math.max(0.1f, getProvince(i).getTaxEfficiencyWithBonuses()) * (GameValues.budget.TAXATION_LEVEL_EFFICIENCY[getCiv(getProvince(i).getCivID()).getTaxationLevel()] + 1.0f);
    }

    public static final int getProvincesSize() {
        return iProvincesSize;
    }

    public static final int getRegionID(int i) {
        for (int i2 = 0; i2 < regions.iRegionsSize; i2++) {
            for (int i3 = 0; i3 < regions.lRegions.get(i2).getProvincesSize(); i3++) {
                if (regions.lRegions.get(i2).getProvince(i3) == i) {
                    return i2;
                }
            }
        }
        return 0;
    }

    public static float getResearchCost(int i) {
        return getCiv(i).fResearchPerMonth * GameValues.research.RESEARCH_MAINTENANCE_COST * (GameValues.budget.RESEARCH_LEVEL_COST[getCiv(i).getResearchLevel()] + 1.0f);
    }

    public static float getResearchCost(int i, float f) {
        return f * GameValues.research.RESEARCH_MAINTENANCE_COST * (GameValues.budget.RESEARCH_LEVEL_COST[getCiv(i).getResearchLevel()] + 1.0f);
    }

    public static final int getSeaProvinceInViewID(int i) {
        try {
            return lSeaProvincesInView.get(i).intValue();
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return 0;
        }
    }

    public static final float getSupremeCourt_Corruption(int i) {
        return GameValues.supremeCourt.SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL * getCiv(i).getSupremeCourtLevel();
    }

    public static final float getSupremeCourt_Cost(int i) {
        return GameValues.supremeCourt.SUPREME_COURT_COST + (GameValues.supremeCourt.SUPREME_COURT_COST_PER_LVL * getCiv(i).getSupremeCourtLevel());
    }

    public static final int getSupremeCourt_MaxLvl(int i) {
        return GameValues.supremeCourt.SUPREME_COURT_MAX_LVL + getCiv(i).civBonuses.MaximumLevelOfTheSupremeCourt;
    }

    public static List<VassalsToRelease> getVassalsToRelease(int i) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < getCiv(i).getNumOfProvinces(); i2++) {
            for (int i3 = 0; i3 < getProvince(getCiv(i).getProvinceID(i2)).iCoresSize; i3++) {
                if (getCiv(getProvince(getCiv(i).getProvinceID(i2)).getCore(i3)).getNumOfProvinces() == 0) {
                    int size = arrayList.size() - 1;
                    while (true) {
                        if (size < 0) {
                            z = false;
                            break;
                        }
                        if (((VassalsToRelease) arrayList.get(size)).iCivID == getProvince(getCiv(i).getProvinceID(i2)).getCore(i3)) {
                            ((VassalsToRelease) arrayList.get(size)).iNumOfProvinces++;
                            z = true;
                            break;
                        }
                        size--;
                    }
                    if (!z) {
                        arrayList.add(new VassalsToRelease(getProvince(getCiv(i).getProvinceID(i2)).getCore(i3), 1));
                    }
                }
            }
        }
        return arrayList;
    }

    public static List<Integer> getVassalsToRelease_Provinces(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < getCiv(i).getNumOfProvinces(); i3++) {
            for (int i4 = 0; i4 < getProvince(getCiv(i).getProvinceID(i3)).iCoresSize; i4++) {
                if (getProvince(getCiv(i).getProvinceID(i3)).getCore(i4) == i2 && getCiv(getProvince(getCiv(i).getProvinceID(i3)).getCore(i4)).getNumOfProvinces() == 0) {
                    arrayList.add(Integer.valueOf(getCiv(i).getProvinceID(i3)));
                    break;
                }
            }
        }
        return arrayList;
    }

    public static final int getWastelandProvinceInViewID(int i) {
        try {
            return lWastelandProvincesInView.get(i).intValue();
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return 0;
        }
    }

    public static boolean highTextueSettings() {
        return highTextureSettings;
    }

    protected static final boolean inViewX(int i) {
        return inViewX_CordsX_Width >= getProvince(i).getMinX() + mapCoords.getSecondSideOfMap_MoveX() && inViewX_CordsX <= getProvince(i).getMaxX() + mapCoords.getSecondSideOfMap_MoveX();
    }

    public static final boolean inViewX(int i, int i2) {
        return inViewX_CordsX_Width >= i + mapCoords.getSecondSideOfMap_MoveX() && inViewX_CordsX <= i2 + mapCoords.getSecondSideOfMap_MoveX();
    }

    protected static final boolean inViewX2(int i) {
        return inViewX_CordsX_Width >= getProvince(i).getMinX() && inViewX_CordsX <= getProvince(i).getMaxX();
    }

    public static final boolean inViewX2(int i, int i2) {
        return inViewX_CordsX_Width >= i && inViewX_CordsX <= i2;
    }

    protected static final boolean inViewXBelowZero(int i) {
        return inViewX_CordsX_Width >= getProvince(i).getMinX() + mapBG.getWidth() && inViewX_CordsX <= getProvince(i).getMaxX() + mapBG.getWidth();
    }

    protected static final boolean inViewXBelowZero(int i, int i2) {
        return inViewX_CordsX_Width >= i + mapBG.getWidth() && inViewX_CordsX <= i2 + mapBG.getWidth();
    }

    protected static final boolean inViewX_WholeRegion(int i, int i2) {
        return i + mapCoords.getSecondSideOfMap_MoveX() >= inViewX_CordsX && i2 + mapCoords.getSecondSideOfMap_MoveX() <= inViewX_CordsX_Width;
    }

    protected static final boolean inViewX_WholeRegion2(int i, int i2) {
        return i >= inViewX_CordsX && i2 <= inViewX_CordsX_Width;
    }

    protected static final boolean inViewY(int i) {
        return inViewY_CordsY_Height >= getProvince(i).getMinY() && inViewY_CordsY <= getProvince(i).getMaxY();
    }

    public static final boolean inViewY(int i, int i2) {
        return inViewY_CordsY_Height >= i && inViewY_CordsY <= i2;
    }

    protected static final boolean inViewY_WholeRegion(int i, int i2) {
        return i >= inViewY_CordsY && i2 <= inViewY_CordsY_Height;
    }

    public static final void initDifficulty() {
        if (SPECTATOR_MODE || Game_Calendar.TURN_ID != 1) {
            return;
        }
        CivilizationBonuses civilizationBonuses = new CivilizationBonuses(Game_Calendar.TURN_ID + GameValues.difficulty.BONUS_DURATION);
        civilizationBonuses.IncomeProduction = GameValues.difficulty.INCOME_PRODUCTION[difficultyID];
        civilizationBonuses.MonthlyIncome = GameValues.difficulty.MONTHLY_INCOME[difficultyID];
        civilizationBonuses.MonthlyLegacy_Percentage = GameValues.difficulty.LEGACY[difficultyID];
        civilizationBonuses.MaxManpower_Percentage = GameValues.difficulty.MANPOWER[difficultyID];
        civilizationBonuses.RecruitArmyCost = GameValues.difficulty.RECRUIT_ARMY_COST[difficultyID];
        civilizationBonuses.RecruitmentTime = GameValues.difficulty.RECRUIT_ARMY_TIME[difficultyID];
        civilizationBonuses.RegimentsLimit = GameValues.difficulty.REGIMENTS_LIMIT[difficultyID];
        civilizationBonuses.ConstructionCost = GameValues.difficulty.CONSTRUCTION_COST[difficultyID];
        civilizationBonuses.CoreCost = GameValues.difficulty.CORE_COST[difficultyID];
        civilizationBonuses.ReligionCost = GameValues.difficulty.RELIGION_COST[difficultyID];
        getCiv(player.iCivID).addCivilizationBonus_Temporary(civilizationBonuses);
    }

    public static final void initProvinceData() {
        for (int i = 0; i < getProvincesSize(); i++) {
            getProvince(i).updateBuildingLimit();
            getProvince(i).updateInfrastructureMax();
        }
        for (int i2 = 0; i2 < getProvincesSize(); i2++) {
            getProvince(i2).updateProvinceValue();
            getProvince(i2).updateCityScale();
        }
    }

    public static void invasionArmy_AddProvince(int i) {
        try {
            if (invasionArmyProvinces.contains(Integer.valueOf(i))) {
                return;
            }
            if (getProvince(i).isOccupied()) {
                if (getCiv(getProvince(i).getCivID()).getPuppetOfCivID() != player.iCivID) {
                    return;
                }
            } else if (!DiplomacyManager.isAtWar(player.iCivID, getProvince(i).getCivID())) {
                return;
            }
            invasionArmyProvinces.add(Integer.valueOf(i));
            invasionArmyProvincesSize = invasionArmyProvinces.size();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void invasionArmy_Clear() {
        invasionArmyProvinces.clear();
        invasionArmyProvincesSize = 0;
    }

    public static void invasionArmy_RemoveProvince(int i) {
        for (int i2 = 0; i2 < invasionArmyProvincesSize; i2++) {
            try {
                if (invasionArmyProvinces.get(i2).intValue() == i) {
                    invasionArmyProvinces.remove(i2);
                    invasionArmyProvincesSize = invasionArmyProvinces.size();
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public static void invasionArmy_UndoProvince() {
        try {
            int i = invasionArmyProvincesSize;
            if (i > 0) {
                invasionArmyProvinces.remove(i - 1);
                invasionArmyProvincesSize = invasionArmyProvinces.size();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final boolean isAlreadyActiveArmy(String str) {
        for (int i = 0; i < activeArmySize; i++) {
            if (activeArmy.get(i).key.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static void loadAiValues() {
        aiValuesBuild.BUILD_SCORE_CAPITAL_TOTAL = 0;
        for (int length = aiValuesBuild.BUILD_SCORE_CAPITAL.length - 1; length >= 0; length--) {
            aiValuesBuild.BUILD_SCORE_CAPITAL_TOTAL += aiValuesBuild.BUILD_SCORE_CAPITAL[length];
        }
    }

    public static void loadAlliancesSpecial_Images() {
        for (int i = 0; i < alliancesSpecial.size(); i++) {
            if (FileManager.loadFile("gfx/flagsXH/" + alliancesSpecial.get(i).FlagTag + ".png").exists()) {
                alliancesSpecial_Flag.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + alliancesSpecial.get(i).FlagTag + ".png")), Texture.TextureFilter.Linear));
            } else if (FileManager.loadFile("gfx/flagsH/" + alliancesSpecial.get(i).FlagTag + ".png").exists()) {
                alliancesSpecial_Flag.add(new Image(new Texture(FileManager.loadFile("gfx/flagsH/" + alliancesSpecial.get(i).FlagTag + ".png")), Texture.TextureFilter.Linear));
            } else if (FileManager.loadFile("gfx/flags/" + alliancesSpecial.get(i).FlagTag + ".png").exists()) {
                alliancesSpecial_Flag.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + alliancesSpecial.get(i).FlagTag + ".png")), Texture.TextureFilter.Nearest));
            } else {
                alliancesSpecial_Flag.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/ran.png")), Texture.TextureFilter.Nearest));
            }
        }
    }

    public static final LoadCivilizationData loadCivilization(String str) {
        try {
            Json json = new Json();
            if (FileManager.loadFile("game/civilizations/" + str + ".json").exists()) {
                return (LoadCivilizationData) json.fromJson(LoadCivilizationData.class, FileManager.loadFile("game/civilizations/" + str + ".json"));
            }
            return FileManager.loadFile(new StringBuilder("game/civilizations/").append(ideologiesManager.getRealTag(str)).append(".json").toString()).exists() ? (LoadCivilizationData) json.fromJson(LoadCivilizationData.class, FileManager.loadFile("game/civilizations/" + ideologiesManager.getRealTag(str) + ".json")) : new LoadCivilizationData();
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
            return new LoadCivilizationData();
        }
    }

    public static final void loadCursor(boolean z) {
        if (!settingsManager.loadCursor) {
            if (z) {
                Gdx.graphics.setSystemCursor(Cursor.SystemCursor.Arrow);
                return;
            }
            return;
        }
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/standard.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/drag.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/build.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/recruit.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/recruit2.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/x.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/plus.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/economy.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/tax.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/core.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/religion.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile(SwmJtrccN.GQEaQ)), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/infrastructure.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/recruit3.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/economy2.png")), 0, 0));
        lCursors.add(Gdx.graphics.newCursor(new Pixmap(FileManager.loadFile("gfx/cursor/nuke.png")), 0, 0));
        Gdx.graphics.setCursor(lCursors.get(0));
    }

    protected static final void loadLanguage() {
        Init_SelectLanguage.loadLanguages();
        lang = new LanguageManager(settingsManager.LANGUAGE_TAG);
    }

    public static void loadLowSettings() {
        if (!CFG.isDesktop()) {
            highTextureSettings = true;
            return;
        }
        try {
            if (FileManager.loadFile("settings/LoadTexturesHigh.txt").exists()) {
                highTextureSettings = Boolean.parseBoolean(FileManager.loadFile("settings/LoadTexturesHigh.txt").readString());
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadProvinceBG(int i) {
        getProvince(i).loadProvinceBG();
    }

    public static final void loadProvincesBG() {
        for (int i = 0; i < iProvincesSize; i++) {
            getProvince(i).loadProvinceBG();
        }
        disposeCutProvinces();
    }

    protected static final void loadSettings() {
        settingsManager = new SettingsManager();
        loadSettingsDefault();
        try {
            if (FileManager.loadFile("settings/Settings.txt").exists()) {
                settingsManager = (SettingsManager) new Json().fromJson(SettingsManager.class, FileManager.loadFile("settings/Settings.txt"));
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        Map.updateDrawProvincesFlags();
    }

    public static final void loadSettingsDefault() {
        if (CFG.isDesktop()) {
            return;
        }
        settingsManager.DOUBLE_BORDER = false;
        settingsManager.SETTINGS_PROVINCE_BORDER = 2;
        settingsManager.SETTINGS_PROVINCE_FLAGS = 1;
        settingsManager.SETTINGS_PROVINCE_NAMES = 2;
        settingsManager.CLOUDS = false;
        settingsManager.SHIPS_ON_MAP = 30;
        settingsManager.SETTINGS_CIV_NAMES = 1;
        settingsManager.BORDER_EXTRA_WIDTH = 0.5f;
        settingsManager.FONT_BORDER_SIZE = 84;
    }

    public static List<String> loadSuggestedCivs(int i) {
        ArrayList arrayList = new ArrayList();
        if (FileManager.loadFile("map/" + map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SUGGESTED_CIVS_PATH + i + ".txt").exists()) {
            for (String str : FileManager.loadFile("map/" + map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SUGGESTED_CIVS_PATH + i + ".txt").readString().split(";")) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static final boolean pathContains(int i, int i2, int i3) {
        int pointsSize = getProvince(i).getPointsSize();
        int i4 = pointsSize - 1;
        boolean z = false;
        for (int i5 = 0; i5 < pointsSize; i5++) {
            if ((getProvince(i).getPointsY(i5) > i3) != (getProvince(i).getPointsY(i4) > i3) && i2 < (((getProvince(i).getPointsX(i4) - getProvince(i).getPointsX(i5)) * (i3 - getProvince(i).getPointsY(i5))) / (getProvince(i).getPointsY(i4) - getProvince(i).getPointsY(i5))) + getProvince(i).getPointsX(i5)) {
                z = !z;
            }
            i4 = i5;
        }
        return z;
    }

    public static final boolean pathContains_Cut(int i, int i2, int i3) {
        if (i2 < cutProvinces.get(i).iMinX * mapBG.iMapScale || i2 > cutProvinces.get(i).iMaxX * mapBG.iMapScale || i3 < cutProvinces.get(i).iMinY * mapBG.iMapScale || i3 > cutProvinces.get(i).iMaxY * mapBG.iMapScale) {
            return false;
        }
        int pointsSize = cutProvinces.get(i).getPointsSize();
        boolean z = false;
        int i4 = pointsSize - 1;
        for (int i5 = 0; i5 < pointsSize; i5++) {
            if ((cutProvinces.get(i).getPointsY(i5) > i3) != (cutProvinces.get(i).getPointsY(i4) > i3) && i2 < (((cutProvinces.get(i).getPointsX(i4) - cutProvinces.get(i).getPointsX(i5)) * (i3 - cutProvinces.get(i).getPointsY(i5))) / (cutProvinces.get(i).getPointsY(i4) - cutProvinces.get(i).getPointsY(i5))) + cutProvinces.get(i).getPointsX(i5)) {
                z = !z;
            }
            i4 = i5;
        }
        return z;
    }

    public static void regroupArmy_AddProvince(int i) {
        for (int i2 = 0; i2 < iRegroupArmyProvincesSize; i2++) {
            try {
                if (regroupArmyProvinces.get(i2).intValue() == i) {
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        regroupArmyProvinces.add(Integer.valueOf(i));
        iRegroupArmyProvincesSize = regroupArmyProvinces.size();
        regroupArmy_BuildArmyShadow();
        regroupArmyLine = new MoveUnits_RegroupLine(regroupArmyProvinces);
    }

    public static void regroupArmy_BuildArmyShadow() {
        int i;
        try {
            regroupArmyShadows.clear();
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (true) {
                i = iRegroupArmyProvincesSize;
                if (i2 >= i) {
                    break;
                }
                arrayList.add(0);
                i2++;
            }
            if (i > 0) {
                for (int i3 = 0; i3 < activeArmySize; i3++) {
                    ArmyPos armyPosFindArmy_FullCheck = findArmy_FullCheck(activeArmy.get(i3).iCivID, activeArmy.get(i3).key);
                    if (armyPosFindArmy_FullCheck != null) {
                        regroupArmyShadows.add(new ArmyDivision_Shadow(getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).sArmy, regroupArmyProvinces.get(i3 % iRegroupArmyProvincesSize).intValue(), ((Integer) arrayList.get(i3 % iRegroupArmyProvincesSize)).intValue()));
                        int i4 = iRegroupArmyProvincesSize;
                        arrayList.set(i3 % i4, Integer.valueOf(((Integer) arrayList.get(i3 % i4)).intValue() + 1));
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void regroupArmy_Clear() {
        regroupArmyProvinces.clear();
        regroupArmyShadows.clear();
        iRegroupArmyProvincesSize = 0;
        regroupArmyLine = null;
    }

    public static void regroupArmy_Move() {
        try {
            if (iRegroupArmyProvincesSize > 0) {
                for (int i = 0; i < activeArmySize; i++) {
                    ArmyPos armyPosFindArmy_FullCheck = findArmy_FullCheck(activeArmy.get(i).iCivID, activeArmy.get(i).key);
                    if (armyPosFindArmy_FullCheck != null) {
                        int i2 = 0;
                        for (int i3 = 0; i3 < i; i3++) {
                            try {
                                if (activeArmy.get(i).iProvinceID == activeArmy.get(i3).iProvinceID) {
                                    i2++;
                                }
                            } catch (Exception e) {
                                CFG.exceptionStack(e);
                                player.playerData.invasion.removeInvasion(activeArmy.get(i).key);
                                getCiv(activeArmy.get(i).iCivID).newMove(armyPosFindArmy_FullCheck.iProvinceID, regroupArmyProvinces.get(i % iRegroupArmyProvincesSize).intValue(), activeArmy.get(i).key, i2, false);
                            }
                        }
                        player.playerData.invasion.removeInvasion(activeArmy.get(i).key);
                        getCiv(activeArmy.get(i).iCivID).newMove(armyPosFindArmy_FullCheck.iProvinceID, regroupArmyProvinces.get(i % iRegroupArmyProvincesSize).intValue(), activeArmy.get(i).key, i2, false);
                    }
                }
            }
            setRegroupArmyMode(false);
            soundsManager.playMove();
            if (menuManager.getVisibleInGame_ProvinceArmy()) {
                menuManager.rebuildInGame_ProvinceArmy(true, true);
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static void regroupArmy_RemoveProvince(int i) {
        for (int i2 = 0; i2 < iRegroupArmyProvincesSize; i2++) {
            try {
                if (regroupArmyProvinces.get(i2).intValue() == i) {
                    regroupArmyProvinces.remove(i2);
                    iRegroupArmyProvincesSize = regroupArmyProvinces.size();
                    regroupArmy_BuildArmyShadow();
                    regroupArmyLine = new MoveUnits_RegroupLine(regroupArmyProvinces);
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public static void regroupArmy_UndoProvince() {
        try {
            int i = iRegroupArmyProvincesSize;
            if (i > 0) {
                regroupArmyProvinces.remove(i - 1);
                iRegroupArmyProvincesSize = regroupArmyProvinces.size();
                regroupArmy_BuildArmyShadow();
                regroupArmyLine = new MoveUnits_RegroupLine(regroupArmyProvinces);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void removeActiveArmy(int i) {
        activeArmy.remove(i);
        int size = activeArmy.size();
        activeArmySize = size;
        if (size == 0) {
            setRegroupArmyMode(false);
        }
    }

    public static final void removeActiveArmy(String str) {
        for (int i = 0; i < activeArmySize; i++) {
            if (activeArmy.get(i).key.equals(str)) {
                activeArmy.remove(i);
                activeArmySize = activeArmy.size();
                return;
            }
        }
    }

    public static void removeAllianceSpecial(int i) {
        try {
            alliancesSpecial.remove(i);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void removeAllianceSpecial(String str) {
        for (int i = 0; i < alliancesSpecial.size(); i++) {
            if (alliancesSpecial.get(i).Name_Alliance.equals(str)) {
                alliancesSpecial.remove(i);
                return;
            }
        }
    }

    public static final void removeCivilization(int i) {
        if (i == 0) {
            return;
        }
        getCiv(i).getFlag().getTexture().dispose();
        if (getCiv(i).getCapitalProvinceID() >= 0) {
            getProvince(getCiv(i).getCapitalProvinceID()).setIsCapital(false);
        }
        lCivs.remove(i);
        iCivsSize = lCivs.size();
        gameThreadUpdate.addSimpleTask(new AnonymousClass3("REM0VE: " + i + "_000", i));
    }

    public static void saveSettings() {
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", SettingsManager.class);
        (FileManager.IS_MAC ? Gdx.files.external("settings/Settings.txt") : Gdx.files.local("settings/Settings.txt")).writeString(json.prettyPrint(settingsManager), false);
    }

    public static final void saveTextueSettings() {
        (FileManager.IS_MAC ? Gdx.files.external("settings/LoadTexturesHigh.txt") : Gdx.files.local("settings/LoadTexturesHigh.txt")).writeString("" + highTextureSettings, false);
    }

    public static final void setActiveArmy(int i, String str) {
        clearActiveArmy();
        try {
            int armyKeyID = getProvince(i).getArmyKeyID(str);
            if (armyKeyID >= 0) {
                HoveredArmy hoveredArmy2 = new HoveredArmy();
                hoveredArmy2.key = getProvince(i).getArmy(armyKeyID).key;
                hoveredArmy2.iCivID = getProvince(i).getArmy(armyKeyID).civID;
                hoveredArmy2.iProvinceID = i;
                hoveredArmy2.iArmyID = armyKeyID;
                activeArmy.add(hoveredArmy2);
                activeArmySize = activeArmy.size();
            }
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    public static void setActiveProvinceID(int i) {
        iActiveProvince = i;
        if (iHoveredProvinceID != i) {
            MapCities.lTIME_ACTIVE_CITIES = CFG.currentTimeMillis;
        } else if (MapCities.lTIME_HOVERED_CITIES > CFG.currentTimeMillis - 2000) {
            MapCities.lTIME_ACTIVE_CITIES = CFG.currentTimeMillis - ((long) (((CFG.currentTimeMillis - MapCities.lTIME_HOVERED_CITIES) / 2000.0f) * 550.0f));
        } else {
            MapCities.lTIME_ACTIVE_CITIES = 0L;
        }
    }

    public static final void setCursorBuild() {
        if (!settingsManager.loadCursor || activeCursorID == 2) {
            return;
        }
        Gdx.graphics.setCursor(lCursors.get(2));
        activeCursorID = 2;
    }

    public static final void setCursorCore() {
        if (!settingsManager.loadCursor || activeCursorID == 9) {
            return;
        }
        Gdx.graphics.setCursor(lCursors.get(9));
        activeCursorID = 9;
    }

    public static final void setCursorDefault() {
        if (!settingsManager.loadCursor || activeCursorID == 0) {
            return;
        }
        Gdx.graphics.setCursor(lCursors.get(0));
        activeCursorID = 0;
    }

    public static final void setCursorDrag() {
        if (!settingsManager.loadCursor || activeCursorID == 1) {
            return;
        }
        Gdx.graphics.setCursor(lCursors.get(1));
        activeCursorID = 1;
    }

    public static final void setCursorEconomy() {
        if (!settingsManager.loadCursor || activeCursorID == 7) {
            return;
        }
        if (gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID > 2) {
            Gdx.graphics.setCursor(lCursors.get(14));
            activeCursorID = 14;
        } else {
            Gdx.graphics.setCursor(lCursors.get(7));
            activeCursorID = 7;
        }
    }

    public static final void setCursorInfrastructure() {
        if (!settingsManager.loadCursor || activeCursorID == 12) {
            return;
        }
        Gdx.graphics.setCursor(lCursors.get(12));
        activeCursorID = 12;
    }

    public static final void setCursorNuke() {
        if (!settingsManager.loadCursor || activeCursorID == 15) {
            return;
        }
        Gdx.graphics.setCursor(lCursors.get(15));
        activeCursorID = 15;
    }

    public static final void setCursorPlus() {
        if (!settingsManager.loadCursor || activeCursorID == 6) {
            return;
        }
        Gdx.graphics.setCursor(lCursors.get(6));
        activeCursorID = 6;
    }

    public static final void setCursorPopulationGrowth() {
        if (!settingsManager.loadCursor || activeCursorID == 11) {
            return;
        }
        Gdx.graphics.setCursor(lCursors.get(11));
        activeCursorID = 11;
    }

    public static final void setCursorRecruit() {
        if (!settingsManager.loadCursor || activeCursorID == 3) {
            return;
        }
        if (gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID > 2) {
            Gdx.graphics.setCursor(lCursors.get(13));
            activeCursorID = 13;
        } else if (gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID > 1) {
            Gdx.graphics.setCursor(lCursors.get(4));
            activeCursorID = 4;
        } else {
            Gdx.graphics.setCursor(lCursors.get(3));
            activeCursorID = 3;
        }
    }

    public static final void setCursorReligion() {
        if (!settingsManager.loadCursor || activeCursorID == 10) {
            return;
        }
        Gdx.graphics.setCursor(lCursors.get(10));
        activeCursorID = 10;
    }

    public static final void setCursorTax() {
        if (!settingsManager.loadCursor || activeCursorID == 8) {
            return;
        }
        Gdx.graphics.setCursor(lCursors.get(8));
        activeCursorID = 8;
    }

    public static final void setCursorX() {
        if (!settingsManager.loadCursor || activeCursorID == 5) {
            return;
        }
        Gdx.graphics.setCursor(lCursors.get(5));
        activeCursorID = 5;
    }

    public static void setHoveredProvinceID(int i) {
        int i2 = iOldHoveredProvinceID;
        int i3 = iHoveredProvinceID;
        if (i2 != i3 && i >= 0) {
            iOldHoveredProvinceID = i3;
            if (mapScale.getCurrentScale() >= DRAW_INNER_BORDERS) {
                soundsManager.playHover();
            }
        }
        iHoveredProvinceID = i;
        MapCities.lTIME_HOVERED_CITIES = CFG.currentTimeMillis;
    }

    public static void setInvasionArmyMode() {
        setInvasionArmyMode(!invasionArmyMode);
    }

    public static void setInvasionArmyMode(boolean z) {
        if (invasionArmyMode != z) {
            invasionArmyMode = z;
            invasionArmy_Clear();
            CFG.brushTool = false;
            menuManager.rebuildInGame_ProvinceArmy_InvasionArmy();
            if (invasionArmyMode) {
                InGame.drawOver = new InGameDrawOver_InvasionArmy();
            } else {
                InGame.drawOver = new InGameDrawOver();
            }
        }
    }

    public static final int setProvinceID_HoverAProvince(int i, int i2) {
        for (int i3 = 0; i3 < iProvincesSize; i3++) {
            int iAbs = (int) Math.abs(checkPosOfClickX(mapCoords.getPosX() - i));
            if (getProvince(i3).getMinX() <= iAbs && getProvince(i3).getMaxX() >= iAbs && getProvince(i3).getMinY() <= (-mapCoords.getPosY()) + i2 && getProvince(i3).getMaxY() >= (-mapCoords.getPosY()) + i2 && pathContains(i3, iAbs, (-mapCoords.getPosY()) + i2)) {
                return i3;
            }
        }
        if (Math.abs(checkPosOfClickX(mapCoords.getPosX() - i)) + (((-MAX_BELOW_ZERO_POINT_X) * mapBG.iMapScale) / mapScale.getCurrentScale()) <= mapBG.getWidth()) {
            return -1;
        }
        for (int i4 = 0; i4 < iProvincesSize; i4++) {
            if (getProvince(i4).getBelowZero()) {
                int iAbs2 = (int) Math.abs(checkPosOfClickX(mapCoords.getPosX() - i));
                if (getProvince(i4).getMinX() <= iAbs2 - mapBG.getWidth() && getProvince(i4).getMaxX() >= iAbs2 - mapBG.getWidth() && getProvince(i4).getMinY() <= (-mapCoords.getPosY()) + i2 && getProvince(i4).getMaxY() >= (-mapCoords.getPosY()) + i2 && pathContains(i4, iAbs2 - mapBG.getWidth(), (-mapCoords.getPosY()) + i2)) {
                    return i4;
                }
            }
        }
        return -1;
    }

    protected static final boolean setProvinceID_IsMouseOverAProvinceID(int i, int i2, int i3) {
        int iAbs = (int) Math.abs(checkPosOfClickX(mapCoords.getPosX() - i));
        if (getProvince(i3).getMinX() <= iAbs && getProvince(i3).getMaxX() >= iAbs && getProvince(i3).getMinY() <= (-mapCoords.getPosY()) + i2 && getProvince(i3).getMaxY() >= (-mapCoords.getPosY()) + i2 && pathContains(i3, iAbs, (-mapCoords.getPosY()) + i2)) {
            return true;
        }
        if (Math.abs(checkPosOfClickX(mapCoords.getPosX() - i)) + (((-MAX_BELOW_ZERO_POINT_X) * mapBG.iMapScale) / mapScale.getCurrentScale()) <= mapBG.getWidth() || !getProvince(i3).getBelowZero()) {
            return false;
        }
        int iAbs2 = (int) Math.abs(checkPosOfClickX(mapCoords.getPosX() - i));
        return getProvince(i3).getMinX() <= iAbs2 - mapBG.getWidth() && getProvince(i3).getMaxX() >= iAbs2 - mapBG.getWidth() && getProvince(i3).getMinY() <= (-mapCoords.getPosY()) + i2 && getProvince(i3).getMaxY() >= (-mapCoords.getPosY()) + i2 && pathContains(i3, iAbs2 - mapBG.getWidth(), (-mapCoords.getPosY()) + i2);
    }

    public static final int setProvinceID_Point(int i, int i2) {
        for (int i3 = 0; i3 < iProvincesSize; i3++) {
            if (getProvince(i3).getMinX() <= i && getProvince(i3).getMaxX() >= i && getProvince(i3).getMinY() <= i2 && getProvince(i3).getMaxY() >= i2 && pathContains(i3, i, i2)) {
                return i3;
            }
        }
        float f = i;
        if (Math.abs(checkPosOfClickX(f)) + (((-MAX_BELOW_ZERO_POINT_X) * mapBG.iMapScale) / mapScale.getCurrentScale()) <= mapBG.getWidth()) {
            return -1;
        }
        for (int i4 = 0; i4 < iProvincesSize; i4++) {
            if (getProvince(i4).getBelowZero()) {
                int iAbs = (int) Math.abs(checkPosOfClickX(f));
                if (getProvince(i4).getMinX() <= iAbs - mapBG.getWidth() && getProvince(i4).getMaxX() >= iAbs - mapBG.getWidth() && getProvince(i4).getMinY() <= i2 && getProvince(i4).getMaxY() >= i2 && pathContains(i4, iAbs - mapBG.getWidth(), i2)) {
                    return i4;
                }
            }
        }
        return -1;
    }

    public static void setRegroupArmyMode() {
        setRegroupArmyMode(!regroupArmyMode);
    }

    public static void setRegroupArmyMode(boolean z) {
        if (regroupArmyMode != z) {
            regroupArmyMode = z;
            regroupArmy_Clear();
            CFG.brushTool = false;
            menuManager.rebuildInGame_ProvinceArmy_RegroupArmy();
            if (regroupArmyMode) {
                InGame.drawOver = new InGameDrawOver_RegroupArmy();
            } else {
                InGame.drawOver = new InGameDrawOver();
                regroupArmyLine = null;
            }
        }
    }

    public static final void setUpdateProvincesInView(boolean z) {
        updateProvincesInView = z;
    }

    public static final void updateActiveArmy_MoveUnits(String str, int i, int i2) {
        try {
            if (hoveredArmy.iProvinceID == i) {
                hoveredArmy.iProvinceID = i2;
                HoveredArmy hoveredArmy2 = hoveredArmy;
                hoveredArmy2.iArmyID = getProvince(hoveredArmy2.iProvinceID).getArmyKeyID(hoveredArmy.key);
                if (hoveredArmy.iArmyID < 0) {
                    hoveredArmy.iProvinceID = -1;
                }
            }
            for (int i3 = 0; i3 < activeArmySize; i3++) {
                if (activeArmy.get(i3).iProvinceID == i && activeArmy.get(i3).key.equals(str)) {
                    activeArmy.get(i3).iArmyID = getProvince(i2).getArmyKeyID(activeArmy.get(i3).key);
                    if (activeArmy.get(i3).iArmyID >= 0) {
                        activeArmy.get(i3).iProvinceID = i2;
                        activeArmy.get(i3).iArmyID = i2;
                        if (menuManager.getVisibleInGame_ProvinceArmy() && InGame_ProvinceArmy.sActiveKEY.equals(str)) {
                            addSimpleTask(new AnonymousClass1("rebuildProvinceArmy"));
                            return;
                        }
                        return;
                    }
                    activeArmy.remove(i3);
                    int size = activeArmy.size();
                    activeArmySize = size;
                    if (size == 0) {
                        menuManager.setVisibleInGame_ProvinceArmy(false);
                        return;
                    } else {
                        if (menuManager.getVisibleInGame_ProvinceArmy() && InGame_ProvinceArmy.sActiveKEY.equals(str)) {
                            addSimpleTask(new AnonymousClass2("rebuildProvinceArmy"));
                            return;
                        }
                        return;
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void updateCivilizationIdeology(int i, String str) {
        for (int i2 = 0; i2 < getCivsSize(); i2++) {
            try {
                if (getCiv(i2).getCivTag().equals(str)) {
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        LoadCivilizationData loadCivilizationDataLoadCivilization = loadCivilization(str);
        getCiv(i).updateCivilizationTAG(str, loadCivilizationDataLoadCivilization.iR, loadCivilizationDataLoadCivilization.iG, loadCivilizationDataLoadCivilization.iB);
        Renderer.addSimpleTaskCivsNames(new AnonymousClass6("" + i, i));
    }

    public static final void updateCivilizationIdeology_InGame(int i, String str) {
        try {
            LoadCivilizationData loadCivilizationDataLoadCivilization = loadCivilization(str);
            getCiv(i).updateCivilizationTAG(str, loadCivilizationDataLoadCivilization.iR, loadCivilizationDataLoadCivilization.iG, loadCivilizationDataLoadCivilization.iB);
            Renderer.addSimpleTaskCivsNames(new AnonymousClass7("" + i, i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void updateDaultScenarioID() {
        for (int i = 0; i < mapScenarios.SCENARIOS_SIZE; i++) {
            if (mapScenarios.lScenarios_TagsList.get(i).equals(map.lMaps.get(map.getActiveMapID()).mapData.DefaultScenario)) {
                scenarioID = i;
                MapScenarios mapScenarios2 = mapScenarios;
                mapScenarios2.sActiveScenarioTag = mapScenarios2.lScenarios_TagsList.get(i);
                return;
            }
        }
    }

    public static void updateDrawArmy() {
        for (int i = 0; i < getProvincesSize(); i++) {
            getProvince(i).updateDrawArmy();
        }
    }

    protected static final void updateDrawProvince2(int i) {
        if (inViewY(i)) {
            if (inViewX(i)) {
                getProvince(i).setTranslateProvincePosX(mapCoords.getSecondSideOfMap_MoveX() + mapCoords.getPosX());
                updateProvinceInViewLists(i);
                return;
            } else if (inViewX2(i)) {
                getProvince(i).setTranslateProvincePosX(mapCoords.getPosX());
                updateProvinceInViewLists(i);
                return;
            } else if (getProvince(i).getBelowZero() && inViewXBelowZero(i)) {
                getProvince(i).setTranslateProvincePosX(mapBG.getWidth() + mapCoords.getPosX());
                updateProvinceInViewLists(i);
                return;
            }
        }
        getProvince(i).setDrawProvince(false);
    }

    public static final void updateDrawProvince_CheckExtra(int i) {
        if (!mapCoords.getSecondSideOfMap() || getProvince(i).getMinX() >= inViewX_CordsX || getProvince(i).getMaxX() <= inViewX_CordsX) {
            return;
        }
        lExtraProvincesInView.add(Integer.valueOf(i));
    }

    private static final void updateDrawRegionProvinces(int i) {
        Region region = regions.lRegions.get(i);
        int i2 = 0;
        if (inViewY_WholeRegion(region.getMinY(), region.getMaxY())) {
            if (inViewX_WholeRegion(region.getMinX(), region.getMaxX())) {
                while (i2 < region.getProvincesSize()) {
                    getProvince(region.getProvince(i2)).setTranslateProvincePosX(mapCoords.getSecondSideOfMap_MoveX() + mapCoords.getPosX());
                    updateProvinceInViewLists(region.getProvince(i2));
                    i2++;
                }
                return;
            }
            if (inViewX_WholeRegion2(region.getMinX(), region.getMaxX())) {
                while (i2 < region.getProvincesSize()) {
                    getProvince(region.getProvince(i2)).setTranslateProvincePosX(mapCoords.getPosX());
                    updateProvinceInViewLists(region.getProvince(i2));
                    i2++;
                }
                return;
            }
        }
        while (i2 < region.getProvincesSize()) {
            updateDrawProvince2(region.getProvince(i2));
            i2++;
        }
    }

    public static final void updateGame() {
        deltaTime = Math.min(2.0f, Gdx.graphics.getDeltaTime() / 0.016667f);
        ProvinceBorderManager.update();
        ProvinceBorderManager.action.update();
        if (activeArmySize > 0 || hoveredArmy.iProvinceID >= 0) {
            animationHover.update();
        }
        int i = iActiveProvince;
        if (i >= 0 && getProvince(i).getDrawProvince()) {
            activeProvince_Animation_Data.update();
        }
        selectedProvinces_Animation_Data.update();
    }

    public static final void updateHighlitghtProvinceBorder(SpriteBatch spriteBatch) {
        if (highlightedProvinceBorder_Update) {
            if (highlightedProvinceBorder_BackAnimation) {
                float f = fDashedLine_Percentage_HighlitedProvinceBorder - (((CFG.currentTimeMillis - lDashedLineTime_Percentage_HighlitedProvinceBorder) / HIGHLIGHTED_PROVINCES_ANIMATION_TIME_BACK) * 100.0f);
                fDashedLine_Percentage_HighlitedProvinceBorder = f;
                if (f <= 0.0f) {
                    highlightedProvinceBorder_Update = false;
                    return;
                } else {
                    lDashedLineTime_Percentage_HighlitedProvinceBorder = CFG.currentTimeMillis;
                    return;
                }
            }
            float f2 = fDashedLine_Percentage_HighlitedProvinceBorder + (((CFG.currentTimeMillis - lDashedLineTime_Percentage_HighlitedProvinceBorder) / 750.0f) * 95.0f);
            fDashedLine_Percentage_HighlitedProvinceBorder = f2;
            if (f2 <= 100.0f) {
                lDashedLineTime_Percentage_HighlitedProvinceBorder = CFG.currentTimeMillis;
            } else {
                fDashedLine_Percentage_HighlitedProvinceBorder = 100.0f;
                highlightedProvinceBorder_Update = false;
            }
        }
    }

    protected static final void updateHoveredProvince_Hover(int i, int i2) {
        try {
            if (menuManager.dialogMenu.getVisible()) {
                provinceHover_Informations = null;
                return;
            }
            if (hoverManager.hoverActiveMenuTitleID >= 0) {
                return;
            }
            try {
                int i3 = iHoveredProvinceID;
                if (i3 < 0) {
                    setHoveredProvinceID(setProvinceID_HoverAProvince((int) (i / mapScale.getCurrentScale()), (int) (i2 / mapScale.getCurrentScale())));
                    if (iHoveredProvinceID >= 0) {
                        MenuElement_Hover.resetAnimation();
                    } else {
                        provinceHover_Informations = null;
                    }
                } else {
                    if (!getProvince(i3).getSeaProvince() && setProvinceID_IsMouseOverAProvinceID((int) (i / mapScale.getCurrentScale()), (int) (i2 / mapScale.getCurrentScale()), iHoveredProvinceID)) {
                        return;
                    }
                    setHoveredProvinceID(setProvinceID_HoverAProvince((int) (i / mapScale.getCurrentScale()), (int) (i2 / mapScale.getCurrentScale())));
                    if (iHoveredProvinceID < 0) {
                        provinceHover_Informations = null;
                    }
                }
                ProvinceHover.provinceHoverBuild.build();
            } catch (Exception e) {
                provinceHover_Informations = null;
                iHoveredProvinceID = -1;
                CFG.exceptionStack(e);
            }
        } catch (Exception unused) {
        }
    }

    protected static final void updateHoveredProvince_HoverInMapMode(int i, int i2) {
        if (menuManager.dialogMenu.getVisible()) {
            provinceHover_Informations = null;
            return;
        }
        if (hoverManager.hoverActiveMenuTitleID >= 0) {
            return;
        }
        try {
            if (iHoveredProvinceID >= 0) {
                float f = i;
                float f2 = i2;
                if (setProvinceID_IsMouseOverAProvinceID((int) (f / mapScale.getCurrentScale()), (int) (f2 / mapScale.getCurrentScale()), iHoveredProvinceID)) {
                    return;
                }
                setHoveredProvinceID(setProvinceID_HoverAProvince((int) (f / mapScale.getCurrentScale()), (int) (f2 / mapScale.getCurrentScale())));
                if (iHoveredProvinceID < 0) {
                    provinceHover_Informations = null;
                }
            } else {
                setHoveredProvinceID(setProvinceID_HoverAProvince((int) (i / mapScale.getCurrentScale()), (int) (i2 / mapScale.getCurrentScale())));
                if (iHoveredProvinceID >= 0) {
                    MenuElement_Hover.resetAnimation();
                } else {
                    provinceHover_Informations = null;
                }
            }
            provinceHover_Informations = getProvince(iHoveredProvinceID).drawDetails.buildHover(iHoveredProvinceID);
        } catch (IndexOutOfBoundsException unused) {
            provinceHover_Informations = null;
            iHoveredProvinceID = -1;
        } catch (NullPointerException unused2) {
            provinceHover_Informations = null;
            iHoveredProvinceID = -1;
        }
    }

    public static final void updateInView_CordsXY() {
        inViewY_CordsY = -mapCoords.getPosY();
        inViewY_CordsY_Height = (int) ((-mapCoords.getPosY()) + (CFG.GAME_HEIGHT / mapScale.getCurrentScale()));
        inViewX_CordsX = -mapCoords.getPosX();
        inViewX_CordsX_Width = (int) ((-mapCoords.getPosX()) + (CFG.GAME_WIDTH / mapScale.getCurrentScale()));
    }

    public static final void updateMapDistance() {
        Map map2 = map;
        if (map2.isWorldMap(map2.getActiveMapID())) {
            mapDistance = new AnonymousClass9();
        } else {
            mapDistance = new AnonymousClass10();
        }
    }

    public static final void updateProvinceBG_ActiveHoveredProvince() {
        int i;
        try {
            if (CFG.isDesktop() && !GameValues.value.LOAD_SEA_PROVINCES && GameValues.value.LOAD_HOVERED_SEA_PROVINCE && (i = iHoveredProvinceID) >= 0 && getProvince(i).getSeaProvince() && hoveredProvinceBG_LoadedID != iHoveredProvinceID) {
                Image image = hoveredProvinceBG;
                if (image != null) {
                    image.dispose();
                    hoveredProvinceBG = null;
                    hoveredProvinceBG_LoadedID = -1;
                }
                int i2 = 1;
                if (FileManager.loadFile("map/" + map.getFile_ActiveMap_Path() + "data/scales/" + (getProvince(iHoveredProvinceID).getLevelOfPort() == -4 ? 1 : (int) (mapBG.iMapScale / mapBG.iMapExtraScale)) + "/" + iHoveredProvinceID).exists()) {
                    StringBuilder sbAppend = new StringBuilder("map/").append(map.getFile_ActiveMap_Path()).append("data/scales/");
                    if (getProvince(iHoveredProvinceID).getLevelOfPort() != -4) {
                        i2 = (int) (mapBG.iMapScale / mapBG.iMapExtraScale);
                    }
                    Pixmap cim = PixmapIO.readCIM(FileManager.loadFile(sbAppend.append(i2).append("/").append(iHoveredProvinceID).toString()));
                    Pixmap pixmap = new Pixmap(cim.getWidth(), cim.getHeight(), Pixmap.Format.Alpha);
                    pixmap.drawPixmap(cim, 0, 0);
                    hoveredProvinceBG = new Image(new Texture(pixmap), Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
                    cim.dispose();
                    pixmap.dispose();
                    hoveredProvinceBG_LoadedID = iHoveredProvinceID;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void updateProvinceBorder(int i) {
        for (int i2 = 0; i2 < getProvince(i).getNeighboringProvincesSize(); i2++) {
            if (i < getProvince(i).getNeighboringProvinces(i2)) {
                getProvince(i).getProvinceBordersLandByLand(getProvince(i).getNeighboringProvinces(i2)).setIsCivilizationBorder(getProvince(i).getCivID() != getProvince(getProvince(i).getNeighboringProvinces(i2)).getCivID(), i);
            } else {
                getProvince(getProvince(i).getNeighboringProvinces(i2)).getProvinceBordersLandByLand(i).setIsCivilizationBorder(getProvince(i).getCivID() != getProvince(getProvince(i).getNeighboringProvinces(i2)).getCivID(), getProvince(i).getNeighboringProvinces(i2));
            }
        }
    }

    protected static final void updateProvinceInViewLists(int i) {
        getProvince(i).setDrawProvince(true);
        if (getProvince(i).getWasteland() >= 0) {
            lWastelandProvincesInView.add(Integer.valueOf(i));
        } else if (getProvince(i).getSeaProvince()) {
            lSeaProvincesInView.add(Integer.valueOf(i));
        } else {
            lProvincesInView.add(Integer.valueOf(i));
        }
    }

    public static final void updateProvincesInView() {
        if (updateProvincesInView) {
            updateProvincesInView = false;
            for (int i = 0; i < NUM_OF_PROVINCES_IN_VIEW; i++) {
                getProvince(lProvincesInView.get(i).intValue()).setDrawProvince(false);
            }
            for (int i2 = 0; i2 < NUM_OF_SEA_PROVINCES_IN_VIEW; i2++) {
                getProvince(lSeaProvincesInView.get(i2).intValue()).setDrawProvince(false);
            }
            for (int i3 = 0; i3 < NUM_OF_WASTELAND_PROVINCES_IN_VIEW; i3++) {
                getProvince(lWastelandProvincesInView.get(i3).intValue()).setDrawProvince(false);
            }
            for (int i4 = 0; i4 < NUM_OF_EXTRA_PROVINCES_IN_VIEW; i4++) {
                getProvince(lExtraProvincesInView.get(i4).intValue()).setDrawProvince(false);
            }
            NUM_OF_PROVINCES_IN_VIEW = 0;
            NUM_OF_SEA_PROVINCES_IN_VIEW = 0;
            NUM_OF_WASTELAND_PROVINCES_IN_VIEW = 0;
            NUM_OF_EXTRA_PROVINCES_IN_VIEW = 0;
            lProvincesInView.clear();
            lSeaProvincesInView.clear();
            lWastelandProvincesInView.clear();
            lExtraProvincesInView.clear();
            for (int i5 = 0; i5 < regions.iRegionsSize; i5++) {
                Region region = regions.lRegions.get(i5);
                if (inViewY(region.getMinY(), region.getMaxY())) {
                    if (inViewX(region.getMinX(), region.getMaxX()) || inViewX2(region.getMinX(), region.getMaxX())) {
                        updateDrawRegionProvinces(i5);
                    } else if (region.getBelowZero() && inViewXBelowZero(region.getMinX(), region.getMaxX())) {
                        updateDrawRegionProvinces(i5);
                    }
                }
            }
            NUM_OF_PROVINCES_IN_VIEW = lProvincesInView.size();
            NUM_OF_SEA_PROVINCES_IN_VIEW = lSeaProvincesInView.size();
            NUM_OF_WASTELAND_PROVINCES_IN_VIEW = lWastelandProvincesInView.size();
            NUM_OF_EXTRA_PROVINCES_IN_VIEW = lExtraProvincesInView.size();
        }
    }

    public static final void updateSimpleTask() {
        try {
            for (int size = simpleTasks.size() - 1; size >= 0; size--) {
                try {
                    simpleTasks.remove().update();
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void clearProvincesInView() {
        for (int i = 0; i < getProvincesSize(); i++) {
            getProvince(i).setDrawProvince(false);
        }
        NUM_OF_PROVINCES_IN_VIEW = 0;
        NUM_OF_SEA_PROVINCES_IN_VIEW = 0;
        NUM_OF_WASTELAND_PROVINCES_IN_VIEW = 0;
        NUM_OF_EXTRA_PROVINCES_IN_VIEW = 0;
        lProvincesInView.clear();
        lSeaProvincesInView.clear();
        lWastelandProvincesInView.clear();
        lExtraProvincesInView.clear();
    }

    public final ProvinceAnimation getProvinceAnimation_Active_Data() {
        return activeProvince_Animation_Data;
    }
}
