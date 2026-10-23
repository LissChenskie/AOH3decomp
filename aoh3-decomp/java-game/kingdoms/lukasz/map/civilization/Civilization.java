package aoc.kingdoms.lukasz.map.civilization;

import aoc.kingdoms.lukasz.jakowski.AI.AI_Civ;
import aoc.kingdoms.lukasz.jakowski.AI.AI_CivDiplomacy;
import aoc.kingdoms.lukasz.jakowski.AI.AI_Civ_CreateNewArmy;
import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_Merge;
import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_MoveNoConnection;
import aoc.kingdoms.lukasz.jakowski.AI.Technology.AI_UnlockedTechnology;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Missions.Mission;
import aoc.kingdoms.lukasz.jakowski.Missions.MissionTree;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;
import aoc.kingdoms.lukasz.map.AdvantagesManager;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.ColonizationManager;
import aoc.kingdoms.lukasz.map.LawsManager;
import aoc.kingdoms.lukasz.map.LegacyManager;
import aoc.kingdoms.lukasz.map.Loan;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.Ruler;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.map.advisors.Advisor;
import aoc.kingdoms.lukasz.map.allianceHRE.HREManager;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyGeneral;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.army.ArmyPosition;
import aoc.kingdoms.lukasz.map.army.ArmyRecruit;
import aoc.kingdoms.lukasz.map.army.ArmyRegiment;
import aoc.kingdoms.lukasz.map.civilization.data.Civilization_ArmiesWithoutGenerals;
import aoc.kingdoms.lukasz.map.civilization.data.Civilization_ConvertReligion;
import aoc.kingdoms.lukasz.map.civilization.data.Civilization_Cores;
import aoc.kingdoms.lukasz.map.civilization.save.CivData;
import aoc.kingdoms.lukasz.map.civilization.save.CivData3;
import aoc.kingdoms.lukasz.map.civilization.save.CivData4;
import aoc.kingdoms.lukasz.map.civilization.stats.CivilizationEventsData;
import aoc.kingdoms.lukasz.map.civilization.stats.CivilizationEventsData2;
import aoc.kingdoms.lukasz.map.civilization.stats.CivilizationEventsData3;
import aoc.kingdoms.lukasz.map.diplomacy.Diplomacy;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.diplomacy.Vassal;
import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.map.moveUnits.MoveUnits;
import aoc.kingdoms.lukasz.map.moveUnits.MoveUnits_Player;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceInvest;
import aoc.kingdoms.lukasz.map.technology.TechnologyResearch;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.InGame_Generals;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyChoose;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyTree;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Civilization {
    public float aiScore;
    private float fB;
    private float fG;
    private float fR;
    public int iArmyImgID;
    public int iArmyRecruitSize;
    public int iArmyRecruitSize_Total;
    private int iB;
    public int iCivID;
    public int iCivNameHeight;
    public int iCivNameWidth;
    private int iCivRegionsSize;
    private int iG;
    public int iGroupID;
    private int iMoveUnitsSize;
    private int iNumOfProvinces;
    private int iR;
    public boolean isPlayerAlly;
    public List<String> lCivNameChars;
    public String realTag;
    public Ruler ruler;
    public String sCivName;
    public String sCivName_UpperCase;
    public CivData civData = new CivData();
    public CivData3 civData3 = new CivData3();
    public CivData4 civData4 = new CivData4();
    public CivilizationEventsData eventsData = new CivilizationEventsData();
    public CivilizationEventsData2 eventsData2 = new CivilizationEventsData2();
    public CivilizationEventsData3 eventsData3 = new CivilizationEventsData3();
    public CivilizationEventsData_Variables eventsDataVariables = new CivilizationEventsData_Variables();
    public CivilizationGoldenAge goldenAge = new CivilizationGoldenAge();
    public int eventProvinceID = -1;
    public float fGold = 0.0f;
    public float fLegacy = 0.0f;
    public double fManpower = 0.0d;
    public float fDiplomacy = 0.0f;
    public Diplomacy diplomacy = new Diplomacy();
    public int iCivRankID = 0;
    public int iCivRankPosition = MissionTree.MISSION_TYPE_ID;
    public float iCivRankScore = 0.0f;
    public float iCivRankScoreArmy = 0.0f;
    public int iIdeologyID = 0;
    public int iRegiments = 0;
    public int iRegimentsLimit = 0;
    public int iUniqueResources = 0;
    public boolean haveAccessSea = false;
    public boolean canAccessSea = false;
    public boolean canColonize = false;
    public boolean canBuildNuke = false;
    public List<ProvinceInvest> nukesDaysLeft = new ArrayList();
    public int iNukesSize = 0;
    private List<CivilizationLegacy> legacies = new ArrayList();
    private int iLegaciesSize = 0;
    public List<MoveUnits> lMoveUnits = Collections.synchronizedList(new ArrayList());
    public ArrayList<ArrayList<ArmyRecruit>> lArmyRecruit = new ArrayList<>();
    public ConcurrentHashMap<String, Integer> lCreateNewArmy = new ConcurrentHashMap<>();
    private List<ArmyGeneral> lGeneralsNotAssigned = Collections.synchronizedList(new ArrayList());
    public int iGeneralsSize = 0;
    public float civStability_LostFrom100 = 0.0f;
    private List<Integer> lProvinces = new ArrayList();
    public Advisor advisorAdministration = new Advisor();
    public Advisor advisorEconomy = new Advisor();
    public Advisor advisorTechnology = new Advisor();
    public Advisor advisorMilitary = new Advisor();
    public int iAlternativeTechResearch = -1;
    public List<Mission> lMissions = new ArrayList();
    public int iMissionsSize = 0;
    public CivilizationsNeighbors civNeighbors = new CivilizationsNeighbors();
    public AI_Civ aiCiv = new AI_Civ();
    public AI_CivDiplomacy aiCivDiplomacy = new AI_CivDiplomacy();
    public AI_Civ_CreateNewArmy aiCivCreateNewArmy = new AI_Civ_CreateNewArmy();
    public AI_Merge aiMerge = new AI_Merge();
    public int aiUpdateID = 0;
    public AI_MoveNoConnection noConnectionMoveUnits = new AI_MoveNoConnection();
    public List<String> inBattles = new ArrayList();
    public List<Integer> underSiege = new ArrayList();
    public int underSiegeSize = 0;
    public List<Integer> occupiedProvinces = new ArrayList();
    public int occupiedProvincesSize = 0;
    public Civilization_ConvertReligion convertReligion = new Civilization_ConvertReligion();
    public Civilization_Cores civilizationCores = new Civilization_Cores();
    public Civilization_ArmiesWithoutGenerals armiesWithoutGenerals = new Civilization_ArmiesWithoutGenerals();
    public float fTotalIncomePerMonth = 0.0f;
    public float fTotalExpensesPerMonth = 0.0f;
    public float fArmyMaintenance = 0.0f;
    public float fIncomeLord = 0.0f;
    public float fExpenseVassal = 0.0f;
    public float fProsperity_AverageEconomy = 0.0f;
    public float fLoansCost = 0.0f;
    public List<Loan> loans = new ArrayList();
    public int iLoansSize = 0;
    public float fLegacyPerMonth = 0.0f;
    public double fManpowerMax = 0.0d;
    public double fManpowerPerMonth = 0.0d;
    public double fManpowerMax_ToLord = 0.0d;
    public float fResearchPerMonth = 0.0f;
    public float fDiplomacyMax = 0.0f;
    private float fDiplomacyPerMonth = 0.0f;
    public List<Integer> inAlliance = new ArrayList();
    public int inAllianceSize = 0;
    public CivilizationBonuses civBonuses = new CivilizationBonuses();
    public List<CivilizationBonuses> civBonusesTemporary = new ArrayList();
    public int iCivBonusesTemporarySize = 0;
    public List<Integer> colonizationProvince = new ArrayList();
    public int iColonizationProvinceSize = 0;
    public List<Boolean> lTechResearched = new ArrayList();
    public List<TechnologyResearch> lResearching = new ArrayList();
    public List<CivilizationLegacy> lAdvantages = new ArrayList();
    public int iAdvantagesSize = 0;
    private List<TechnologyTree.Building> unlockedBuildings = new ArrayList();
    private List<TechnologyTree.Unit> unlockedUnits = new ArrayList();
    public List<TechnologyTree.Unit> unitsBest = new ArrayList();
    public List<TechnologyTree.Unit> unitsBest_FirstLine = new ArrayList();
    public List<TechnologyTree.Unit> unitsBest_Flank = new ArrayList();
    public List<TechnologyTree.Unit> unitsBest_Support = new ArrayList();
    public List<TechnologyTree.Unit> unitsBest_Siege = new ArrayList();
    public int unitsBestSize = 0;
    public int unitsBest_FirstLineSize = 0;
    public int unitsBest_FlankSize = 0;
    public int unitsBest_SupportSize = 0;
    public int unitsBest_SiegeSize = 0;
    public List<Integer> laws = new ArrayList();
    public List<Integer> goodsProduced = new ArrayList();
    public int largestProducerNum = 0;
    public List<String> sTagsCanForm = new ArrayList();
    public List<ArmyPosition> armyPosition = Collections.synchronizedList(new ArrayList());
    public int iArmyPositionSize = 0;
    public int iCapitalNameWidth = 0;
    public int iCapitalNameHeight = 0;
    public MapScenarios.ScenarioCivData scenarioEditorData = new MapScenarios.ScenarioCivData();
    private Image civFlag = null;
    public int iCivNameLength = 0;
    private List<CivilizationRegion> lCivRegions = new ArrayList();
    private boolean updateRegions = false;
    public float fTotalProvincesValue = 1.0f;
    public boolean warView_ParticipatesInWar = false;
    public boolean warView_IsAggressor = false;
    public boolean isFlagNearest = false;
    public Color civColor = new Color(1.0f, 1.0f, 1.0f, 1.0f);
    public Color civColorMap = new Color(1.0f, 1.0f, 1.0f, 1.0f);
    public Color civColorFog = new Color(1.0f, 1.0f, 1.0f, 1.0f);

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.civilization.Civilization$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            if (Game.menuManager.getVisibleInGame_Generals()) {
                Game.menuManager.rebuildInGame_Generals();
                Game.menuManager.setVisibleInGame_Generals(true);
                InGame_Generals.lTime = 0L;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.civilization.Civilization$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_TechnologyChoose(true, false);
            InGame_TechnologyChoose.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.civilization.Civilization$3, reason: invalid class name */
    class AnonymousClass3 extends Game.SimpleTask {
        AnonymousClass3(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_TechnologyTree(true, false);
            InGame_TechnologyTree.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.civilization.Civilization$4, reason: invalid class name */
    class AnonymousClass4 extends Game.SimpleTask {
        AnonymousClass4(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Buildings2SavePos();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.civilization.Civilization$5, reason: invalid class name */
    class AnonymousClass5 extends Game.SimpleTask {
        AnonymousClass5(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
        }
    }

    public Civilization(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.iGroupID = 0;
        this.isPlayerAlly = false;
        this.iArmyImgID = 0;
        this.civData.t = str;
        this.realTag = Game.ideologiesManager.getRealTag(str);
        setCivName(Game.lang.getCiv(str));
        this.iCivID = i;
        this.civData.p = i2;
        this.civData.c = i6;
        setR(i3);
        setG(i4);
        setB(i5);
        this.civData.r = i7;
        this.iGroupID = i8;
        this.iArmyImgID = Images.army;
        this.isPlayerAlly = false;
        loadFlag();
        updateCivilizationTAG();
        buildLaws();
    }

    public Civilization(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        this.iGroupID = 0;
        this.isPlayerAlly = false;
        this.iArmyImgID = 0;
        this.civData.t = str;
        this.realTag = Game.ideologiesManager.getRealTag(str);
        this.iCivID = i;
        this.civData.p = i2;
        this.civData.c = i6;
        setR(i3);
        setG(i4);
        setB(i5);
        this.civData.r = i7;
        this.iGroupID = i8;
        this.iArmyImgID = Images.army;
        this.isPlayerAlly = false;
    }

    private final void buildCivilizationRegion(int i, int i2) {
        for (int i3 = 0; i3 < Game.getProvince(i).getNeighboringProvincesSize(); i3++) {
            int neighboringProvinces = Game.getProvince(i).getNeighboringProvinces(i3);
            Province province = Game.getProvince(neighboringProvinces);
            if (province.getCivID() == this.iCivID && !province.wasCivRegion && province.getCivRegionID() < 0) {
                province.wasCivRegion = true;
                this.lCivRegions.get(i2).addProvince(neighboringProvinces);
                province.setCivRegionID(i2);
                CivilizationRegionsManager.updateIsProvinceAssigned(neighboringProvinces, true);
                buildCivilizationRegion(neighboringProvinces, i2);
            }
        }
    }

    private final void buildUnlockTechnologies_TechQueue1(int i) {
        if (TechnologyTree.lTechnology.get(i).RequiredTech < 0 || getTechResearched(TechnologyTree.lTechnology.get(i).RequiredTech)) {
            return;
        }
        this.lTechResearched.set(TechnologyTree.lTechnology.get(i).RequiredTech, true);
        buildUnlockTechnologies_TechQueue1(TechnologyTree.lTechnology.get(i).RequiredTech);
        buildUnlockTechnologies_TechQueue2(TechnologyTree.lTechnology.get(i).RequiredTech);
    }

    private final void buildUnlockTechnologies_TechQueue2(int i) {
        if (TechnologyTree.lTechnology.get(i).RequiredTech2 < 0 || Game.getCiv(this.iCivID).getTechResearched(TechnologyTree.lTechnology.get(i).RequiredTech2)) {
            return;
        }
        this.lTechResearched.set(TechnologyTree.lTechnology.get(i).RequiredTech2, true);
        buildUnlockTechnologies_TechQueue1(TechnologyTree.lTechnology.get(i).RequiredTech2);
        buildUnlockTechnologies_TechQueue2(TechnologyTree.lTechnology.get(i).RequiredTech2);
    }

    public final void addAdvantage(int i, int i2) {
        if (haveAdvantage(i, i2)) {
            return;
        }
        if (i2 == 0) {
            this.lAdvantages.add(new CivilizationLegacy(i, i2));
            this.iAdvantagesSize = this.lAdvantages.size();
            return;
        }
        for (int i3 = 0; i3 < this.iAdvantagesSize; i3++) {
            if (this.lAdvantages.get(i3).id == i && this.lAdvantages.get(i3).lvl + 1 >= i2) {
                this.lAdvantages.get(i3).lvl = i2;
            }
        }
    }

    public final void addAggressiveExpansion(float f) {
        setAggressiveExpansion(Math.min(GameValues.aggressiveExpansion.AE_MAX_VALUE, getAggressiveExpansion() + (f * Math.max(0.0f, (this.civBonuses.AggressiveExpansion / 100.0f) + 1.0f))));
    }

    public final void addArmyPosition(int i, String str) {
        try {
            for (int i2 = this.iArmyPositionSize - 1; i2 >= 0; i2--) {
                if (this.armyPosition.get(i2).provinceID == i && this.armyPosition.get(i2).key.equals(str)) {
                    return;
                }
            }
            this.armyPosition.add(new ArmyPosition(i, str));
            this.iArmyPositionSize = this.armyPosition.size();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addCivilizationBonus_Temporary(CivilizationBonuses civilizationBonuses) {
        try {
            updateCivilizationBonuses_Temporary(civilizationBonuses, 1.0f);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        this.civBonusesTemporary.add(civilizationBonuses);
        this.iCivBonusesTemporarySize = this.civBonusesTemporary.size();
    }

    public final void addColonizationProvince(int i) {
        try {
            for (int i2 = this.iColonizationProvinceSize - 1; i2 >= 0; i2--) {
                if (this.colonizationProvince.get(i2).intValue() == i) {
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        this.colonizationProvince.add(Integer.valueOf(i));
        this.iColonizationProvinceSize = this.colonizationProvince.size();
    }

    public final void addGeneral(ArmyGeneral armyGeneral) {
        this.lGeneralsNotAssigned.add(armyGeneral);
        this.iGeneralsSize = this.lGeneralsNotAssigned.size();
    }

    public final void addGold(float f) {
        if (this.fGold < Game.getMaxAmountOfGold(getCivID())) {
            this.fGold = Math.min(Game.getMaxAmountOfGold(getCivID()), this.fGold + f);
        } else if (f < 0.0f) {
            this.fGold += f;
        }
    }

    public final void addGoodsProduced(int i, int i2) {
        try {
            List<Integer> list = this.goodsProduced;
            list.set(i, Integer.valueOf(list.get(i).intValue() + i2));
        } catch (Exception e) {
            CFG.exceptionStack(e);
            initGoodsProduced();
        }
    }

    public final void addInAllianceSpecial(int i) {
        if (this.inAlliance.contains(Integer.valueOf(i))) {
            return;
        }
        this.inAlliance.add(Integer.valueOf(i));
        this.inAllianceSize = this.inAlliance.size();
    }

    public void addInBattles(String str) {
        if (this.inBattles.contains(str)) {
            return;
        }
        this.inBattles.add(str);
        if (this.iCivID == Game.player.iCivID) {
            Game.addSimpleTask(new AnonymousClass5("rebuildInGame_Right"));
        }
    }

    public final void addLegacy(float f) {
        this.fLegacy = Math.max(GameValues.legacy.MIN_LEGACY_POINTS, Math.min(GameValues.legacy.MAX_LEGACY_POINTS, this.fLegacy + f));
    }

    public final boolean addLegacy(int i, int i2) {
        for (int i3 = 0; i3 < this.iLegaciesSize; i3++) {
            if (this.legacies.get(i3).id == i) {
                this.legacies.get(i3).lvl = Math.max(this.legacies.get(i3).lvl, i2);
                return false;
            }
        }
        this.legacies.add(new CivilizationLegacy(i, i2));
        this.iLegaciesSize = this.legacies.size();
        return true;
    }

    public final void addLegacy_Load(int i, int i2) {
        this.legacies.add(new CivilizationLegacy(i, i2));
        this.iLegaciesSize = this.legacies.size();
        while (i2 >= 0) {
            try {
                LegacyManager.updateCivBonuses(i, i2, getCivID(), true);
                i2--;
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void addLoan_Load(Loan loan) {
        this.loans.add(loan);
        this.iLoansSize = this.loans.size();
        this.fLoansCost += loan.fInterestPerMonth;
        this.fTotalExpensesPerMonth += loan.fInterestPerMonth;
    }

    public boolean addNukeProduction() {
        if (getNuclearReactorLevel() < GameValues.atomic.NUCLEAR_REACTOR_LVL_TO_CONSTRUCT_NUKE || this.fGold < Game.getAtomicBombCost(getCivID())) {
            return false;
        }
        Game.getCiv(getCivID()).fGold -= Game.getAtomicBombCost(getCivID());
        int atomicBombProductionTime = Game.getAtomicBombProductionTime(getCivID());
        this.nukesDaysLeft.add(new ProvinceInvest(atomicBombProductionTime, atomicBombProductionTime));
        this.iNukesSize = this.nukesDaysLeft.size();
        Game.gameThreadTurns.addCivsNukes(getCivID());
        return true;
    }

    public void addNukeProduction_Load(int i, int i2) {
        this.nukesDaysLeft.add(new ProvinceInvest(i, i2));
        this.iNukesSize = this.nukesDaysLeft.size();
        Game.gameThreadTurns.addCivsNukes(getCivID());
    }

    public final void addOccupiedProvince(int i) {
        if (this.occupiedProvinces.contains(Integer.valueOf(i))) {
            return;
        }
        this.occupiedProvinces.add(Integer.valueOf(i));
        this.occupiedProvincesSize = this.occupiedProvinces.size();
    }

    public final void addProvince(int i) {
        for (int i2 = 0; i2 < this.iNumOfProvinces; i2++) {
            if (this.lProvinces.get(i2).intValue() == i) {
                return;
            }
        }
        this.lProvinces.add(Integer.valueOf(i));
        updateNumOfProvinces();
        Game.getProvince(i).setCivRegionID(-1);
        this.convertReligion.checkProvince(i, getCivID());
        this.civilizationCores.checkProvince_Full(i, getCivID());
    }

    public final void addProvince_Just(int i) {
        for (int i2 = 0; i2 < this.iNumOfProvinces; i2++) {
            if (this.lProvinces.get(i2).intValue() == i) {
                return;
            }
        }
        this.lProvinces.add(Integer.valueOf(i));
        updateNumOfProvinces();
    }

    public final void addProvince_LoadScenario(int i) {
        for (int i2 = 0; i2 < this.iNumOfProvinces; i2++) {
            if (this.lProvinces.get(i2).intValue() == i) {
                return;
            }
        }
        this.lProvinces.add(Integer.valueOf(i));
        this.iNumOfProvinces = this.lProvinces.size();
    }

    public final void addRecruitArmy_Load(ArmyRecruit armyRecruit) {
        int i = 0;
        while (true) {
            if (i >= this.iArmyRecruitSize) {
                i = -1;
                break;
            } else if (this.lArmyRecruit.get(i).get(0).provinceID == armyRecruit.provinceID) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            this.lArmyRecruit.get(i).add(armyRecruit);
        } else {
            ArrayList<ArmyRecruit> arrayList = new ArrayList<>();
            arrayList.add(armyRecruit);
            this.lArmyRecruit.add(arrayList);
        }
        this.iArmyRecruitSize = this.lArmyRecruit.size();
    }

    public final void addRecruitArmy_LoadUpdateSize() {
        this.iArmyRecruitSize_Total = 0;
        for (int i = 0; i < this.iArmyRecruitSize; i++) {
            this.iArmyRecruitSize_Total += this.lArmyRecruit.get(i).size();
        }
    }

    public final void addResearchProgress(float f) {
        addResearchProgress(getActiveTechResearch(), f);
    }

    public final void addResearchProgress(int i, float f) {
        if (i >= 0) {
            for (int size = this.lResearching.size() - 1; size >= 0; size--) {
                if (this.lResearching.get(size).iTechID == i) {
                    this.lResearching.get(size).fProgress = Math.max(0.0f, this.lResearching.get(size).fProgress + f);
                    if (this.lResearching.get(size).fProgress >= TechnologyTree.getResearchCost(this.lResearching.get(size).iTechID, getCivID())) {
                        addTechnology(i, false);
                        return;
                    }
                    return;
                }
            }
            this.lResearching.add(new TechnologyResearch(i));
            List<TechnologyResearch> list = this.lResearching;
            list.get(list.size() - 1).fProgress += f;
        }
    }

    public final void addTagsCanForm(String str) {
        for (int i = 0; i < this.sTagsCanForm.size(); i++) {
            if (this.sTagsCanForm.get(i).equals(str)) {
                return;
            }
        }
        this.sTagsCanForm.add(str);
    }

    public void addTechnology(int i, boolean z) {
        if (!this.lTechResearched.get(i).booleanValue() || TechnologyTree.lTechnology.get(i).Repeatable || z) {
            this.lTechResearched.set(i, true);
            if (!z) {
                setAdvantagePoints(getAdvantagePoints() + 1);
            }
            for (int i2 = 0; i2 < TechnologyTree.lTechUnlocksBuildings.get(i).size(); i2++) {
                this.unlockedBuildings.add(TechnologyTree.lTechUnlocksBuildings.get(i).get(i2));
            }
            int i3 = 0;
            boolean z2 = false;
            while (i3 < TechnologyTree.lTechUnlocksUnits.get(i).size()) {
                this.unlockedUnits.add(TechnologyTree.lTechUnlocksUnits.get(i).get(i3));
                i3++;
                z2 = true;
            }
            if (!z && z2) {
                updateBestUnits();
            }
            for (int size = this.lResearching.size() - 1; size >= 0; size--) {
                if (this.lResearching.get(size).iTechID == i) {
                    this.lResearching.remove(size);
                    break;
                }
            }
            if (!TechnologyTree.lTechnology.get(i).Repeatable) {
                this.civData4.e = -1;
            }
            this.iAlternativeTechResearch = -1;
            updateTechnologyBonuses(i);
            if (!z) {
                if (TechnologyTree.lTechnology.get(i).Legacy != 0) {
                    addLegacy(TechnologyTree.lTechnology.get(i).Legacy);
                }
                if (TechnologyTree.lTechnology.get(i).Gold != 0) {
                    this.fGold += TechnologyTree.lTechnology.get(i).Gold;
                }
                Game.gameThread.addCivUpdateLegacyPerMonth(getCivID());
                if (getCivID() == Game.player.iCivID) {
                    if (Game.menuManager.getVisibleInGame_TechnologyChoose() && InGame_TechnologyChoose.IN_TECHNOLOGY_CHOOSE) {
                        Game.addSimpleTask(new AnonymousClass2("rebuildTechTree"));
                    }
                    if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                        Game.addSimpleTask(new AnonymousClass3("rebuildTechTree"));
                    }
                    if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions.buildID && Game.mapModes.MODE_BUILDING != Game.mapModes.iActiveMapModeID) {
                        Game.addSimpleTask(new AnonymousClass4("rebuildBuildings2SavePos"));
                    }
                    InGame_Info.iCivID = Game.player.iCivID;
                    InGame_Info.iCivID2 = 0;
                    Game.menuManager.rebuildInGame_Info(TechnologyTree.lTechnology.get(i).Name, Game.lang.get("ResearchCompleted"));
                    if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID > 2) {
                        InGame_Info.imgID = Images.infoTechnology2;
                    } else {
                        InGame_Info.imgID = Images.infoTechnology;
                    }
                    if (Game.player.playerData.techQueue.lTechQueue.size() > 0) {
                        setActiveTechResearch(Game.player.playerData.techQueue.getTechQueue());
                    }
                    Game.player.currSituation.updateCurrentSituation();
                }
            }
            if (z || getCivID() == Game.player.iCivID) {
                return;
            }
            AI_UnlockedTechnology.unlockedTechnology(getCivID(), i);
        }
    }

    public final void addUnderSiege(int i) {
        if (this.underSiege.contains(Integer.valueOf(i))) {
            return;
        }
        this.underSiege.add(Integer.valueOf(i));
        this.underSiegeSize = this.underSiege.size();
    }

    public final void addVassal(int i) {
        for (int i2 = 0; i2 < this.diplomacy.lVassals.size(); i2++) {
            try {
                if (this.diplomacy.lVassals.get(i2).c == i) {
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        this.diplomacy.lVassals.add(new Vassal(i));
        Diplomacy diplomacy = this.diplomacy;
        diplomacy.iVassalsSize = diplomacy.lVassals.size();
    }

    public final void adoptReform(int i, int i2) {
        try {
            this.laws.set(i, Integer.valueOf(i2));
        } catch (Exception e) {
            CFG.exceptionStack(e);
            buildLaws();
        }
    }

    public final boolean areInAllianceSpecial(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).inAllianceSize; i2++) {
            if (this.inAlliance.contains(Game.getCiv(i).inAlliance.get(i2))) {
                return true;
            }
        }
        return false;
    }

    public boolean armyExists(String str) {
        for (int i = 0; i < this.iArmyPositionSize; i++) {
            try {
                if (this.armyPosition.get(i).key.equals(str)) {
                    return true;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        return false;
    }

    public final int armyMovingToProvince_MoveUnits(int i) {
        ArmyDivision army;
        int i2 = 0;
        for (int i3 = 0; i3 < this.iMoveUnitsSize; i3++) {
            if (this.lMoveUnits.get(i3).getToProvinceLastID() == i && (army = Game.getProvince(this.lMoveUnits.get(i3).getFromProvinceID()).getArmy(this.lMoveUnits.get(i3).key)) != null) {
                i2 += army.iArmyRegimentSize;
            }
        }
        return i2;
    }

    public final void assignGeneralToArmy(int i, int i2, int i3) {
        try {
            if (Game.getProvince(i).getArmy(i2).armyGeneral != null) {
                addGeneral(Game.getProvince(i).getArmy(i2).armyGeneral);
            }
            Game.getProvince(i).getArmy(i2).setArmyGeneral(this.lGeneralsNotAssigned.get(i3));
            this.lGeneralsNotAssigned.remove(i3);
            this.iGeneralsSize = this.lGeneralsNotAssigned.size();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final boolean assignGeneralToArmy(int i, int i2) {
        if (this.iGeneralsSize > 0) {
            return assignGeneralToArmy(i, i2, this.lGeneralsNotAssigned.get(Game.oR.nextInt(this.lGeneralsNotAssigned.size())).key);
        }
        return false;
    }

    public final boolean assignGeneralToArmy(int i, int i2, String str) {
        for (int i3 = this.iGeneralsSize - 1; i3 >= 0; i3--) {
            if (this.lGeneralsNotAssigned.get(i3).key.equals(str)) {
                assignGeneralToArmy(i, i2, i3);
                return true;
            }
        }
        return false;
    }

    public final void buildCapitalCity_Bonuses() {
        if (getCapitalLevel() > 0) {
            this.civBonuses.MonthlyIncome += Game.getCapital_Income(getCivID());
            this.civBonuses.ProvinceMaintenance += Game.getCapital_ProvincesMaintenance(getCivID()) * 100.0f;
        }
    }

    public final void buildColonizationProvince() {
        this.colonizationProvince.clear();
        for (int i = 0; i < getNumOfProvinces(); i++) {
            try {
                if (Game.getProvinceData9(getProvinceID(i)).getColonizationStartedTurnID() >= 0) {
                    if (ColonizationManager.getSettlementEstablishmentProgress(getProvinceID(i)) >= 0.99f) {
                        Game.getProvince(getProvinceID(i)).resetColonizationData();
                    } else if (!this.colonizationProvince.contains(Integer.valueOf(getProvinceID(i)))) {
                        this.colonizationProvince.add(Integer.valueOf(getProvinceID(i)));
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        this.iColonizationProvinceSize = this.colonizationProvince.size();
    }

    public final void buildLaws() {
        this.laws.clear();
        for (int i = 0; i < LawsManager.iLawsSize; i++) {
            this.laws.add(0);
        }
    }

    public final void buildMilitaryAcademyForGenerals_Bonuses() {
        if (getMilitaryAcademyForGeneralsLevel() > 0) {
            this.civBonuses.GeneralAttack += Game.getMilitaryAcademyForGenerals_GeneralAttack(getCivID());
            this.civBonuses.GeneralDefense += Game.getMilitaryAcademyForGenerals_GeneralDefense(getCivID());
            this.civBonuses.MaintenanceCost += Game.getMilitaryAcademyForGenerals_MaintenanceCost(getCivID());
        }
    }

    public final void buildMilitaryAcademy_Bonuses() {
        if (getMilitaryAcademyLevel() > 0) {
            this.civBonuses.UnitsAttack += Game.getMilitaryAcademy_Attack(getCivID());
            this.civBonuses.UnitsDefense += Game.getMilitaryAcademy_Defense(getCivID());
            this.civBonuses.MaintenanceCost += Game.getMilitaryAcademy_MaintenanceCost(getCivID());
            this.civBonuses.RegimentsLimit += Game.getMilitaryAcademy_RegimentsLimit(getCivID());
        }
    }

    public final void buildNuclearReactor_Bonuses() {
        if (getNuclearReactorLevel() > 0) {
            this.civBonuses.ProductionEfficiency += Game.getNuclearReactor_ProductionEfficiency(getCivID());
        }
    }

    public final void buildOccupiedProvinces() {
        this.occupiedProvinces.clear();
        for (int i = 0; i < getNumOfProvinces(); i++) {
            if (Game.getProvinceData(getProvinceID(i)).getOccupiedByCivID() != 0) {
                this.occupiedProvinces.add(Integer.valueOf(getProvinceID(i)));
            }
        }
        this.occupiedProvincesSize = this.occupiedProvinces.size();
    }

    public final void buildSupremeCourt_Bonuses() {
        CivData3 civData3 = this.civData3;
        civData3.setCorruption(civData3.getCorruption() + (GameValues.supremeCourt.SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL * getSupremeCourtLevel()));
    }

    public void buildTechTree() {
        this.lTechResearched.clear();
        this.unlockedUnits.clear();
        this.unlockedBuildings.clear();
        for (int i = 0; i < TechnologyTree.iTechnologySize; i++) {
            this.lTechResearched.add(false);
        }
        if (this.scenarioEditorData.TechnologyID != MapScenarios.DEFAULT_VALUE) {
            if (this.scenarioEditorData.TechnologyID >= 0) {
                buildTechTree_UnlockTechnologies(this.scenarioEditorData.TechnologyID);
            } else if (Game.mapScenarios.details.get(Game.scenarioID).CivDefault_Technology >= 0) {
                buildTechTree_UnlockTechnologies(Game.mapScenarios.details.get(Game.scenarioID).CivDefault_Technology);
            }
        } else if (Game.mapScenarios.details.get(Game.scenarioID).CivDefault_Technology >= 0) {
            buildTechTree_UnlockTechnologies(Game.mapScenarios.details.get(Game.scenarioID).CivDefault_Technology);
        }
        for (int i2 = 0; i2 < BuildingsManager.buildingsSize; i2++) {
            for (int i3 = 0; i3 < BuildingsManager.buildingSize.get(i2).intValue(); i3++) {
                if (BuildingsManager.buildings.get(i2).RequiredTechID[i3] < 0) {
                    this.unlockedBuildings.add(new TechnologyTree.Building(i2, i3));
                }
            }
        }
        for (int i4 = 0; i4 < ArmyManager.iUnitsTypesSize; i4++) {
            for (int i5 = 0; i5 < ArmyManager.lArmySize.get(i4).intValue(); i5++) {
                if (ArmyManager.lArmy.get(i4).get(i5).RequiredTechID < 0) {
                    this.unlockedUnits.add(new TechnologyTree.Unit(i4, i5));
                }
            }
        }
        for (int i6 = 0; i6 < TechnologyTree.iTechnologySize; i6++) {
            if (this.lTechResearched.get(i6).booleanValue()) {
                addTechnology(i6, true);
            }
        }
        updateBestUnits();
        initMaxLaws();
    }

    public void buildTechTree_Load() {
        this.unlockedUnits.clear();
        this.unlockedBuildings.clear();
        for (int i = 0; i < BuildingsManager.buildingsSize; i++) {
            for (int i2 = 0; i2 < BuildingsManager.buildingSize.get(i).intValue(); i2++) {
                if (BuildingsManager.buildings.get(i).RequiredTechID[i2] < 0) {
                    this.unlockedBuildings.add(new TechnologyTree.Building(i, i2));
                }
            }
        }
        for (int i3 = 0; i3 < ArmyManager.iUnitsTypesSize; i3++) {
            for (int i4 = 0; i4 < ArmyManager.lArmySize.get(i3).intValue(); i4++) {
                if (ArmyManager.lArmy.get(i3).get(i4).RequiredTechID < 0) {
                    this.unlockedUnits.add(new TechnologyTree.Unit(i3, i4));
                }
            }
        }
        for (int i5 = 0; i5 < TechnologyTree.iTechnologySize; i5++) {
            if (getTechResearched(i5)) {
                for (int i6 = 0; i6 < TechnologyTree.lTechUnlocksBuildings.get(i5).size(); i6++) {
                    this.unlockedBuildings.add(TechnologyTree.lTechUnlocksBuildings.get(i5).get(i6));
                }
                for (int i7 = 0; i7 < TechnologyTree.lTechUnlocksUnits.get(i5).size(); i7++) {
                    this.unlockedUnits.add(TechnologyTree.lTechUnlocksUnits.get(i5).get(i7));
                }
            }
        }
        for (int i8 = 0; i8 < TechnologyTree.iTechnologySize; i8++) {
            if (this.lTechResearched.get(i8).booleanValue()) {
                updateTechnologyBonuses(i8);
            }
        }
        updateBestUnits();
    }

    public final void buildTechTree_UnlockTechnologies(int i) {
        int iMax = Math.max(0, Math.min(TechnologyTree.iTechnologySize, i));
        this.lTechResearched.set(iMax, true);
        buildUnlockTechnologies_TechQueue1(iMax);
        buildUnlockTechnologies_TechQueue2(iMax);
    }

    public final void buildUnderSiege() {
        this.underSiege.clear();
        for (int i = 0; i < getNumOfProvinces(); i++) {
            if (Game.getProvinceData4(getProvinceID(i)).isUnderSiege()) {
                this.underSiege.add(Integer.valueOf(getProvinceID(i)));
            }
        }
        this.underSiegeSize = this.underSiege.size();
    }

    public final boolean canUnlockAdvantage(int i, int i2) {
        if (i2 == 0) {
            return true;
        }
        for (int i3 = 0; i3 < this.iAdvantagesSize; i3++) {
            if (this.lAdvantages.get(i3).id == i) {
                return this.lAdvantages.get(i3).lvl + 1 >= i2;
            }
        }
        return false;
    }

    public final boolean cancelMove(String str) {
        for (int i = 0; i < this.iMoveUnitsSize; i++) {
            if (this.lMoveUnits.get(i).key.equals(str)) {
                if (this.lMoveUnits.get(i).inRetreat) {
                    return false;
                }
                if (this.lMoveUnits.get(i).getProgressPerc() >= GameValues.army.MOVE_UNITS_LOCKED_MOVE) {
                    MoveUnits moveUnits = new MoveUnits(getCivID(), this.lMoveUnits.get(i).getToProvinceID(), this.lMoveUnits.get(i).getFromProvinceID(), str, this.lMoveUnits.get(i).extraArmyY, this.lMoveUnits.get(i).getFromProvinceID());
                    moveUnits.doneMovementProgressWidth = this.lMoveUnits.get(i).doneMovementProgressWidth;
                    moveUnits.movementProgressOverWidth = this.lMoveUnits.get(i).movementProgressOverWidth;
                    moveUnits.currentMovementProgressWidth = this.lMoveUnits.get(i).currentMovementProgressWidth;
                    moveUnits.lCurrentMovingTime = this.lMoveUnits.get(i).lCurrentMovingTime;
                    moveUnits.fCurrentMovingPercentage = this.lMoveUnits.get(i).fCurrentMovingPercentage;
                    this.lMoveUnits.set(i, moveUnits);
                    return true;
                }
                int armyKeyID = Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmyKeyID(this.lMoveUnits.get(i).key);
                if (armyKeyID >= 0) {
                    Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).setInMovement(false);
                    Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).iShiftX_Scaled = 0;
                    Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).iShiftY_Scaled = 0;
                }
                SiegeManager.checkForSiege(this.lMoveUnits.get(i).getFromProvinceID());
                Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).updateArmyPosY();
                removeMove(i);
                return true;
            }
        }
        return false;
    }

    public final boolean cancelRecruitArmy(int i) {
        try {
            for (int i2 = this.iArmyRecruitSize - 1; i2 >= 0; i2--) {
                if (this.lArmyRecruit.get(i2).get(0).provinceID == i) {
                    int size = this.lArmyRecruit.get(i2).size() - 1;
                    this.fGold += this.lArmyRecruit.get(i2).get(size).cost;
                    setManpower(this.fManpower + ((double) Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE));
                    this.lArmyRecruit.get(i2).remove(size);
                    if (this.lArmyRecruit.get(i2).size() == 0) {
                        this.lArmyRecruit.remove(i2);
                        this.iArmyRecruitSize = this.lArmyRecruit.size();
                    }
                    this.iArmyRecruitSize_Total = 0;
                    for (int i3 = 0; i3 < this.iArmyRecruitSize; i3++) {
                        this.iArmyRecruitSize_Total += this.lArmyRecruit.get(i3).size();
                    }
                    if (getCivID() == Game.player.iCivID) {
                        Game.menuManager.addRebuildInGame_RightQueue();
                    }
                    return true;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return false;
    }

    public final boolean cancelRecruitArmy(ArmyRecruit armyRecruit) {
        return cancelRecruitArmy(armyRecruit.provinceID);
    }

    public final void cancelRecruitArmy_All() {
        try {
            for (int i = this.iArmyRecruitSize - 1; i >= 0; i--) {
                for (int size = this.lArmyRecruit.get(i).size() - 1; size >= 0; size--) {
                    this.fGold += this.lArmyRecruit.get(i).get(size).cost;
                    setManpower(this.fManpower + ((double) Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE));
                    this.lArmyRecruit.get(i).remove(size);
                    if (this.lArmyRecruit.get(i).size() == 0) {
                        this.lArmyRecruit.remove(i);
                        this.iArmyRecruitSize = this.lArmyRecruit.size();
                    }
                    this.iArmyRecruitSize_Total = 0;
                    for (int i2 = 0; i2 < this.iArmyRecruitSize; i2++) {
                        this.iArmyRecruitSize_Total += this.lArmyRecruit.get(i2).size();
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    protected final boolean civRegionsContainsProvince(int i) {
        for (int i2 = 0; i2 < this.iCivRegionsSize; i2++) {
            if (this.lCivRegions.get(i2).containsProvince(i)) {
                return true;
            }
        }
        return false;
    }

    public final int civStability_NumOfProvinces() {
        int i = 0;
        for (int i2 = 0; i2 < getNumOfProvinces(); i2++) {
            if (!Game.getProvince(getProvinceID(i2)).haveACore || Game.getProvince(getProvinceID(i2)).getReligion() != getReligionID()) {
                i++;
            }
        }
        return i;
    }

    public final void clearArmyPosition() {
        this.armyPosition.clear();
        this.iArmyPositionSize = 0;
    }

    public final void clearCivRegions() {
        for (int i = 0; i < getNumOfProvinces(); i++) {
            Game.getProvince(getProvinceID(i)).setCivRegionID(-1);
        }
        this.lCivRegions.clear();
        this.iCivRegionsSize = 0;
    }

    public final void clearCivRegions_Just() {
        this.lCivRegions.clear();
        this.iCivRegionsSize = 0;
    }

    public final void clearColonizationProvince() {
        this.colonizationProvince.clear();
        this.iColonizationProvinceSize = 0;
    }

    public final void clearMoveUnits() {
        this.lMoveUnits.clear();
        this.iMoveUnitsSize = this.lMoveUnits.size();
    }

    public final void clearTagsCanForm() {
        this.sTagsCanForm.clear();
    }

    public final void createCivilizationRegion(int i) {
        this.lCivRegions.add(new CivilizationRegion(i, this.iCivRegionsSize));
        this.iCivRegionsSize = this.lCivRegions.size();
        for (int i2 = 0; i2 < getNumOfProvinces(); i2++) {
            try {
                Game.getProvince(getProvinceID(i2)).wasCivRegion = false;
            } catch (Exception unused) {
            }
        }
        Game.getProvince(i).wasCivRegion = true;
        buildCivilizationRegion(i, this.iCivRegionsSize - 1);
    }

    public final void decayAggressiveExpansion() {
        setAggressiveExpansion(Math.max(0.0f, getAggressiveExpansion() - GameValues.aggressiveExpansion.AE_DECAY_PER_TICK));
    }

    public final void disposeFlag() {
        Image image = this.civFlag;
        if (image != null) {
            image.getTexture().dispose();
            this.civFlag = null;
        }
    }

    public final void expandColony(int i) {
        int i2;
        if (Game.oR.nextInt(100) < GameValues.colonization.AUTO_EXPAND_CHANCE) {
            ArrayList arrayList = new ArrayList();
            for (int i3 = 0; i3 < Game.getProvince(i).getNeighboringProvincesSize(); i3++) {
                if (Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i3)).getWasteland() < 0 && Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i3)).getCivID() == 0 && !Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i3)).getSeaProvince()) {
                    arrayList.add(Integer.valueOf(Game.getProvince(i).getNeighboringProvinces(i3)));
                }
            }
            if (arrayList.size() > 0) {
                ArrayList arrayList2 = new ArrayList();
                int i4 = 0;
                while (true) {
                    i2 = 1;
                    if (i4 >= arrayList.size()) {
                        break;
                    }
                    int i5 = 0;
                    for (int i6 = 0; i6 < Game.getProvince(((Integer) arrayList.get(i4)).intValue()).getNeighboringProvincesSize(); i6++) {
                        if (Game.getProvince(Game.getProvince(((Integer) arrayList.get(i4)).intValue()).getNeighboringProvinces(i6)).getCivID() == Game.getProvince(i).getCivID()) {
                            i5 += 10;
                        } else if (Game.getProvince(Game.getProvince(((Integer) arrayList.get(i4)).intValue()).getNeighboringProvinces(i6)).getCivID() == 0) {
                            i2 = 0;
                        }
                    }
                    if (i2 != 0) {
                        i5 += 500;
                    }
                    arrayList2.add(Integer.valueOf(i5));
                    i4++;
                }
                int i7 = 0;
                while (i2 < arrayList.size()) {
                    if (((Integer) arrayList2.get(i7)).intValue() < ((Integer) arrayList2.get(i2)).intValue()) {
                        i7 = i2;
                    }
                    i2++;
                }
                if (ColonizationManager.establishSettlement(Game.getProvince(i).getCivID(), ((Integer) arrayList.get(i7)).intValue(), GameValues.colonization.AUTO_EXPAND_POPULATION) && Game.getProvince(i).getCivID() == Game.player.iCivID) {
                    InGame_Info.iCivID = Game.player.iCivID;
                    InGame_Info.iCivID2 = 0;
                    MenuManager menuManager = Game.menuManager;
                    StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("SettlementEstablished"));
                    String str = ALZmnpZHj.LFgDTlRrDC;
                    menuManager.rebuildInGame_Info(sbAppend.append(str).append(Game.getProvince(((Integer) arrayList.get(i7)).intValue()).getProvinceName()).toString(), Game.lang.get("Population") + str + CFG.getNumberWithSpaces("" + Game.getProvince(((Integer) arrayList.get(i7)).intValue()).getPopulationTotal()));
                    InGame_Info.imgID = Images.infoCrown;
                }
                arrayList2.clear();
            }
            arrayList.clear();
        }
    }

    public final int getActiveTechResearch() {
        return this.civData4.e;
    }

    public final float getAdditionalExpenses() {
        return this.civBonuses.MaintenanceCost + this.fExpenseVassal;
    }

    public final int getAdvantageLvl(int i) {
        for (int i2 = 0; i2 < this.iAdvantagesSize; i2++) {
            if (this.lAdvantages.get(i2).id == i) {
                return this.lAdvantages.get(i2).lvl;
            }
        }
        return -1;
    }

    public int getAdvantagePoints() {
        return this.civData3.a;
    }

    public float getAggressiveExpansion() {
        return this.civData3.e;
    }

    public int getAlternativeTechResearch() {
        return this.iAlternativeTechResearch;
    }

    public int getArmyPosition(int i) {
        try {
            return this.armyPosition.get(i).provinceID;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return -1;
        }
    }

    public String getArmyPositionKey(int i) {
        try {
            return this.armyPosition.get(i).key;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return "";
        }
    }

    public int getArmyRecruitSize() {
        return this.iArmyRecruitSize;
    }

    public final int getArmyRegimentSize() {
        return this.iRegiments;
    }

    public final int getArmySize() {
        int i = 0;
        for (int i2 = 0; i2 < this.iArmyPositionSize; i2++) {
            for (int i3 = 0; i3 < Game.getProvince(getArmyPosition(i2)).getArmySize(); i3++) {
                if (getCivID() == Game.getProvince(getArmyPosition(i2)).getArmy(i3).civID && getArmyPositionKey(i2).equals(Game.getProvince(getArmyPosition(i2)).getArmy(i3).key)) {
                    i += Game.getProvince(getArmyPosition(i2)).getArmy(i3).iArmy;
                }
            }
        }
        return i;
    }

    public boolean getAvailableToResearch(int i) {
        if (getTechResearched(i) && !TechnologyTree.lTechnology.get(i).Repeatable) {
            return false;
        }
        if (TechnologyTree.lTechnology.get(i).RequiredTech < 0 || Game.getCiv(this.iCivID).getTechResearched(TechnologyTree.lTechnology.get(i).RequiredTech)) {
            return TechnologyTree.lTechnology.get(i).RequiredTech2 < 0 || Game.getCiv(this.iCivID).getTechResearched(TechnologyTree.lTechnology.get(i).RequiredTech2);
        }
        return false;
    }

    public final float getAverageGrowthRate() {
        float growthRateWithBonuses = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            growthRateWithBonuses += Game.getProvince(getProvinceID(numOfProvinces)).getGrowthRateWithBonuses();
        }
        return growthRateWithBonuses / getNumOfProvinces();
    }

    public final float getAverageTaxEfficiency() {
        float taxEfficiencyWithBonuses = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            taxEfficiencyWithBonuses += Game.getProvince(getProvinceID(numOfProvinces)).getTaxEfficiencyWithBonuses();
        }
        return taxEfficiencyWithBonuses / getNumOfProvinces();
    }

    public final float getB() {
        return this.fB;
    }

    public final int getB_Int() {
        return this.iB;
    }

    public float getBalance() {
        return (this.fTotalIncomePerMonth + this.civBonuses.MonthlyIncome) - this.fTotalExpensesPerMonth;
    }

    public int getBattleTacticsID() {
        return this.civData4.b;
    }

    public float getBuildingsMaintenance() {
        float provinceBuildingsMaintenance = 0.0f;
        for (int i = 0; i < getNumOfProvinces(); i++) {
            provinceBuildingsMaintenance += Game.getProvince(getProvinceID(i)).getProvinceBuildingsMaintenance();
        }
        return provinceBuildingsMaintenance;
    }

    public int getCapitalLevel() {
        return this.civData4.c;
    }

    public final int getCapitalProvinceID() {
        return this.civData.c;
    }

    public int getCivID() {
        return this.iCivID;
    }

    public CivilizationLegacy getCivLegacy(int i) {
        try {
            return this.legacies.get(i);
        } catch (Exception unused) {
            return new CivilizationLegacy(0, 0);
        }
    }

    public final String getCivName() {
        return this.sCivName;
    }

    public final String getCivNameCharacter(int i) {
        return this.lCivNameChars.get(i);
    }

    public final int getCivNameHeight() {
        return this.iCivNameHeight;
    }

    public final int getCivNameLength() {
        return this.iCivNameLength;
    }

    public final int getCivNameWidth() {
        return this.iCivNameWidth;
    }

    public final CivilizationRegion getCivRegion(int i) {
        return this.lCivRegions.get(i);
    }

    public final int getCivRegionsSize() {
        return this.iCivRegionsSize;
    }

    public final String getCivTag() {
        return this.civData.t;
    }

    public final Color getColor(float f) {
        return getRGB(f);
    }

    public int getConstructedBuildings() {
        int i = 0;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            i += Game.getProvince(getProvinceID(numOfProvinces)).iBuildingsSize;
        }
        return i;
    }

    public final float getCorruption() {
        return this.civData3.getCorruption() + this.civBonuses.Corruption;
    }

    public final float getDiplomacyPerMonth() {
        return (this.fDiplomacyPerMonth - (GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_COST_PER_MONTH * this.diplomacy.iImprovingRelationsSize)) - (GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_COST_PER_MONTH * this.diplomacy.iDamagingRelationsSize);
    }

    public final float getEconomyTotal() {
        float economyWithBonuses = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            economyWithBonuses += Game.getProvince(getProvinceID(numOfProvinces)).getEconomyWithBonuses();
        }
        return economyWithBonuses;
    }

    public final float getEconomyTotal_CivRank() {
        float economyWithBonuses = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            economyWithBonuses += Game.getProvince(getProvinceID(numOfProvinces)).getEconomyWithBonuses() * ((Game.getProvince(numOfProvinces).haveACore ? 0.0f : GameValues.civRank.CIV_SCORE_NON_CORE) + 1.0f + (Game.getProvince(getProvinceID(numOfProvinces)).getReligion() == getReligionID() ? 0.0f : GameValues.civRank.CIV_SCORE_DIFFERENT_RELIGION));
        }
        return economyWithBonuses;
    }

    public int getExtraAggressiveness() {
        return this.civData4.v;
    }

    public final Image getFlag() {
        Image image = this.civFlag;
        return image == null ? ImageManager.getImage(Images.randomCivilizationFlag) : image;
    }

    public final float getG() {
        return this.fG;
    }

    public final int getG_Int() {
        return this.iG;
    }

    public ArmyGeneral getGeneralNotAssigned(int i) {
        return this.lGeneralsNotAssigned.get(i);
    }

    public final int getGeneralsNotAssignedSize() {
        return this.lGeneralsNotAssigned.size();
    }

    public final int getGoodsProduced(int i) {
        try {
            return this.goodsProduced.get(i).intValue();
        } catch (Exception e) {
            CFG.exceptionStack(e);
            initGoodsProduced();
            return 0;
        }
    }

    public final int getIdeologyID() {
        return this.iIdeologyID;
    }

    public float getIncomeBuildings() {
        float f = 0.0f;
        for (int i = 0; i < getNumOfProvinces(); i++) {
            f += Game.getProvince(getProvinceID(i)).provBonuses.MonthlyIncome;
        }
        return f;
    }

    public float getIncomeEconomy() {
        float f = 0.0f;
        for (int i = 0; i < getNumOfProvinces(); i++) {
            f += Game.getProvince(getProvinceID(i)).fProvinceIncomeEconomy;
        }
        return f;
    }

    public float getIncomeProduction() {
        float f = 0.0f;
        for (int i = 0; i < getNumOfProvinces(); i++) {
            f += Game.getProvince(getProvinceID(i)).fProvinceIncomeProduction;
        }
        return f;
    }

    public float getIncomeTaxation() {
        float f = 0.0f;
        for (int i = 0; i < getNumOfProvinces(); i++) {
            f += Game.getProvince(getProvinceID(i)).fProvinceIncomeTaxation;
        }
        return f;
    }

    public final float getInflation() {
        return this.civData3.getInflation() + this.civBonuses.Inflation;
    }

    public final float getInflation_Just() {
        return this.civData3.getInflation();
    }

    public int getInfrastructure() {
        int infrastructure = 0;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            infrastructure += Game.getProvince(getProvinceID(numOfProvinces)).getInfrastructure();
        }
        return infrastructure;
    }

    public int getLegaciesSize() {
        return this.iLegaciesSize;
    }

    public int getLegaciesUnlocked() {
        int i = 0;
        for (int i2 = 0; i2 < this.iLegaciesSize; i2++) {
            i += this.legacies.get(i2).lvl + 1;
        }
        return i;
    }

    public int getLegaciesUnlocked(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.iLegaciesSize; i3++) {
            if (LegacyManager.legacies.get(this.legacies.get(i3).id).GroupID == i) {
                i2 += this.legacies.get(i3).lvl + 1;
            }
        }
        return i2;
    }

    public int getLegacyLevel(int i) {
        for (int i2 = 0; i2 < this.iLegaciesSize; i2++) {
            if (this.legacies.get(i2).id == i) {
                return this.legacies.get(i2).lvl;
            }
        }
        return -1;
    }

    public float getLegacyPerMonth() {
        return this.fLegacyPerMonth * ((getWarWeariness() * GameValues.warWeariness.WW_LEGACY_PER_POINT) + 1.0f);
    }

    public final float getManpowerMax_Provinces_INFO() {
        float manpowerMaxFromProvinceManpowerLvl = 0.0f;
        for (int i = 0; i < getNumOfProvinces(); i++) {
            manpowerMaxFromProvinceManpowerLvl = manpowerMaxFromProvinceManpowerLvl + Game.getProvince(getProvinceID(i)).provBonuses.MaximumManpower + Game.getManpowerMaxFromProvinceManpowerLvl(getProvinceID(i));
        }
        return manpowerMaxFromProvinceManpowerLvl * (this.civBonuses.MaxManpower_Percentage + 1.0f);
    }

    public final float getManpowerMax_Vassals_INFO() {
        float f = 0.0f;
        for (int i = 0; i < this.diplomacy.lVassals.size(); i++) {
            f = (float) (((double) f) + Game.getCiv(this.diplomacy.lVassals.get(i).c).fManpowerMax_ToLord);
        }
        return f;
    }

    public final float getMaxMorale() {
        return (GameValues.army.MORALE_BASE_VALUE + this.civBonuses.MaxMorale) * GameValues.budget.MILITARY_LEVEL_MORALE[getMilitaryLevel()];
    }

    public final int getMaxReinforce() {
        if (this.fManpower < GameValues.army.REINFORCE_MIN_MANPOWER) {
            return 0;
        }
        return (int) Math.min(this.fManpower, Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * (GameValues.army.REINFORCE_PER_MONTH + this.civBonuses.ReinforcementSpeed) * GameValues.budget.MILITARY_LEVEL_REINFORCE_SPEED[getMilitaryLevel()]);
    }

    public int getMilitaryAcademyForGeneralsLevel() {
        return this.civData4.g;
    }

    public int getMilitaryAcademyLevel() {
        return this.civData4.m;
    }

    public int getMilitaryLevel() {
        return this.civData4.y;
    }

    public final float getMoraleRecoveryPerMonth() {
        return GameValues.army.MORALE_RECOVERY_PER_MONTH * (this.civBonuses.ArmyMoraleRecovery + 1.0f + (this.civStability_LostFrom100 * GameValues.civStability.CS_ARMY_MORALE_RECOVERY_PER_POINT));
    }

    public final MoveUnits getMoveUnits(int i) {
        return this.lMoveUnits.get(i);
    }

    public final int getMoveUnitsSize() {
        return this.iMoveUnitsSize;
    }

    public int getNuclearReactorLevel() {
        return this.civData4.n;
    }

    public int getNukes() {
        return this.civData4.u;
    }

    public final int getNumOfProvinces() {
        return this.iNumOfProvinces;
    }

    public final long getPopulationTotal() {
        long populationTotal = 0;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            populationTotal += (long) Game.getProvince(getProvinceID(numOfProvinces)).getPopulationTotal();
        }
        return populationTotal;
    }

    public final int getProvinceID(int i) {
        try {
            return this.lProvinces.get(i).intValue();
        } catch (Exception unused) {
            return -1;
        }
    }

    public float getProvinceMaintenance() {
        float f = 0.0f;
        for (int i = 0; i < getNumOfProvinces(); i++) {
            f += Game.getProvince(getProvinceID(i)).fProvinceMaintenance;
        }
        return f;
    }

    public final List<Integer> getProvinces() {
        return this.lProvinces;
    }

    public int getPuppetOfCivID() {
        return this.civData.p;
    }

    public final float getR() {
        return this.fR;
    }

    public final Color getRGB(float f) {
        return new Color(getR(), getG(), getB(), f);
    }

    public final int getR_Int() {
        return this.iR;
    }

    public int getRecruitArmyInProgress(String str) {
        int size = 0;
        for (int i = 0; i < this.iArmyRecruitSize; i++) {
            if (this.lArmyRecruit.get(i).get(0).toArmyKey != null && this.lArmyRecruit.get(i).get(0).toArmyKey.equals(str)) {
                size += this.lArmyRecruit.get(i).size();
            }
        }
        return size;
    }

    public int getRecruitArmyInProvinceID(int i) {
        for (int i2 = 0; i2 < this.iArmyRecruitSize; i2++) {
            try {
                if (this.lArmyRecruit.get(i2).get(0).provinceID == i) {
                    return i2;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return -1;
            }
        }
        return -1;
    }

    public final float getRegimentsLimit_FromAllianceSpecial() {
        float f = 0.0f;
        for (int i = 0; i < this.inAllianceSize; i++) {
            if (Game.alliancesSpecial.get(this.inAlliance.get(i).intValue()).iLeaderCivID == getCivID() && Game.alliancesSpecial.get(this.inAlliance.get(i).intValue()).typeOfAlliance == 0) {
                f += GameValues.hre.HRE_EMPEROR_REGIMENTS;
            }
        }
        return f;
    }

    public final int getRegimentsLimit_Manpower() {
        double manpower = 0.0d;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            manpower += (double) Game.getProvince(getProvinceID(numOfProvinces)).getManpower();
        }
        return (int) (manpower * ((double) GameValues.army.REGIMENTS_LIMIT_MANPOWER_LEVEL));
    }

    public final int getReligionID() {
        return this.civData.r;
    }

    public final float getResearchFromBuildings() {
        float f = 0.0f;
        for (int i = 0; i < getNumOfProvinces(); i++) {
            f += Game.getProvince(getProvinceID(i)).provBonuses.ResearchPoints;
        }
        return f;
    }

    public int getResearchLevel() {
        return this.civData4.r;
    }

    public float getResearchProgress(int i) {
        for (int size = this.lResearching.size() - 1; size >= 0; size--) {
            if (this.lResearching.get(size).iTechID == i) {
                return this.lResearching.get(size).fProgress / TechnologyTree.getResearchCost(this.lResearching.get(size).iTechID, getCivID());
            }
        }
        return 0.0f;
    }

    public int getResearchedTechnologies() {
        int i = 0;
        for (int size = this.lTechResearched.size() - 1; size >= 0; size--) {
            if (this.lTechResearched.get(size).booleanValue()) {
                i++;
            }
        }
        return i;
    }

    public int getSupremeCourtLevel() {
        return this.civData4.s;
    }

    public final float getTaxEfficiencyTotal() {
        float taxEfficiencyWithBonuses = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            taxEfficiencyWithBonuses += Game.getProvince(getProvinceID(numOfProvinces)).getTaxEfficiencyWithBonuses();
        }
        return taxEfficiencyWithBonuses;
    }

    public final float getTaxEfficiencyTotal_CivRank() {
        float taxEfficiencyWithBonuses = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            taxEfficiencyWithBonuses += Game.getProvince(getProvinceID(numOfProvinces)).getTaxEfficiencyWithBonuses() * ((Game.getProvince(numOfProvinces).haveACore ? 0.0f : GameValues.civRank.CIV_SCORE_NON_CORE) + 1.0f + (Game.getProvince(getProvinceID(numOfProvinces)).getReligion() == getReligionID() ? 0.0f : GameValues.civRank.CIV_SCORE_DIFFERENT_RELIGION));
        }
        return taxEfficiencyWithBonuses;
    }

    public int getTaxationLevel() {
        return this.civData4.t;
    }

    public boolean getTechResearched(int i) {
        if (i < 0) {
            return true;
        }
        try {
            return this.lTechResearched.get(i).booleanValue();
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return true;
        }
    }

    public final int getTotalGenerals() {
        int i = 0;
        for (int i2 = 0; i2 < this.iArmyPositionSize; i2++) {
            for (int i3 = 0; i3 < Game.getProvince(getArmyPosition(i2)).getArmySize(); i3++) {
                if (getCivID() == Game.getProvince(getArmyPosition(i2)).getArmy(i3).civID && getArmyPositionKey(i2).equals(Game.getProvince(getArmyPosition(i2)).getArmy(i3).key) && Game.getProvince(getArmyPosition(i2)).getArmy(i3).armyGeneral != null) {
                    i++;
                }
            }
        }
        return this.lGeneralsNotAssigned.size() + i;
    }

    public final float getTotalIncome() {
        float provinceIncome = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            provinceIncome += Game.getProvince(getProvinceID(numOfProvinces)).getProvinceIncome() - Game.getProvince(getProvinceID(numOfProvinces)).fProvinceMaintenance;
        }
        return provinceIncome;
    }

    public final float getTotalIncomeFromEconomy() {
        float incomeFromEconomy = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            incomeFromEconomy += Game.getIncomeFromEconomy(getProvinceID(numOfProvinces));
        }
        return incomeFromEconomy;
    }

    public final float getTotalIncomeFromProduction() {
        float monthlyIncome = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            monthlyIncome += ResourcesManager.getMonthlyIncome(getProvinceID(numOfProvinces));
        }
        return monthlyIncome;
    }

    public final float getTotalLoot() {
        float lootValue = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            lootValue += Game.getLootValue(getProvinceID(numOfProvinces));
        }
        return lootValue;
    }

    public final float getTotalProvinceIncome() {
        float provinceIncome = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            provinceIncome += Game.getProvince(getProvinceID(numOfProvinces)).getProvinceIncome();
        }
        return provinceIncome;
    }

    public final float getTotalProvinceIncomeTax() {
        float f = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            f += Game.getProvince(getProvinceID(numOfProvinces)).fProvinceIncomeTaxation;
        }
        return f;
    }

    public final int getUnitsBest_AttackDefense() {
        int attack = 0;
        try {
            for (int size = this.unitsBest.size() - 1; size >= 0; size--) {
                if (ArmyManager.lArmy.get(this.unitsBest.get(size).unitID).get(this.unitsBest.get(size).armyID).getAttack() + ArmyManager.lArmy.get(this.unitsBest.get(size).unitID).get(this.unitsBest.get(size).armyID).getDefense() > attack) {
                    attack = ArmyManager.lArmy.get(this.unitsBest.get(size).unitID).get(this.unitsBest.get(size).armyID).getAttack() + ArmyManager.lArmy.get(this.unitsBest.get(size).unitID).get(this.unitsBest.get(size).armyID).getDefense();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return attack;
    }

    public List<TechnologyTree.Unit> getUnlockedUnitsFirstLine() {
        ArrayList arrayList = new ArrayList();
        for (int size = this.unlockedUnits.size() - 1; size >= 0; size--) {
            if (ArmyManager.lUnitsTypes.get(this.unlockedUnits.get(size).unitID).Line == 0) {
                arrayList.add(this.unlockedUnits.get(size));
            }
        }
        return arrayList;
    }

    public List<TechnologyTree.Unit> getUnlockedUnitsFlank() {
        ArrayList arrayList = new ArrayList();
        for (int size = this.unlockedUnits.size() - 1; size >= 0; size--) {
            if (ArmyManager.lUnitsTypes.get(this.unlockedUnits.get(size).unitID).Line == 1) {
                arrayList.add(this.unlockedUnits.get(size));
            }
        }
        return arrayList;
    }

    public List<TechnologyTree.Unit> getUnlockedUnitsSupport() {
        ArrayList arrayList = new ArrayList();
        for (int size = this.unlockedUnits.size() - 1; size >= 0; size--) {
            if (ArmyManager.lUnitsTypes.get(this.unlockedUnits.get(size).unitID).Line == 2 && !ArmyManager.lArmy.get(this.unlockedUnits.get(size).unitID).get(this.unlockedUnits.get(size).armyID).isSettler && !ArmyManager.lArmy.get(this.unlockedUnits.get(size).unitID).get(this.unlockedUnits.get(size).armyID).SiegeUnit) {
                arrayList.add(this.unlockedUnits.get(size));
            }
        }
        return arrayList;
    }

    public final boolean getUpdateRegions() {
        return this.updateRegions;
    }

    public int getWarPlayDefensiveUntilTurnID() {
        return this.civData4.d;
    }

    public float getWarWeariness() {
        return this.civData3.w;
    }

    public final boolean haveAdvantage(int i, int i2) {
        for (int i3 = 0; i3 < this.iAdvantagesSize; i3++) {
            if (this.lAdvantages.get(i3).id == i) {
                return this.lAdvantages.get(i3).lvl >= i2;
            }
        }
        return false;
    }

    public final boolean haveAdvantageMaxLvl(int i) {
        for (int i2 = 0; i2 < this.iAdvantagesSize; i2++) {
            if (this.lAdvantages.get(i2).id == i) {
                return this.lAdvantages.get(i2).lvl >= AdvantagesManager.advantages.get(i).ImageID.length - 1;
            }
        }
        return false;
    }

    public final void initGoodsProduced() {
        this.goodsProduced.clear();
        for (int i = 0; i < ResourcesManager.iResourcesSize; i++) {
            this.goodsProduced.add(0);
        }
    }

    public final void initMaxLaws() {
        for (int i = 0; i < LawsManager.iLawsSize; i++) {
            try {
                for (int length = LawsManager.laws.get(i).RequiredTechID.length - 1; length > 0; length--) {
                    if (getTechResearched(LawsManager.laws.get(i).RequiredTechID[length]) && (LawsManager.laws.get(i).RequiredGovernmentID == null || LawsManager.laws.get(i).RequiredGovernmentID[length] < 0 || LawsManager.laws.get(i).RequiredGovernmentID[length] == getIdeologyID())) {
                        LawsManager.updateCivBonuses(i, this.laws.get(i).intValue(), this.iCivID, -1.0f);
                        this.laws.set(i, Integer.valueOf(length));
                        LawsManager.updateCivBonuses(i, length, this.iCivID, 1.0f);
                        break;
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public void initTechTree() {
        this.lTechResearched.clear();
        for (int i = 0; i < TechnologyTree.iTechnologySize; i++) {
            this.lTechResearched.add(false);
        }
    }

    public final boolean isArmyMovingToProvince(String str, int i) {
        for (int i2 = 0; i2 < this.iMoveUnitsSize; i2++) {
            if (this.lMoveUnits.get(i2).getToProvinceLastID() == i && this.lMoveUnits.get(i2).key.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isArmyMovingToProvince_MoveUnits(int i) {
        for (int i2 = 0; i2 < this.iMoveUnitsSize; i2++) {
            if (this.lMoveUnits.get(i2).getToProvinceLastID() == i) {
                return true;
            }
        }
        return false;
    }

    public boolean isBuildingResearched(int i, int i2) {
        for (int size = this.unlockedBuildings.size() - 1; size >= 0; size--) {
            if (this.unlockedBuildings.get(size).building == i && this.unlockedBuildings.get(size).buildingID == i2) {
                return true;
            }
        }
        return false;
    }

    public final boolean isInMoveUnits_ArmyKey(String str) {
        for (int i = 0; i < this.iMoveUnitsSize; i++) {
            if (this.lMoveUnits.get(i).key.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean isRecruitArmyInProgress(String str) {
        for (int i = 0; i < this.iArmyRecruitSize; i++) {
            if (this.lArmyRecruit.get(i).get(0).toArmyKey != null && this.lArmyRecruit.get(i).get(0).toArmyKey.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean isUnitBest(int i, int i2) {
        for (int size = this.unitsBest.size() - 1; size >= 0; size--) {
            if (this.unitsBest.get(size).unitID == i && this.unitsBest.get(size).armyID == i2) {
                return true;
            }
        }
        return false;
    }

    public boolean isUnitResearched(int i, int i2) {
        for (int size = this.unlockedUnits.size() - 1; size >= 0; size--) {
            if (this.unlockedUnits.get(size).unitID == i && this.unlockedUnits.get(size).armyID == i2) {
                return true;
            }
        }
        return false;
    }

    public final boolean loadFlag() {
        if (FileManager.loadFile("gfx/flagsXH/" + getCivTag() + ".png").exists()) {
            this.civFlag = new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + getCivTag() + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Linear);
        } else if (FileManager.loadFile("gfx/flagsXH/" + this.realTag + ".png").exists()) {
            this.civFlag = new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + this.realTag + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Linear);
        } else if (FileManager.loadFile("gfx/flagsH/" + getCivTag() + ".png").exists()) {
            this.civFlag = new Image(new Texture(FileManager.loadFile("gfx/flagsH/" + getCivTag() + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Linear);
        } else if (FileManager.loadFile("gfx/flagsH/" + this.realTag + ".png").exists()) {
            this.civFlag = new Image(new Texture(FileManager.loadFile("gfx/flagsH/" + this.realTag + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Linear);
        } else if (FileManager.loadFile("gfx/flags/" + getCivTag() + ".png").exists()) {
            this.civFlag = new Image(new Texture(FileManager.loadFile("gfx/flags/" + getCivTag() + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Nearest);
            this.isFlagNearest = true;
        } else if (FileManager.loadFile("gfx/flags/" + this.realTag + ".png").exists()) {
            this.civFlag = new Image(new Texture(FileManager.loadFile("gfx/flags/" + this.realTag + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Nearest);
            this.isFlagNearest = true;
        } else if (FileManager.loadFile("GameCivs/gfx/flagsH/" + getCivTag() + ".png").exists()) {
            this.civFlag = new Image(new Texture(FileManager.loadFile("GameCivs/gfx/flagsH/" + getCivTag() + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Linear);
        } else if (FileManager.loadFile("GameCivs/gfx/flagsH/" + this.realTag + ".png").exists()) {
            this.civFlag = new Image(new Texture(FileManager.loadFile("GameCivs/gfx/flagsH/" + this.realTag + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Linear);
        } else {
            this.civFlag = new Image(new Texture(FileManager.loadFile("gfx/flagsXH/ran.png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Nearest);
            this.isFlagNearest = true;
        }
        return true;
    }

    public void loadScenario_A() {
        setCivName(Game.lang.getCiv(getCivTag()));
        updateCivilizationTAG();
        buildLaws();
    }

    public void loadScenario_B() {
        loadFlag();
    }

    public final boolean moveCapital(int i) {
        if (i < 0 || i >= Game.getProvincesSize() || i == getCapitalProvinceID() || Game.getProvince(i).isOccupied() || this.fGold < GameValues.capital.MOVE_CAPITAL_COST) {
            return false;
        }
        this.fGold -= GameValues.capital.MOVE_CAPITAL_COST;
        setCapitalProvinceID(i);
        return true;
    }

    public final void moveCapital_ToLargestProvince() {
        if (getNumOfProvinces() > 0) {
            int i = 0;
            for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces > 0; numOfProvinces--) {
                if (Game.getProvince(getProvinceID(i)).getPopulationTotal() < Game.getProvince(getProvinceID(numOfProvinces)).getPopulationTotal()) {
                    i = numOfProvinces;
                }
            }
            setCapitalProvinceID(getProvinceID(i));
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00df A[PHI: r12
      0x00df: PHI (r12v2 aoc.kingdoms.lukasz.map.moveUnits.MoveUnits) = 
      (r12v1 aoc.kingdoms.lukasz.map.moveUnits.MoveUnits)
      (r12v1 aoc.kingdoms.lukasz.map.moveUnits.MoveUnits)
      (r12v1 aoc.kingdoms.lukasz.map.moveUnits.MoveUnits)
      (r12v7 aoc.kingdoms.lukasz.map.moveUnits.MoveUnits)
      (r12v7 aoc.kingdoms.lukasz.map.moveUnits.MoveUnits)
      (r12v7 aoc.kingdoms.lukasz.map.moveUnits.MoveUnits)
     binds: [B:26:0x00a6, B:28:0x00b1, B:30:0x00b7, B:15:0x0054, B:17:0x005f, B:19:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v6, types: [boolean] */
    public final boolean newMove(int i, int i2, String str, int i3, boolean z) {
        MoveUnits moveUnits;
        MoveUnits moveUnits2;
        boolean z2;
        MoveUnits moveUnits3;
        ?? r9;
        boolean z3;
        if (i == i2) {
            return false;
        }
        try {
            int armyKeyID = Game.getProvince(i).getArmyKeyID(str);
            if (armyKeyID < 0) {
                return false;
            }
            if (Game.getProvince(i).getArmy(armyKeyID).inBattle && Game.battleManager.isArmyInBattle(i, str)) {
                return false;
            }
            if (getCivID() == Game.player.iCivID) {
                moveUnits = moveUnits_Player;
                MoveUnits_Player moveUnits_Player = new MoveUnits_Player(getCivID(), i, i2, str, i3, z, false);
                if (moveUnits.iRouteSize <= 2 || moveUnits.iRouteSize >= GameValues.army.MOVE_UNITS_TRY_MOVING_LAND_IF_PATH_IS_BELOW_PLAYER || !moveUnits.haveSeaProvince()) {
                    z2 = true;
                } else {
                    moveUnits2 = new MoveUnits_Player(getCivID(), i, i2, str, i3, z, true);
                    z2 = true;
                    z3 = true;
                    z2 = true;
                    if (moveUnits2.iRouteSize > 1 && moveUnits2.getWidthTotal() < moveUnits.getWidthTotal()) {
                        moveUnits3 = moveUnits2;
                        r9 = z3;
                    }
                }
                moveUnits3 = moveUnits;
                r9 = z2;
            } else {
                moveUnits = new MoveUnits(getCivID(), i, i2, str, i3, z, false);
                if (moveUnits.iRouteSize <= 2 || moveUnits.iRouteSize >= GameValues.army.MOVE_UNITS_TRY_MOVING_LAND_IF_PATH_IS_BELOW || !moveUnits.haveSeaProvince()) {
                    z2 = true;
                } else {
                    moveUnits2 = new MoveUnits(getCivID(), i, i2, str, i3, z, true);
                    z2 = true;
                    z2 = true;
                    z3 = true;
                    if (moveUnits2.iRouteSize > 1 && moveUnits2.getWidthTotal() < moveUnits.getWidthTotal()) {
                        moveUnits3 = moveUnits2;
                        r9 = z3;
                    }
                }
                moveUnits3 = moveUnits;
                r9 = z2;
            }
            if (moveUnits3.iRouteSize <= r9) {
                return false;
            }
            for (int i4 = 0; i4 < this.iMoveUnitsSize; i4++) {
                if (this.lMoveUnits.get(i4).key.equals(str)) {
                    if (!this.lMoveUnits.get(i4).inRetreat) {
                        if (this.lMoveUnits.get(i4).getToProvinceID() != moveUnits3.getToProvinceID()) {
                            if (this.lMoveUnits.get(i4).getProgressPerc() < GameValues.army.MOVE_UNITS_LOCKED_MOVE) {
                                removeMove(i4);
                                break;
                            }
                            MoveUnits moveUnits4 = new MoveUnits(getCivID(), this.lMoveUnits.get(i4).getToProvinceID(), i2, str, this.lMoveUnits.get(i4).extraArmyY, this.lMoveUnits.get(i4).getFromProvinceID());
                            if (moveUnits4.iRouteSize <= r9) {
                                return false;
                            }
                            moveUnits4.doneMovementProgressWidth = this.lMoveUnits.get(i4).doneMovementProgressWidth;
                            moveUnits4.movementProgressOverWidth = this.lMoveUnits.get(i4).movementProgressOverWidth;
                            moveUnits4.currentMovementProgressWidth = this.lMoveUnits.get(i4).currentMovementProgressWidth;
                            moveUnits4.lCurrentMovingTime = this.lMoveUnits.get(i4).lCurrentMovingTime;
                            moveUnits4.fCurrentMovingPercentage = this.lMoveUnits.get(i4).fCurrentMovingPercentage;
                            this.lMoveUnits.set(i4, moveUnits4);
                            Game.getProvince(i).getArmy(armyKeyID).inRetreat = z;
                            return r9;
                        }
                        moveUnits3.doneMovementProgressWidth = this.lMoveUnits.get(i4).doneMovementProgressWidth;
                        moveUnits3.movementProgressOverWidth = this.lMoveUnits.get(i4).movementProgressOverWidth;
                        moveUnits3.currentMovementProgressWidth = this.lMoveUnits.get(i4).currentMovementProgressWidth;
                        moveUnits3.lCurrentMovingTime = this.lMoveUnits.get(i4).lCurrentMovingTime;
                        moveUnits3.fCurrentMovingPercentage = this.lMoveUnits.get(i4).fCurrentMovingPercentage;
                        removeMove(i4);
                        break;
                    }
                    return false;
                }
            }
            this.lMoveUnits.add(moveUnits3);
            this.iMoveUnitsSize = this.lMoveUnits.size();
            Game.getProvince(i).getArmy(armyKeyID).inRetreat = z;
            Game.getProvince(i).getArmy(armyKeyID).setInMovement(r9);
            Game.getProvince(i).updateArmyPosY();
            Game.getProvince(i).updateIsUnderSiege();
            return r9;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public final boolean recruitArmy(ArmyRecruit armyRecruit) {
        try {
            if (this.fGold < ArmyManager.getRecruitmentCost(getCivID(), armyRecruit.provinceID, armyRecruit.unitID, armyRecruit.armyID) || this.fManpower < Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE) {
                return false;
            }
            armyRecruit.cost = ArmyManager.getRecruitmentCost(getCivID(), armyRecruit.provinceID, armyRecruit.unitID, armyRecruit.armyID);
            armyRecruit.timeLeft = ArmyManager.getRecruitmentTime(getCivID(), armyRecruit.provinceID, armyRecruit.unitID, armyRecruit.armyID);
            this.fGold -= armyRecruit.cost;
            setManpower(this.fManpower - ((double) Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE));
            int i = 0;
            while (true) {
                if (i >= this.iArmyRecruitSize) {
                    i = -1;
                    break;
                }
                if (this.lArmyRecruit.get(i).get(0).provinceID == armyRecruit.provinceID) {
                    break;
                }
                i++;
            }
            if (i >= 0) {
                this.lArmyRecruit.get(i).add(armyRecruit);
            } else {
                ArrayList<ArmyRecruit> arrayList = new ArrayList<>();
                arrayList.add(armyRecruit);
                this.lArmyRecruit.add(arrayList);
            }
            this.iArmyRecruitSize = this.lArmyRecruit.size();
            this.iArmyRecruitSize_Total = 0;
            for (int i2 = 0; i2 < this.iArmyRecruitSize; i2++) {
                this.iArmyRecruitSize_Total += this.lArmyRecruit.get(i2).size();
            }
            if (getCivID() != Game.player.iCivID) {
                return true;
            }
            Game.menuManager.addRebuildInGame_RightQueue();
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return false;
    }

    public final boolean reduceInflation() {
        if (this.civData3.getInflation() <= 0.0f) {
            return false;
        }
        float f = this.fLegacy;
        if (f <= 0.0f) {
            return false;
        }
        if (f >= Game.getInflationReduceCost_Legacy(getCivID())) {
            this.fLegacy -= Game.getInflationReduceCost_Legacy(getCivID());
            this.civData3.setInflation(0.0f);
            return true;
        }
        float f2 = this.fLegacy / GameValues.inflation.INFLATION_REDUCE_COST_LEGACY_PER_INFLATION;
        CivData3 civData3 = this.civData3;
        civData3.setInflation(Math.max(0.0f, civData3.getInflation() - (f2 / 100.0f)));
        this.fLegacy -= f2 * GameValues.inflation.INFLATION_REDUCE_COST_LEGACY_PER_INFLATION;
        return true;
    }

    public final boolean reduceWarWeariness() {
        if (this.fGold < GameValues.warWeariness.WW_REDUCE_COST_GOLD || this.fLegacy < GameValues.warWeariness.WW_REDUCE_COST_LEGACY || getWarWeariness() <= 0.005d) {
            return false;
        }
        updateWarWeariness(GameValues.warWeariness.WW_REDUCE);
        addGold(GameValues.warWeariness.WW_REDUCE_COST_GOLD);
        addLegacy(GameValues.warWeariness.WW_REDUCE_COST_LEGACY);
        return true;
    }

    public final void removeAllArmies() {
        for (int i = this.iArmyPositionSize - 1; i >= 0; i--) {
            Game.getProvince(this.armyPosition.get(i).provinceID).removeArmyCivID(getCivID());
        }
        this.armyPosition.clear();
        this.iArmyPositionSize = 0;
    }

    public final void removeArmyPosition(int i, String str) {
        for (int i2 = 0; i2 < this.iArmyPositionSize; i2++) {
            try {
                if (this.armyPosition.get(i2).provinceID == i && this.armyPosition.get(i2).key.equals(str)) {
                    this.armyPosition.remove(i2);
                    this.iArmyPositionSize = this.armyPosition.size();
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void removeColonizationProvince(int i) {
        try {
            for (int i2 = this.iColonizationProvinceSize - 1; i2 >= 0; i2--) {
                if (this.colonizationProvince.get(i2).intValue() == i) {
                    this.colonizationProvince.remove(i2);
                    this.iColonizationProvinceSize = this.colonizationProvince.size();
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeInAllianceSpecial(int i) {
        for (int i2 = 0; i2 < this.inAllianceSize; i2++) {
            if (this.inAlliance.get(i2).intValue() == i) {
                this.inAlliance.remove(i2);
                this.inAllianceSize = this.inAlliance.size();
                return;
            }
        }
    }

    public void removeInBattles(String str) {
        this.inBattles.remove(str);
    }

    public final void removeMove(int i) {
        try {
            int armyKeyID = Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmyKeyID(this.lMoveUnits.get(i).key);
            if (armyKeyID >= 0) {
                Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).setInMovement(false);
                Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).inRetreat = false;
                Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).iShiftX_Scaled = 0;
                Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).iShiftY_Scaled = 0;
            } else {
                Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(getCivID(), this.lMoveUnits.get(i).key);
                if (armyPosFindArmy_FullCheck != null) {
                    Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).setInMovement(false);
                    Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).inRetreat = false;
                    Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).iShiftX_Scaled = 0;
                    Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).iShiftY_Scaled = 0;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        this.lMoveUnits.remove(i);
        this.iMoveUnitsSize = this.lMoveUnits.size();
    }

    public final boolean removeMove(String str) {
        for (int i = 0; i < this.iMoveUnitsSize; i++) {
            if (this.lMoveUnits.get(i).key.equals(str)) {
                int armyKeyID = Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmyKeyID(this.lMoveUnits.get(i).key);
                if (armyKeyID >= 0) {
                    Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).setInMovement(false);
                    Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).iShiftX_Scaled = 0;
                    Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).iShiftY_Scaled = 0;
                }
                removeMove(i);
                return true;
            }
        }
        return false;
    }

    public final void removeOccupiedProvince(int i) {
        for (int size = this.occupiedProvinces.size() - 1; size >= 0; size--) {
            if (this.occupiedProvinces.get(size).intValue() == i) {
                this.occupiedProvinces.remove(size);
                this.occupiedProvincesSize = this.occupiedProvinces.size();
                return;
            }
        }
    }

    public final void removeProvince(int i) {
        for (int i2 = 0; i2 < this.iNumOfProvinces; i2++) {
            if (this.lProvinces.get(i2).intValue() == i) {
                this.lProvinces.remove(i2);
                updateNumOfProvinces();
                break;
            }
        }
        Game.getProvince(i).setCivRegionID(-1);
        this.convertReligion.removeProvince(i);
        this.civilizationCores.removeProvince(i);
    }

    public final void removeTagsCanForm(int i) {
        this.sTagsCanForm.remove(i);
    }

    public final void removeTagsCanForm(String str) {
        for (int i = 0; i < this.sTagsCanForm.size(); i++) {
            if (this.sTagsCanForm.get(i).equals(str)) {
                this.sTagsCanForm.remove(i);
                return;
            }
        }
    }

    public final void removeUnderSiege(int i) {
        for (int size = this.underSiege.size() - 1; size >= 0; size--) {
            if (this.underSiege.get(size).intValue() == i) {
                this.underSiege.remove(size);
                this.underSiegeSize = this.underSiege.size();
                return;
            }
        }
    }

    public final void removeVassal(int i) {
        for (int i2 = 0; i2 < this.diplomacy.lVassals.size(); i2++) {
            try {
                if (this.diplomacy.lVassals.get(i2).c == i) {
                    this.diplomacy.lVassals.remove(i2);
                    Diplomacy diplomacy = this.diplomacy;
                    diplomacy.iVassalsSize = diplomacy.lVassals.size();
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final boolean repayLoan(int i) {
        try {
            if (i >= this.iLoansSize) {
                return false;
            }
            float loanValueLeft = this.loans.get(i).fLoanValue - this.loans.get(i).getLoanValueLeft();
            float f = this.fGold;
            if (f < loanValueLeft) {
                return false;
            }
            this.fGold = f - loanValueLeft;
            this.fLoansCost -= this.loans.get(i).fInterestPerMonth;
            this.loans.remove(i);
            int size = this.loans.size();
            this.iLoansSize = size;
            if (size != 0) {
                return true;
            }
            this.fLoansCost = 0.0f;
            Game.gameThread.removeCivUpdateLoans(getCivID());
            Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public final void resetGoodsProduced() {
        for (int i = 0; i < ResourcesManager.iResourcesSize; i++) {
            try {
                this.goodsProduced.set(i, 0);
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void setActiveTechResearch(int i) {
        this.civData4.e = i;
        if (i < 0) {
            return;
        }
        for (int size = this.lResearching.size() - 1; size >= 0; size--) {
            if (this.lResearching.get(size).iTechID == i) {
                return;
            }
        }
        this.lResearching.add(new TechnologyResearch(i));
    }

    public void setAdvantagePoints(int i) {
        this.civData3.a = i;
    }

    public void setAggressiveExpansion(float f) {
        this.civData3.e = f;
    }

    public void setAlternativeTechResearch(int i) {
        this.iAlternativeTechResearch = i;
    }

    public final void setB(int i) {
        this.iB = i;
        float f = i / 255.0f;
        this.fB = f;
        this.civColor.b = f;
        this.civColorMap.b = this.fB;
        this.civColorFog.b = Math.max(0.0f, this.fB - GameValues.fog.PROVINCE_FOG_COLOR_DIFFERENCE);
        updateVassalsColors();
    }

    public final void setBattleTacticsID(int i) {
        this.civData4.b = Math.max(0, Math.min(GameValues.battleTactics.BATTLE_TACTICS.length - 1, i));
    }

    public void setCapitalLevel(int i) {
        this.civData4.c = i;
    }

    public final void setCapitalProvinceID(int i) {
        if (Game.getProvince(this.civData.c).getCivID() == this.iCivID) {
            Game.getProvince(this.civData.c).setIsCapital(false);
            Game.getProvince(this.civData.c).updateBuildingLimit();
            Game.getProvince(this.civData.c).updateInfrastructureMax();
        }
        this.civData.c = i;
        if (Game.getProvince(this.civData.c).getCivID() == this.iCivID) {
            Game.getProvince(this.civData.c).setIsCapital(true);
            Game.getProvince(this.civData.c).updateBuildingLimit();
            Game.getProvince(this.civData.c).updateInfrastructureMax();
            Game.getProvince(this.civData.c).setDrawCities(true);
            Game.buildDistanceToCapital();
        }
    }

    public final void setCivID(int i) {
        this.iCivID = i;
        this.civData.p = i;
    }

    public final void setCivID_Just(int i) {
        this.iCivID = i;
    }

    public final void setCivName(String str) {
        if (str.length() <= 0) {
            str = "AB";
        }
        this.sCivName = str;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(0), str);
        this.iCivNameWidth = (int) glyphLayout_Game.width;
        this.iCivNameHeight = (int) glyphLayout_Game.height;
        this.lCivNameChars = new ArrayList();
        this.sCivName_UpperCase = str.toUpperCase();
        for (int i = 0; i < this.sCivName.length(); i++) {
            this.lCivNameChars.add("" + this.sCivName_UpperCase.charAt(i));
        }
        this.iCivNameLength = this.lCivNameChars.size();
        glyphLayout_Game.setText(Renderer.fontMain.get(4), this.sCivName);
        this.iCapitalNameWidth = (int) glyphLayout_Game.width;
        this.iCapitalNameHeight = (int) glyphLayout_Game.height;
    }

    public final void setCivTag(String str) {
        this.civData.t = str;
        this.realTag = Game.ideologiesManager.getRealTag(str);
        setCivName(Game.lang.getCiv(str));
    }

    public final void setCorruption(float f) {
        this.civData3.setCorruption(Math.max(GameValues.supremeCourt.CORRUPTION_MIN, Math.min(f, GameValues.supremeCourt.CORRUPTION_MAX)));
    }

    public final void setDiplomacyPerMonth(float f) {
        this.fDiplomacyPerMonth = f;
    }

    public void setExtraAggressiveness(int i) {
        this.civData4.v = i;
    }

    public final void setFlag(Image image) {
        try {
            this.civFlag.dispose();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        this.civFlag = image;
    }

    public final void setG(int i) {
        this.iG = i;
        float f = i / 255.0f;
        this.fG = f;
        this.civColor.g = f;
        this.civColorMap.g = this.fG;
        this.civColorFog.g = Math.max(0.0f, this.fG - GameValues.fog.PROVINCE_FOG_COLOR_DIFFERENCE);
    }

    public final void setIdeologyID(int i) {
        this.iIdeologyID = i;
    }

    public final void setInflation(float f) {
        this.civData3.setInflation(Math.max(0.0f, Math.min(f, GameValues.inflation.INFLATION_MAX)));
    }

    public final void setManpower(double d) {
        this.fManpower = Math.max(0.0d, Math.min(Math.max(this.fManpowerMax, this.fManpower), d));
    }

    public void setMilitaryAcademyForGeneralsLevel(int i) {
        this.civData4.g = i;
    }

    public void setMilitaryAcademyLevel(int i) {
        this.civData4.m = i;
    }

    public void setMilitaryLevel(int i) {
        this.civData4.y = i;
    }

    public void setNuclearReactorLevel(int i) {
        this.civData4.n = i;
    }

    public void setNukes(int i) {
        this.civData4.u = i;
    }

    public final void setPuppetOfCivID(int i) {
        if (i != this.iCivID || i != getPuppetOfCivID()) {
            Game.getCiv(getPuppetOfCivID()).removeVassal(this.iCivID);
        }
        this.civData.p = i;
        if (getPuppetOfCivID() != this.iCivID) {
            Game.getCiv(getPuppetOfCivID()).addVassal(this.iCivID);
        }
        updateColorMap();
    }

    public final void setR(int i) {
        this.iR = i;
        float f = i / 255.0f;
        this.fR = f;
        this.civColor.r = f;
        this.civColorMap.r = this.fR;
        this.civColorFog.r = Math.max(0.0f, this.fR - GameValues.fog.PROVINCE_FOG_COLOR_DIFFERENCE);
    }

    public final void setReligionID(int i) {
        this.civData.r = i;
    }

    public final void setReligionID_UpdateBonuses(int i) {
        Game.religionManager.updateCivBonuses(this.iCivID, this.civData.r, -1, true);
        this.civData.r = i;
        Game.religionManager.updateCivBonuses(this.iCivID, this.civData.r, 1, false);
    }

    public void setResearchLevel(int i) {
        this.civData4.r = i;
    }

    public void setSupremeCourtLevel(int i) {
        this.civData4.s = i;
    }

    public void setTaxationLevel(int i) {
        this.civData4.t = i;
    }

    public final void setTechnologyResearched(int i, boolean z) {
        this.lTechResearched.set(i, Boolean.valueOf(z));
        if (TechnologyTree.lTechnology.get(i).UnlocksNukes) {
            this.canBuildNuke = true;
        }
        if (TechnologyTree.lTechnology.get(i).UnlocksAccessToTheSea) {
            this.canAccessSea = true;
        }
        if (TechnologyTree.lTechnology.get(i).UnlocksColonization) {
            this.canColonize = true;
        }
    }

    public final void setUpdateRegions(boolean z) {
        this.updateRegions = z;
    }

    public void setWarPlayDefensiveUntilTurnID(int i) {
        this.civData4.d = i;
    }

    public void setWarWeariness(float f) {
        this.civData3.w = f;
    }

    public final boolean takeLoan() {
        if (this.iLoansSize >= Game.getLoanMaxNumber(getCivID())) {
            return false;
        }
        float loanValue = Game.getLoanValue(getCivID()) + Game.getLoanInterestValue(getCivID());
        this.loans.add(new Loan(loanValue));
        int size = this.loans.size();
        this.iLoansSize = size;
        this.fGold += loanValue;
        this.fLoansCost += this.loans.get(size - 1).fInterestPerMonth;
        this.fTotalExpensesPerMonth += this.loans.get(this.iLoansSize - 1).fInterestPerMonth;
        setInflation(this.civData3.getInflation() + GameValues.loan.LOAN_INFLATION);
        Game.gameThread.addCivUpdateLoans(getCivID());
        Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        return true;
    }

    public final boolean unlockLegacy(int i) {
        for (int i2 = 0; i2 < this.iLegaciesSize; i2++) {
            if (this.legacies.get(i2).id == i) {
                if (this.legacies.get(i2).lvl + 1 >= LegacyManager.legacies.get(i).CostLegacy.length || this.fLegacy < LegacyManager.legacies.get(i).CostLegacy[this.legacies.get(i2).lvl + 1]) {
                    return false;
                }
                this.fLegacy -= LegacyManager.legacies.get(i).CostLegacy[this.legacies.get(i2).lvl + 1];
                this.legacies.get(i2).lvl = Math.min(this.legacies.get(i2).lvl + 1, LegacyManager.legacies.get(i).CostLegacy.length - 1);
                LegacyManager.updateCivBonuses(i, this.legacies.get(i2).lvl, getCivID());
                return true;
            }
        }
        if (this.fLegacy < LegacyManager.legacies.get(i).CostLegacy[0]) {
            return false;
        }
        this.fLegacy -= LegacyManager.legacies.get(i).CostLegacy[0];
        this.legacies.add(new CivilizationLegacy(i, 0));
        this.iLegaciesSize = this.legacies.size();
        LegacyManager.updateCivBonuses(i, 0, getCivID());
        return true;
    }

    public final void updateArmyImgID() {
        if (getCivID() == Game.player.iCivID) {
            updateArmyImgID_Player();
            this.isPlayerAlly = true;
        } else if (DiplomacyManager.isAtWar(Game.player.iCivID, getCivID())) {
            this.iArmyImgID = Images.armyEnemy;
            this.isPlayerAlly = false;
        } else if (DiplomacyManager.isAlly(Game.player.iCivID, getCivID())) {
            this.iArmyImgID = Images.armyAlly;
            this.isPlayerAlly = true;
        } else {
            this.iArmyImgID = Images.army;
            this.isPlayerAlly = false;
        }
    }

    public final void updateArmyImgID_Player() {
        switch (Game.player.playerData.armyImgID) {
            case 0:
                this.iArmyImgID = Images.armyPlayer0;
                break;
            case 1:
                this.iArmyImgID = Images.armyPlayer1;
                break;
            case 2:
                this.iArmyImgID = Images.armyPlayer2;
                break;
            case 3:
                this.iArmyImgID = Images.armyPlayer3;
                break;
            case 4:
                this.iArmyImgID = Images.armyPlayer4;
                break;
            case 5:
                this.iArmyImgID = Images.armyPlayer5;
                break;
            case 6:
                this.iArmyImgID = Images.armyPlayer6;
                break;
            case 7:
                this.iArmyImgID = Images.armyPlayer7;
                break;
            case 8:
                this.iArmyImgID = Images.armyPlayer8;
                break;
            case 9:
                this.iArmyImgID = Images.armyPlayer9;
                break;
            case 10:
                this.iArmyImgID = Images.armyPlayer10;
                break;
            case 11:
                this.iArmyImgID = Images.armyPlayer11;
                break;
            case 12:
                this.iArmyImgID = Images.armyPlayer12;
                break;
            case 13:
                this.iArmyImgID = Images.armyPlayer13;
                break;
            case 14:
                this.iArmyImgID = Images.armyPlayer14;
                break;
            default:
                this.iArmyImgID = Images.armyPlayer0;
                break;
        }
    }

    public final void updateArmyMaintenance() {
        this.fArmyMaintenance = 0.0f;
        for (int i = this.iArmyPositionSize - 1; i >= 0; i--) {
            for (int armySize = Game.getProvince(getArmyPosition(i)).getArmySize() - 1; armySize >= 0; armySize--) {
                ArmyDivision army = Game.getProvince(getArmyPosition(i)).getArmy(armySize);
                if (army.civID == getCivID() && getArmyPositionKey(i).equals(army.key)) {
                    this.fArmyMaintenance += army.fMaintenanceCost;
                }
            }
        }
        this.fArmyMaintenance = this.fArmyMaintenance * Math.max(0.05f, (this.civBonuses.ArmyMaintenance / 100.0f) + 1.0f + GameValues.budget.MILITARY_LEVEL_ARMY_MAINTENANCE[getMilitaryLevel()]) * ((Math.max(0.0f, (this.iRegiments / this.iRegimentsLimit) - 1.0f) * GameValues.army.ARMY_MAINTENANCE_OVER_REGIMENTS_LIMIT_MODIFIER) + 1.0f);
    }

    public void updateArmyPosition(String str, int i) {
        for (int i2 = 0; i2 < this.iArmyPositionSize; i2++) {
            try {
                if (this.armyPosition.get(i2).key.equals(str)) {
                    this.armyPosition.get(i2).provinceID = i;
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        this.armyPosition.add(new ArmyPosition(i, str));
        this.iArmyPositionSize = this.armyPosition.size();
    }

    public final int updateArmyRegimentSize() {
        this.iRegiments = 0;
        for (int i = 0; i < this.iArmyPositionSize; i++) {
            Province province = Game.getProvince(getArmyPosition(i));
            for (int i2 = 0; i2 < province.getArmySize(); i2++) {
                ArmyDivision army = province.getArmy(i2);
                if (getCivID() == army.civID && getArmyPositionKey(i).equals(army.key)) {
                    this.iRegiments += army.iArmyRegimentSize;
                }
            }
        }
        return this.iRegiments;
    }

    public final void updateBestUnits() {
        this.unitsBest.clear();
        this.unitsBest_FirstLine.clear();
        this.unitsBest_Flank.clear();
        this.unitsBest_Support.clear();
        this.unitsBestSize = 0;
        this.unitsBest_FirstLineSize = 0;
        this.unitsBest_FlankSize = 0;
        this.unitsBest_SupportSize = 0;
        this.unitsBest_SiegeSize = 0;
        int size = this.unlockedUnits.size();
        for (int i = 0; i < ArmyManager.iUnitsTypesSize; i++) {
            int i2 = -1;
            for (int i3 = 0; i3 < size; i3++) {
                if (this.unlockedUnits.get(i3).unitID == i && (i2 < 0 || ArmyManager.lArmy.get(this.unlockedUnits.get(i2).unitID).get(this.unlockedUnits.get(i2).armyID).UnitLevel < ArmyManager.lArmy.get(this.unlockedUnits.get(i3).unitID).get(this.unlockedUnits.get(i3).armyID).UnitLevel)) {
                    i2 = i3;
                }
            }
            if (i2 >= 0) {
                this.unitsBest.add(this.unlockedUnits.get(i2));
            }
        }
        int size2 = this.unitsBest.size();
        this.unitsBestSize = size2;
        for (int i4 = size2 - 1; i4 >= 0; i4--) {
            if (!ArmyManager.lArmy.get(this.unitsBest.get(i4).unitID).get(this.unitsBest.get(i4).armyID).isSettler) {
                if (ArmyManager.lUnitsTypes.get(this.unitsBest.get(i4).unitID).Line == 0) {
                    this.unitsBest_FirstLine.add(this.unitsBest.get(i4));
                } else if (ArmyManager.lUnitsTypes.get(this.unitsBest.get(i4).unitID).Line == 1) {
                    this.unitsBest_Flank.add(this.unitsBest.get(i4));
                } else if (ArmyManager.lArmy.get(this.unitsBest.get(i4).unitID).get(this.unitsBest.get(i4).armyID).SiegeUnit) {
                    this.unitsBest_Siege.add(this.unitsBest.get(i4));
                } else {
                    this.unitsBest_Support.add(this.unitsBest.get(i4));
                }
            }
        }
        this.unitsBest_FirstLineSize = this.unitsBest_FirstLine.size();
        this.unitsBest_FlankSize = this.unitsBest_Flank.size();
        this.unitsBest_SupportSize = this.unitsBest_Support.size();
        this.unitsBest_SiegeSize = this.unitsBest_Siege.size();
    }

    public final void updateBuildingLimit() {
        for (int i = 0; i < getNumOfProvinces(); i++) {
            Game.getProvince(getProvinceID(i)).updateBuildingLimit();
        }
    }

    public final void updateCivStability() {
        if (getNumOfProvinces() <= 0) {
            this.civStability_LostFrom100 = 0.0f;
            return;
        }
        float f = 0.0f;
        int i = 0;
        for (int i2 = 0; i2 < getNumOfProvinces(); i2++) {
            if (!Game.getProvince(getProvinceID(i2)).haveACore) {
                f += GameValues.civStability.CS_SCORE_NON_CORE;
                i++;
            }
            if (Game.getProvince(getProvinceID(i2)).getReligion() != getReligionID()) {
                f += GameValues.civStability.CS_SCORE_DIFFERENT_RELIGION;
                if (Game.getProvince(getProvinceID(i2)).haveACore) {
                    i++;
                }
            }
        }
        this.civStability_LostFrom100 = Math.min(GameValues.civStability.CS_MAX_VALUE, Math.min(GameValues.civStability.CS_SCORE_MAX_PER_PROVINCE * i, f / getNumOfProvinces()));
    }

    public final void updateCivilizationBonuses_Temporary() {
        try {
            for (int i = this.iCivBonusesTemporarySize - 1; i >= 0; i--) {
                if (this.civBonusesTemporary.get(i).TempTurnID <= Game_Calendar.TURN_ID) {
                    try {
                        updateCivilizationBonuses_Temporary(this.civBonusesTemporary.get(i), -1.0f);
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                    this.civBonusesTemporary.remove(i);
                    this.iCivBonusesTemporarySize = this.civBonusesTemporary.size();
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateCivilizationBonuses_Temporary(CivilizationBonuses civilizationBonuses, float f) {
        if (civilizationBonuses.MonthlyIncome != 0.0f) {
            this.civBonuses.MonthlyIncome += civilizationBonuses.MonthlyIncome * f;
        }
        if (civilizationBonuses.TaxEfficiency != 0.0f) {
            this.civBonuses.TaxEfficiency += civilizationBonuses.TaxEfficiency * f;
        }
        if (civilizationBonuses.IncomeProduction != 0.0f) {
            this.civBonuses.IncomeProduction += civilizationBonuses.IncomeProduction * f;
            Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        }
        if (civilizationBonuses.IncomeTaxation != 0.0f) {
            this.civBonuses.IncomeTaxation += civilizationBonuses.IncomeTaxation * f;
            Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        }
        if (civilizationBonuses.IncomeEconomy != 0.0f) {
            this.civBonuses.IncomeEconomy += civilizationBonuses.IncomeEconomy * f;
            Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        }
        if (civilizationBonuses.ProductionEfficiency != 0.0f) {
            this.civBonuses.ProductionEfficiency += civilizationBonuses.ProductionEfficiency * f;
        }
        if (civilizationBonuses.MaintenanceCost != 0.0f) {
            this.civBonuses.MaintenanceCost += civilizationBonuses.MaintenanceCost * f;
            Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        }
        if (civilizationBonuses.BuildingsMaintenanceCost != 0.0f) {
            this.civBonuses.BuildingsMaintenanceCost += civilizationBonuses.BuildingsMaintenanceCost * f;
            Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        }
        if (civilizationBonuses.ProvinceMaintenance != 0.0f) {
            this.civBonuses.ProvinceMaintenance += civilizationBonuses.ProvinceMaintenance * f;
            Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        }
        if (civilizationBonuses.GrowthRate != 0.0f) {
            this.civBonuses.GrowthRate += civilizationBonuses.GrowthRate * f;
            Game.getCiv(getCivID()).updateResearchPerMonth();
            Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        }
        if (civilizationBonuses.MonthlyLegacy != 0.0f) {
            this.civBonuses.MonthlyLegacy += civilizationBonuses.MonthlyLegacy * f;
            Game.gameThread.addCivUpdateLegacyPerMonth(getCivID());
        }
        if (civilizationBonuses.MonthlyLegacy_Percentage != 0.0f) {
            this.civBonuses.MonthlyLegacy_Percentage += civilizationBonuses.MonthlyLegacy_Percentage * f;
            Game.gameThread.addCivUpdateLegacyPerMonth(getCivID());
        }
        if (civilizationBonuses.MaxManpower != 0.0f) {
            this.civBonuses.MaxManpower += civilizationBonuses.MaxManpower * f;
            Game.gameThreadTurns.addCivUpdateMaxManpower(getCivID());
        }
        if (civilizationBonuses.MaxManpower_Percentage != 0.0f) {
            this.civBonuses.MaxManpower_Percentage += civilizationBonuses.MaxManpower_Percentage * f;
            Game.gameThreadTurns.addCivUpdateMaxManpower(getCivID());
        }
        if (civilizationBonuses.ManpowerRecoverySpeed != 0.0f) {
            this.civBonuses.ManpowerRecoverySpeed += civilizationBonuses.ManpowerRecoverySpeed * f;
        }
        if (civilizationBonuses.ReinforcementSpeed != 0.0f) {
            this.civBonuses.ReinforcementSpeed += civilizationBonuses.ReinforcementSpeed * f;
        }
        if (civilizationBonuses.ArmyMoraleRecovery != 0.0f) {
            this.civBonuses.ArmyMoraleRecovery += civilizationBonuses.ArmyMoraleRecovery * f;
        }
        if (civilizationBonuses.WarScoreCost != 0.0f) {
            this.civBonuses.WarScoreCost += civilizationBonuses.WarScoreCost * f;
        }
        if (civilizationBonuses.ArmyMaintenance != 0.0f) {
            this.civBonuses.ArmyMaintenance += civilizationBonuses.ArmyMaintenance * f;
            Game.gameThread.addCivUpdateArmyMaintenance(getCivID());
        }
        if (civilizationBonuses.RecruitmentTime != 0.0f) {
            this.civBonuses.RecruitmentTime += civilizationBonuses.RecruitmentTime * f;
        }
        if (civilizationBonuses.RecruitArmyCost != 0.0f) {
            this.civBonuses.RecruitArmyCost += civilizationBonuses.RecruitArmyCost * f;
        }
        if (civilizationBonuses.RecruitArmyFirstLineCost != 0.0f) {
            this.civBonuses.RecruitArmyFirstLineCost += civilizationBonuses.RecruitArmyFirstLineCost * f;
        }
        if (civilizationBonuses.RecruitArmySecondLineCost != 0.0f) {
            this.civBonuses.RecruitArmySecondLineCost += civilizationBonuses.RecruitArmySecondLineCost * f;
        }
        if (civilizationBonuses.ResearchPoints != 0.0f) {
            this.civBonuses.ResearchPoints += civilizationBonuses.ResearchPoints * f;
            Game.gameThread.addCivUpdateResearchPerMonth(getCivID());
            Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        }
        if (civilizationBonuses.Research != 0.0f) {
            this.civBonuses.Research += civilizationBonuses.Research * f;
            Game.gameThread.addCivUpdateResearchPerMonth(getCivID());
            Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        }
        if (civilizationBonuses.TechnologyCost != 0.0f) {
            this.civBonuses.TechnologyCost += civilizationBonuses.TechnologyCost * f;
        }
        if (civilizationBonuses.ConstructionCost != 0.0f) {
            this.civBonuses.ConstructionCost += civilizationBonuses.ConstructionCost * f;
        }
        if (civilizationBonuses.AdministrationBuildingsCost != 0.0f) {
            this.civBonuses.AdministrationBuildingsCost += civilizationBonuses.AdministrationBuildingsCost * f;
        }
        if (civilizationBonuses.EconomyBuildingsCost != 0.0f) {
            this.civBonuses.EconomyBuildingsCost += civilizationBonuses.EconomyBuildingsCost * f;
        }
        if (civilizationBonuses.MilitaryBuildingsCost != 0.0f) {
            this.civBonuses.MilitaryBuildingsCost += civilizationBonuses.MilitaryBuildingsCost * f;
        }
        if (civilizationBonuses.WonderConstructionCost != 0.0f) {
            this.civBonuses.WonderConstructionCost += civilizationBonuses.WonderConstructionCost * f;
        }
        if (civilizationBonuses.ConstructionTime != 0.0f) {
            this.civBonuses.ConstructionTime += civilizationBonuses.ConstructionTime * f;
        }
        if (civilizationBonuses.InvestInEconomyCost != 0.0f) {
            this.civBonuses.InvestInEconomyCost += civilizationBonuses.InvestInEconomyCost * f;
        }
        if (civilizationBonuses.IncreaseTaxEfficiencyCost != 0.0f) {
            this.civBonuses.IncreaseTaxEfficiencyCost += civilizationBonuses.IncreaseTaxEfficiencyCost * f;
        }
        if (civilizationBonuses.IncreaseGrowthRateCost != 0.0f) {
            this.civBonuses.IncreaseGrowthRateCost += civilizationBonuses.IncreaseGrowthRateCost * f;
        }
        if (civilizationBonuses.DevelopInfrastructureCost != 0.0f) {
            this.civBonuses.DevelopInfrastructureCost += civilizationBonuses.DevelopInfrastructureCost * f;
        }
        if (civilizationBonuses.IncreaseManpowerCost != 0.0f) {
            this.civBonuses.IncreaseManpowerCost += civilizationBonuses.IncreaseManpowerCost * f;
        }
        if (civilizationBonuses.GeneralAttack != 0) {
            CivilizationBonuses civilizationBonuses2 = this.civBonuses;
            civilizationBonuses2.GeneralAttack = (int) (civilizationBonuses2.GeneralAttack + (civilizationBonuses.GeneralAttack * f));
        }
        if (civilizationBonuses.GeneralDefense != 0) {
            CivilizationBonuses civilizationBonuses3 = this.civBonuses;
            civilizationBonuses3.GeneralDefense = (int) (civilizationBonuses3.GeneralDefense + (civilizationBonuses.GeneralDefense * f));
        }
        if (civilizationBonuses.UnitsAttack != 0) {
            CivilizationBonuses civilizationBonuses4 = this.civBonuses;
            civilizationBonuses4.UnitsAttack = (int) (civilizationBonuses4.UnitsAttack + (civilizationBonuses.UnitsAttack * f));
        }
        if (civilizationBonuses.UnitsDefense != 0) {
            CivilizationBonuses civilizationBonuses5 = this.civBonuses;
            civilizationBonuses5.UnitsDefense = (int) (civilizationBonuses5.UnitsDefense + (civilizationBonuses.UnitsDefense * f));
        }
        if (civilizationBonuses.AdvisorCost != 0.0f) {
            this.civBonuses.AdvisorCost += civilizationBonuses.AdvisorCost * f;
        }
        if (civilizationBonuses.GeneralCost != 0.0f) {
            this.civBonuses.GeneralCost += civilizationBonuses.GeneralCost * f;
        }
        if (civilizationBonuses.MaxMorale != 0.0f) {
            this.civBonuses.MaxMorale += civilizationBonuses.MaxMorale * f;
        }
        if (civilizationBonuses.DiseaseDeathRate != 0.0f) {
            this.civBonuses.DiseaseDeathRate += civilizationBonuses.DiseaseDeathRate * f;
        }
        if (civilizationBonuses.AllCharactersLifeExpectancy != 0) {
            CivilizationBonuses civilizationBonuses6 = this.civBonuses;
            civilizationBonuses6.AllCharactersLifeExpectancy = (int) (civilizationBonuses6.AllCharactersLifeExpectancy + (civilizationBonuses.AllCharactersLifeExpectancy * f));
        }
        if (civilizationBonuses.BattleWidth != 0) {
            CivilizationBonuses civilizationBonuses7 = this.civBonuses;
            civilizationBonuses7.BattleWidth = (int) (civilizationBonuses7.BattleWidth + (civilizationBonuses.BattleWidth * f));
        }
        if (civilizationBonuses.Discipline != 0.0f) {
            this.civBonuses.Discipline += civilizationBonuses.Discipline * f;
        }
        if (civilizationBonuses.ManpowerRecoveryFromADisbandedArmy != 0.0f) {
            this.civBonuses.ManpowerRecoveryFromADisbandedArmy += civilizationBonuses.ManpowerRecoveryFromADisbandedArmy * f;
        }
        if (civilizationBonuses.MaxInfrastructure != 0) {
            CivilizationBonuses civilizationBonuses8 = this.civBonuses;
            civilizationBonuses8.MaxInfrastructure = (int) (civilizationBonuses8.MaxInfrastructure + (civilizationBonuses.MaxInfrastructure * f));
            for (int i = 0; i < Game.getCiv(getCivID()).getNumOfProvinces(); i++) {
                Game.getProvince(Game.getCiv(getCivID()).getProvinceID(i)).updateInfrastructureMax();
            }
        }
        if (civilizationBonuses.ArmyMovementSpeed != 0.0f) {
            this.civBonuses.ArmyMovementSpeed += civilizationBonuses.ArmyMovementSpeed * f;
        }
        if (civilizationBonuses.SiegeEffectiveness != 0.0f) {
            this.civBonuses.SiegeEffectiveness += civilizationBonuses.SiegeEffectiveness * f;
        }
        if (civilizationBonuses.ImproveRelationsModifier != 0.0f) {
            this.civBonuses.ImproveRelationsModifier += civilizationBonuses.ImproveRelationsModifier * f;
        }
        if (civilizationBonuses.IncomeFromVassals != 0.0f) {
            this.civBonuses.IncomeFromVassals += civilizationBonuses.IncomeFromVassals * f;
            Game.gameThread.addCivUpdateTotalIncomePerMonth(this.iCivID);
        }
        if (civilizationBonuses.LoanInterest != 0.0f) {
            this.civBonuses.LoanInterest += civilizationBonuses.LoanInterest * f;
        }
        if (civilizationBonuses.DiplomacyPoints != 0.0f) {
            this.civBonuses.DiplomacyPoints += civilizationBonuses.DiplomacyPoints * f;
            Game.getCiv(getCivID()).updateDiplomacyPerMonth();
        }
        if (civilizationBonuses.AggressiveExpansion != 0.0f) {
            this.civBonuses.AggressiveExpansion += civilizationBonuses.AggressiveExpansion * f;
        }
        if (civilizationBonuses.RevolutionaryRisk != 0.0f) {
            this.civBonuses.RevolutionaryRisk += civilizationBonuses.RevolutionaryRisk * f;
        }
        if (civilizationBonuses.Devastation != 0.0f) {
            this.civBonuses.Devastation += civilizationBonuses.Devastation * f;
        }
        if (civilizationBonuses.CoreCost != 0.0f) {
            this.civBonuses.CoreCost += civilizationBonuses.CoreCost * f;
        }
        if (civilizationBonuses.ReligionCost != 0.0f) {
            this.civBonuses.ReligionCost += civilizationBonuses.ReligionCost * f;
        }
        if (civilizationBonuses.AdvisorMaxLevel != 0) {
            CivilizationBonuses civilizationBonuses9 = this.civBonuses;
            civilizationBonuses9.AdvisorMaxLevel = (int) (civilizationBonuses9.AdvisorMaxLevel + (civilizationBonuses.AdvisorMaxLevel * f));
        }
        if (civilizationBonuses.MaximumAmountOfGold != 0.0f) {
            this.civBonuses.MaximumAmountOfGold += civilizationBonuses.MaximumAmountOfGold * f;
        }
        if (civilizationBonuses.MaximumAmountOfGold_Percentage != 0.0f) {
            this.civBonuses.MaximumAmountOfGold_Percentage += civilizationBonuses.MaximumAmountOfGold_Percentage * f;
        }
        if (civilizationBonuses.Corruption != 0.0f) {
            this.civBonuses.Corruption += civilizationBonuses.Corruption * f;
            Game.gameThread.addCivUpdateTotalIncomePerMonth(this.iCivID);
        }
        if (civilizationBonuses.Inflation != 0.0f) {
            this.civBonuses.Inflation += civilizationBonuses.Inflation * f;
            Game.gameThread.addCivUpdateTotalIncomePerMonth(this.iCivID);
        }
        if (civilizationBonuses.RegimentsLimit != 0) {
            CivilizationBonuses civilizationBonuses10 = this.civBonuses;
            civilizationBonuses10.RegimentsLimit = (int) (civilizationBonuses10.RegimentsLimit + (civilizationBonuses.RegimentsLimit * f));
            updateRegimentsLimit();
        }
        Game.getCiv(getCivID()).updateProvincesIncomeAndExpenses();
    }

    public final void updateCivilizationTAG() {
        setIdeologyID(Game.ideologiesManager.getIdeologyID(getCivTag()));
    }

    public final void updateCivilizationTAG(String str, int i, int i2, int i3) {
        setCivTag(str);
        setR(i);
        setG(i2);
        setB(i3);
        updateCivilizationTAG();
        loadFlag();
        updateColorMap();
    }

    public final void updateColonizationProvince() {
        try {
            for (int i = this.iColonizationProvinceSize - 1; i >= 0; i--) {
                if (ColonizationManager.getSettlementEstablishmentProgress(this.colonizationProvince.get(i).intValue()) >= 0.99f) {
                    if (getCivID() == Game.player.iCivID) {
                        Game.player.addNotification(new Notification(Notification.Notification_Type.SETTLEMENT_ESTABLISHED, Game.lang.get("SettlementEstablished") + ": " + Game.getProvince(this.colonizationProvince.get(i).intValue()).getProvinceName(), Images.population, Game_Calendar.TURN_ID, Notification.Notification_BG.GREEN, this.colonizationProvince.get(i).intValue()));
                    }
                    expandColony(this.colonizationProvince.get(i).intValue());
                    Game.getProvince(this.colonizationProvince.get(i).intValue()).resetColonizationData();
                    this.colonizationProvince.remove(i);
                    this.iColonizationProvinceSize = this.colonizationProvince.size();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateColorMap() {
        if (this.iCivID == getPuppetOfCivID()) {
            this.civColorMap = this.civColor;
        } else {
            this.civColorMap = CFG.getColorMixed_2(this.civColor, Game.getCiv(getPuppetOfCivID()).civColor);
        }
        this.civColorFog.r = Math.max(0.0f, this.civColorMap.r - GameValues.fog.PROVINCE_FOG_COLOR_DIFFERENCE);
        this.civColorFog.g = Math.max(0.0f, this.civColorMap.g - GameValues.fog.PROVINCE_FOG_COLOR_DIFFERENCE);
        this.civColorFog.b = Math.max(0.0f, this.civColorMap.b - GameValues.fog.PROVINCE_FOG_COLOR_DIFFERENCE);
    }

    public final void updateDiplomacyPerMonth() {
        this.fDiplomacyPerMonth = (GameValues.diplomacy.DIPLOMACY_POINTS_PER_MONTH_BASE_VALUE * (this.civBonuses.DiplomacyPoints + 1.0f)) + CivilizationRanking.getDiplomacyPoints_RankStar(getCivID());
        this.fDiplomacyMax = GameValues.diplomacy.DIPLOMACY_POINTS_MAX + (getNumOfProvinces() * GameValues.diplomacy.DIPLOMACY_POINTS_MAX_PER_PROVINCE);
    }

    public final void updateIncome() {
        if (getPuppetOfCivID() == getCivID()) {
            this.fTotalIncomePerMonth = GameValues.civRank.CIV_BASE_INCOME[this.iCivRankID];
        } else {
            this.fTotalIncomePerMonth = GameValues.civRank.CIV_BASE_INCOME_VASSAL[this.iCivRankID];
        }
        this.fTotalExpensesPerMonth = 0.0f;
        for (int i = 0; i < getNumOfProvinces(); i++) {
            this.fTotalIncomePerMonth += Game.getProvince(getProvinceID(i)).fProvinceIncome;
            this.fTotalExpensesPerMonth += Game.getProvince(getProvinceID(i)).fProvinceMaintenance;
        }
        for (int i2 = 0; i2 < this.inAllianceSize; i2++) {
            if (Game.alliancesSpecial.get(this.inAlliance.get(i2).intValue()).iLeaderCivID == getCivID() && Game.alliancesSpecial.get(this.inAlliance.get(i2).intValue()).typeOfAlliance == 0) {
                this.fTotalIncomePerMonth += HREManager.getIncome_Emperor(this.inAlliance.get(i2).intValue());
            }
        }
        float f = this.fTotalExpensesPerMonth + this.fArmyMaintenance;
        this.fTotalExpensesPerMonth = f;
        this.fTotalExpensesPerMonth = f + Game.getResearchCost(getCivID());
        if (getPuppetOfCivID() == getCivID()) {
            this.fExpenseVassal = 0.0f;
            return;
        }
        float incomeFromVassal = Game.getIncomeFromVassal(getPuppetOfCivID(), getCivID());
        this.fExpenseVassal = incomeFromVassal;
        this.fTotalExpensesPerMonth += incomeFromVassal;
    }

    public final void updateInfrastructureMax() {
        for (int i = 0; i < getNumOfProvinces(); i++) {
            Game.getProvince(getProvinceID(i)).updateInfrastructureMax();
        }
    }

    public final void updateLegacyPerMonth() {
        this.fLegacyPerMonth = this.civBonuses.MonthlyLegacy;
        for (int i = 0; i < getNumOfProvinces(); i++) {
            this.fLegacyPerMonth += Game.getProvince(getProvinceID(i)).provBonuses.MonthlyLegacy;
        }
        float legacyPerUniqueResources = this.fLegacyPerMonth + GameValues.civRank.CIV_RANK_MONTHLY_LEGACY[this.iCivRankID] + Game.getLegacyPerUniqueResources(getCivID()) + this.diplomacy.getRivalsLegacy(getCivID());
        this.fLegacyPerMonth = legacyPerUniqueResources;
        float f = legacyPerUniqueResources * (this.civBonuses.MonthlyLegacy_Percentage + 1.0f);
        this.fLegacyPerMonth = f;
        this.fLegacyPerMonth = f * (GameValues.budget.TAXATION_LEVEL_LEGACY[getTaxationLevel()] + 1.0f);
    }

    public final void updateLoans() {
        int i = this.iLoansSize;
        if (i > 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (Game_Calendar.TURN_ID >= this.loans.get(i2).iExpires_TurnID) {
                    this.fLoansCost -= this.loans.get(i2).fInterestPerMonth;
                    this.fTotalExpensesPerMonth -= this.loans.get(i2).fInterestPerMonth;
                    this.loans.remove(i2);
                    int size = this.loans.size();
                    this.iLoansSize = size;
                    if (size == 0) {
                        this.fLoansCost = 0.0f;
                        Game.gameThread.removeCivUpdateLoans(getCivID());
                        Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
                    }
                }
            }
        }
    }

    public final void updateManpowerPerMonth() {
        this.fManpowerMax_ToLord = 0.0d;
        this.fManpowerMax = this.civBonuses.MaxManpower;
        for (int i = 0; i < getNumOfProvinces(); i++) {
            try {
                double d = this.fManpowerMax + ((double) Game.getProvince(getProvinceID(i)).provBonuses.MaximumManpower);
                this.fManpowerMax = d;
                this.fManpowerMax = d + ((double) Game.getManpowerMaxFromProvinceManpowerLvl(getProvinceID(i)));
            } catch (Exception unused) {
            }
        }
        this.fManpowerMax += (double) GameValues.civRank.CIV_RANK_MANPOWER_MAX[this.iCivRankID];
        if (getPuppetOfCivID() != getCivID()) {
            double d2 = this.fManpowerMax * ((double) GameValues.vassal.VASSAL_MANPOWER_TO_LORD[Game.getCiv(getPuppetOfCivID()).diplomacy.getVassal_ManpowerLevel(getCivID())]);
            this.fManpowerMax_ToLord = d2;
            this.fManpowerMax = Math.max(0.0d, this.fManpowerMax - d2);
        }
        double d3 = this.fManpowerMax + ((double) GameValues.manpower.MANPOWER_MAX_BASE);
        this.fManpowerMax = d3;
        this.fManpowerMax = d3 * ((double) (this.civBonuses.MaxManpower_Percentage + 1.0f));
        for (int i2 = 0; i2 < this.diplomacy.lVassals.size(); i2++) {
            this.fManpowerMax += Game.getCiv(this.diplomacy.lVassals.get(i2).c).fManpowerMax_ToLord;
        }
        this.fManpowerMax += (double) this.diplomacy.getRivalsManpower(getCivID());
        for (int i3 = 0; i3 < this.inAllianceSize; i3++) {
            if (Game.alliancesSpecial.get(this.inAlliance.get(i3).intValue()).iLeaderCivID == getCivID() && Game.alliancesSpecial.get(this.inAlliance.get(i3).intValue()).typeOfAlliance == 0) {
                this.fManpowerMax += (double) HREManager.getManpower_Emperor(this.inAlliance.get(i3).intValue());
            }
        }
        this.fManpowerPerMonth = Game.getManpowerPerMonth(getCivID(), this.fManpowerMax) * ((double) (GameValues.budget.MILITARY_LEVEL_MANPOWER[getMilitaryLevel()] + 1.0f));
    }

    public final void updateMilitaryLevel(int i) {
        if (getMilitaryLevel() != i) {
            setMilitaryLevel(i);
            updateManpowerPerMonth();
            updateArmyMaintenance();
            updateTotalIncomePerMonth();
        }
    }

    public final void updateMorale_Reinforce() {
        float maxMorale = getMaxMorale();
        float moraleRecoveryPerMonth = getMoraleRecoveryPerMonth();
        int maxReinforce = getMaxReinforce();
        float f = Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE;
        float fUpdateReinforce = 0.0f;
        int i = 0;
        while (true) {
            if (i >= this.iArmyPositionSize) {
                break;
            }
            Province province = Game.getProvince(getArmyPosition(i));
            for (int i2 = 0; i2 < province.getArmySize(); i2++) {
                ArmyDivision army = province.getArmy(i2);
                if (!Game.getProvince(army.provinceID).getSeaProvince() && !army.inBattle && !army.inRetreat && army.civID == getCivID() && army.key.equals(getArmyPositionKey(i))) {
                    army.updateMorale_Regiments(maxMorale, moraleRecoveryPerMonth);
                    if (this.fManpower <= GameValues.army.REINFORCE_MIN_MANPOWER) {
                        i = this.iArmyPositionSize;
                        break;
                    } else {
                        fUpdateReinforce += army.updateReinforce(maxReinforce, f);
                        maxReinforce = (int) Math.max(maxReinforce, this.fManpower);
                    }
                }
            }
            i++;
        }
        this.fGold -= fUpdateReinforce;
        if (getCivID() != Game.player.iCivID || fUpdateReinforce < 0.01f) {
            return;
        }
        int i3 = (int) (100.0f * fUpdateReinforce);
        Game.stats.civStats.rf += i3;
        Game.player.addNotification_Reinforce(new Notification(Notification.Notification_Type.REINFORCE_ARMY_COST, new StringBuilder().append(Game.lang.get("ReinforceCost")).append(": ").append(CFG.getPrecision2(fUpdateReinforce, fUpdateReinforce <= 99.9f ? fUpdateReinforce < 0.1f ? 100 : 10 : 1)).toString(), Images.gold, Game_Calendar.TURN_ID, Notification.Notification_BG.NEUTRAL_BG, i3));
    }

    public final void updateMoveInBattle(String str, boolean z) {
        for (int i = 0; i < this.iMoveUnitsSize; i++) {
            try {
                if (this.lMoveUnits.get(i).key.equals(str)) {
                    this.lMoveUnits.get(i).inBattle = z;
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void updateMoveUnits_Load(SaveGameManager.Save_Civ_MoveUnits save_Civ_MoveUnits, boolean z, boolean z2) {
        for (int i = this.iMoveUnitsSize - 1; i >= 0; i--) {
            if (this.lMoveUnits.get(i).key.equals(save_Civ_MoveUnits.k)) {
                this.lMoveUnits.get(i).currentMovementProgressWidth = save_Civ_MoveUnits.m;
                this.lMoveUnits.get(i).inRetreat = z;
                this.lMoveUnits.get(i).inBattle = z2;
                return;
            }
        }
    }

    public void updateNukeProduction(int i) {
        if (this.iNukesSize > 0) {
            this.nukesDaysLeft.get(0).daysLeft -= i;
            if (this.nukesDaysLeft.get(0).daysLeft <= 0) {
                this.nukesDaysLeft.remove(0);
                this.iNukesSize = this.nukesDaysLeft.size();
                setNukes(getNukes() + 1);
                if (getCivID() == Game.player.iCivID) {
                    InGame_Info.iCivID = Game.player.iCivID;
                    InGame_Info.iCivID2 = 0;
                    Game.menuManager.rebuildInGame_Info(Game.lang.get(lOow.yAVFHDxYXnVtXLv), Game.lang.get("AtomicBombs") + ": " + getNukes());
                    InGame_Info.imgID = Images.infoAtomic;
                }
                if (this.iNukesSize == 0) {
                    Game.gameThreadTurns.removeCivsNukes(getCivID());
                }
            }
        }
    }

    public final void updateNumOfProvinces() {
        int size = this.lProvinces.size();
        this.iNumOfProvinces = size;
        if (this.iCivRankID != CivilizationRanking.getCivilizationRank(size)) {
            this.iCivRankID = CivilizationRanking.getCivilizationRank(this.iNumOfProvinces);
            Game.gameThreadTurns.addCivUpdateMaxManpower(getCivID());
            Game.gameThread.addCivUpdateLegacyPerMonth(getCivID());
            Game.gameThread.addCivUpdateResearchPerMonth(getCivID());
            Game.gameThread.addCivUpdateTotalIncomePerMonth(this.iCivID);
        }
    }

    public final void updateProsperity_AverageEconomy() {
        long populationTotal = getPopulationTotal();
        float economyWithBonuses = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            economyWithBonuses += Game.getProvince(getProvinceID(numOfProvinces)).getEconomyWithBonuses() * (Game.getProvince(getProvinceID(numOfProvinces)).getPopulationTotal() / populationTotal);
        }
        this.fProsperity_AverageEconomy = economyWithBonuses;
    }

    public final void updateProvinceBorder() {
        for (int i = 0; i < getNumOfProvinces(); i++) {
            Game.updateProvinceBorder(getProvinceID(i));
        }
    }

    public final void updateProvincesIncomeAndExpenses() {
        for (int i = 0; i < getNumOfProvinces(); i++) {
            Game.getProvince(getProvinceID(i)).updateProvinceIncome();
        }
        updateResearchPerMonth();
        updateLegacyPerMonth();
        updateTotalIncomePerMonth();
    }

    public final void updateRecruitArmy(int i, int i2) {
        ArmyRecruit armyRecruit = this.lArmyRecruit.get(i).get(i2);
        armyRecruit.timeLeft--;
        if (armyRecruit.timeLeft > 0) {
            return;
        }
        int i3 = 0;
        if (armyRecruit.toArmyKey != null) {
            try {
                Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(getCivID(), armyRecruit.toArmyKey);
                if (armyPosFindArmy_FullCheck != null) {
                    if (armyPosFindArmy_FullCheck.iProvinceID >= 0 && armyPosFindArmy_FullCheck.iID >= 0 && Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).civID == getCivID()) {
                        Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).addRegiment(new ArmyRegiment(armyRecruit.unitID, armyRecruit.armyID));
                        this.lArmyRecruit.get(i).remove(i2);
                        if (this.lArmyRecruit.get(i).size() == 0) {
                            this.lArmyRecruit.remove(i);
                            this.iArmyRecruitSize = this.lArmyRecruit.size();
                        }
                        this.iArmyRecruitSize_Total = 0;
                        for (int i4 = 0; i4 < this.iArmyRecruitSize; i4++) {
                            this.iArmyRecruitSize_Total += this.lArmyRecruit.get(i4).size();
                        }
                        Game.gameThread.addCivUpdateArmyMaintenance(getCivID());
                        if (getCivID() == Game.player.iCivID) {
                            Game.player.playerStats.recruitedRegiments++;
                            Game.stats.civStats.rr++;
                            Game.menuManager.addRebuildInGame_RightQueue();
                            return;
                        }
                        return;
                    }
                } else if (this.lCreateNewArmy.containsKey(armyRecruit.toArmyKey)) {
                    int iIntValue = this.lCreateNewArmy.get(armyRecruit.toArmyKey).intValue();
                    if (iIntValue >= 0) {
                        if (getNumOfProvinces() > 0) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(new ArmyRegiment(armyRecruit.unitID, armyRecruit.armyID));
                            if (Game.getProvince(iIntValue).getCivID() != getCivID() && Game.getCiv(Game.getProvince(iIntValue).getCivID()).getPuppetOfCivID() != getCivID()) {
                                iIntValue = (getCapitalProvinceID() < 0 || Game.getProvince(getCapitalProvinceID()).getCivID() != getCivID()) ? getProvinceID(0) : getCapitalProvinceID();
                            }
                            ArmyDivision armyDivision = new ArmyDivision(getCivID(), iIntValue, arrayList);
                            armyDivision.key = armyRecruit.toArmyKey;
                            Game.getProvince(iIntValue).addArmy(armyDivision);
                        }
                        this.lCreateNewArmy.remove(armyRecruit.toArmyKey);
                        this.lArmyRecruit.get(i).remove(i2);
                        if (this.lArmyRecruit.get(i).size() == 0) {
                            this.lArmyRecruit.remove(i);
                            this.iArmyRecruitSize = this.lArmyRecruit.size();
                        }
                        this.iArmyRecruitSize_Total = 0;
                        for (int i5 = 0; i5 < this.iArmyRecruitSize; i5++) {
                            this.iArmyRecruitSize_Total += this.lArmyRecruit.get(i5).size();
                        }
                        Game.gameThread.addCivUpdateArmyMaintenance(getCivID());
                        if (getCivID() == Game.player.iCivID) {
                            Game.player.playerStats.recruitedRegiments++;
                            Game.stats.civStats.rr++;
                            Game.menuManager.addRebuildInGame_RightQueue();
                            return;
                        }
                        return;
                    }
                } else {
                    int provinceID = armyRecruit.provinceID;
                    if (provinceID >= 0) {
                        if (getNumOfProvinces() > 0) {
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(new ArmyRegiment(armyRecruit.unitID, armyRecruit.armyID));
                            if (Game.getProvince(provinceID).getCivID() != getCivID() && Game.getCiv(Game.getProvince(provinceID).getCivID()).getPuppetOfCivID() != getCivID()) {
                                provinceID = (getCapitalProvinceID() < 0 || Game.getProvince(getCapitalProvinceID()).getCivID() != getCivID()) ? getProvinceID(0) : getCapitalProvinceID();
                            }
                            ArmyDivision armyDivision2 = new ArmyDivision(getCivID(), provinceID, arrayList2);
                            armyDivision2.key = armyRecruit.toArmyKey;
                            Game.getProvince(provinceID).addArmy(armyDivision2);
                        }
                        this.lArmyRecruit.get(i).remove(i2);
                        if (this.lArmyRecruit.get(i).size() == 0) {
                            this.lArmyRecruit.remove(i);
                            this.iArmyRecruitSize = this.lArmyRecruit.size();
                        }
                        this.iArmyRecruitSize_Total = 0;
                        for (int i6 = 0; i6 < this.iArmyRecruitSize; i6++) {
                            this.iArmyRecruitSize_Total += this.lArmyRecruit.get(i6).size();
                        }
                        Game.gameThread.addCivUpdateArmyMaintenance(getCivID());
                        if (getCivID() == Game.player.iCivID) {
                            Game.player.playerStats.recruitedRegiments++;
                            Game.stats.civStats.rr++;
                            Game.menuManager.addRebuildInGame_RightQueue();
                            return;
                        }
                        return;
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        for (int i7 = 0; i7 < Game.getProvince(armyRecruit.provinceID).getArmySize(); i7++) {
            if (Game.getProvince(armyRecruit.provinceID).getArmy(i7).civID == getCivID()) {
                Game.getProvince(armyRecruit.provinceID).getArmy(i7).addRegiment(new ArmyRegiment(armyRecruit.unitID, armyRecruit.armyID));
                this.lArmyRecruit.get(i).remove(i2);
                if (this.lArmyRecruit.get(i).size() == 0) {
                    this.lArmyRecruit.remove(i);
                    this.iArmyRecruitSize = this.lArmyRecruit.size();
                }
                this.iArmyRecruitSize_Total = 0;
                while (i3 < this.iArmyRecruitSize) {
                    this.iArmyRecruitSize_Total += this.lArmyRecruit.get(i3).size();
                    i3++;
                }
                Game.gameThread.addCivUpdateArmyMaintenance(getCivID());
                if (getCivID() == Game.player.iCivID) {
                    Game.player.playerStats.recruitedRegiments++;
                    Game.stats.civStats.rr++;
                    Game.menuManager.addRebuildInGame_RightQueue();
                    return;
                }
                return;
            }
        }
        if (getNumOfProvinces() > 0) {
            int provinceID2 = armyRecruit.provinceID;
            if ((Game.getProvince(provinceID2).getCivID() != getCivID() && Game.getCiv(Game.getProvince(provinceID2).getCivID()).getPuppetOfCivID() != getCivID()) || Game.getProvince(provinceID2).isOccupied()) {
                if (getCapitalProvinceID() < 0 || Game.getProvince(getCapitalProvinceID()).getCivID() != getCivID() || Game.getProvince(getCapitalProvinceID()).isOccupied()) {
                    int i8 = 0;
                    while (true) {
                        if (i8 >= getNumOfProvinces()) {
                            provinceID2 = -1;
                            break;
                        } else {
                            if (Game.getProvince(getProvinceID(i8)).getCivID() == getCivID() && !Game.getProvince(getProvinceID(i8)).isOccupied()) {
                                provinceID2 = getProvinceID(i8);
                                break;
                            }
                            i8++;
                        }
                    }
                } else {
                    provinceID2 = getCapitalProvinceID();
                }
            }
            if (provinceID2 >= 0) {
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(new ArmyRegiment(armyRecruit.unitID, armyRecruit.armyID));
                Game.getProvince(provinceID2).addArmy(new ArmyDivision(getCivID(), provinceID2, arrayList3));
            }
        }
        this.lArmyRecruit.get(i).remove(i2);
        if (this.lArmyRecruit.get(i).size() == 0) {
            this.lArmyRecruit.remove(i);
            this.iArmyRecruitSize = this.lArmyRecruit.size();
        }
        this.iArmyRecruitSize_Total = 0;
        while (i3 < this.iArmyRecruitSize) {
            this.iArmyRecruitSize_Total += this.lArmyRecruit.get(i3).size();
            i3++;
        }
        Game.gameThread.addCivUpdateArmyMaintenance(getCivID());
        if (getCivID() == Game.player.iCivID) {
            Game.player.playerStats.recruitedRegiments++;
            Game.stats.civStats.rr++;
            Game.menuManager.addRebuildInGame_RightQueue();
        }
    }

    public final void updateRegimentsLimit() {
        this.iRegimentsLimit = (int) ((Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENTS_LIMIT_BASE_VALUE + this.civBonuses.RegimentsLimit + (GameValues.army.REGIMENTS_LIMIT_PER_VASSAL * this.diplomacy.iVassalsSize) + getRegimentsLimit_FromAllianceSpecial() + getRegimentsLimit_Manpower()) * (getCivID() == getPuppetOfCivID() ? 1.0f : GameValues.army.REGIMENTS_LIMIT_VASSAL));
    }

    public final void updateResearchLevel(int i) {
        if (getResearchLevel() != i) {
            setResearchLevel(i);
            updateResearchPerMonth();
            updateTotalIncomePerMonth();
        }
    }

    public final void updateResearchPerMonth() {
        this.fResearchPerMonth = 0.0f;
        for (int i = 0; i < getNumOfProvinces(); i++) {
            this.fResearchPerMonth += Game.getProvince(getProvinceID(i)).provBonuses.ResearchPoints;
        }
        float f = this.fResearchPerMonth + GameValues.research.BASE_RESEARCH + this.civBonuses.ResearchPoints + GameValues.civRank.CIV_RANK_MONTHLY_RESEARCH[this.iCivRankID];
        this.fResearchPerMonth = f;
        this.fResearchPerMonth = f * Math.max(0.0f, (this.civBonuses.Research / 100.0f) + 1.0f + GameValues.budget.TAXATION_LEVEL_RESEARCH[getTaxationLevel()] + GameValues.budget.RESEARCH_LEVEL_RESEARCH[getResearchLevel()]);
        this.fResearchPerMonth = Math.min(TechnologyTree.getMaxResearch(getCivID()), this.fResearchPerMonth);
    }

    public final void updateTaxationLevel(int i) {
        if (getTaxationLevel() != i) {
            setTaxationLevel(i);
            for (int i2 = 0; i2 < getNumOfProvinces(); i2++) {
                Game.getProvince(getProvinceID(i2)).updateProvinceIncome();
            }
            updateResearchPerMonth();
            updateLegacyPerMonth();
            updateTotalIncomePerMonth();
        }
    }

    public void updateTechnologyBonuses(int i) {
        if (TechnologyTree.lTechnology.get(i).BattleWidth != 0) {
            this.civBonuses.BattleWidth += TechnologyTree.lTechnology.get(i).BattleWidth;
        }
        if (TechnologyTree.lTechnology.get(i).UnitsAttack != 0) {
            this.civBonuses.UnitsAttack += TechnologyTree.lTechnology.get(i).UnitsAttack;
        }
        if (TechnologyTree.lTechnology.get(i).UnitsDefense != 0) {
            this.civBonuses.UnitsDefense += TechnologyTree.lTechnology.get(i).UnitsDefense;
        }
        if (TechnologyTree.lTechnology.get(i).GeneralAttack != 0) {
            this.civBonuses.GeneralAttack += TechnologyTree.lTechnology.get(i).GeneralAttack;
        }
        if (TechnologyTree.lTechnology.get(i).GeneralDefense != 0) {
            this.civBonuses.GeneralDefense += TechnologyTree.lTechnology.get(i).GeneralDefense;
        }
        if (TechnologyTree.lTechnology.get(i).MaxMorale != 0) {
            this.civBonuses.MaxMorale += TechnologyTree.lTechnology.get(i).MaxMorale / 100.0f;
        }
        if (TechnologyTree.lTechnology.get(i).Discipline != 0) {
            this.civBonuses.Discipline += TechnologyTree.lTechnology.get(i).Discipline / 100.0f;
        }
        if (TechnologyTree.lTechnology.get(i).MaximumLevelOfCapitalCity != 0) {
            this.civBonuses.MaximumLevelOfCapitalCity += TechnologyTree.lTechnology.get(i).MaximumLevelOfCapitalCity;
        }
        if (TechnologyTree.lTechnology.get(i).MaximumLevelOfTheMilitaryAcademy != 0) {
            this.civBonuses.MaximumLevelOfTheMilitaryAcademy += TechnologyTree.lTechnology.get(i).MaximumLevelOfTheMilitaryAcademy;
        }
        if (TechnologyTree.lTechnology.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals != 0) {
            this.civBonuses.MaximumLevelOfTheMilitaryAcademyForGenerals += TechnologyTree.lTechnology.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals;
        }
        if (TechnologyTree.lTechnology.get(i).UnlocksNukes) {
            this.canBuildNuke = true;
        }
        if (TechnologyTree.lTechnology.get(i).UnlocksAccessToTheSea) {
            this.canAccessSea = true;
        }
        if (TechnologyTree.lTechnology.get(i).UnlocksColonization) {
            this.canColonize = true;
        }
    }

    public final void updateTotalIncomePerMonth() {
        updateIncome();
        updateVassalsIncome();
        this.fTotalIncomePerMonth += (this.fIncomeLord - this.fLoansCost) + this.civBonuses.MaintenanceCost;
    }

    public final void updateTotalProvincesValue() {
        this.fTotalProvincesValue = 0.0f;
        for (int numOfProvinces = getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            this.fTotalProvincesValue += Game.getProvince(getProvinceID(numOfProvinces)).fProvinceValue;
        }
    }

    public final void updateVassalsColors() {
        for (int i = 0; i < this.diplomacy.iVassalsSize; i++) {
            Game.getCiv(this.diplomacy.lVassals.get(i).c).updateColorMap();
        }
    }

    public final void updateVassalsIncome() {
        try {
            this.fIncomeLord = 0.0f;
            for (int i = 0; i < this.diplomacy.lVassals.size(); i++) {
                this.fIncomeLord += Game.getCiv(this.diplomacy.lVassals.get(i).c).fExpenseVassal;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateWarWeariness(float f) {
        setWarWeariness(Math.max(0.0f, Math.min(GameValues.warWeariness.WAR_WEARINESS_MAX, getWarWeariness() + f)));
    }

    public final void update_ChanceOfGeneral_NotAssigned() {
        try {
            for (int i = this.iGeneralsSize - 1; i >= 0; i--) {
                if ((this.lGeneralsNotAssigned.get(i).d % 12) + 1 == Game_Calendar.currentMonth && RulersManager.characterDies(this.iCivID, this.lGeneralsNotAssigned.get(i).y)) {
                    if (this.iCivID == Game.player.iCivID) {
                        Game.player.addNotification(new Notification(Notification.Notification_Type.GENERAL_DIED, Game.lang.get("GeneralDied") + ": " + this.lGeneralsNotAssigned.get(i).n, Images.general, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, Game.player.iCivID));
                        Game.addSimpleTask(new AnonymousClass1("rebuildGenerals"));
                    }
                    this.lGeneralsNotAssigned.remove(i);
                    this.iGeneralsSize = this.lGeneralsNotAssigned.size();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final boolean upgradeCapitalCity() {
        if (this.fGold < Game.getCapital_Cost(getCivID()) || getCapitalLevel() >= Game.getCapital_MaxLvl(getCivID())) {
            return false;
        }
        this.fGold -= Game.getCapital_Cost(getCivID());
        this.civBonuses.MonthlyIncome -= Game.getCapital_Income(getCivID());
        this.civBonuses.ProvinceMaintenance -= Game.getCapital_ProvincesMaintenance(getCivID()) * 100.0f;
        setCapitalLevel(getCapitalLevel() + 1);
        this.civBonuses.MonthlyIncome += Game.getCapital_Income(getCivID());
        this.civBonuses.ProvinceMaintenance += Game.getCapital_ProvincesMaintenance(getCivID()) * 100.0f;
        Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        return true;
    }

    public final boolean upgradeMilitaryAcademy() {
        if (this.fGold < Game.getMilitaryAcademy_Cost(getCivID()) || getMilitaryAcademyLevel() >= Game.getMilitaryAcademy_MaxLvl(getCivID())) {
            return false;
        }
        this.fGold -= Game.getMilitaryAcademy_Cost(getCivID());
        this.civBonuses.UnitsAttack -= Game.getMilitaryAcademy_Attack(getCivID());
        this.civBonuses.UnitsDefense -= Game.getMilitaryAcademy_Defense(getCivID());
        this.civBonuses.MaintenanceCost -= Game.getMilitaryAcademy_MaintenanceCost(getCivID());
        this.civBonuses.RegimentsLimit -= Game.getMilitaryAcademy_RegimentsLimit(getCivID());
        setMilitaryAcademyLevel(getMilitaryAcademyLevel() + 1);
        this.civBonuses.UnitsAttack += Game.getMilitaryAcademy_Attack(getCivID());
        this.civBonuses.UnitsDefense += Game.getMilitaryAcademy_Defense(getCivID());
        this.civBonuses.MaintenanceCost += Game.getMilitaryAcademy_MaintenanceCost(getCivID());
        this.civBonuses.RegimentsLimit += Game.getMilitaryAcademy_RegimentsLimit(getCivID());
        Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        updateRegimentsLimit();
        return true;
    }

    public final boolean upgradeMilitaryAcademyForGenerals() {
        if (this.fGold < Game.getMilitaryAcademyForGenerals_Cost(getCivID()) || getMilitaryAcademyForGeneralsLevel() >= Game.getMilitaryAcademyForGenerals_MaxLvl(getCivID())) {
            return false;
        }
        this.fGold -= Game.getMilitaryAcademyForGenerals_Cost(getCivID());
        this.civBonuses.GeneralAttack -= Game.getMilitaryAcademyForGenerals_GeneralAttack(getCivID());
        this.civBonuses.GeneralDefense -= Game.getMilitaryAcademyForGenerals_GeneralDefense(getCivID());
        this.civBonuses.MaintenanceCost -= Game.getMilitaryAcademyForGenerals_MaintenanceCost(getCivID());
        setMilitaryAcademyForGeneralsLevel(getMilitaryAcademyForGeneralsLevel() + 1);
        this.civBonuses.GeneralAttack += Game.getMilitaryAcademyForGenerals_GeneralAttack(getCivID());
        this.civBonuses.GeneralDefense += Game.getMilitaryAcademyForGenerals_GeneralDefense(getCivID());
        this.civBonuses.MaintenanceCost += Game.getMilitaryAcademyForGenerals_MaintenanceCost(getCivID());
        Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        return true;
    }

    public final boolean upgradeNuclearReactor() {
        if (this.fGold < Game.getNuclearReactor_Cost(getCivID()) || getNuclearReactorLevel() >= Game.getNuclearReactor_MaxLvl(getCivID())) {
            return false;
        }
        this.fGold -= Game.getNuclearReactor_Cost(getCivID());
        this.civBonuses.ProductionEfficiency -= Game.getNuclearReactor_ProductionEfficiency(getCivID());
        setNuclearReactorLevel(getNuclearReactorLevel() + 1);
        this.civBonuses.ProductionEfficiency += Game.getNuclearReactor_ProductionEfficiency(getCivID());
        for (int i = 0; i < getNumOfProvinces(); i++) {
            Game.getProvince(getProvinceID(i)).updateProvinceIncome();
        }
        Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        return true;
    }

    public final boolean upgradeSupremeCourt() {
        if (this.fGold < Game.getSupremeCourt_Cost(getCivID()) || getSupremeCourtLevel() >= Game.getSupremeCourt_MaxLvl(getCivID())) {
            return false;
        }
        this.fGold -= Game.getSupremeCourt_Cost(getCivID());
        setSupremeCourtLevel(getSupremeCourtLevel() + 1);
        CivData3 civData3 = this.civData3;
        civData3.setCorruption(civData3.getCorruption() + GameValues.supremeCourt.SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL);
        for (int i = 0; i < getNumOfProvinces(); i++) {
            Game.getProvince(getProvinceID(i)).updateProvinceIncome();
        }
        Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        return true;
    }
}
