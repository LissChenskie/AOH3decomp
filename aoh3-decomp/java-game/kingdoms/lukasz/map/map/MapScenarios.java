package aoc.kingdoms.lukasz.map.map;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.AI.AI_Budget;
import aoc.kingdoms.lukasz.jakowski.AI.AI_Manager;
import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.CharactersManager;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Missions.MissionTree;
import aoc.kingdoms.lukasz.jakowski.Player.Player;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.LoadManager;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveManager;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import aoc.kingdoms.lukasz.map.AdvantagesManager;
import aoc.kingdoms.lukasz.map.BonusesManager;
import aoc.kingdoms.lukasz.map.FormableCivManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyGeneral;
import aoc.kingdoms.lukasz.map.army.ArmyRegiment;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.civilization.CivilizationAdvisorsPool;
import aoc.kingdoms.lukasz.map.civilization.CivilizationGeneralsPool;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.map.diplomacy.Diplomacy;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menus.LoadSave.Menu_LoadScenario;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.menus.NewGame.NewGame;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MapScenarios {
    public int SCENARIOS_SIZE;
    public static Details scenarioEditorDetails = new Details();
    public static int DEFAULT_VALUE = -2;
    public List<String> lScenarios_TagsList = new ArrayList();
    public List<Image> lScenarios_Preview = new ArrayList();
    public String sActiveScenarioTag = "";
    public boolean scenarioEditor_isCampaign = false;
    public List<Integer> editorProvinceReligion = new ArrayList();
    public List<Details> details = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapScenarios$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            CivilizationRegionsManager.buildCivilizationsRegions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapScenarios$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            for (int i = 1; i < Game.getCivsSize(); i++) {
                Game.mapCities.updateNameToNewTrueOwner_Civ(i, false);
            }
        }
    }

    public static class Details {
        public int Age;
        public String Author;
        public int Civs;
        public int Day;
        public int Month;
        public String Name;
        public int Year;
        public boolean Campaign = false;
        public int CivDefault_Gold = 100;
        public int CivDefault_GoldRandom = 50;
        public int CivDefault_Legacy = 100;
        public int CivDefault_LegacyRandom = 50;
        public int CivDefault_ManpowerPercentage = 60;
        public int CivDefault_Technology = -1;
        public int ProvinceDefault_Population = 200000;
        public int ProvinceDefault_Economy = 10;
        public int ProvinceDefault_TaxEfficiency = 10;
        public int ProvinceDefault_Manpower = 3;
        public int HoursPerTurn = 24;
    }

    public static class ScenarioCivData {
        public int CPID;
        public int CivID;
        public String CivTAG;
        public int PCID;
        public int Gold = MapScenarios.DEFAULT_VALUE;
        public int Legacy = MapScenarios.DEFAULT_VALUE;
        public int TechnologyID = MapScenarios.DEFAULT_VALUE;
        public int Population = 0;
        public int Economy = 0;
        public int TaxEff = 0;
        public int Manpower = 0;
        public int CCL = 0;
        public int MAL = 0;
        public int MAGL = 0;
        public int SCL = 0;
        public int NRL = 0;
        public int Nukes = 0;
        public int v = 0;
    }

    public static class ScenarioCivDataSerializer implements Json.Serializer<ScenarioCivData> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.badlogic.gdx.utils.Json.Serializer
        public ScenarioCivData read(Json json, JsonValue jsonValue, Class cls) {
            return new ScenarioCivData();
        }

        @Override // com.badlogic.gdx.utils.Json.Serializer
        public void write(Json json, ScenarioCivData scenarioCivData, Class cls) {
            json.writeObjectStart();
            json.writeValue("CivTAG", scenarioCivData.CivTAG);
            json.writeValue("CivID", Integer.valueOf(scenarioCivData.CivID));
            json.writeValue("PCID", Integer.valueOf(scenarioCivData.PCID));
            json.writeValue("CPID", Integer.valueOf(scenarioCivData.CPID));
            if (scenarioCivData.Gold != MapScenarios.DEFAULT_VALUE) {
                json.writeValue("Gold", Integer.valueOf(scenarioCivData.Gold));
            }
            if (scenarioCivData.Legacy != MapScenarios.DEFAULT_VALUE) {
                json.writeValue("Legacy", Integer.valueOf(scenarioCivData.Legacy));
            }
            if (scenarioCivData.TechnologyID != MapScenarios.DEFAULT_VALUE) {
                json.writeValue("TechnologyID", Integer.valueOf(scenarioCivData.TechnologyID));
            }
            if (scenarioCivData.Population != 0) {
                json.writeValue("Population", Integer.valueOf(scenarioCivData.Population));
            }
            if (scenarioCivData.Economy != 0) {
                json.writeValue("Economy", Integer.valueOf(scenarioCivData.Economy));
            }
            if (scenarioCivData.TaxEff != 0) {
                json.writeValue("TaxEff", Integer.valueOf(scenarioCivData.TaxEff));
            }
            if (scenarioCivData.Manpower != 0) {
                json.writeValue("Manpower", Integer.valueOf(scenarioCivData.Manpower));
            }
            if (scenarioCivData.CCL != 0) {
                json.writeValue("CCL", Integer.valueOf(scenarioCivData.CCL));
            }
            if (scenarioCivData.MAL != 0) {
                json.writeValue("MAL", Integer.valueOf(scenarioCivData.MAL));
            }
            if (scenarioCivData.MAGL != 0) {
                json.writeValue("MAGL", Integer.valueOf(scenarioCivData.MAGL));
            }
            if (scenarioCivData.SCL != 0) {
                json.writeValue("SCL", Integer.valueOf(scenarioCivData.SCL));
            }
            if (scenarioCivData.NRL != 0) {
                json.writeValue("NRL", Integer.valueOf(scenarioCivData.NRL));
            }
            if (scenarioCivData.Nukes != 0) {
                json.writeValue("Nukes", Integer.valueOf(scenarioCivData.Nukes));
            }
            if (scenarioCivData.v != 0) {
                json.writeValue("v", Integer.valueOf(scenarioCivData.v));
            }
            json.writeObjectEnd();
        }
    }

    public static class ScenarioCivData_Provinces {
        public int[] Provinces;
    }

    public static class ScenarioCoresData {
        public List<Integer> Cores;
        public int id;
    }

    public static class ScenarioReligionData {
        public int id;
        public int rel;
    }

    public static final void buildAlliancesSpecial() {
        for (int i = 0; i < Game.alliancesSpecialSize; i++) {
            try {
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).addInAllianceSpecial(i);
                for (int size = Game.alliancesSpecial.get(i).firstTier.size() - 1; size >= 0; size--) {
                    Game.getCiv(Game.alliancesSpecial.get(i).firstTier.get(size).intValue()).addInAllianceSpecial(i);
                }
                for (int size2 = Game.alliancesSpecial.get(i).secondTier.size() - 1; size2 >= 0; size2--) {
                    Game.getCiv(Game.alliancesSpecial.get(i).secondTier.get(size2).intValue()).addInAllianceSpecial(i);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public static final void buildArmyPosition() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).clearArmyPosition();
        }
        for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
            for (int i3 = 0; i3 < Game.getProvince(i2).getArmySize(); i3++) {
                Game.getCiv(Game.getProvince(i2).getArmy(i3).civID).addArmyPosition(i2, Game.getProvince(i2).getArmy(i3).key);
            }
        }
    }

    public static void buildCivData() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                Game.ideologiesManager.updateCivBonuses(i, Game.getCiv(i).getIdeologyID(), 1, true);
                Game.religionManager.updateCivBonuses(i, Game.getCiv(i).getReligionID(), 1, true);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        buildVassals();
        for (int i2 = 1; i2 < Game.getCivsSize(); i2++) {
            try {
                Game.getCiv(i2).setTaxationLevel(1);
                Game.getCiv(i2).setResearchLevel(1);
                Game.getCiv(i2).setCorruption(GameValues.supremeCourt.CORRUPTION_BASE_VALUE);
                Game.getCiv(i2).updateRegimentsLimit();
                Game.getCiv(i2).updateResearchPerMonth();
                Game.getCiv(i2).updateLegacyPerMonth();
                Game.getCiv(i2).updateManpowerPerMonth();
                Game.getCiv(i2).updateDiplomacyPerMonth();
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
    }

    public static void buildCivData_Load() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                Game.ideologiesManager.updateCivBonuses(i, Game.getCiv(i).getIdeologyID(), 1, true);
                Game.religionManager.updateCivBonuses(i, Game.getCiv(i).getReligionID(), 1, true);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public static void buildCivData_Load2() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                Game.getCiv(i).updateRegimentsLimit();
                Game.getCiv(i).updateResearchPerMonth();
                Game.getCiv(i).updateLegacyPerMonth();
                Game.getCiv(i).updateManpowerPerMonth();
                Game.getCiv(i).updateDiplomacyPerMonth();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public static final void buildCivsColors() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).updateColorMap();
        }
    }

    public static final void buildCivsStability() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).updateCivStability();
        }
    }

    public static final void buildIncome() {
        Game.buildProsperity_AverageEconomy();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).updateRegimentsLimit();
            Game.getCiv(i).updateArmyMaintenance();
        }
        for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
            Game.getProvince(i2).updateProvinceIncome();
        }
        for (int i3 = 1; i3 < Game.getCivsSize(); i3++) {
            if (Game.getCiv(i3).getPuppetOfCivID() != i3) {
                Game.getCiv(i3).updateIncome();
            }
        }
        for (int i4 = 1; i4 < Game.getCivsSize(); i4++) {
            if (Game.getCiv(i4).getPuppetOfCivID() == i4) {
                Game.getCiv(i4).updateIncome();
            }
        }
        for (int i5 = 1; i5 < Game.getCivsSize(); i5++) {
            Game.getCiv(i5).updateTotalIncomePerMonth();
        }
    }

    public static final void buildManpower() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).updateManpowerPerMonth();
        }
    }

    public static void buildProvinceData() {
        BonusesManager.initAndBuildProvinceBonuses();
        Game.initProvinceData();
    }

    public static final void buildStartingRelationsRandom() {
        if (GameValues.diplomacy.STARTING_RANDOM_RELATIONS_CHANCE > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i = 1; i < Game.getCivsSize(); i++) {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    for (int i2 = i + 1; i2 < Game.getCivsSize(); i2++) {
                        if (Game.getCiv(i).diplomacy.getRelation(i2) == 0.0f && buildStartingRelationsRandom_IsInDistance(i, i2) && GameValues.diplomacy.STARTING_RANDOM_RELATIONS_CHANCE > Game.oR.nextInt(100)) {
                            arrayList.add(Integer.valueOf(i2));
                        }
                    }
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        float fNextInt = Game.oR.nextInt(GameValues.diplomacy.STARTING_RANDOM_RELATIONS) - (GameValues.diplomacy.STARTING_RANDOM_RELATIONS / 2.0f);
                        float f = fNextInt + (fNextInt > 0.0f ? GameValues.diplomacy.STARTING_RANDOM_RELATIONS_MIN : -GameValues.diplomacy.STARTING_RANDOM_RELATIONS_MIN);
                        Game.getCiv(i).diplomacy.setRelation(i, ((Integer) arrayList.get(size)).intValue(), f);
                        Game.getCiv(((Integer) arrayList.get(size)).intValue()).diplomacy.setRelation(((Integer) arrayList.get(size)).intValue(), i, f);
                    }
                    arrayList.clear();
                }
            }
        }
    }

    public static boolean buildStartingRelationsRandom_IsInDistance(int i, int i2) {
        return Game.getCiv(i2).getNumOfProvinces() > 0 && Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID()) <= GameValues.diplomacy.RANDOM_RELATIONS_DISTANCE;
    }

    public static final void buildVassals() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                if (Game.getCiv(i).getPuppetOfCivID() != Game.getCiv(i).getCivID()) {
                    Game.getCiv(Game.getCiv(i).getPuppetOfCivID()).addVassal(Game.getCiv(i).getCivID());
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public static void loadRandomScenario() {
        int iNextInt = Game.oR.nextInt(Game.mapScenarios.SCENARIOS_SIZE);
        if (Game.scenarioID != iNextInt || Game_Calendar.TURN_ID != 1 || Game.reloadScenario || MainMenu.canContinue) {
            Game.scenarioID = iNextInt;
            Game.reloadScenario = false;
            Menu_LoadScenario.editorMode = false;
            Menu_LoadScenario.goToMenu = View.CLOUDS_MENU;
            Game.menuManager.setViewIDWithoutAnimation(View.LOAD_SCENARIO);
        } else {
            Game.mapScale.definedScale = MapScale.defScales.definedScale_Default;
            Game.mapScale.setCurrentScale(1.0f);
            NewGame.setRandomCiv();
            Game.menuManager.setViewIDWithoutAnimation(View.CLOUDS_MENU);
        }
        Game.menuManager.addToastGold(Game.lang.get(Game.mapScenarios.details.get(iNextInt).Name), Images.dice);
    }

    public static final void updateUQ_UI() {
        if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).UQ_UI) {
            Images.flagBG = Images.flagBGUQ;
            Images.topStats = Images.topStatsUQ;
            Images.topStats2 = Images.topStats2UQ;
            Images.leftSideBar = Images.leftSideBarUQ;
            InGame.outlinerExtraX = InGame.outlinerExtraUQ;
            return;
        }
        Images.flagBG = Images.flagBGClassic;
        Images.topStats = Images.topStatsClassic;
        Images.topStats2 = Images.topStats2Classic;
        Images.leftSideBar = Images.leftSideBarClassic;
        InGame.outlinerExtraX = InGame.outlinerExtraClassic;
    }

    public final void buildCivsGold() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).scenarioEditorData.Gold != DEFAULT_VALUE) {
                Game.getCiv(i).fGold = Game.getCiv(i).scenarioEditorData.Gold;
            } else {
                Game.getCiv(i).fGold = this.details.get(Game.scenarioID).CivDefault_Gold + Game.oR.nextInt(Math.max(1, this.details.get(Game.scenarioID).CivDefault_GoldRandom));
            }
        }
    }

    public final void buildCivsGovernmentBuildings() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).setCapitalLevel(Math.max(0, Game.getCiv(i).scenarioEditorData.CCL));
            Game.getCiv(i).setMilitaryAcademyLevel(Math.max(0, Game.getCiv(i).scenarioEditorData.MAL));
            Game.getCiv(i).setMilitaryAcademyForGeneralsLevel(Math.max(0, Game.getCiv(i).scenarioEditorData.MAGL));
            Game.getCiv(i).setSupremeCourtLevel(Math.max(0, Game.getCiv(i).scenarioEditorData.SCL));
            Game.getCiv(i).setNuclearReactorLevel(Math.max(0, Game.getCiv(i).scenarioEditorData.NRL));
            Game.getCiv(i).buildCapitalCity_Bonuses();
            Game.getCiv(i).buildMilitaryAcademy_Bonuses();
            Game.getCiv(i).buildMilitaryAcademyForGenerals_Bonuses();
            Game.getCiv(i).buildSupremeCourt_Bonuses();
            Game.getCiv(i).buildNuclearReactor_Bonuses();
        }
    }

    public final void buildCivsGovernmentBuildings_LoadSavedGame() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).buildCapitalCity_Bonuses();
            Game.getCiv(i).buildMilitaryAcademy_Bonuses();
            Game.getCiv(i).buildMilitaryAcademyForGenerals_Bonuses();
            Game.getCiv(i).buildNuclearReactor_Bonuses();
        }
    }

    public final void buildCivsLegacy_Nukes_Aggressiveness() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).scenarioEditorData.Legacy != DEFAULT_VALUE) {
                Game.getCiv(i).fLegacy = Game.getCiv(i).scenarioEditorData.Legacy;
            } else {
                Game.getCiv(i).fLegacy = this.details.get(Game.scenarioID).CivDefault_Legacy + Game.oR.nextInt(Math.max(1, this.details.get(Game.scenarioID).CivDefault_LegacyRandom));
            }
            if (Game.getCiv(i).scenarioEditorData.Nukes > 0) {
                Game.getCiv(i).setNukes(Game.getCiv(i).scenarioEditorData.Nukes);
            }
            if (Game.getCiv(i).scenarioEditorData.v != 0) {
                Game.getCiv(i).setExtraAggressiveness(Game.getCiv(i).scenarioEditorData.v);
            }
        }
    }

    public final void buildCivsManpower() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).fManpower = Math.max(0.0d, Game.getCiv(i).fManpowerMax * ((double) (this.details.get(Game.scenarioID).CivDefault_ManpowerPercentage / 100.0f)));
        }
    }

    public final void buildCivsNeighbors() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).civNeighbors.buildNeighbors(i);
        }
    }

    public final void buildProvincesCores() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (!Game.getProvince(i).getSeaProvince() && Game.getProvince(i).getCivID() > 0) {
                Game.getProvince(i).addCore(Game.getProvince(i).getCivID());
            }
        }
    }

    public final void buildProvincesEconomy() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (!Game.getProvince(i).getSeaProvince()) {
                if (Game.getProvince(i).getCivID() == 0) {
                    Game.getProvince(i).setEconomy(this.details.get(Game.scenarioID).ProvinceDefault_Economy * GameValues.economy.BASE_ECONOMY_NEUTRAL * (Math.max(0.0f, Game.getProvince(i).BaseDevelopment + Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).BaseEconomy) / 100.0f));
                } else if (Game.getCiv(Game.getProvince(i).getCivID()).scenarioEditorData.Economy == 0) {
                    Game.getProvince(i).setEconomy(this.details.get(Game.scenarioID).ProvinceDefault_Economy * (Math.max(0.0f, Game.getProvince(i).BaseDevelopment + Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).BaseEconomy) / 100.0f));
                } else {
                    Game.getProvince(i).setEconomy(Math.max(1, Game.getCiv(Game.getProvince(i).getCivID()).scenarioEditorData.Economy) * (Math.max(0.0f, Game.getProvince(i).BaseDevelopment + Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).BaseEconomy) / 100.0f));
                }
            }
        }
    }

    public final void buildProvincesManpower() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (!Game.getProvince(i).getSeaProvince()) {
                if (Game.getProvince(i).getCivID() == 0) {
                    Game.getProvince(i).setManpower(this.details.get(Game.scenarioID).ProvinceDefault_Manpower * GameValues.manpower.BASE_MANPOWER_NEUTRAL * (Math.max(0.0f, Game.getProvince(i).BaseDevelopment + Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).BaseEconomy) / 100.0f));
                } else if (Game.getCiv(Game.getProvince(i).getCivID()).scenarioEditorData.Manpower == 0) {
                    Game.getProvince(i).setManpower(this.details.get(Game.scenarioID).ProvinceDefault_Manpower * (Math.max(0.0f, Game.getProvince(i).BaseDevelopment + Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).BaseEconomy) / 100.0f));
                } else {
                    Game.getProvince(i).setManpower(Math.max(1, Game.getCiv(Game.getProvince(i).getCivID()).scenarioEditorData.Manpower) * (Math.max(0.0f, Game.getProvince(i).BaseDevelopment + Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).BaseEconomy) / 100.0f));
                }
            }
        }
    }

    public final void buildProvincesPopulation() {
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                break;
            }
            if (Game.getCiv(i).scenarioEditorData.Population != 0) {
                Game.getCiv(i).fDiplomacyMax = 0.0f;
                for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
                    Game.getCiv(i).fDiplomacyMax += Math.max(1.0f, Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getGrowthRateWithBonuses() + (Game.getProvince(Game.getCiv(i).getProvinceID(i2)).isCapital ? -GameValues.capital.CAPITAL_GROWTH_RATE : 0.0f) + Game.terrainManager.terrains.get(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getTerrainID()).BasePopulation);
                }
            }
            i++;
        }
        for (int i3 = 0; i3 < Game.getProvincesSize(); i3++) {
            if (!Game.getProvince(i3).getSeaProvince()) {
                if (Game.getProvince(i3).getCivID() == 0) {
                    Game.getProvince(i3).setPopulationOfCivID(Game.getProvince(i3).getCivID(), (int) ((this.details.get(Game.scenarioID).ProvinceDefault_Population + (Game.oR.nextInt(this.details.get(Game.scenarioID).ProvinceDefault_Population) / 100.0f)) * (Math.max(1.0f, (Game.getProvince(i3).getGrowthRateWithBonuses() + (Game.getProvince(i3).isCapital ? -GameValues.capital.CAPITAL_GROWTH_RATE : 0.0f)) + Game.terrainManager.terrains.get(Game.getProvince(i3).getTerrainID()).BasePopulation) / 10000.0f)));
                } else {
                    int iNextInt = (int) (Game.getCiv(Game.getProvince(i3).getCivID()).scenarioEditorData.Population == 0 ? (this.details.get(Game.scenarioID).ProvinceDefault_Population + (Game.oR.nextInt(this.details.get(Game.scenarioID).ProvinceDefault_Population) / 100.0f)) * (Math.max(1.0f, (Game.getProvince(i3).getGrowthRateWithBonuses() + (Game.getProvince(i3).isCapital ? -GameValues.capital.CAPITAL_GROWTH_RATE : 0.0f)) + Game.terrainManager.terrains.get(Game.getProvince(i3).getTerrainID()).BasePopulation) / 100.0f) : Math.max(1.0f, Game.getCiv(Game.getProvince(i3).getCivID()).scenarioEditorData.Population * (Math.max(1.0f, (Game.getProvince(i3).getGrowthRateWithBonuses() + (Game.getProvince(i3).isCapital ? -GameValues.capital.CAPITAL_GROWTH_RATE : 0.0f)) + Game.terrainManager.terrains.get(Game.getProvince(i3).getTerrainID()).BasePopulation) / Game.getCiv(Game.getProvince(i3).getCivID()).fDiplomacyMax)));
                    if (Game.getProvince(i3).iCoresSize == 0) {
                        Game.getProvince(i3).setPopulationOfCivID(Game.getProvince(i3).getCivID(), iNextInt);
                    } else if (Game.getProvince(i3).iCoresSize == 1) {
                        Game.getProvince(i3).setPopulationOfCivID(Game.getProvince(i3).getCore(0), iNextInt);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        for (int i4 = 0; i4 < Game.getProvince(i3).iCoresSize; i4++) {
                            arrayList.add(Integer.valueOf(GameValues.province.CORES_STARTING_POPULATION_MIN + Game.oR.nextInt(Math.max(1, GameValues.province.CORES_STARTING_POPULATION_RANDOM))));
                        }
                        int iIntValue = 0;
                        for (int i5 = 0; i5 < Game.getProvince(i3).iCoresSize; i5++) {
                            iIntValue += ((Integer) arrayList.get(i5)).intValue();
                        }
                        for (int i6 = 0; i6 < Game.getProvince(i3).iCoresSize; i6++) {
                            Game.getProvince(i3).setPopulationOfCivID(Game.getProvince(i3).getCore(i6), (int) (iNextInt * (((Integer) arrayList.get(i6)).intValue() / iIntValue)));
                        }
                        arrayList.clear();
                    }
                }
            }
        }
    }

    public final void buildProvincesReligion() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (!Game.getProvince(i).getSeaProvince() && Game.getProvince(i).getCivID() > 0) {
                Game.getProvince(i).setReligion_LoadScenario(Game.getCiv(Game.getProvince(i).getCivID()).getReligionID());
            }
        }
    }

    public final void buildProvincesTaxEfficiency() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (!Game.getProvince(i).getSeaProvince()) {
                if (Game.getProvince(i).getCivID() == 0) {
                    Game.getProvince(i).setTaxEfficiency(this.details.get(Game.scenarioID).ProvinceDefault_TaxEfficiency * GameValues.tax.BASE_TAX_EFFICIENCY_NEUTRAL * (Math.max(0.0f, Game.getProvince(i).BaseDevelopment + Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).BaseEconomy) / 100.0f));
                } else if (Game.getCiv(Game.getProvince(i).getCivID()).scenarioEditorData.TaxEff == 0) {
                    Game.getProvince(i).setTaxEfficiency(this.details.get(Game.scenarioID).ProvinceDefault_TaxEfficiency * (Math.max(0.0f, Game.getProvince(i).BaseDevelopment + Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).BaseEconomy) / 100.0f));
                } else {
                    Game.getProvince(i).setTaxEfficiency(Math.max(1, Game.getCiv(Game.getProvince(i).getCivID()).scenarioEditorData.TaxEff) * (Math.max(0.0f, Game.getProvince(i).BaseDevelopment + Game.terrainManager.terrains.get(Game.getProvince(i).getTerrainID()).BaseEconomy) / 100.0f));
                }
            }
        }
    }

    public final void buildStartingAdvisors(int i, int i2) {
        while (i < i2) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                if (Game.getCiv(i).advisorAdministration.sName == null && Game.oR.nextInt(100) < GameValues.civRank.CIV_RANK_STARTING_ADVISOR_ADMINISTRATIVE_CHANCE[Game.getCiv(i).iCivRankID]) {
                    Game.getCiv(i).advisorAdministration = CivilizationAdvisorsPool.generateAdvisor_Random(i, 0);
                    AdvisorManager advisorManager = Game.advisorManager;
                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorAdministration, i, 1);
                }
                if (Game.getCiv(i).advisorEconomy.sName == null && Game.oR.nextInt(100) < GameValues.civRank.CIV_RANK_STARTING_ADVISOR_ECONOMY_CHANCE[Game.getCiv(i).iCivRankID]) {
                    Game.getCiv(i).advisorEconomy = CivilizationAdvisorsPool.generateAdvisor_Random(i, 1);
                    AdvisorManager advisorManager2 = Game.advisorManager;
                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorEconomy, i, 1);
                }
                if (Game.getCiv(i).advisorTechnology.sName == null && Game.oR.nextInt(100) < GameValues.civRank.CIV_RANK_STARTING_ADVISOR_INNOVATION_CHANCE[Game.getCiv(i).iCivRankID]) {
                    Game.getCiv(i).advisorTechnology = CivilizationAdvisorsPool.generateAdvisor_Random(i, 2);
                    AdvisorManager advisorManager3 = Game.advisorManager;
                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorTechnology, i, 1);
                }
                if (Game.getCiv(i).advisorMilitary.sName == null && Game.oR.nextInt(100) < GameValues.civRank.CIV_RANK_STARTING_ADVISOR_MILITARY_CHANCE[Game.getCiv(i).iCivRankID]) {
                    Game.getCiv(i).advisorMilitary = CivilizationAdvisorsPool.generateAdvisor_Random(i, 3);
                    AdvisorManager advisorManager4 = Game.advisorManager;
                    AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorMilitary, i, 1);
                }
            }
            i++;
        }
    }

    public final void buildStartingArmy() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                buildStartingArmy(i);
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void buildStartingArmy(int i) {
        int iFloor;
        int i2;
        if (Game.getCiv(i).getNumOfProvinces() > 0) {
            try {
                int iNextInt = (int) ((GameValues.civRank.CIV_RANK_STARTING_ARMY[Game.getCiv(i).iCivRankID] + (GameValues.civRank.CIV_RANK_STARTING_ARMY_RANDOM[Game.getCiv(i).iCivRankID] > 0 ? Game.oR.nextInt(GameValues.civRank.CIV_RANK_STARTING_ARMY_RANDOM[Game.getCiv(i).iCivRankID] + 1) : 0)) * Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).STARTING_ARMY);
                if (Game.getCiv(i).getPuppetOfCivID() != i) {
                    iNextInt = (int) (iNextInt * GameValues.civRank.CIV_RANK_STARTING_ARMY_VASSAL);
                }
                if (iNextInt > 0) {
                    ArrayList arrayList = new ArrayList();
                    double d = iNextInt / 2.0f;
                    int iCeil = (int) Math.ceil(d);
                    int iFloor2 = (int) Math.floor(d);
                    if (Game.getCiv(i).unitsBest_SupportSize == 0) {
                        iCeil = iNextInt;
                        iFloor2 = 0;
                    }
                    if (Game.getCiv(i).unitsBest_FirstLineSize == 0 && Game.getCiv(i).unitsBest_FlankSize == 0) {
                        iCeil = 0;
                    } else {
                        iNextInt = iFloor2;
                    }
                    if (Game.getCiv(i).unitsBest_FlankSize <= 0) {
                        iFloor = 0;
                    } else if (Game.getCiv(i).unitsBest_FirstLineSize == 0) {
                        iFloor = iCeil;
                        iCeil = 0;
                    } else {
                        double d2 = iCeil / 2.0f;
                        iFloor = (int) Math.floor(d2);
                        iCeil = (int) Math.ceil(d2);
                    }
                    if (Game.getCiv(i).unitsBest_FirstLineSize > 0) {
                        for (int i3 = 0; i3 < iCeil; i3++) {
                            int iNextInt2 = Game.oR.nextInt(Game.getCiv(i).unitsBest_FirstLineSize);
                            arrayList.add(new ArmyRegiment(Game.getCiv(i).unitsBest_FirstLine.get(iNextInt2).unitID, Game.getCiv(i).unitsBest_FirstLine.get(iNextInt2).armyID));
                        }
                    }
                    if (Game.getCiv(i).unitsBest_FlankSize > 0) {
                        for (int i4 = 0; i4 < iFloor; i4++) {
                            int iNextInt3 = Game.oR.nextInt(Game.getCiv(i).unitsBest_FlankSize);
                            arrayList.add(new ArmyRegiment(Game.getCiv(i).unitsBest_Flank.get(iNextInt3).unitID, Game.getCiv(i).unitsBest_Flank.get(iNextInt3).armyID));
                        }
                    }
                    if (Game.getCiv(i).unitsBest_SiegeSize > 0) {
                        i2 = (int) (iNextInt * GameValues.civRank.STARTING_ARMY_SIEGE_UNITS_PERC[Game.getCiv(i).iCivRankID]);
                        iNextInt -= i2;
                    } else {
                        i2 = 0;
                    }
                    if (Game.getCiv(i).unitsBest_SupportSize > 0) {
                        for (int i5 = 0; i5 < iNextInt; i5++) {
                            int iNextInt4 = Game.oR.nextInt(Game.getCiv(i).unitsBest_SupportSize);
                            arrayList.add(new ArmyRegiment(Game.getCiv(i).unitsBest_Support.get(iNextInt4).unitID, Game.getCiv(i).unitsBest_Support.get(iNextInt4).armyID));
                        }
                    }
                    if (Game.getCiv(i).unitsBest_SiegeSize > 0) {
                        for (int i6 = 0; i6 < i2; i6++) {
                            int iNextInt5 = Game.oR.nextInt(Game.getCiv(i).unitsBest_SiegeSize);
                            arrayList.add(new ArmyRegiment(Game.getCiv(i).unitsBest_Siege.get(iNextInt5).unitID, Game.getCiv(i).unitsBest_Siege.get(iNextInt5).armyID));
                        }
                    }
                    int provinceID = (Game.getCiv(i).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getCivID() != i) ? Game.getCiv(i).getProvinceID(Game.oR.nextInt(Game.getCiv(i).getNumOfProvinces())) : Game.getCiv(i).getCapitalProvinceID();
                    ArmyGeneral general_Random = CivilizationGeneralsPool.getGeneral_Random(i);
                    if (arrayList.size() > 0) {
                        Game.getProvince(provinceID).addArmy(new ArmyDivision(i, provinceID, arrayList, general_Random));
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public final void buildStartingGenerals(int i, int i2) {
        while (i < i2) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                for (int i3 = 0; i3 < GameValues.civRank.CIV_RANK_NUM_OF_STARTING_GENERALS[Game.getCiv(i).iCivRankID]; i3++) {
                    if (Game.oR.nextInt(100) < GameValues.civRank.CIV_RANK_STARTING_GENERAL_CHANCE[Game.getCiv(i).iCivRankID]) {
                        Game.getCiv(i).addGeneral(CivilizationGeneralsPool.getGeneral_Random(i));
                    }
                }
            }
            i++;
        }
    }

    public final void clearData() {
        SaveGameManager.AUTO_SAVE_LAST_TURN_ID = 0;
        loadScenario_1_ClearData();
        ResourcesManager.resetPriceChangePerc();
        Game.player = new Player();
        Game.player.fog.initFogOfWar();
        Game.battleManager.clearData();
        SiegeManager.clearData();
        Game.revolutionManager.clearData();
        Game.gameThread.clearData();
        Game.gameThreadTurns.clearData();
        Game.gameThreadTurns.iLastUpdateTurnID = 0;
        Game.gameThreadTurns.THREAD_TURN_ID = 0;
        Game.gameThreadUpdate.clearData();
        WarManager.clearData();
        AI_Manager.aiBudget = new AI_Budget();
        Game.aiAggressivnes = 0;
    }

    public final void clearScenarios() {
        this.lScenarios_TagsList.clear();
        this.details.clear();
        this.SCENARIOS_SIZE = 0;
    }

    public final void createScenario() {
        Game.disposeCivilizations();
        Game.clearAllianceSpecial();
        scenarioEditorDetails = new Details();
        Game_Calendar.TURN_ID = 1;
        SaveGameManager.AUTO_SAVE_LAST_TURN_ID = Game_Calendar.TURN_ID;
        Game_Calendar.HOUR = 0;
        try {
            Game_Calendar.currentDay = this.details.get(Game.scenarioID).Day;
            Game_Calendar.currentMonth = this.details.get(Game.scenarioID).Month;
            Game_Calendar.currentYear = this.details.get(Game.scenarioID).Year;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        Game_Calendar.CURRENT_AGEID = Game.gameAges.getAgeOfYear(Game_Calendar.currentYear);
        Game_Calendar.updateManpowerImg();
        scenarioEditorDetails = new Details();
        ScenarioSettings.sAuthor = "";
        ScenarioSettings.sTag = "";
        ScenarioSettings.sName = "";
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            Game.getProvince(i).clearData();
        }
        WondersManager.initProvinceWonders();
        Game.lCivs.add(Game.getNeutralCivilization());
        Game.lCivs.get(0).iCivID = 0;
        Game.iCivsSize = Game.lCivs.size();
        for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
            for (int i3 = 0; i3 < Game.getProvince(i2).getProvinceBordersLandByLandSize(); i3++) {
                Game.getProvince(i2).getProvinceBordersLandByLand().get(i3).setIsCivilizationBorder(Game.getProvince(i2).getCivID() != Game.getProvince(Game.getProvince(i2).getProvinceBordersLandByLand().get(i3).getWithProvinceID()).getCivID(), i2);
            }
            if (Game.getProvince(i2).getCivID() > 0) {
                Game.getCiv(Game.getProvince(i2).getCivID()).addProvince_Just(i2);
            }
        }
        for (int i4 = 0; i4 < Game.getProvincesSize(); i4++) {
            Game.updateProvinceBorder(i4);
        }
        Game.player = new Player();
    }

    public final void initCivilizations_ArmiesWithoutGenerals() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).armiesWithoutGenerals.buildArmiesWithoutGenerals(i);
        }
    }

    public final void initCivilizations_ConvertReligion() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).convertReligion.buildProvincesConvertReligion(i);
        }
    }

    public final void initCivilizations_NonCore() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).civilizationCores.buildProvincesNonCore(i);
        }
    }

    public final List<Civilization> loadCivilizations(boolean z) {
        String str = qIuEvFbUtcea.VKKU;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Game.getNeutralCivilization());
        ((Civilization) arrayList.get(0)).iCivID = 0;
        try {
            FileHandle fileHandleLoadFile = (Game.settingsManager.LANGUAGE_TAG == null || Game.settingsManager.LANGUAGE_TAG.length() == 0 || !FileManager.loadFile(new StringBuilder("map/").append(Game.map.getFile_ActiveMap_Path()).append(CFG.FILE_MAP_SCENARIOS).append(this.lScenarios_TagsList.get(Game.scenarioID)).append(str).append(Game.settingsManager.LANGUAGE_TAG).append(".json").toString()).exists()) ? FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(Game.scenarioID) + "/Data.json") : FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(Game.scenarioID) + str + Game.settingsManager.LANGUAGE_TAG + ".json");
            Json json = new Json();
            ArrayList arrayList2 = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            int i = 1;
            for (Iterator it = arrayList2.iterator(); it.hasNext(); it = it) {
                ScenarioCivData scenarioCivData = (ScenarioCivData) json.readValue(ScenarioCivData.class, (JsonValue) it.next());
                Game.LoadCivilizationData loadCivilizationDataLoadCivilization = Game.loadCivilization(scenarioCivData.CivTAG);
                arrayList.add(new Civilization(i, scenarioCivData.CivTAG, scenarioCivData.PCID, loadCivilizationDataLoadCivilization.iR, loadCivilizationDataLoadCivilization.iG, loadCivilizationDataLoadCivilization.iB, scenarioCivData.CPID, loadCivilizationDataLoadCivilization.ReligionID, loadCivilizationDataLoadCivilization.GroupID, true));
                ((Civilization) arrayList.get(i)).scenarioEditorData = scenarioCivData;
                i++;
                json = json;
            }
            arrayList2.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            this.sActiveScenarioTag = this.lScenarios_TagsList.get(Game.scenarioID);
        } catch (Exception unused) {
            this.sActiveScenarioTag = "";
        }
        return arrayList;
    }

    public final void loadCivilizationsProvinces() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(Game.scenarioID) + "/DataProvinces.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                ScenarioCivData_Provinces scenarioCivData_Provinces = (ScenarioCivData_Provinces) json.readValue(ScenarioCivData_Provinces.class, (JsonValue) it.next());
                int length = scenarioCivData_Provinces.Provinces.length;
                for (int i2 = 0; i2 < length; i2++) {
                    Game.getProvince(scenarioCivData_Provinces.Provinces[i2]).setCivID_LoadScenario(i);
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void loadCores() {
        try {
            if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(Game.scenarioID) + "/Cores.json").exists()) {
                FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(Game.scenarioID) + "/Cores.json");
                Json json = new Json();
                ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ScenarioCoresData scenarioCoresData = (ScenarioCoresData) json.readValue(ScenarioCoresData.class, (JsonValue) it.next());
                    if (scenarioCoresData.id >= 0 && scenarioCoresData.id < Game.getProvincesSize()) {
                        Game.getProvince(scenarioCoresData.id).clearCores();
                        for (int i = 0; i < scenarioCoresData.Cores.size(); i++) {
                            if (scenarioCoresData.Cores.get(i).intValue() > 0 && scenarioCoresData.Cores.get(i).intValue() < Game.getCivsSize()) {
                                Game.getProvince(scenarioCoresData.id).addCore_Just(scenarioCoresData.Cores.get(i).intValue());
                            }
                        }
                    }
                }
                arrayList.clear();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void loadPreviews() {
        if (this.lScenarios_Preview.size() > 0) {
            for (int i = 0; i < this.lScenarios_Preview.size(); i++) {
                this.lScenarios_Preview.get(i).dispose();
                this.lScenarios_Preview.set(i, null);
            }
            this.lScenarios_Preview.clear();
        }
        for (int i2 = 0; i2 < this.lScenarios_TagsList.size(); i2++) {
            try {
                if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(i2) + "/" + CFG.FILE_MAP_SCENARIO_PREVIEW_MAIN).exists()) {
                    this.lScenarios_Preview.add(new Image(ImageManager.loadTexture_RGB888("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(i2) + "/" + CFG.FILE_MAP_SCENARIO_PREVIEW_MAIN), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                } else {
                    this.lScenarios_Preview.add(new Image(ImageManager.loadTexture_RGB888("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(i2) + "/" + IlLkpaQxs.XAXgovSeb), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public final void loadReligions(boolean z) {
        String str = qIuEvFbUtcea.kRlRaZvVso;
        try {
            loadReligions_JustBuild(z);
            FileHandle fileHandleLoadFile = FileManager.loadFile(str + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(Game.scenarioID) + "/Religions.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ScenarioReligionData scenarioReligionData = (ScenarioReligionData) json.readValue(ScenarioReligionData.class, (JsonValue) it.next());
                if (scenarioReligionData.id >= 0 && scenarioReligionData.id < Game.getProvincesSize()) {
                    Game.getProvince(scenarioReligionData.id).setReligion(scenarioReligionData.rel);
                    if (!z && Game.getProvince(scenarioReligionData.id).isCapital && Game.getProvince(scenarioReligionData.id).getCivID() > 0 && Game.getCiv(Game.getProvince(scenarioReligionData.id).getCivID()).getCapitalProvinceID() == scenarioReligionData.id) {
                        Game.getCiv(Game.getProvince(scenarioReligionData.id).getCivID()).setReligionID_UpdateBonuses(scenarioReligionData.rel);
                    }
                    if (z) {
                        this.editorProvinceReligion.set(scenarioReligionData.id, Integer.valueOf(scenarioReligionData.rel));
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void loadReligions_JustBuild(boolean z) {
        if (z) {
            this.editorProvinceReligion.clear();
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                this.editorProvinceReligion.add(-1);
            }
        }
    }

    public final void loadScenarioCharacters(boolean z) {
        if (z) {
            return;
        }
        try {
            if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(Game.scenarioID) + "/Characters.json").exists()) {
                FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(Game.scenarioID) + "/Characters.json");
                Json json = new Json();
                ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    try {
                        CharactersManager.ScenarioCharacters scenarioCharacters = (CharactersManager.ScenarioCharacters) json.readValue(CharactersManager.ScenarioCharacters.class, (JsonValue) it.next());
                        int civID = Game.getCivID(scenarioCharacters.CivTAG);
                        if (civID > 0) {
                            if (scenarioCharacters.Administrative != null && scenarioCharacters.Administrative.length() > 0) {
                                CharactersManager.loadAdvisor(civID, scenarioCharacters.Administrative, 0);
                            }
                            if (scenarioCharacters.Economic != null && scenarioCharacters.Economic.length() > 0) {
                                CharactersManager.loadAdvisor(civID, scenarioCharacters.Economic, 1);
                            }
                            if (scenarioCharacters.Innovation != null && scenarioCharacters.Innovation.length() > 0) {
                                CharactersManager.loadAdvisor(civID, scenarioCharacters.Innovation, 2);
                            }
                            if (scenarioCharacters.Military != null && scenarioCharacters.Military.length() > 0) {
                                CharactersManager.loadAdvisor(civID, scenarioCharacters.Military, 3);
                            }
                            if (scenarioCharacters.Generals != null && scenarioCharacters.Generals.length > 0) {
                                for (int length = scenarioCharacters.Generals.length - 1; length >= 0; length--) {
                                    if (scenarioCharacters.Generals[length].length() > 0) {
                                        CharactersManager.loadGeneral(civID, scenarioCharacters.Generals[length], -99, -99);
                                    }
                                }
                            }
                        }
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
                arrayList.clear();
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void loadScenario_1() {
        MainMenu.canContinue = false;
        loadScenario_1_ClearData();
        Game_Calendar.updateManpowerImg();
        Game_Calendar.updateAge(false);
        this.scenarioEditor_isCampaign = this.details.get(Game.scenarioID).Campaign;
        Details details = new Details();
        scenarioEditorDetails = details;
        details.CivDefault_Gold = this.details.get(Game.scenarioID).CivDefault_Gold;
        scenarioEditorDetails.CivDefault_GoldRandom = this.details.get(Game.scenarioID).CivDefault_GoldRandom;
        scenarioEditorDetails.CivDefault_Legacy = this.details.get(Game.scenarioID).CivDefault_Legacy;
        scenarioEditorDetails.CivDefault_LegacyRandom = this.details.get(Game.scenarioID).CivDefault_LegacyRandom;
        scenarioEditorDetails.CivDefault_ManpowerPercentage = this.details.get(Game.scenarioID).CivDefault_ManpowerPercentage;
        scenarioEditorDetails.CivDefault_Technology = this.details.get(Game.scenarioID).CivDefault_Technology;
        scenarioEditorDetails.HoursPerTurn = this.details.get(Game.scenarioID).HoursPerTurn;
        scenarioEditorDetails.ProvinceDefault_Population = this.details.get(Game.scenarioID).ProvinceDefault_Population;
        scenarioEditorDetails.ProvinceDefault_Economy = this.details.get(Game.scenarioID).ProvinceDefault_Economy;
        scenarioEditorDetails.ProvinceDefault_TaxEfficiency = this.details.get(Game.scenarioID).ProvinceDefault_TaxEfficiency;
        scenarioEditorDetails.ProvinceDefault_Manpower = this.details.get(Game.scenarioID).ProvinceDefault_Manpower;
        Game.SCENARIO_EVENTS = true;
        Game.HOURS_PER_TURN = Math.max(1, Math.min(24, this.details.get(Game.scenarioID).HoursPerTurn));
    }

    public final void loadScenario_10() {
        RulersManager.loadRulers(1, (int) Math.floor(Game.getCivsSize() / 2.0f));
    }

    public final void loadScenario_11() {
        RulersManager.loadRulers((int) Math.floor(Game.getCivsSize() / 2.0f), Game.getCivsSize());
    }

    public final void loadScenario_12() {
        Game.addSimpleTask(new AnonymousClass1("buildCivilizationsRegions"));
        AdvantagesManager.initRandomAdvantages();
        AdvantagesManager.initAdvantagePoints();
    }

    public final void loadScenario_13() {
        buildProvincesReligion();
    }

    public final void loadScenario_14() {
        buildProvincesCores();
    }

    public final void loadScenario_15() {
        LoadManager.loadScenarioArmies();
    }

    public final void loadScenario_16() {
        buildProvincesEconomy();
    }

    public final void loadScenario_17() {
        buildProvincesTaxEfficiency();
    }

    public final void loadScenario_18() {
        buildProvincesManpower();
    }

    public final void loadScenario_19() {
        buildCivsGovernmentBuildings();
    }

    public final void loadScenario_1_ClearData() {
        Game.disposeCivilizations();
        Game.clearAllianceSpecial();
        Game_Calendar.TURN_ID = 1;
        Game_Calendar.HOUR = 0;
        Game_Calendar.currentDay = this.details.get(Game.scenarioID).Day;
        Game_Calendar.currentMonth = this.details.get(Game.scenarioID).Month;
        Game_Calendar.currentYear = this.details.get(Game.scenarioID).Year;
        Game_Calendar.CURRENT_AGEID = Game.gameAges.getAgeOfYear(Game_Calendar.currentYear);
    }

    public final void loadScenario_2() {
        loadWasteland();
    }

    public final void loadScenario_20() {
        LoadManager.loadScenarioBuildings();
    }

    public final void loadScenario_21() {
        buildProvinceData();
    }

    public final void loadScenario_22() {
        buildCivData();
    }

    public final void loadScenario_23() {
        loadCores();
    }

    public final void loadScenario_24() {
        buildProvincesPopulation();
    }

    public final void loadScenario_25(boolean z) {
        loadReligions(z);
    }

    public final void loadScenario_26() {
        buildCivsGold();
    }

    public final void loadScenario_27() {
        buildCivsManpower();
    }

    public final void loadScenario_28() {
        ResourcesManager.updateWorldResourcesProduced(true);
    }

    public final void loadScenario_29() {
        ResourcesManager.initUniqueCivsGoods();
        Game.buildDistanceToCapital();
    }

    public final void loadScenario_3(boolean z) {
        Game.lCivs = loadCivilizations(z);
        Game.iCivsSize = Game.lCivs.size();
        if (z) {
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                Game.getProvince(i).fogDrawArmy = true;
            }
        }
    }

    public final void loadScenario_30() {
        LoadManager.loadScenarioRelations();
    }

    public final void loadScenario_31() {
        LoadManager.loadScenarioMilitaryAccess();
    }

    public final void loadScenario_32() {
        LoadManager.loadScenarioAlliances();
    }

    public final void loadScenario_33() {
        LoadManager.loadScenarioDefensive();
    }

    public final void loadScenario_34() {
        LoadManager.loadScenarioTruces();
    }

    public final void loadScenario_35() {
        LoadManager.loadScenarioNonAggression();
    }

    public final void loadScenario_36(boolean z) {
        if (z) {
            return;
        }
        buildStartingRelationsRandom();
    }

    public final void loadScenario_37() {
        LoadManager.loadScenarioGuarantee();
    }

    public final void loadScenario_38(boolean z) {
        loadScenarioCharacters(z);
    }

    public final void loadScenario_39(boolean z) {
    }

    public final void loadScenario_3_A() {
        for (int i = 1; i < Game.iCivsSize; i++) {
            Game.getCiv(i).loadScenario_A();
        }
    }

    public final void loadScenario_3_B() {
        for (int i = 1; i < Game.iCivsSize; i++) {
            Game.getCiv(i).loadScenario_B();
        }
    }

    public final void loadScenario_3_C() {
        loadCivilizationsProvinces();
    }

    public final void loadScenario_4() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).buildTechTree();
        }
    }

    public final void loadScenario_40(boolean z) {
        if (z) {
            return;
        }
        buildStartingAdvisors(1, (int) Math.floor(Game.getCivsSize() / 2.0f));
    }

    public final void loadScenario_41(boolean z) {
        if (z) {
            return;
        }
        buildStartingAdvisors((int) Math.floor(Game.getCivsSize() / 2.0f), Game.getCivsSize());
    }

    public final void loadScenario_42() {
        LoadManager.loadScenarioAlliancesSpecial();
        Game.loadAlliancesSpecial_Images();
    }

    public final void loadScenario_43() {
        buildAlliancesSpecial();
    }

    public final void loadScenario_44() {
        buildManpower();
    }

    public final void loadScenario_45() {
        CivilizationRanking.buildCivilizationRanking();
    }

    public final void loadScenario_46() {
    }

    public final void loadScenario_47() {
        Game.mapCities.updateCities();
    }

    public final void loadScenario_48() {
        Game.addSimpleTask(new AnonymousClass2("loadScenario_48"));
    }

    public final void loadScenario_49(boolean z) {
        if (z) {
            return;
        }
        buildStartingGenerals(1, (int) Math.floor(Game.getCivsSize() / 2.0f));
    }

    public final void loadScenario_5() {
        Game.buildProvinceIsCapital();
    }

    public final void loadScenario_50(boolean z) {
        if (z) {
            return;
        }
        buildStartingGenerals((int) Math.floor(Game.getCivsSize() / 2.0f), Game.getCivsSize());
    }

    public final void loadScenario_51(boolean z) {
        if (z) {
            return;
        }
        buildStartingArmy();
    }

    public final void loadScenario_52() {
        buildArmyPosition();
    }

    public final void loadScenario_53() {
        buildCivsStability();
    }

    public final void loadScenario_54() {
        buildCivsLegacy_Nukes_Aggressiveness();
    }

    public final void loadScenario_55() {
        buildIncome();
    }

    public final void loadScenario_56() {
        initCivilizations_ConvertReligion();
        initCivilizations_NonCore();
    }

    public final void loadScenario_57() {
        initCivilizations_ArmiesWithoutGenerals();
    }

    public final void loadScenario_58() {
        updateUQ_UI();
        buildCivsColors();
    }

    public final void loadScenario_59() {
        EventsManager.clearEventsScenario();
        EventsManager.loadEvents_Scenario();
    }

    public final void loadScenario_6() {
        Game.initProvinceData();
    }

    public final void loadScenario_60() {
        buildCivsNeighbors();
    }

    public final void loadScenario_61() {
    }

    public final void loadScenario_62(boolean z) {
        if (z) {
            return;
        }
        FormableCivManager.buildFormableCivilizations();
        Game.player.loadFormableCivs();
        InGame_Court_Government.reloadFlags = true;
    }

    public final void loadScenario_63() {
    }

    public final void loadScenario_64() {
        MissionTree.loadMissions_Civs();
    }

    public final void loadScenario_7() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            for (int i2 = 0; i2 < Game.getProvince(i).getProvinceBordersLandByLandSize(); i2++) {
                Game.getProvince(i).getProvinceBordersLandByLand().get(i2).setIsCivilizationBorder(Game.getProvince(i).getCivID() != Game.getProvince(Game.getProvince(i).getProvinceBordersLandByLand().get(i2).getWithProvinceID()).getCivID(), i);
            }
            if (Game.getProvince(i).getCivID() > 0) {
                Game.getCiv(Game.getProvince(i).getCivID()).addProvince_LoadScenario(i);
            }
        }
        for (int i3 = 0; i3 < Game.getCivsSize(); i3++) {
            Game.getCiv(i3).updateNumOfProvinces();
        }
    }

    public final void loadScenario_8() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).diplomacy = new Diplomacy();
            Game.getCiv(i).fDiplomacy = GameValues.diplomacy.STARTING_DIPLOMACY_POINTS;
        }
    }

    public final void loadScenario_9() {
        Game.buildWastelandLevels();
    }

    public final void loadScenarios(boolean z) {
        int i;
        int i2;
        FileHandle fileHandleAbsolute;
        FileHandle fileHandleAbsolute2;
        if (!z) {
            clearScenarios();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (CFG.isDesktop()) {
            try {
                if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS_FILE).exists()) {
                    String[] strArrSplit = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS_FILE).readString().split(";");
                    int length = strArrSplit.length;
                    for (int i3 = 0; i3 < length; i3++) {
                        Json json = new Json();
                        int i4 = 0;
                        while (true) {
                            if (i4 >= SteamManager.modsFoldersSize) {
                                fileHandleAbsolute2 = null;
                                break;
                            }
                            if (FileManager.IS_MAC) {
                                if (Gdx.files.external(SteamManager.modsFolders.get(i4) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + strArrSplit[i3] + "/Details.json").exists()) {
                                    fileHandleAbsolute2 = Gdx.files.external(SteamManager.modsFolders.get(i4) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + strArrSplit[i3] + "/Details.json");
                                    break;
                                }
                                i4++;
                            } else {
                                if (Gdx.files.internal(SteamManager.modsFolders.get(i4) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + strArrSplit[i3] + "/Details.json").exists()) {
                                    fileHandleAbsolute2 = Gdx.files.internal(SteamManager.modsFolders.get(i4) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + strArrSplit[i3] + "/Details.json");
                                    break;
                                }
                                i4++;
                            }
                        }
                        if (fileHandleAbsolute2 == null) {
                            for (int i5 = 0; i5 < SteamManager.itemsInstalledSize; i5++) {
                                if (Gdx.files.absolute(SteamManager.itemsInstalled.get(i5).getFolder() + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + strArrSplit[i3] + "/Details.json").exists()) {
                                    fileHandleAbsolute2 = Gdx.files.absolute(SteamManager.itemsInstalled.get(i5).getFolder() + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + strArrSplit[i3] + "/Details.json");
                                    break;
                                }
                            }
                        }
                        FileHandle fileHandleLoadFile = fileHandleAbsolute2;
                        if (fileHandleLoadFile == null) {
                            try {
                                fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + strArrSplit[i3] + "/Details.json");
                            } catch (Exception e) {
                                CFG.exceptionStack(e);
                            }
                        }
                        if (fileHandleLoadFile != null && fileHandleLoadFile.exists()) {
                            arrayList.add(strArrSplit[i3]);
                            arrayList2.add((Details) json.fromJson(Details.class, fileHandleLoadFile));
                        }
                    }
                }
                int size = arrayList.size();
                for (FileHandle fileHandle : FileManager.IS_MAC ? Gdx.files.external("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS).list() : Gdx.files.internal("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS).list()) {
                    if (!arrayList.contains(fileHandle.name())) {
                        arrayList.add(fileHandle.name());
                    }
                }
                for (int i6 = 0; i6 < SteamManager.modsFoldersSize; i6++) {
                    for (FileHandle fileHandle2 : FileManager.IS_MAC ? Gdx.files.external(SteamManager.modsFolders.get(i6) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS).list() : Gdx.files.internal(SteamManager.modsFolders.get(i6) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS).list()) {
                        if (!arrayList.contains(fileHandle2.name())) {
                            arrayList.add(fileHandle2.name());
                        }
                    }
                }
                for (int i7 = 0; i7 < SteamManager.itemsInstalledSize; i7++) {
                    for (FileHandle fileHandle3 : Gdx.files.absolute(SteamManager.itemsInstalled.get(i7).getFolder() + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS).list()) {
                        if (!arrayList.contains(fileHandle3.name())) {
                            arrayList.add(fileHandle3.name());
                        }
                    }
                }
                int size2 = arrayList.size();
                int i8 = size;
                while (i8 < size2) {
                    try {
                        Json json2 = new Json();
                        int i9 = 0;
                        while (true) {
                            if (i9 >= SteamManager.modsFoldersSize) {
                                fileHandleAbsolute = null;
                                break;
                            }
                            if (FileManager.IS_MAC) {
                                if (Gdx.files.external(SteamManager.modsFolders.get(i9) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ((String) arrayList.get(i8)) + "/Details.json").exists()) {
                                    fileHandleAbsolute = Gdx.files.external(SteamManager.modsFolders.get(i9) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ((String) arrayList.get(i8)) + "/Details.json");
                                    break;
                                }
                                i9++;
                            } else {
                                if (Gdx.files.internal(SteamManager.modsFolders.get(i9) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ((String) arrayList.get(i8)) + "/Details.json").exists()) {
                                    CFG.LOG("" + SteamManager.modsFolders.get(i9) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ((String) arrayList.get(i8)) + "/Details.json");
                                    fileHandleAbsolute = Gdx.files.internal(SteamManager.modsFolders.get(i9) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ((String) arrayList.get(i8)) + "/Details.json");
                                    break;
                                }
                                i9++;
                            }
                            i8 += i2;
                        }
                        if (fileHandleAbsolute == null) {
                            for (int i10 = 0; i10 < SteamManager.itemsInstalledSize; i10++) {
                                if (Gdx.files.absolute(SteamManager.itemsInstalled.get(i10).getFolder() + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ((String) arrayList.get(i8)) + "/Details.json").exists()) {
                                    fileHandleAbsolute = Gdx.files.absolute(SteamManager.itemsInstalled.get(i10).getFolder() + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ((String) arrayList.get(i8)) + "/Details.json");
                                    break;
                                }
                            }
                        }
                        FileHandle fileHandleLoadFile2 = fileHandleAbsolute;
                        if (fileHandleLoadFile2 == null) {
                            try {
                                fileHandleLoadFile2 = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ((String) arrayList.get(i8)) + "/Details.json");
                            } catch (Exception e2) {
                                CFG.exceptionStack(e2);
                            }
                        }
                        if (fileHandleLoadFile2 != null && fileHandleLoadFile2.exists()) {
                            arrayList2.add((Details) json2.fromJson(Details.class, fileHandleLoadFile2));
                        }
                        i2 = 1;
                    } catch (Exception e3) {
                        int i11 = i8 - 1;
                        arrayList.remove(i8);
                        int size3 = arrayList.size();
                        CFG.exceptionStack(e3);
                        i2 = 1;
                        size2 = size3;
                        i8 = i11;
                    }
                    i8 += i2;
                }
                i = 1;
            } catch (Exception e4) {
                i = 1;
                CFG.exceptionStack(e4);
            }
        } else {
            i = 1;
            String[] strArrSplit2 = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS_FILE).readString().split(";");
            int length2 = strArrSplit2.length;
            for (int i12 = 0; i12 < length2; i12++) {
                try {
                    Json json3 = new Json();
                    FileHandle fileHandleLoadFile3 = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + strArrSplit2[i12] + "/Details.json");
                    arrayList.add(strArrSplit2[i12]);
                    arrayList2.add((Details) json3.fromJson(Details.class, fileHandleLoadFile3));
                } catch (Exception e5) {
                    CFG.exceptionStack(e5);
                }
            }
        }
        while (arrayList.size() > 0) {
            int i13 = 0;
            for (int i14 = i; i14 < arrayList.size(); i14++) {
                if (((Details) arrayList2.get(i13)).Year < ((Details) arrayList2.get(i14)).Year) {
                    i13 = i14;
                }
            }
            this.lScenarios_TagsList.add((String) arrayList.get(i13));
            arrayList.remove(i13);
            this.details.add((Details) arrayList2.get(i13));
            arrayList2.remove(i13);
        }
        this.SCENARIOS_SIZE = this.lScenarios_TagsList.size();
        if (z) {
            Game.updateDaultScenarioID();
        }
        loadPreviews();
        arrayList.clear();
        arrayList2.clear();
    }

    public final void loadWasteland() {
        try {
            if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(Game.scenarioID) + "/Wasteland.txt").exists()) {
                String string = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + this.lScenarios_TagsList.get(Game.scenarioID) + "/Wasteland.txt").readString();
                if (string.length() > 0) {
                    for (String str : string.split(";")) {
                        Game.getProvince(Integer.parseInt(str)).setWasteland(0);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void saveScenario_1() {
        Details details = new Details();
        details.Name = ScenarioSettings.sName;
        details.Author = ScenarioSettings.sAuthor;
        details.Day = Game_Calendar.currentDay;
        details.Month = Game_Calendar.currentMonth;
        details.Year = Game_Calendar.currentYear;
        details.Civs = Game.getCivsSize() - 1;
        details.Age = Game.gameAges.getAgeOfYear(Game_Calendar.currentYear);
        details.Campaign = this.scenarioEditor_isCampaign;
        details.CivDefault_Gold = scenarioEditorDetails.CivDefault_Gold;
        details.CivDefault_GoldRandom = scenarioEditorDetails.CivDefault_GoldRandom;
        details.CivDefault_Legacy = scenarioEditorDetails.CivDefault_Legacy;
        details.CivDefault_LegacyRandom = scenarioEditorDetails.CivDefault_LegacyRandom;
        details.CivDefault_ManpowerPercentage = scenarioEditorDetails.CivDefault_ManpowerPercentage;
        details.CivDefault_Technology = scenarioEditorDetails.CivDefault_Technology;
        details.HoursPerTurn = scenarioEditorDetails.HoursPerTurn;
        details.ProvinceDefault_Population = scenarioEditorDetails.ProvinceDefault_Population;
        details.ProvinceDefault_Economy = scenarioEditorDetails.ProvinceDefault_Economy;
        details.ProvinceDefault_TaxEfficiency = scenarioEditorDetails.ProvinceDefault_TaxEfficiency;
        details.ProvinceDefault_Manpower = scenarioEditorDetails.ProvinceDefault_Manpower;
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/Details.json").writeString(SaveManager.getJson().prettyPrint(details), false);
    }

    public final void saveScenario_10() {
        SaveManager.saveScenarioBuildings();
    }

    public final void saveScenario_11() {
        SaveManager.saveScenariosList();
    }

    public final void saveScenario_12() {
        SaveManager.saveScenarioAlliances();
    }

    public final void saveScenario_13() {
        SaveManager.saveScenarioRelations();
    }

    public final void saveScenario_14() {
    }

    public final void saveScenario_15() {
        SaveManager.saveScenarioGuarantee();
    }

    public final void saveScenario_16() {
        SaveManager.saveScenarioDefensive();
    }

    public final void saveScenario_17() {
    }

    public final void saveScenario_18() {
        SaveManager.saveScenarioMilitaryAccess();
    }

    public final void saveScenario_19() {
        SaveManager.saveScenarioNonAggression();
    }

    public final void saveScenario_2() {
    }

    public final void saveScenario_20() {
        SaveManager.saveScenarioTruces();
    }

    public final void saveScenario_21() {
    }

    public final void saveScenario_22() {
        SaveManager.saveScenarioAlliancesSpecial();
    }

    public final void saveScenario_23() {
        SaveManager.saveScenarioCores();
    }

    public final void saveScenario_24() {
    }

    public final void saveScenario_25() {
        SaveManager.saveScenarioReligion();
        Game.mapScenarios.editorProvinceReligion.clear();
    }

    public final void saveScenario_3() {
        SaveManager.saveScenarioDetails();
    }

    public final void saveScenario_4() {
    }

    public final void saveScenario_5() {
        SaveManager.saveScenarioDetailsProvinces();
    }

    public final void saveScenario_6() {
        saveWasteland();
    }

    public final void saveScenario_7() {
    }

    public final void saveScenario_8() {
        SaveManager.saveScenarioArmies();
    }

    public final void saveScenario_9() {
    }

    public final void saveWasteland() {
        FileHandle saveType = FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/Wasteland.txt");
        saveType.writeString("", false);
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getWasteland() >= 0) {
                saveType.writeString(i + ";", true);
            }
        }
    }
}
