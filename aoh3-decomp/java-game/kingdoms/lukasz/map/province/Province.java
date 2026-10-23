package aoc.kingdoms.lukasz.map.province;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.FBOProvincesBG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.LoadManager;
import aoc.kingdoms.lukasz.map.BonusesManager;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyRegiment;
import aoc.kingdoms.lukasz.map.battles.Battle;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.map.City;
import aoc.kingdoms.lukasz.map.map.Continents;
import aoc.kingdoms.lukasz.map.plague.ProvincePlague;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData_Population;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu_element.Toast;
import aoc.kingdoms.lukasz.menusInGame.InGame_Wonder;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import space.earlygrey.shapedrawer.JoinType;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Province {
    public static ProvinceBorder emptyProvinceBorder = new ProvinceBorder(0, new ArrayList(), new ArrayList());
    private boolean belowZeroPosX;
    public float fBaseGrowthRate;
    public int iCenterShiftX;
    public int iCenterShiftY;
    private int iCenterX;
    private int iCenterX_Real;
    private int iCenterY;
    private int iCenterY_Real;
    private int iGeoRegionID;
    private int iMaxX;
    private int iMaxX_Real;
    private int iMaxY;
    private int iMaxY_Real;
    private int iMinX;
    private int iMinX_Real;
    private int iMinY;
    private int iMinY_Real;
    public int iNeighboringProvincesSize;
    public int iNeighboringSeaProvincesSize;
    private int iPointsSize;
    private int iPortShiftX;
    private int iPortShiftY;
    public int iProvinceID;
    private int iShiftX;
    private int iShiftY;
    private List<Short> lPointsX;
    private List<Short> lPointsY;
    private Image provinceBG = null;
    public int provinceBGExtraY = 0;
    private CopyOnWriteArrayList<ArmyDivision> lArmies = new CopyOnWriteArrayList<>();
    private int iArmiesSize = 0;
    public List<ProvinceConstructedBuilding> buildings = new ArrayList();
    public int iBuildingsSize = 0;
    public int provincePopulationSize = 0;
    public int provincePopulationTotal = 0;
    public List<ProvinceConstructionBuilding> buildingsConstruction = new ArrayList();
    public int iBuildingsConstructionSize = 0;
    public int iBuildingsLimit = GameValues.buildings.BUILDINGS_LIMIT_DEFAULT;
    public List<ProvinceInvest> provinceInvestDaysLeft = new ArrayList();
    public int iProvinceInvestSize = 0;
    public List<ProvinceInvest> provinceIncreaseManpowerDaysLeft = new ArrayList();
    public int iProvinceIncreaseManpowerSize = 0;
    public List<ProvinceInvest> provinceIncreasTaxEfficiencyDaysLeft = new ArrayList();
    public int iProvinceIncreaseTaxEfficiencySize = 0;
    public List<ProvinceInvest> provinceIncreaseGrowthRateDaysLeft = new ArrayList();
    public int iProvinceIncreaseGrowthRateSize = 0;
    public List<ProvinceInvest> provinceDevelopInfrastructureDaysLeft = new ArrayList();
    public int iProvinceDevelopInfrastructureSize = 0;
    public ProvincePlague provincePlague = null;
    public int iInfrastructureMax = GameValues.infrastructure.INFRASTRUCTURE_MAX_DEFAULT;
    public boolean isCapital = false;
    public boolean fogDrawArmy = true;
    public Fog_DrawLandProvince fog_drawLandProvince = new AnonymousClass1();
    public int wonderID = -1;
    public ProvinceInvest wonderConstruction = null;
    public ProvinceBonuses provBonuses = new ProvinceBonuses();
    public ProvinceInvest religionConversion = null;
    public int iCoresSize = 0;
    public boolean haveACore = false;
    public ProvinceInvest coreCreation = null;
    private String sProvinceName = "";
    private String sProvinceNameUpperCase = "";
    public int iProvinceNameLength_Minus1 = 0;
    private int iContinentID = 1;
    private int iTerrainTypeID = 1;
    private int iResourceID = -1;
    public float BaseDevelopment = 1.0f;
    private int iLevelOfPort = 0;
    private boolean seaProvince = false;
    private List<City> lCities = new ArrayList();
    private boolean drawCities = true;
    private int iCitiesSize = 0;
    private boolean haveCity = false;
    public float fProvinceIncome = 0.0f;
    public float fProvinceIncomeTaxation = 0.0f;
    public float fProvinceIncomeEconomy = 0.0f;
    public float fProvinceIncomeProduction = 0.0f;
    public float fProvinceMaintenance = 0.0f;
    public float fProvinceValue = 1.0f;
    public boolean peaceTreatyIsToTake = false;
    public boolean peaceTreatyIsTaken = false;
    public int aiPeaceCivID = 0;
    public int aiPeaceScore = 0;
    public float aiInvestScore = 0.0f;
    public float aiBuildScore = 0.0f;
    public float aiScore_CoresReligion = 0.0f;
    public float aiDistanceToCapital = 1.0f;
    public int aiRecruitArmyScore = 0;
    public float aiArmyScore = 0.0f;
    public float aiMoveArmyAtWarScore = 0.0f;
    public float aiMoveArmyAtWarScore_DistanceFromArmy = 0.0f;
    public boolean aiRebelsIndependenceChecked = false;
    private int iTranslateProvincePosX = 0;
    private boolean drawProvince = false;
    private int iCivRegionID = -1;
    private int iMapModeRegion = -1;
    public boolean was = false;
    public boolean wasCivRegion = false;
    public boolean wasCities = false;
    public boolean wasAI = false;
    public boolean wasPlayer = false;
    public boolean wasRetreat = false;
    public boolean wasBattleStart = false;
    public boolean wasBattleEnded = false;
    public int iBattlesInProvince = 0;
    public boolean drawInMapMode = false;
    public float cityScale = 1.0f;
    public List<Integer> lNeighboringProvinces = new ArrayList();
    public List<Integer> lNeighboringSeaProvinces = new ArrayList();
    public boolean accessToMainSea = false;
    private List<ProvinceBorder> lProvinceBordersLandByLand = new ArrayList();
    private List<ProvinceBorder> lProvinceBordersLandBySea = new ArrayList();
    private List<ProvinceBorder> lProvinceBordersSeaBySea = new ArrayList();
    private int iProvinceBordersLandByLandSize = 0;
    private int iProvinceBordersLandBySeaSize = 0;
    private int iProvinceBordersSeaBySeaSize = 0;
    public Color provinceColor = Color.WHITE;
    private ProvinceDrawArmy.ProvinceDrawArmyINT drawArmy = new AnonymousClass2();
    public ProvinceDrawArmy.ProvinceDrawDetailsINT drawDetails = new AnonymousClass4();
    private float lastUpdatedDevastation = 0.0f;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$1, reason: invalid class name */
    class AnonymousClass1 implements Fog_DrawLandProvince {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.Province.Fog_DrawLandProvince
        public void drawLandProvinceFog(SpriteBatch spriteBatch, float f) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$10, reason: invalid class name */
    class AnonymousClass10 extends Game.SimpleTask {
        AnonymousClass10(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            CivilizationRegionsManager.buildCivilizationsRegion(this.id);
            Game.updateProvincesInView = true;
            CivilizationRegionsManager.updateRegionsInView = true;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$11, reason: invalid class name */
    class AnonymousClass11 extends Game.SimpleTask {
        AnonymousClass11(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.getCiv(this.id).updateCivStability();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$12, reason: invalid class name */
    class AnonymousClass12 extends Game.SimpleTask {
        AnonymousClass12(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.getCiv(this.id).updateCivStability();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$13, reason: invalid class name */
    class AnonymousClass13 extends Notification {
        AnonymousClass13(Notification.Notification_Type notification_Type, String str, int i, int i2, Notification.Notification_BG notification_BG, int i3) {
            super(notification_Type, str, i, i2, notification_BG, i3);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification
        public void onAction() {
            Game.mapCoords.centerToProvinceID(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$14, reason: invalid class name */
    class AnonymousClass14 extends Notification {
        AnonymousClass14(Notification.Notification_Type notification_Type, String str, int i, int i2, Notification.Notification_BG notification_BG, int i3) {
            super(notification_Type, str, i, i2, notification_BG, i3);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification
        public void onAction() {
            Game.mapCoords.centerToProvinceID(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$15, reason: invalid class name */
    class AnonymousClass15 implements Fog_DrawLandProvince {
        AnonymousClass15() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.Province.Fog_DrawLandProvince
        public void drawLandProvinceFog(SpriteBatch spriteBatch, float f) {
            Province.this.drawLandProvince(spriteBatch, f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$16, reason: invalid class name */
    class AnonymousClass16 implements Fog_DrawLandProvince {
        AnonymousClass16() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.Province.Fog_DrawLandProvince
        public void drawLandProvinceFog(SpriteBatch spriteBatch, float f) {
            Province.this.drawLandProvince_Fog(spriteBatch, f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$2, reason: invalid class name */
    class AnonymousClass2 implements ProvinceDrawArmy.ProvinceDrawArmyINT {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawArmyINT
        public void drawArmy(SpriteBatch spriteBatch, int i, int i2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$3, reason: invalid class name */
    class AnonymousClass3 extends Notification {
        AnonymousClass3(Notification.Notification_Type notification_Type, String str, int i, int i2, Notification.Notification_BG notification_BG, int i3) {
            super(notification_Type, str, i, i2, notification_BG, i3);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification
        public void onAction() {
            Game.mapCoords.centerToProvinceID(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$4, reason: invalid class name */
    class AnonymousClass4 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$5, reason: invalid class name */
    class AnonymousClass5 extends Game.SimpleTask {
        AnonymousClass5(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            CivilizationRegionsManager.buildCivilizationsRegion(this.id);
            Game.updateProvincesInView = true;
            CivilizationRegionsManager.updateRegionsInView = true;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$6, reason: invalid class name */
    class AnonymousClass6 extends Game.SimpleTask {
        AnonymousClass6(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.getCiv(this.id).updateCivStability();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$7, reason: invalid class name */
    class AnonymousClass7 extends Game.SimpleTask {
        AnonymousClass7(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.getCiv(this.id).civNeighbors.buildNeighbors(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$8, reason: invalid class name */
    class AnonymousClass8 extends Game.SimpleTask {
        AnonymousClass8(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.getCiv(this.id).updateCivStability();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.Province$9, reason: invalid class name */
    class AnonymousClass9 extends Game.SimpleTask {
        AnonymousClass9(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.getCiv(this.id).civNeighbors.buildNeighbors(this.id);
        }
    }

    public interface Fog_DrawLandProvince {
        void drawLandProvinceFog(SpriteBatch spriteBatch, float f);
    }

    public Province(int i, List<Short> list, List<Short> list2) {
        this.iProvinceID = 0;
        this.belowZeroPosX = false;
        this.iProvinceID = i;
        this.lPointsX = list;
        this.lPointsY = list2;
        this.iPointsSize = list.size();
        short sShortValue = this.lPointsX.get(0).shortValue();
        this.iMaxX_Real = sShortValue;
        this.iMinX_Real = sShortValue;
        short sShortValue2 = this.lPointsY.get(0).shortValue();
        this.iMaxY_Real = sShortValue2;
        this.iMinY_Real = sShortValue2;
        for (int i2 = 0; i2 < this.iPointsSize; i2++) {
            if (this.iMinX_Real > this.lPointsX.get(i2).shortValue()) {
                this.iMinX_Real = this.lPointsX.get(i2).shortValue();
            }
            if (this.iMaxX_Real < this.lPointsX.get(i2).shortValue()) {
                this.iMaxX_Real = this.lPointsX.get(i2).shortValue();
            }
            if (this.iMinY_Real > this.lPointsY.get(i2).shortValue()) {
                this.iMinY_Real = this.lPointsY.get(i2).shortValue();
            }
            if (this.iMaxY_Real < this.lPointsY.get(i2).shortValue()) {
                this.iMaxY_Real = this.lPointsY.get(i2).shortValue();
            }
        }
        int i3 = this.iMinX_Real;
        int i4 = this.iMaxX_Real;
        this.iCenterX_Real = (i3 + i4) / 2;
        this.iCenterY_Real = (this.iMinY_Real + this.iMaxY_Real) / 2;
        this.iCenterX = ((i3 + i4) / 2) * Game.mapBG.iMapScale;
        this.iCenterY = ((this.iMinY_Real + this.iMaxY_Real) / 2) * Game.mapBG.iMapScale;
        this.iMinX = this.iMinX_Real * Game.mapBG.iMapScale;
        this.iMaxX = this.iMaxX_Real * Game.mapBG.iMapScale;
        this.iMinY = this.iMinY_Real * Game.mapBG.iMapScale;
        this.iMaxY = this.iMaxY_Real * Game.mapBG.iMapScale;
        this.belowZeroPosX = this.iMinX < 0;
        int i5 = Game.MAX_BELOW_ZERO_POINT_X;
        int i6 = this.iMinX;
        if (i5 > i6) {
            Game.MAX_BELOW_ZERO_POINT_X = i6;
        }
    }

    public final String addArmy(ArmyDivision armyDivision) {
        if (armyDivision == null || armyDivision.iArmyRegimentSize <= 0) {
            return null;
        }
        if (Game.FOG_OF_WAR && GameValues.fog.HIDE_ARMIES) {
            Renderer.addSimpleTask_ArmyWidth(new Renderer.SimpleTaskArmyText(armyDivision.key, armyDivision, false));
        }
        armyDivision.provinceID = getProvinceID();
        this.lArmies.add(armyDivision);
        this.iArmiesSize = this.lArmies.size();
        updateDrawArmy();
        updateArmyPosY();
        if (armyDivision.civID < 0) {
            Game.revolutionManager.addArmyPosition(getProvinceID(), armyDivision.key);
        } else {
            Game.getCiv(armyDivision.civID).addArmyPosition(getProvinceID(), armyDivision.key);
        }
        checkForBattle();
        return armyDivision.key;
    }

    public final String addArmy_Load(ArmyDivision armyDivision) {
        if (armyDivision == null || armyDivision.iArmyRegimentSize <= 0) {
            return null;
        }
        armyDivision.provinceID = getProvinceID();
        this.lArmies.add(armyDivision);
        this.iArmiesSize = this.lArmies.size();
        updateDrawArmy();
        updateArmyPosY();
        if (armyDivision.civID < 0) {
            Game.revolutionManager.addArmyPosition(getProvinceID(), armyDivision.key);
        } else {
            Game.getCiv(armyDivision.civID).addArmyPosition(getProvinceID(), armyDivision.key);
        }
        return armyDivision.key;
    }

    public final void addArmy_MoveUnits(ArmyDivision armyDivision) {
        if (armyDivision.iArmyRegimentSize > 0) {
            if (Game.FOG_OF_WAR && GameValues.fog.HIDE_ARMIES) {
                Renderer.addSimpleTask_ArmyWidth(new Renderer.SimpleTaskArmyText(armyDivision.key, armyDivision, false));
            }
            armyDivision.provinceID = getProvinceID();
            this.lArmies.add(armyDivision);
            this.iArmiesSize = this.lArmies.size();
            updateDrawArmy();
            updateArmyPosY();
            checkForBattle();
        }
    }

    public final boolean addBuildingConstruction(int i, int i2) {
        if (isOccupied() || getUsedBuildingsSlots() >= this.iBuildingsLimit) {
            return false;
        }
        if (BuildingsManager.buildings.get(i).RequiredResource >= 0 && BuildingsManager.buildings.get(i).RequiredResource != getResourceID()) {
            return false;
        }
        if (BuildingsManager.buildings.get(i).RequiredGovernmentID >= 0 && BuildingsManager.buildings.get(i).RequiredGovernmentID != Game.getCiv(getCivID()).getIdeologyID()) {
            return false;
        }
        if (BuildingsManager.buildings.get(i).RequiredReligionID >= 0 && BuildingsManager.buildings.get(i).RequiredReligionID != Game.getCiv(getCivID()).getReligionID()) {
            return false;
        }
        if (BuildingsManager.buildings.get(i).SeaAccessRequired && getLevelOfPort() < 0) {
            return false;
        }
        for (int i3 = 0; i3 < this.iBuildingsConstructionSize; i3++) {
            if (this.buildingsConstruction.get(i3).getBuilding() == i && this.buildingsConstruction.get(i3).getBuildingID() == i2) {
                return false;
            }
        }
        if (buildingBuilt(i, i2) || Game.getCiv(getCivID()).fGold < Game.getBuildingConstructionCost(getCivID(), getProvinceID(), i, i2)) {
            return false;
        }
        ProvinceConstructionBuilding provinceConstructionBuilding = new ProvinceConstructionBuilding(i, i2, Game.getBuildingConstructionTime(getCivID(), getProvinceID(), i, i2), Game.getBuildingConstructionTime(getCivID(), getProvinceID(), i, i2));
        Game.getCiv(getCivID()).fGold -= Game.getBuildingConstructionCost(getCivID(), getProvinceID(), i, i2);
        this.buildingsConstruction.add(provinceConstructionBuilding);
        this.iBuildingsConstructionSize = this.buildingsConstruction.size();
        Game.gameThreadTurns.addProvinceBuildingsUnderConstruction(getProvinceID());
        if (getCivID() != Game.player.iCivID) {
            return true;
        }
        Game.menuManager.addRebuildInGame_RightQueue();
        return true;
    }

    public final void addBuildingConstruction_Load(ProvinceConstructionBuilding provinceConstructionBuilding) {
        this.buildingsConstruction.add(provinceConstructionBuilding);
        this.iBuildingsConstructionSize = this.buildingsConstruction.size();
        Game.gameThreadTurns.addProvinceBuildingsUnderConstruction(getProvinceID());
    }

    public final void addCity(City city) {
        this.lCities.add(city);
        int size = this.lCities.size();
        this.iCitiesSize = size;
        this.haveCity = size > 0;
    }

    public void addCore(int i) {
        for (int i2 = 0; i2 < this.iCoresSize; i2++) {
            if (Game.getProvinceData5(getProvinceID()).co.get(i2).intValue() == i) {
                if (i == getCivID()) {
                    this.haveACore = true;
                    return;
                }
                return;
            }
        }
        Game.getProvinceData5(getProvinceID()).co.add(Integer.valueOf(i));
        this.iCoresSize = Game.getProvinceData5(getProvinceID()).co.size();
        this.haveACore = false;
        for (int i3 = 0; i3 < this.iCoresSize; i3++) {
            if (Game.getProvinceData5(getProvinceID()).co.get(i3).intValue() == getCivID()) {
                this.haveACore = true;
                updateProvinceIncome();
                Game.gameThreadTurns.addCivUpdateMaxManpower(getCivID());
                Game.gameThread.addCivUpdateLegacyPerMonth(getCivID());
                Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
                break;
            }
        }
        Game.getCiv(getCivID()).civilizationCores.checkProvince(getProvinceID(), getCivID());
    }

    public final boolean addCoreCreation() {
        if (this.coreCreation != null || isOccupied() || haveACore(getCivID()) || Game.getCiv(getCivID()).fGold < Game.getCoreCreationCost(getProvinceID())) {
            return false;
        }
        Game.getCiv(getCivID()).fGold -= Game.getCoreCreationCost(getProvinceID());
        this.coreCreation = new ProvinceInvest(Game.getCoreCreationTime(getProvinceID()), Game.getCoreCreationTime(getProvinceID()));
        Game.gameThreadTurns.addProvinceCoreCreation(getProvinceID());
        Game.getCiv(getCivID()).civilizationCores.removeProvince(getProvinceID());
        return true;
    }

    public final void addCoreCreation_Load(int i, int i2) {
        if (haveACore(getCivID())) {
            return;
        }
        this.coreCreation = new ProvinceInvest(i, i2);
        Game.gameThreadTurns.addProvinceCoreCreation(getProvinceID());
    }

    public void addCore_Just(int i) {
        for (int i2 = 0; i2 < this.iCoresSize; i2++) {
            if (Game.getProvinceData5(getProvinceID()).co.get(i2).intValue() == i) {
                if (i == getCivID()) {
                    this.haveACore = true;
                    return;
                }
                return;
            }
        }
        Game.getProvinceData5(getProvinceID()).co.add(Integer.valueOf(i));
        this.iCoresSize = Game.getProvinceData5(getProvinceID()).co.size();
        updateHaveACore();
    }

    public boolean addDevelopInfrastructure() {
        return addDevelopInfrastructure(getCivID());
    }

    public boolean addDevelopInfrastructure(int i) {
        if (Game.getCiv(i).fGold < Game.getDevelopInfrastructureCost(getProvinceID()) || Game.getCiv(i).fLegacy < Game.getDevelopInfrastructureCostLegacy(getProvinceID()) || getInfrastructure() + this.iProvinceDevelopInfrastructureSize >= this.iInfrastructureMax) {
            return false;
        }
        Game.getCiv(i).fGold -= Game.getDevelopInfrastructureCost(getProvinceID());
        Game.getCiv(i).fLegacy -= Game.getDevelopInfrastructureCostLegacy(getProvinceID());
        int developInfrastructureTime = Game.getDevelopInfrastructureTime(getCivID());
        this.provinceDevelopInfrastructureDaysLeft.add(new ProvinceInvest(developInfrastructureTime, developInfrastructureTime));
        this.iProvinceDevelopInfrastructureSize = this.provinceDevelopInfrastructureDaysLeft.size();
        Game.gameThreadTurns.addProvinceDevelopInfrastructure(getProvinceID());
        Game.getCiv(i).eventsData.addDevelopedInfrastructure(1);
        return true;
    }

    public boolean addDevelopInfrastructure_Free() {
        if (getInfrastructure() + this.iProvinceDevelopInfrastructureSize >= this.iInfrastructureMax) {
            return false;
        }
        int developInfrastructureTime = Game.getDevelopInfrastructureTime(getCivID());
        this.provinceDevelopInfrastructureDaysLeft.add(new ProvinceInvest(developInfrastructureTime, developInfrastructureTime));
        this.iProvinceDevelopInfrastructureSize = this.provinceDevelopInfrastructureDaysLeft.size();
        Game.gameThreadTurns.addProvinceDevelopInfrastructure(getProvinceID());
        return true;
    }

    public void addDevelopInfrastructure_Load(int i, int i2) {
        this.provinceDevelopInfrastructureDaysLeft.add(new ProvinceInvest(i, i2));
        this.iProvinceDevelopInfrastructureSize = this.provinceDevelopInfrastructureDaysLeft.size();
        Game.gameThreadTurns.addProvinceDevelopInfrastructure(getProvinceID());
    }

    public boolean addIncreaseGrowthRateInProvince() {
        return addIncreaseGrowthRateInProvince(getCivID());
    }

    public boolean addIncreaseGrowthRateInProvince(int i) {
        if (Game.getCiv(i).fGold < Game.getIncreaseGrowthRateCost(getProvinceID())) {
            return false;
        }
        Game.getCiv(i).fGold -= Game.getIncreaseGrowthRateCost(getProvinceID());
        int increaseGrowthRateTime = Game.getIncreaseGrowthRateTime(getCivID());
        this.provinceIncreaseGrowthRateDaysLeft.add(new ProvinceInvest(increaseGrowthRateTime, increaseGrowthRateTime));
        this.iProvinceIncreaseGrowthRateSize = this.provinceIncreaseGrowthRateDaysLeft.size();
        Game.gameThreadTurns.addProvinceIncreaseGrowthRate(getProvinceID());
        Game.getCiv(i).eventsData.addIncreasedGrowthRate((int) (GameValues.growthRate.INCREASE_GROWTH_RATE_GROWTH * 100.0f));
        return true;
    }

    public void addIncreaseGrowthRateInProvince_Load(int i, int i2) {
        this.provinceIncreaseGrowthRateDaysLeft.add(new ProvinceInvest(i, i2));
        this.iProvinceIncreaseGrowthRateSize = this.provinceIncreaseGrowthRateDaysLeft.size();
        Game.gameThreadTurns.addProvinceIncreaseGrowthRate(getProvinceID());
    }

    public boolean addIncreaseManpowerInProvince() {
        return addIncreaseManpowerInProvince(getCivID());
    }

    public boolean addIncreaseManpowerInProvince(int i) {
        if (Game.getCiv(i).fGold < Game.getIncreaseManpowerCost(getProvinceID()) || Game.getCiv(i).fLegacy < Game.getIncreaseManpowerCostLegacy(getProvinceID())) {
            return false;
        }
        Game.getCiv(i).fGold -= Game.getIncreaseManpowerCost(getProvinceID());
        Game.getCiv(i).fLegacy -= Game.getIncreaseManpowerCostLegacy(getProvinceID());
        int increseManpowerTime = Game.getIncreseManpowerTime(getCivID());
        this.provinceIncreaseManpowerDaysLeft.add(new ProvinceInvest(increseManpowerTime, increseManpowerTime));
        this.iProvinceIncreaseManpowerSize = this.provinceIncreaseManpowerDaysLeft.size();
        Game.gameThreadTurns.addProvinceIncreaseManpower(getProvinceID());
        Game.getCiv(i).eventsData.addIncreasedManpower((int) (GameValues.manpower.INCREASE_MANPOWER_GROWTH * 100.0f));
        return true;
    }

    public void addIncreaseManpowerInProvince_Load(int i, int i2) {
        this.provinceIncreaseManpowerDaysLeft.add(new ProvinceInvest(i, i2));
        this.iProvinceIncreaseManpowerSize = this.provinceIncreaseManpowerDaysLeft.size();
        Game.gameThreadTurns.addProvinceIncreaseManpower(getProvinceID());
    }

    public boolean addIncreaseTaxEfficiencyInProvince() {
        return addIncreaseTaxEfficiencyInProvince(getCivID());
    }

    public boolean addIncreaseTaxEfficiencyInProvince(int i) {
        if (Game.getCiv(i).fGold < Game.getIncreaseTaxEfficiencyCost(getProvinceID()) || Game.getCiv(i).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(getProvinceID())) {
            return false;
        }
        Game.getCiv(i).fGold -= Game.getIncreaseTaxEfficiencyCost(getProvinceID());
        Game.getCiv(i).fLegacy -= Game.getIncreaseTaxEfficiencyCostLegacy(getProvinceID());
        int increasTaxEfficiencyTime = Game.getIncreasTaxEfficiencyTime(getCivID());
        this.provinceIncreasTaxEfficiencyDaysLeft.add(new ProvinceInvest(increasTaxEfficiencyTime, increasTaxEfficiencyTime));
        this.iProvinceIncreaseTaxEfficiencySize = this.provinceIncreasTaxEfficiencyDaysLeft.size();
        Game.gameThreadTurns.addProvinceIncreaseTaxEfficiency(getProvinceID());
        Game.getCiv(i).eventsData.addIncreasedTaxEfficiency((int) (GameValues.tax.INCREASE_TAX_EFFICIENCY_GROWTH * 100.0f));
        return true;
    }

    public void addIncreaseTaxEfficiencyInProvince_Load(int i, int i2) {
        this.provinceIncreasTaxEfficiencyDaysLeft.add(new ProvinceInvest(i, i2));
        this.iProvinceIncreaseTaxEfficiencySize = this.provinceIncreasTaxEfficiencyDaysLeft.size();
        Game.gameThreadTurns.addProvinceIncreaseTaxEfficiency(getProvinceID());
    }

    public boolean addInvestInProvince() {
        return addInvestInProvince(getCivID());
    }

    public boolean addInvestInProvince(int i) {
        if (Game.getCiv(i).fGold < Game.getInvestCost(getProvinceID()) || Game.getCiv(i).fLegacy < Game.getInvestCost_Legacy(getProvinceID()) || Game.canInvestInEconomy(this.iProvinceID)) {
            return false;
        }
        Game.getCiv(i).fGold -= Game.getInvestCost(getProvinceID());
        Game.getCiv(i).fLegacy -= Game.getInvestCost_Legacy(getProvinceID());
        int investTime = Game.getInvestTime(getCivID());
        this.provinceInvestDaysLeft.add(new ProvinceInvest(investTime, investTime));
        this.iProvinceInvestSize = this.provinceInvestDaysLeft.size();
        Game.gameThreadTurns.addProvinceInvest(getProvinceID());
        Game.getCiv(i).eventsData.addInvestedInEconomy((int) (Game.getInvestEconomyGrowth(getProvinceID()) * 100.0f));
        return true;
    }

    public void addInvestInProvince_Load(int i, int i2) {
        this.provinceInvestDaysLeft.add(new ProvinceInvest(i, i2));
        this.iProvinceInvestSize = this.provinceInvestDaysLeft.size();
        Game.gameThreadTurns.addProvinceInvest(getProvinceID());
    }

    public final void addNeighboringProvince(int i) {
        this.lNeighboringProvinces.add(Integer.valueOf(i));
        this.iNeighboringProvincesSize = this.lNeighboringProvinces.size();
    }

    public final void addNeighboringSeaProvince(int i) {
        this.lNeighboringSeaProvinces.add(Integer.valueOf(i));
        this.iNeighboringSeaProvincesSize = this.lNeighboringSeaProvinces.size();
        updateAccessToMainSea();
    }

    public final void addNewBuilding(ProvinceConstructedBuilding provinceConstructedBuilding) {
        for (int i = 0; i < this.iBuildingsSize; i++) {
            if (this.buildings.get(i).getBuilding() == provinceConstructedBuilding.getBuilding() && this.buildings.get(i).getBuildingID() == provinceConstructedBuilding.getBuildingID()) {
                return;
            }
        }
        this.buildings.add(provinceConstructedBuilding);
        this.iBuildingsSize = this.buildings.size();
    }

    public final void addNewBuilding_LoadScenario(ProvinceConstructedBuilding provinceConstructedBuilding) {
        for (int i = 0; i < this.iBuildingsSize; i++) {
            if (this.buildings.get(i).getBuilding() == provinceConstructedBuilding.getBuilding() && this.buildings.get(i).getBuildingID() == provinceConstructedBuilding.getBuildingID()) {
                return;
            }
        }
        this.buildings.add(provinceConstructedBuilding);
        this.iBuildingsSize = this.buildings.size();
        BonusesManager.updateBuildingBonuses(getProvinceID(), provinceConstructedBuilding.getBuilding(), provinceConstructedBuilding.getBuildingID(), 1);
    }

    public final void addProvinceBorder(int i, List<Integer> list, List<Integer> list2) {
        for (int i2 = 0; i2 < this.iProvinceBordersLandByLandSize; i2++) {
            if (i == this.lProvinceBordersLandByLand.get(i2).getWithProvinceID()) {
                return;
            }
        }
        for (int i3 = 0; i3 < this.iProvinceBordersLandBySeaSize; i3++) {
            if (i == this.lProvinceBordersLandBySea.get(i3).getWithProvinceID()) {
                return;
            }
        }
        for (int i4 = 0; i4 < this.iProvinceBordersSeaBySeaSize; i4++) {
            if (i == this.lProvinceBordersSeaBySea.get(i4).getWithProvinceID()) {
                return;
            }
        }
        if (getSeaProvince() && Game.getProvince(i).getSeaProvince()) {
            this.lProvinceBordersSeaBySea.add(new ProvinceBorder(i, list, list2));
            int size = this.lProvinceBordersSeaBySea.size();
            this.iProvinceBordersSeaBySeaSize = size;
            this.lProvinceBordersSeaBySea.get(size - 1).updateDrawProvinceBorder(this.iProvinceID);
            return;
        }
        if (getSeaProvince() || Game.getProvince(i).getSeaProvince()) {
            this.lProvinceBordersLandBySea.add(new ProvinceBorder(i, list, list2));
            int size2 = this.lProvinceBordersLandBySea.size();
            this.iProvinceBordersLandBySeaSize = size2;
            this.lProvinceBordersLandBySea.get(size2 - 1).updateDrawProvinceBorder(this.iProvinceID);
            return;
        }
        this.lProvinceBordersLandByLand.add(new ProvinceBorder(i, list, list2));
        int size3 = this.lProvinceBordersLandByLand.size();
        this.iProvinceBordersLandByLandSize = size3;
        this.lProvinceBordersLandByLand.get(size3 - 1).updateDrawProvinceBorder(this.iProvinceID);
    }

    public final boolean addReligionConversion() {
        if (this.religionConversion != null || Game.getCiv(getCivID()).getReligionID() == getReligion() || Game.getCiv(getCivID()).fGold < Game.religionManager.getReligionConversionCost(getProvinceID())) {
            return false;
        }
        Game.getCiv(getCivID()).fGold -= Game.religionManager.getReligionConversionCost(getProvinceID());
        this.religionConversion = new ProvinceInvest(Game.religionManager.getReligionConversionTime(getProvinceID()), Game.religionManager.getReligionConversionTime(getProvinceID()));
        Game.getCiv(getCivID()).convertReligion.removeProvince(getProvinceID());
        Game.gameThreadTurns.addProvinceConvertReligion(getProvinceID());
        return true;
    }

    public final void addReligionConversion_Load(int i, int i2) {
        if (Game.getCiv(getCivID()).getReligionID() != getReligion()) {
            this.religionConversion = new ProvinceInvest(i, i2);
            Game.gameThreadTurns.addProvinceConvertReligion(getProvinceID());
        }
    }

    public final void addWonderConstruction_Load(int i, int i2) {
        if (this.wonderID < 0 || this.wonderConstruction != null || getWonderBuilt()) {
            return;
        }
        this.wonderConstruction = new ProvinceInvest(i, i2);
        Game.gameThreadTurns.addProvinceWonderConstruction(getProvinceID());
    }

    public final void armyDestroyed(String str) {
        try {
            if (getArmy(str) == null) {
                return;
            }
            if (getArmy(str).civID == Game.player.iCivID) {
                Game.player.addNotification(new AnonymousClass3(Notification.Notification_Type.ARMY_DESTROYED, getProvinceName() + ": " + Game.lang.get("ArmyDestroyed"), Images.battle, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, getProvinceID()));
            }
            removeArmy(str);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final int armyRetreat(String str, int i) {
        try {
            int armyKeyID = getArmyKeyID(str);
            if (armyKeyID < 0) {
                return i;
            }
            int i2 = getArmy(armyKeyID).civID;
            if (i2 < 0) {
                Game.getProvince(this.iProvinceID).armyDestroyed(str);
                return 0;
            }
            int iRetreatToProvinceID = WarManager.retreatToProvinceID(i2, this.iProvinceID);
            if (iRetreatToProvinceID < 0) {
                ArrayList arrayList = new ArrayList();
                if (getNeighboringProvincesSize() > 0) {
                    for (int i3 = 0; i3 < getNeighboringProvincesSize(); i3++) {
                        if (DiplomacyManager.isAtWar(i2, Game.getProvince(getNeighboringProvinces(i3)).getCivID()) && Game.getProvince(getNeighboringProvinces(i3)).isOccupied() && getNeighboringProvinces(i3) != getProvinceID()) {
                            arrayList.add(Integer.valueOf(getNeighboringProvinces(i3)));
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    iRetreatToProvinceID = ((Integer) arrayList.get(Game.oR.nextInt(arrayList.size()))).intValue();
                } else if (getNeighboringSeaProvincesSize() > 0) {
                    iRetreatToProvinceID = getNeighboringSeaProvinces(Game.oR.nextInt(getNeighboringSeaProvincesSize()));
                }
            } else {
                ArrayList arrayList2 = new ArrayList();
                for (int i4 = 0; i4 < Game.getProvince(iRetreatToProvinceID).getNeighboringProvincesSize(); i4++) {
                    if (i2 == Game.getProvince(Game.getProvince(iRetreatToProvinceID).getNeighboringProvinces(i4)).getCivID()) {
                        if (Game.getProvince(iRetreatToProvinceID).getNeighboringProvinces(i4) != getProvinceID() && !Game.getProvince(Game.getProvince(iRetreatToProvinceID).getNeighboringProvinces(i4)).isOccupied()) {
                            arrayList2.add(Integer.valueOf(Game.getProvince(iRetreatToProvinceID).getNeighboringProvinces(i4)));
                        }
                        for (int i5 = 0; i5 < Game.getProvince(Game.getProvince(iRetreatToProvinceID).getNeighboringProvinces(i4)).getNeighboringProvincesSize(); i5++) {
                            if (i2 == Game.getProvince(Game.getProvince(Game.getProvince(iRetreatToProvinceID).getNeighboringProvinces(i4)).getNeighboringProvinces(i5)).getCivID() && Game.getProvince(Game.getProvince(iRetreatToProvinceID).getNeighboringProvinces(i4)).getNeighboringProvinces(i5) != getProvinceID() && !Game.getProvince(Game.getProvince(Game.getProvince(iRetreatToProvinceID).getNeighboringProvinces(i4)).getNeighboringProvinces(i5)).isOccupied()) {
                                arrayList2.add(Integer.valueOf(Game.getProvince(Game.getProvince(iRetreatToProvinceID).getNeighboringProvinces(i4)).getNeighboringProvinces(i5)));
                            }
                        }
                    }
                }
                if (!arrayList2.isEmpty()) {
                    iRetreatToProvinceID = ((Integer) arrayList2.get(Game.oR.nextInt(arrayList2.size()))).intValue();
                }
            }
            if (i2 == Game.player.iCivID) {
                Game.player.playerData.invasion.removeInvasion(str);
            }
            if (iRetreatToProvinceID < 0 || DiplomacyManager.isAtWar(Game.getProvince(iRetreatToProvinceID).getCivID(), i2)) {
                return -1;
            }
            int i6 = i + 1;
            try {
                Game.getCiv(i2).newMove(getProvinceID(), iRetreatToProvinceID, str, i, true);
                return i6;
            } catch (Exception e) {
                e = e;
                i = i6;
                CFG.exceptionStack(e);
                return i;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final int atomicBombDropped() {
        int populationTotal = getPopulationTotal();
        try {
            float atomicBombCasualties = Game.getAtomicBombCasualties(getProvinceID());
            if (atomicBombCasualties > 0.0f) {
                for (int populationSize = getPopulationSize() - 1; populationSize >= 0; populationSize--) {
                    setPopulationOfCivID(getPopulationCivID(populationSize), (int) (((double) getPopulationID(populationSize)) - Math.floor(getPopulationID(populationSize) * atomicBombCasualties)));
                }
            }
            setEconomy(getEconomy() - (getEconomy() * Math.max(0.01f, GameValues.atomic.ATOMIC_BOMB_ECONOMY)));
            for (int i = this.iArmiesSize - 1; i >= 0; i--) {
                for (int i2 = getArmy(i).iArmyRegimentSize - 1; i2 >= 0; i2--) {
                    getArmy(i).lArmyRegiment.get(i2).num = Math.max(0, (int) (getArmy(i).lArmyRegiment.get(i2).num - (getArmy(i).lArmyRegiment.get(i2).num * GameValues.atomic.ATOMIC_BOMB_ARMY)));
                }
                getArmy(i).updateArmy(true);
            }
            setDevastation(getDevastation() + GameValues.atomic.ATOMIC_BOMB_DEVASTATION);
            updateProvinceIncome();
            Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return populationTotal - getPopulationTotal();
    }

    public final void autoAssimilate() {
        try {
            if (haveACore(getCivID())) {
                for (int i = this.provincePopulationSize - 1; i >= 0; i--) {
                    ProvincePopulation population = Game.getProvincePopulation(getProvinceID()).getPopulation(i);
                    if (population.getCivID() != getCivID()) {
                        int iMax = Math.max(Math.min(GameValues.province.AUTO_ASSIMILATION_MIN, population.getPopulation()), (int) (population.getPopulation() * GameValues.province.AUTO_ASSIMILATION_PERC));
                        if (population.getPopulation() < GameValues.province.AUTO_ASSIMILATION_ALL_IF_BELOW) {
                            iMax = population.getPopulation();
                        }
                        setPopulationOfCivID(getCivID(), getPopulationOfCivID(getCivID()) + iMax);
                        setPopulationOfCivID(population.getCivID(), population.getPopulation() - iMax);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void buildDistanceToCapital() {
        if (getCivID() <= 0 || Game.getCiv(getCivID()).getCapitalProvinceID() < 0) {
            return;
        }
        this.aiDistanceToCapital = Math.min(0.99f, Math.max(0.001f, Game.getDistanceFromProvinceToProvince(Game.getCiv(getCivID()).getCapitalProvinceID(), getProvinceID()) / Game.iMaxDistance));
    }

    public final void buildPopulation_LoadGame() {
        this.provincePopulationSize = Game.getProvincePopulation(getProvinceID()).getPopulation().size();
        int population = 0;
        for (int i = 0; i < this.provincePopulationSize; i++) {
            population += Game.getProvincePopulation(getProvinceID()).getPopulation(i).getPopulation();
        }
        this.provincePopulationTotal = population;
    }

    public final void buildProvinceBG(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        int i = Game.mapBG.iMapScale;
        String[] strArrSplit = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/scales/AvailableScales.txt").readString().split(";");
        ArrayList arrayList = new ArrayList();
        for (String str : strArrSplit) {
            arrayList.add(str);
        }
        boolean z8 = true;
        boolean z9 = this.iLevelOfPort == -4;
        int i2 = 0;
        while (true) {
            if (i2 >= arrayList.size()) {
                z2 = true;
                break;
            } else {
                if (Integer.parseInt((String) arrayList.get(i2)) == Game.map.getActiveMap_MapData().mapData.DefaultMapScale) {
                    z2 = false;
                    break;
                }
                i2++;
            }
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            if (Integer.parseInt((String) arrayList.get(i3)) == 1) {
                z9 = false;
                break;
            }
        }
        if (z2) {
            arrayList.add("" + Game.map.getActiveMap_MapData().mapData.DefaultMapScale);
        }
        if (z9 && Game.map.getActiveMap_MapData().mapData.DefaultMapScale != 1) {
            arrayList.add("1");
        }
        int i4 = 0;
        while (i4 < arrayList.size()) {
            Game.mapBG.iMapScale = Integer.parseInt((String) arrayList.get(i4));
            if (z || !FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/scales/" + Game.mapBG.iMapScale + "/" + this.iProvinceID).exists()) {
                Pixmap pixmap = new Pixmap((this.iMaxX_Real * Game.mapBG.iMapScale) - (this.iMinX_Real * Game.mapBG.iMapScale), (this.iMaxY_Real * Game.mapBG.iMapScale) - (this.iMinY_Real * Game.mapBG.iMapScale), Pixmap.Format.Alpha);
                pixmap.setColor(new Color(1.0f, 1.0f, 1.0f, 1.0f));
                if (Game.cutProvinces == null) {
                    LoadManager.loadProvincePoints_Cut();
                }
                for (int i5 = 0; i5 < pixmap.getHeight(); i5++) {
                    int i6 = 0;
                    while (i6 < pixmap.getWidth()) {
                        if (Game.getProvince(this.iProvinceID).getSeaProvince()) {
                            z4 = true;
                        } else {
                            int size = Game.cutProvinces.size();
                            z4 = z8;
                            for (int i7 = 0; i7 < size; i7++) {
                                if (Game.pathContains_Cut(i7, (this.iMinX_Real * Game.mapBG.iMapScale) + i6, (this.iMinY_Real * Game.mapBG.iMapScale) + i5)) {
                                    z4 = false;
                                }
                            }
                        }
                        if (z4) {
                            if (Game.pathContains(this.iProvinceID, (this.iMinX_Real * Game.mapBG.iMapScale) + i6, (this.iMinY_Real * Game.mapBG.iMapScale) + i5)) {
                                boolean z10 = true;
                                for (int i8 = 0; i8 < getNeighboringProvincesSize(); i8++) {
                                    if (this.iProvinceID > getNeighboringProvinces(i8) && Game.pathContains(getNeighboringProvinces(i8), (this.iMinX_Real * Game.mapBG.iMapScale) + i6, (this.iMinY_Real * Game.mapBG.iMapScale) + i5)) {
                                        z10 = false;
                                    }
                                }
                                if (z10) {
                                    pixmap.drawPixel(i6, i5);
                                }
                            } else {
                                boolean zPathContains = Game.pathContains(this.iProvinceID, (this.iMinX_Real * Game.mapBG.iMapScale) + i6 + 1, (this.iMinY_Real * Game.mapBG.iMapScale) + i5);
                                if (Game.pathContains(this.iProvinceID, (this.iMinX_Real * Game.mapBG.iMapScale) + i6, (this.iMinY_Real * Game.mapBG.iMapScale) + i5 + 1)) {
                                    zPathContains = true;
                                }
                                if (Game.pathContains(this.iProvinceID, ((this.iMinX_Real * Game.mapBG.iMapScale) + i6) - 1, (this.iMinY_Real * Game.mapBG.iMapScale) + i5)) {
                                    zPathContains = true;
                                }
                                if (Game.pathContains(this.iProvinceID, (this.iMinX_Real * Game.mapBG.iMapScale) + i6, ((this.iMinY_Real * Game.mapBG.iMapScale) + i5) - 1)) {
                                    zPathContains = true;
                                }
                                if (zPathContains) {
                                    int i9 = 0;
                                    while (true) {
                                        if (i9 >= getNeighboringProvincesSize()) {
                                            z5 = false;
                                            break;
                                        } else {
                                            if (Game.pathContains(getNeighboringProvinces(i9), (this.iMinX_Real * Game.mapBG.iMapScale) + i6, (this.iMinY_Real * Game.mapBG.iMapScale) + i5)) {
                                                z5 = true;
                                                break;
                                            }
                                            i9++;
                                        }
                                    }
                                    if (!z5) {
                                        int i10 = 0;
                                        while (true) {
                                            if (i10 >= getNeighboringProvincesSize()) {
                                                z6 = true;
                                                z7 = false;
                                                break;
                                            }
                                            if (this.iProvinceID > getNeighboringProvinces(i10)) {
                                                if (!Game.pathContains(getNeighboringProvinces(i10), (this.iMinX_Real * Game.mapBG.iMapScale) + i6 + 1, (this.iMinY_Real * Game.mapBG.iMapScale) + i5)) {
                                                    if (Game.pathContains(getNeighboringProvinces(i10), (this.iMinX_Real * Game.mapBG.iMapScale) + i6, (this.iMinY_Real * Game.mapBG.iMapScale) + i5 + 1)) {
                                                        z7 = true;
                                                        z6 = true;
                                                        break;
                                                    } else if (!Game.pathContains(getNeighboringProvinces(i10), ((this.iMinX_Real * Game.mapBG.iMapScale) + i6) - 1, (this.iMinY_Real * Game.mapBG.iMapScale) + i5)) {
                                                        z6 = true;
                                                        if (Game.pathContains(getNeighboringProvinces(i10), (this.iMinX_Real * Game.mapBG.iMapScale) + i6, ((this.iMinY_Real * Game.mapBG.iMapScale) + i5) - 1)) {
                                                            z7 = true;
                                                            break;
                                                        }
                                                    }
                                                }
                                                z7 = true;
                                                z6 = true;
                                                break;
                                            }
                                            i10++;
                                        }
                                        if (z7) {
                                            pixmap.drawPixel(i6, i5);
                                        }
                                    }
                                }
                            }
                            z6 = true;
                        } else {
                            z6 = true;
                        }
                        i6++;
                        z8 = z6;
                    }
                }
                z3 = z8;
                PixmapIO.writeCIM(FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + "data/scales/" + Integer.parseInt((String) arrayList.get(i4)) + "/" + this.iProvinceID), pixmap);
                pixmap.dispose();
                Game.menuManager.addToast(new Toast("-- PROVINCE DATA GENERATED " + this.iProvinceID + " --"));
            } else {
                z3 = z8;
            }
            i4++;
            z8 = z3;
        }
        Gdx.app.log("AoC", "PROVINCE: " + this.iProvinceID);
        Game.mapBG.iMapScale = i;
    }

    public final void buildProvinceBG_Just(boolean z) {
        boolean z2;
        int i = Game.mapBG.iMapScale;
        String[] strArrSplit = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/scales/AvailableScales.txt").readString().split(";");
        ArrayList arrayList = new ArrayList();
        for (String str : strArrSplit) {
            arrayList.add(str);
        }
        boolean z3 = this.iLevelOfPort == -4;
        int i2 = 0;
        while (true) {
            if (i2 >= arrayList.size()) {
                z2 = true;
                break;
            } else {
                if (Integer.parseInt((String) arrayList.get(i2)) == Game.map.getActiveMap_MapData().mapData.DefaultMapScale) {
                    z2 = false;
                    break;
                }
                i2++;
            }
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            if (Integer.parseInt((String) arrayList.get(i3)) == 1) {
                z3 = false;
                break;
            }
        }
        if (z2) {
            arrayList.add("" + Game.map.getActiveMap_MapData().mapData.DefaultMapScale);
        }
        if (z3 && Game.map.getActiveMap_MapData().mapData.DefaultMapScale != 1) {
            arrayList.add("1");
        }
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            Game.mapBG.iMapScale = Integer.parseInt((String) arrayList.get(i4));
            if (z || !FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/scales/" + Game.mapBG.iMapScale + "/" + this.iProvinceID).exists()) {
                Pixmap pixmap = new Pixmap((this.iMaxX_Real * Game.mapBG.iMapScale) - (this.iMinX_Real * Game.mapBG.iMapScale), (this.iMaxY_Real * Game.mapBG.iMapScale) - (this.iMinY_Real * Game.mapBG.iMapScale), Pixmap.Format.Alpha);
                pixmap.setColor(new Color(1.0f, 1.0f, 1.0f, 1.0f));
                if (Game.cutProvinces == null) {
                    LoadManager.loadProvincePoints_Cut();
                }
                for (int i5 = 0; i5 < pixmap.getHeight(); i5++) {
                    for (int i6 = 0; i6 < pixmap.getWidth(); i6++) {
                        if (Game.pathContains(this.iProvinceID, (this.iMinX_Real * Game.mapBG.iMapScale) + i6, (this.iMinY_Real * Game.mapBG.iMapScale) + i5)) {
                            pixmap.drawPixel(i6, i5);
                        }
                    }
                }
                PixmapIO.writeCIM(FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + "data/scales/" + Integer.parseInt((String) arrayList.get(i4)) + "/" + this.iProvinceID), pixmap);
                pixmap.dispose();
                Game.menuManager.addToast(new Toast("-- PROVINCE DATA GENERATED " + this.iProvinceID + " --"));
            }
        }
        Gdx.app.log("AoC", "PROVINCE: " + this.iProvinceID);
        Game.mapBG.iMapScale = i;
    }

    public boolean buildWonder() {
        if (this.wonderID < 0 || this.wonderConstruction != null || getWonderBuilt() || Game.getCiv(getCivID()).fGold < WondersManager.getWonderConstructionCost(getProvinceID(), this.wonderID)) {
            return false;
        }
        Game.getCiv(getCivID()).fGold -= WondersManager.getWonderConstructionCost(getProvinceID(), this.wonderID);
        this.wonderConstruction = new ProvinceInvest(WondersManager.wonders.get(this.wonderID).ConstructionTime, WondersManager.wonders.get(this.wonderID).ConstructionTime);
        Game.gameThreadTurns.addProvinceWonderConstruction(getProvinceID());
        return true;
    }

    public boolean buildingBuilt(int i, int i2) {
        for (int i3 = 0; i3 < this.iBuildingsSize; i3++) {
            if (this.buildings.get(i3).getBuilding() == i && this.buildings.get(i3).getBuildingID() == i2) {
                return true;
            }
        }
        return false;
    }

    public final boolean cancelBuildingConstruction(int i, int i2, int i3) {
        if (isOccupied()) {
            return false;
        }
        for (int i4 = 0; i4 < this.iBuildingsConstructionSize; i4++) {
            if (this.buildingsConstruction.get(i4).getBuilding() == i2 && this.buildingsConstruction.get(i4).getBuildingID() == i3) {
                Game.getCiv(getCivID()).fGold += Game.getBuildingConstructionCost(getCivID(), getProvinceID(), i2, i3) * (this.buildingsConstruction.get(i4).getConstructionTimeLeft() / this.buildingsConstruction.get(i4).getConstructionTime());
                this.buildingsConstruction.remove(i4);
                int size = this.buildingsConstruction.size();
                this.iBuildingsConstructionSize = size;
                if (size == 0) {
                    Game.gameThreadTurns.removeProvinceBuildingsUnderConstruction(getProvinceID());
                }
                if (getCivID() != Game.player.iCivID) {
                    return true;
                }
                Game.menuManager.addRebuildInGame_RightQueue();
                return true;
            }
        }
        return false;
    }

    public final void checkForBattle() {
        try {
            if (getArmySize() > 1) {
                for (int i = 0; i < getArmySize() - 1; i++) {
                    if (!getArmy(i).inRetreat && !getArmy(getArmySize() - 1).inRetreat && DiplomacyManager.isAtWar(getArmy(getArmySize() - 1).civID, getArmy(i).civID)) {
                        if (!getArmy(i).inBattle || getArmy(getArmySize() - 1).inBattle) {
                            if (getArmy(i).inBattle || !getArmy(getArmySize() - 1).inBattle) {
                                startBattle();
                                break;
                            } else {
                                Game.battleManager.joinBattle(getProvinceID(), getArmy(i), getArmy(getArmySize() - 1).civID);
                                break;
                            }
                        }
                        Game.battleManager.joinBattle(getProvinceID(), getArmy(getArmySize() - 1), getArmy(i).civID);
                        break;
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void clearArmiesCivID(int i) {
        try {
            for (int i2 = this.iArmiesSize - 1; i2 >= 0; i2--) {
                if (i == this.lArmies.get(i2).civID) {
                    if (i < 0) {
                        Game.revolutionManager.removeArmyPosition(getProvinceID(), this.lArmies.get(i2).key);
                    } else {
                        Game.getCiv(i).removeArmyPosition(getProvinceID(), this.lArmies.get(i2).key);
                    }
                    this.lArmies.remove(i2);
                }
            }
            this.iArmiesSize = this.lArmies.size();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void clearArmies_ScenarioEditor() {
        this.lArmies.clear();
        this.iArmiesSize = 0;
    }

    public final void clearCities() {
        this.lCities = new ArrayList();
        this.iCitiesSize = 0;
        this.haveCity = false;
    }

    public void clearCores() {
        Game.getProvinceData5(getProvinceID()).co.clear();
        this.iCoresSize = 0;
        this.haveACore = false;
    }

    public final void clearData() {
        this.lArmies.clear();
        this.iArmiesSize = 0;
        clearPopulationData();
        this.buildings.clear();
        this.iBuildingsSize = 0;
        this.buildingsConstruction.clear();
        this.iBuildingsConstructionSize = 0;
        this.iBuildingsLimit = GameValues.buildings.BUILDINGS_LIMIT_DEFAULT;
        this.provinceInvestDaysLeft.clear();
        this.iProvinceInvestSize = 0;
        this.provinceIncreaseManpowerDaysLeft.clear();
        this.iProvinceIncreaseManpowerSize = 0;
        this.provinceIncreasTaxEfficiencyDaysLeft.clear();
        this.iProvinceIncreaseTaxEfficiencySize = 0;
        this.provinceIncreaseGrowthRateDaysLeft.clear();
        this.iProvinceIncreaseGrowthRateSize = 0;
        this.provinceDevelopInfrastructureDaysLeft.clear();
        this.iProvinceDevelopInfrastructureSize = 0;
        this.provincePlague = null;
        this.iInfrastructureMax = GameValues.infrastructure.INFRASTRUCTURE_MAX_DEFAULT;
        this.isCapital = false;
        setWonderBuilt(false);
        this.wonderConstruction = null;
        this.provBonuses = new ProvinceBonuses();
        this.religionConversion = null;
        Game.getProvinceData5(getProvinceID()).co.clear();
        this.iCoresSize = 0;
        this.haveACore = false;
        this.coreCreation = null;
    }

    public final void clearPopulationData() {
        this.provincePopulationTotal = 0;
        Game.getProvincePopulation(getProvinceID()).getPopulation().clear();
        this.provincePopulationSize = 0;
    }

    public final void destroyBuilding(int i, int i2) {
        for (int i3 = 0; i3 < this.iBuildingsSize; i3++) {
            if (this.buildings.get(i3).getBuilding() == i && this.buildings.get(i3).getBuildingID() == i2) {
                BonusesManager.updateBuildingBonuses(getProvinceID(), i, i2, -1);
                this.buildings.remove(i3);
                this.iBuildingsSize = this.buildings.size();
                updateBuildingLimit();
                updateProvinceIncome();
                return;
            }
        }
    }

    public final void destroyBuilding_ScenarioEditor(int i, int i2) {
        for (int i3 = 0; i3 < this.iBuildingsSize; i3++) {
            if (this.buildings.get(i3).getBuilding() == i && this.buildings.get(i3).getBuildingID() == i2) {
                this.buildings.remove(i3);
                this.iBuildingsSize = this.buildings.size();
                return;
            }
        }
    }

    public boolean disbandRegiment(String str, List<ArmyRegiment> list) {
        try {
            int armyKeyID = getArmyKeyID(str);
            if (armyKeyID >= 0) {
                Game.gameThread.addCivUpdateArmyMaintenance(getArmy(armyKeyID).civID);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    getArmy(armyKeyID).removeRegiment(list.get(i).key, true, getArmy(armyKeyID).civID);
                }
                if (getArmy(armyKeyID).iArmyRegimentSize == 0) {
                    removeArmy_UnassignGeneral(armyKeyID);
                    removeArmy(armyKeyID);
                } else {
                    updateDrawArmy();
                    updateArmyPosY();
                }
                return true;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return false;
    }

    public final void disposeProvinceBG() {
        this.provinceBG.getTexture().dispose();
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        try {
            setCivilizationProvinceColor(spriteBatch, getCivID(), i3 / 255.0f);
            this.provinceBG.draw(spriteBatch, i + ((int) Math.floor(this.iMinX * f)), i2 + ((int) Math.floor(this.iMinY * f)), Game.mapBG.iMapExtraScale * f);
        } catch (Exception unused) {
        }
    }

    public final void drawArmy(SpriteBatch spriteBatch, float f) {
        for (int i = 0; i < this.iArmiesSize; i++) {
            this.drawArmy.drawArmy(spriteBatch, this.iProvinceID, i);
        }
    }

    public final void drawCities(SpriteBatch spriteBatch, float f, float f2, float f3, float f4) {
        if (this.haveCity) {
            this.lCities.get(0).drawCity(spriteBatch, this.iProvinceID, f, f2, f3, f4);
        }
    }

    public final void drawCities_InGame(SpriteBatch spriteBatch, float f, float f2, float f3, float f4) {
        if (this.haveCity) {
            this.lCities.get(0).drawCity_InGame(spriteBatch, this.iProvinceID, f, f2, f3, f4);
        }
    }

    public final void drawCities_InGame_CivFlag(SpriteBatch spriteBatch, float f, float f2) {
        if (this.haveCity) {
            this.lCities.get(0).drawCity_CivFlag(spriteBatch, this.iProvinceID, f, f2);
        }
    }

    public final void drawCities_InGame_CivFlagName(SpriteBatch spriteBatch, float f, float f2) {
        if (this.isCapital && this.haveCity) {
            this.lCities.get(0).drawCity_CivFlagName(spriteBatch, this.iProvinceID, f, f2);
        }
    }

    public final void drawCities_InGame_CivFlagWar(SpriteBatch spriteBatch, float f, float f2) {
        if (this.haveCity) {
            this.lCities.get(0).drawCityName_Capital_CivFlag_War(spriteBatch, this.iProvinceID, f, f2);
        }
    }

    public final void drawCities_InGame_NamesLow(SpriteBatch spriteBatch, float f, float f2, float f3, float f4) {
        if (this.haveCity) {
            this.lCities.get(0).drawCity_InGame_NamesLow(spriteBatch, this.iProvinceID, f, f2, f3, f4);
        }
    }

    public final void drawCities_InGame_NamesLow_OnlyName(SpriteBatch spriteBatch, float f, float f2, float f3, float f4) {
        if (this.haveCity) {
            this.lCities.get(0).drawCity_InGame_NamesLow_OnlyName(spriteBatch, this.iProvinceID, f, f2, f3, f4);
        }
    }

    public final void drawCities_NamesNotCapital(SpriteBatch spriteBatch, float f, float f2, float f3, float f4) {
        if (this.haveCity) {
            this.lCities.get(0).drawCity_NameNotCapital(spriteBatch, this.iProvinceID, f, f2, f4);
        }
    }

    public final void drawDetails(SpriteBatch spriteBatch) {
        this.drawDetails.drawDetails(spriteBatch, this.iProvinceID);
    }

    public final void drawDetailsSea(SpriteBatch spriteBatch) {
        this.drawDetails.drawDetailsSea(spriteBatch, this.iProvinceID);
    }

    public final void drawLandProvince(SpriteBatch spriteBatch) {
        this.provinceBG.draw(spriteBatch, this.iTranslateProvincePosX + this.iMinX, Game.mapCoords.getPosY() + this.iMinY, Game.mapBG.iMapExtraScale);
    }

    public final void drawLandProvince(SpriteBatch spriteBatch, float f) {
        setProvinceColor(spriteBatch, f);
        this.provinceBG.draw(spriteBatch, this.iTranslateProvincePosX + this.iMinX, Game.mapCoords.getPosY() + this.iMinY, Game.mapBG.iMapExtraScale);
    }

    public final void drawLandProvinceExtra(SpriteBatch spriteBatch) {
        this.provinceBG.draw(spriteBatch, Game.mapCoords.getPosX() + this.iMinX, Game.mapCoords.getPosY() + this.iMinY, Game.mapBG.iMapExtraScale);
    }

    public final void drawLandProvinceExtra(SpriteBatch spriteBatch, float f) {
        setProvinceColor(spriteBatch, f);
        this.provinceBG.draw(spriteBatch, Game.mapCoords.getPosX() + this.iMinX, Game.mapCoords.getPosY() + this.iMinY, Game.mapBG.iMapExtraScale);
    }

    public final void drawLandProvince_Fog(SpriteBatch spriteBatch, float f) {
        setProvinceColor_Fog(spriteBatch, f);
        this.provinceBG.draw(spriteBatch, this.iTranslateProvincePosX + this.iMinX, Game.mapCoords.getPosY() + this.iMinY, Game.mapBG.iMapExtraScale);
    }

    protected final void drawOccupiedProvince(SpriteBatch spriteBatch, float f) {
        if (Game.getProvinceData(getProvinceID()).getOccupiedByCivID() < 0) {
            spriteBatch.setColor(new Color(DiplomacyManager.COLOR_WAR.r, DiplomacyManager.COLOR_WAR.g, DiplomacyManager.COLOR_WAR.b, f));
        } else {
            spriteBatch.setColor(Game.getCiv(Game.getProvinceData(getProvinceID()).getOccupiedByCivID()).getColor(f));
        }
        Renderer.shaderAlpha_Pattern.setUniformf("u_maskScale", this.provinceBG.getWidth() / (ImageManager.getImage(Images.pattOccupied).getWidth() / Game.DRAW_OCCUPIED_SCALE));
        Renderer.shaderAlpha_Pattern.setUniformf("u_maskScaleY", this.provinceBG.getHeight() / (ImageManager.getImage(Images.pattOccupied).getHeight() / Game.DRAW_OCCUPIED_SCALE));
        this.provinceBG.getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.pattOccupied).draw(spriteBatch, this.iTranslateProvincePosX + this.iMinX, Game.mapCoords.getPosY() + this.iMinY, (int) (this.provinceBG.getWidth() * Game.mapBG.iMapExtraScale), (int) (this.provinceBG.getHeight() * Game.mapBG.iMapExtraScale));
        spriteBatch.flush();
    }

    public final void drawOccupiedProvince_Religion(SpriteBatch spriteBatch) {
        spriteBatch.setColor(new Color(Game.religionManager.getReligion(Game.getCiv(getCivID()).getReligionID()).Color[0], Game.religionManager.getReligion(Game.getCiv(getCivID()).getReligionID()).Color[1], Game.religionManager.getReligion(Game.getCiv(getCivID()).getReligionID()).Color[2], Game.settingsManager.OCCUPIED_PROVINCE_ALPHA));
        float currentScale = (Game.mapScale.getCurrentScale() > 1.0f ? Game.mapScale.getCurrentScale() : 1.0f) * Game.DRAW_OCCUPIED_SCALE;
        Renderer.shaderAlpha_Pattern.setUniformf("u_maskScale", this.provinceBG.getWidth() / (ImageManager.getImage(Images.patt3).getWidth() / currentScale));
        Renderer.shaderAlpha_Pattern.setUniformf("u_maskScaleY", this.provinceBG.getHeight() / (ImageManager.getImage(Images.patt3).getHeight() / currentScale));
        this.provinceBG.getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.patt3).draw(spriteBatch, this.iTranslateProvincePosX + this.iMinX, Game.mapCoords.getPosY() + this.iMinY, (int) (this.provinceBG.getWidth() * Game.mapBG.iMapExtraScale), (int) (this.provinceBG.getHeight() * Game.mapBG.iMapExtraScale));
        spriteBatch.flush();
    }

    protected final void drawProvinceBorder(SpriteBatch spriteBatch, float f, JoinType joinType) {
        for (int i = 0; i < this.iProvinceBordersLandBySeaSize; i++) {
            this.lProvinceBordersLandBySea.get(i).drawProvinceBorder.draw(spriteBatch, this.iTranslateProvincePosX, joinType, f);
        }
        for (int i2 = 0; i2 < this.iProvinceBordersSeaBySeaSize; i2++) {
            this.lProvinceBordersSeaBySea.get(i2).drawProvinceBorder.draw(spriteBatch, this.iTranslateProvincePosX, joinType, f);
        }
        for (int i3 = 0; i3 < this.iProvinceBordersLandByLandSize; i3++) {
            this.lProvinceBordersLandByLand.get(i3).drawProvinceBorder.draw(spriteBatch, this.iTranslateProvincePosX, joinType, f);
        }
    }

    public final void drawProvince_ActiveProvince(SpriteBatch spriteBatch) {
        if (getSeaProvince()) {
            return;
        }
        if (this.iLevelOfPort == -4) {
            this.provinceBG.draw(spriteBatch, this.iTranslateProvincePosX + this.iMinX, Game.mapCoords.getPosY() + this.iMinY, Game.mapBG.iMapScale);
        } else {
            this.provinceBG.draw(spriteBatch, this.iTranslateProvincePosX + this.iMinX, Game.mapCoords.getPosY() + this.iMinY, Game.mapBG.iMapExtraScale);
        }
    }

    public final void drawProvince_ActiveProvince(SpriteBatch spriteBatch, Image image) {
        try {
            if (this.iLevelOfPort == -4) {
                image.draw(spriteBatch, this.iTranslateProvincePosX + this.iMinX, Game.mapCoords.getPosY() + this.iMinY, Game.mapBG.iMapScale);
            } else {
                image.draw(spriteBatch, this.iTranslateProvincePosX + this.iMinX, Game.mapCoords.getPosY() + this.iMinY, Game.mapBG.iMapExtraScale);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void drawWasteland(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(ProvinceDraw.getWastelandColor(getWasteland(), i3 / 255.0f));
        this.provinceBG.draw(spriteBatch, i + ((int) Math.floor(this.iMinX * f)), i2 + ((int) Math.floor(this.iMinY * f)), Game.mapBG.iMapExtraScale * f);
    }

    public final void draw_FogOfWarDiscovery(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        try {
            if (CFG.getMetProvince(getProvinceID())) {
                setCivilizationProvinceColor(spriteBatch, getCivID(), i3 / 255.0f);
                this.provinceBG.draw(spriteBatch, ((int) Math.floor(this.iMinX * f)) + i, ((int) Math.floor(this.iMinY * f)) + i2, Game.mapBG.iMapExtraScale * f);
            }
        } catch (NullPointerException unused) {
            draw(spriteBatch, i, i2, f, i3);
        }
    }

    public final ArmyDivision getArmy(int i) {
        try {
            return this.lArmies.get(i);
        } catch (Exception unused) {
            return new ArmyDivision(0, 0, new ArrayList());
        }
    }

    public final ArmyDivision getArmy(String str) {
        for (int i = 0; i < this.iArmiesSize; i++) {
            try {
                if (getArmy(i).key.equals(str)) {
                    return this.lArmies.get(i);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return null;
            }
        }
        return null;
    }

    public final ArmyDivision getArmyKey(String str) {
        for (int i = 0; i < this.iArmiesSize; i++) {
            try {
                if (this.lArmies.get(i).key.equals(str)) {
                    return this.lArmies.get(i);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return null;
            }
        }
        return null;
    }

    public final int getArmyKeyID(String str) {
        for (int i = 0; i < this.iArmiesSize; i++) {
            try {
                if (this.lArmies.get(i).key.equals(str)) {
                    return i;
                }
            } catch (Exception unused) {
                return -1;
            }
        }
        return -1;
    }

    public final int getArmyKeyID(String str, int i) {
        for (int i2 = 0; i2 < this.iArmiesSize; i2++) {
            try {
                if (this.lArmies.get(i2).civID == i && this.lArmies.get(i2).key.equals(str)) {
                    return i2;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return -1;
            }
        }
        return -1;
    }

    public final int getArmyRegimentSize_InProvince() {
        int i = 0;
        for (int i2 = 0; i2 < this.iArmiesSize; i2++) {
            if (this.lArmies.get(i2).civID == getCivID()) {
                i += this.lArmies.get(i2).iArmyRegimentSize;
            }
        }
        return i;
    }

    public final int getArmySize() {
        return this.iArmiesSize;
    }

    public float getBaseEconomy() {
        return this.BaseDevelopment;
    }

    public final boolean getBelowZero() {
        return this.belowZeroPosX;
    }

    public ProvinceConstructedBuilding getBuildings(int i) {
        return this.buildings.get(i);
    }

    public ProvinceConstructionBuilding getBuildingsConstruction(int i) {
        return this.buildingsConstruction.get(i);
    }

    public float getBuildingsConstruction_MaintenanceCosts() {
        float growthRateWithBonuses = 0.0f;
        for (int i = 0; i < this.iBuildingsConstructionSize; i++) {
            growthRateWithBonuses += BuildingsManager.buildings.get(this.buildingsConstruction.get(i).getBuilding()).MaintenanceCost[this.buildingsConstruction.get(i).getBuildingID()] + ((BuildingsManager.buildings.get(this.buildingsConstruction.get(i).getBuilding()).ResearchPoints == null || BuildingsManager.buildings.get(this.buildingsConstruction.get(i).getBuilding()).ResearchPoints[this.buildingsConstruction.get(i).getBuildingID()] <= 0.0f) ? 0.0f : BuildingsManager.buildings.get(this.buildingsConstruction.get(i).getBuilding()).ResearchPoints[this.buildingsConstruction.get(i).getBuildingID()] * (getGrowthRateWithBonuses() / 100.0f) * GameValues.research.RESEARCH_MAINTENANCE_COST);
        }
        return growthRateWithBonuses;
    }

    public int getBuildingsLimit_FreeSlots() {
        return Math.max(0, (this.iBuildingsLimit + Game.getCiv(getCivID()).civBonuses.BuildingSlot) - getUsedBuildingsSlots());
    }

    public final int getCenterX() {
        return this.iCenterX;
    }

    public final int getCenterX_Real() {
        return this.iCenterX_Real;
    }

    public final int getCenterY() {
        return this.iCenterY;
    }

    public final int getCenterY_Real() {
        return this.iCenterY_Real;
    }

    public final int getCitiesSize() {
        return this.iCitiesSize;
    }

    public final City getCity(int i) {
        return this.lCities.get(i);
    }

    public final int getCivID() {
        return Game.getProvinceData(getProvinceID()).getCivID();
    }

    public final int getCivRegionID() {
        return this.iCivRegionID;
    }

    public final int getConstructionID(int i, int i2) {
        for (int i3 = 0; i3 < this.iBuildingsConstructionSize; i3++) {
            if (this.buildingsConstruction.get(i3).getBuilding() == i && this.buildingsConstruction.get(i3).getBuildingID() == i2) {
                return i3;
            }
        }
        return -1;
    }

    public final int getContinent() {
        return this.iContinentID;
    }

    public int getCore(int i) {
        try {
            return Game.getProvinceData5(getProvinceID()).co.get(i).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public float getDevastation() {
        return Game.getProvinceData2(getProvinceID()).getDevastation();
    }

    public final boolean getDrawCities() {
        return this.drawCities;
    }

    public final boolean getDrawProvince() {
        return this.drawProvince;
    }

    public float getEconomy() {
        return Game.getProvinceData6(getProvinceID()).getEconomy();
    }

    public float getEconomyWithBonuses() {
        return Game.getProvinceData6(getProvinceID()).getEconomy() + this.provBonuses.Economy;
    }

    public boolean getFogDrawArmy() {
        return this.fogDrawArmy;
    }

    public int getFortDefense() {
        return (int) ((GameValues.siege.SIEGE_FORT_DEFENSE_DEFAULT + (GameValues.siege.SIEGE_FORT_DEFENSE_PER_FORT_LVL * this.provBonuses.FortLevel) + (GameValues.siege.SIEGE_FORT_DEFENSE_PER_GROWTH_RATE_LVL * getGrowthRateWithBonuses()) + this.provBonuses.FortDefense + (GameValues.siege.SIEGE_FORT_DEFENSE_PER_MANPOWER_LVL * Game.getProvinceData3(getProvinceID()).getManpower())) * (Game.getProvinceData(this.iProvinceID).getOccupiedByCivID() < 0 ? GameValues.rebels.REBELS_FORT_DEFENSE : 1.0f));
    }

    public int getFortDefense_Manpower() {
        return (int) (GameValues.siege.SIEGE_FORT_DEFENSE_PER_MANPOWER_LVL * Game.getProvinceData3(getProvinceID()).getManpower());
    }

    public int getFortLevel() {
        return this.provBonuses.FortLevel;
    }

    public final int getGeoRegion() {
        return this.iGeoRegionID;
    }

    public final float getGrowthRate() {
        return this.fBaseGrowthRate;
    }

    public final float getGrowthRateWithBonuses() {
        return Math.max(1.0f, (this.fBaseGrowthRate + this.provBonuses.LocalGrowthRate + Game.getProvinceData7(getProvinceID()).getIncreasedGrowthRate() + Game.getProvinceData9(getProvinceID()).getColonizationGrowthRateExtra() + Game.terrainManager.terrains.get(getTerrainID()).PopulationGrowth) * (((Game.getCiv(getCivID()).civBonuses.GrowthRate + (getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_GROWTH_RATE_PER_LVL)) / 100.0f) + 1.0f));
    }

    public final float getGrowthRateWithBonuses_WithoutColonizationBonus() {
        return Math.max(1.0f, this.fBaseGrowthRate + this.provBonuses.LocalGrowthRate + Game.getProvinceData7(getProvinceID()).getIncreasedGrowthRate() + Game.terrainManager.terrains.get(getTerrainID()).PopulationGrowth) * (((Game.getCiv(getCivID()).civBonuses.GrowthRate + (getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_GROWTH_RATE_PER_LVL)) / 100.0f) + 1.0f);
    }

    public final int getInfrastructure() {
        return Game.getProvinceData6(getProvinceID()).getInfrastructure();
    }

    public final int getLevelOfPort() {
        return this.iLevelOfPort;
    }

    public float getLoot() {
        return Game.getProvinceData2(getProvinceID()).getLoot();
    }

    public float getManpower() {
        return Game.getProvinceData3(getProvinceID()).getManpower();
    }

    public final int getMapModeRegionID() {
        return this.iMapModeRegion;
    }

    public final int getMaxX() {
        return this.iMaxX;
    }

    public final int getMaxY() {
        return this.iMaxY;
    }

    public final int getMinX() {
        return this.iMinX;
    }

    public final int getMinY() {
        return this.iMinY;
    }

    public final int getNeighboringProvinces(int i) {
        return this.lNeighboringProvinces.get(i).intValue();
    }

    public final int getNeighboringProvincesSize() {
        return this.iNeighboringProvincesSize;
    }

    public final int getNeighboringSeaProvinces(int i) {
        return this.lNeighboringSeaProvinces.get(i).intValue();
    }

    public final int getNeighboringSeaProvincesSize() {
        return this.iNeighboringSeaProvincesSize;
    }

    public final int getPointsSize() {
        return this.iPointsSize;
    }

    public final int getPointsX(int i) {
        return this.lPointsX.get(i).shortValue() * Game.mapBG.iMapScale;
    }

    public final int getPointsY(int i) {
        return this.lPointsY.get(i).shortValue() * Game.mapBG.iMapScale;
    }

    public final int getPopulationCivID(int i) {
        return Game.getProvincePopulation(getProvinceID()).getPopulation(i).getCivID();
    }

    public final int getPopulationID(int i) {
        return Game.getProvincePopulation(getProvinceID()).getPopulation(i).getPopulation();
    }

    public final int getPopulationOfCivID(int i) {
        ProvinceData_Population provincePopulation = Game.getProvincePopulation(getProvinceID());
        for (int i2 = 0; i2 < this.provincePopulationSize; i2++) {
            if (provincePopulation.getPopulation(i2).getCivID() == i) {
                return provincePopulation.getPopulation(i2).getPopulation();
            }
        }
        return 0;
    }

    public final int getPopulationSize() {
        return this.provincePopulationSize;
    }

    public int getPopulationTotal() {
        return this.provincePopulationTotal;
    }

    public final int getPortShiftX() {
        return this.iPortShiftX;
    }

    public final int getPortShiftY() {
        return this.iPortShiftY;
    }

    public final Image getProvinceBG() {
        return this.provinceBG;
    }

    public final ProvinceBorder getProvinceBordersAll(int i) {
        for (int i2 = 0; i2 < this.iProvinceBordersLandByLandSize; i2++) {
            if (i == this.lProvinceBordersLandByLand.get(i2).getWithProvinceID()) {
                return this.lProvinceBordersLandByLand.get(i2);
            }
        }
        for (int i3 = 0; i3 < this.iProvinceBordersLandBySeaSize; i3++) {
            if (i == this.lProvinceBordersLandBySea.get(i3).getWithProvinceID()) {
                return this.lProvinceBordersLandBySea.get(i3);
            }
        }
        for (int i4 = 0; i4 < this.iProvinceBordersSeaBySeaSize; i4++) {
            if (i == this.lProvinceBordersSeaBySea.get(i4).getWithProvinceID()) {
                return this.lProvinceBordersSeaBySea.get(i4);
            }
        }
        return emptyProvinceBorder;
    }

    public final ProvinceBorder getProvinceBordersLandByLand(int i) {
        for (int i2 = 0; i2 < this.iProvinceBordersLandByLandSize; i2++) {
            if (i == this.lProvinceBordersLandByLand.get(i2).getWithProvinceID()) {
                return this.lProvinceBordersLandByLand.get(i2);
            }
        }
        return emptyProvinceBorder;
    }

    public final List<ProvinceBorder> getProvinceBordersLandByLand() {
        return this.lProvinceBordersLandByLand;
    }

    public final int getProvinceBordersLandByLandSize() {
        return this.iProvinceBordersLandByLandSize;
    }

    public final ProvinceBorder getProvinceBordersLandBySea(int i) {
        for (int i2 = 0; i2 < this.iProvinceBordersLandBySeaSize; i2++) {
            if (i == this.lProvinceBordersLandBySea.get(i2).getWithProvinceID()) {
                return this.lProvinceBordersLandBySea.get(i2);
            }
        }
        return emptyProvinceBorder;
    }

    public final List<ProvinceBorder> getProvinceBordersLandBySea() {
        return this.lProvinceBordersLandBySea;
    }

    public final int getProvinceBordersLandBySeaSize() {
        return this.iProvinceBordersLandBySeaSize;
    }

    public final ProvinceBorder getProvinceBordersSeaBySea(int i) {
        for (int i2 = 0; i2 < this.iProvinceBordersSeaBySeaSize; i2++) {
            if (i == this.lProvinceBordersSeaBySea.get(i2).getWithProvinceID()) {
                return this.lProvinceBordersSeaBySea.get(i2);
            }
        }
        return emptyProvinceBorder;
    }

    public final List<ProvinceBorder> getProvinceBordersSeaBySea() {
        return this.lProvinceBordersSeaBySea;
    }

    public final int getProvinceBordersSeaBySeaSize() {
        return this.iProvinceBordersSeaBySeaSize;
    }

    public final float getProvinceBuildingsMaintenance() {
        return this.provBonuses.MaintenanceCost * Math.max(0.0f, Game.getCiv(getCivID()).civBonuses.BuildingsMaintenanceCost + 1.0f);
    }

    public final int getProvinceID() {
        return this.iProvinceID;
    }

    public float getProvinceIncome() {
        return this.fProvinceIncome;
    }

    public final float getProvinceMaintenance() {
        return (Game.getProvinceMaintenanceEconomy(getCivID(), getProvinceID()) + Game.getProvinceMaintenanceTax(getCivID(), getProvinceID()) + Game.getProvinceMaintenanceManpower(getCivID(), getProvinceID())) * Math.max(0.0f, ((this.provBonuses.ProvinceMaintenance + Game.getCiv(getCivID()).civBonuses.ProvinceMaintenance) / 100.0f) + 1.0f + GameValues.civRank.CIV_RANK_PROVINCE_MAINTENANCE[Game.getCiv(getCivID()).iCivRankID] + (getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_PROVINCE_MAINTENANCE_PER_LVL));
    }

    public final String getProvinceName() {
        return this.sProvinceName;
    }

    public final String getProvinceNameUpperCase() {
        return this.sProvinceNameUpperCase;
    }

    public final float getProvinceValue_Economy() {
        return Math.min(GameValues.province.PROVINCE_VALUE_PER_ECONOMY_MAX, GameValues.province.PROVINCE_VALUE_PER_ECONOMY * getEconomyWithBonuses());
    }

    public final float getProvinceValue_GrowthRate() {
        return Math.min(GameValues.province.PROVINCE_VALUE_PER_GROWTH_RATE_MAX, GameValues.province.PROVINCE_VALUE_PER_GROWTH_RATE * getGrowthRateWithBonuses());
    }

    public int getReligion() {
        return Game.getProvinceData7(getProvinceID()).getReligionID();
    }

    public final int getResourceID() {
        return this.iResourceID;
    }

    public final float getRevolutionaryRisk_MonhtlyChange() {
        return ((getRevolutionaryRisk_MonhtlyChange_CivStability() + getRevolutionaryRisk_MonhtlyChange_WarWeariness()) * ((Game.getCiv(getCivID()).civBonuses.RevolutionaryRisk / 100.0f) + 1.0f)) + (getRevolutionaryRisk_MonhtlyChange_BudgetTaxation() * ((getTaxEfficiencyWithBonuses() / 100.0f) + 1.0f));
    }

    public final float getRevolutionaryRisk_MonhtlyChange_BudgetTaxation() {
        return GameValues.budget.TAXATION_LEVEL_UNREST_PER_MONTH[Game.getCiv(getCivID()).getTaxationLevel()];
    }

    public final float getRevolutionaryRisk_MonhtlyChange_CivStability() {
        if (Game.getCiv(getCivID()).civStability_LostFrom100 > 0.0f) {
            return Game.getCiv(getCivID()).civStability_LostFrom100 * (GameValues.civStability.CS_UNREST_PER_POINT + (getReligion() != Game.getCiv(getCivID()).getReligionID() ? GameValues.civStability.CS_UNREST_DIFFERENT_RELIGION_PER_POINT : 0.0f) + ((this.haveACore ? 0.0f : GameValues.civStability.CS_UNREST_NON_CORE_PER_POINT) * (GameValues.civStability.CS_UNREST_PERC_MIN + (GameValues.civStability.CS_UNREST_PERC_GROWTH_RATE * getGrowthRateWithBonuses()))));
        }
        return 0.0f;
    }

    public final float getRevolutionaryRisk_MonhtlyChange_WarWeariness() {
        if (Game.getCiv(getCivID()).getWarWeariness() > 0.0f) {
            return Game.getCiv(getCivID()).getWarWeariness() * (GameValues.warWeariness.WW_UNREST_PER_POINT + (getReligion() != Game.getCiv(getCivID()).getReligionID() ? GameValues.warWeariness.WW_UNREST_DIFFERENT_RELIGION_PER_POINT : 0.0f) + (this.haveACore ? 0.0f : GameValues.warWeariness.WW_UNREST_NON_CORE_PER_POINT)) * (GameValues.warWeariness.WW_UNREST_PERC_MIN + (GameValues.warWeariness.WW_UNREST_PERC_GROWTH_RATE * getGrowthRateWithBonuses()));
        }
        return 0.0f;
    }

    public float getRevulutionaryRisk() {
        return Game.getProvinceData8(getProvinceID()).getRevolutionaryRisk();
    }

    public final boolean getSeaProvince() {
        return this.seaProvince;
    }

    public final int getShiftX() {
        return this.iShiftX;
    }

    public final int getShiftY() {
        return this.iShiftY;
    }

    public float getSiegeProgress() {
        return Math.min(1.0f, Game.getProvinceData4(getProvinceID()).getSiegeProgress() / getFortDefense());
    }

    public float getTaxEfficiency() {
        return Game.getProvinceData3(getProvinceID()).getTaxEfficiency();
    }

    public float getTaxEfficiencyWithBonuses() {
        return (Game.getProvinceData3(getProvinceID()).getTaxEfficiency() + Game.getProvince(getProvinceID()).provBonuses.LocalTaxEfficiency) * (((Game.getCiv(Game.getProvince(getProvinceID()).getCivID()).civBonuses.TaxEfficiency + (getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_TAX_EFFICIENCY_PER_LVL)) / 100.0f) + 1.0f);
    }

    public final int getTerrainID() {
        return this.iTerrainTypeID;
    }

    public final int getTranslateProvincePosX() {
        return this.iTranslateProvincePosX;
    }

    public int getUsedBuildingsSlots() {
        return this.iBuildingsSize + this.iBuildingsConstructionSize;
    }

    public final float getWarScore() {
        return getWarScore(getProvinceID());
    }

    public final float getWarScore(int i) {
        return (Game.getProvince(i).fProvinceValue / Game.getCiv(getCivID()).fTotalProvincesValue) * 100.0f;
    }

    public final int getWasteland() {
        return Game.getProvinceData(getProvinceID()).getWastelandLevel();
    }

    public boolean getWonderBuilt() {
        return Game.getProvinceData8(getProvinceID()).isWonderBuilt();
    }

    public boolean haveACore(int i) {
        for (int i2 = 0; i2 < this.iCoresSize; i2++) {
            if (Game.getProvinceData5(getProvinceID()).co.get(i2).intValue() == i) {
                return true;
            }
        }
        return false;
    }

    public final boolean haveArmy(int i) {
        for (int i2 = 0; i2 < this.iArmiesSize; i2++) {
            if (this.lArmies.get(i2).civID == i) {
                return true;
            }
        }
        return false;
    }

    public boolean haveResearchBuilding() {
        for (int i = 0; i < this.iBuildingsSize; i++) {
            if (BuildingsManager.buildings.get(this.buildings.get(i).getBuilding()).ResearchPoints != null && BuildingsManager.buildings.get(this.buildings.get(i).getBuilding()).ResearchPoints[this.buildings.get(i).getBuildingID()] > 0.0f) {
                return true;
            }
        }
        return false;
    }

    public final void invasionMoveArmies() {
        for (int armySize = getArmySize() - 1; armySize >= 0; armySize--) {
            if (getArmy(armySize).civID == Game.player.iCivID && !getArmy(armySize).inMovement && !getArmy(armySize).inRetreat && !getArmy(armySize).inBattle) {
                Game.player.playerData.invasion.moveInvasion(getArmy(armySize).key);
            }
        }
    }

    public final boolean isEnemyArmyInProvince(int i) {
        for (int i2 = 0; i2 < this.iArmiesSize; i2++) {
            try {
                if (DiplomacyManager.isAtWar(i, this.lArmies.get(i2).civID)) {
                    return true;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        return false;
    }

    public final boolean isOccupied() {
        return Game.getProvinceData(getProvinceID()).getOccupiedByCivID() != 0;
    }

    public final boolean isUnderConstruction(int i, int i2) {
        for (int i3 = 0; i3 < this.iBuildingsConstructionSize; i3++) {
            if (this.buildingsConstruction.get(i3).getBuilding() == i && this.buildingsConstruction.get(i3).getBuildingID() == i2) {
                return true;
            }
        }
        return false;
    }

    public final void loadProvinceBG() {
        try {
            if (!getSeaProvince() || GameValues.value.LOAD_SEA_PROVINCES) {
                StringBuilder sbAppend = new StringBuilder("map/").append(Game.map.getFile_ActiveMap_Path()).append("data/scales/");
                int i = this.iLevelOfPort;
                Continents continents = Game.continents;
                int i2 = 1;
                if (!FileManager.loadFile(sbAppend.append(i == -4 ? 1 : (int) (Game.mapBG.iMapScale / Game.mapBG.iMapExtraScale)).append("/").append(this.iProvinceID).toString()).exists()) {
                    buildProvinceBG(false);
                    loadProvinceBG();
                    return;
                }
                StringBuilder sbAppend2 = new StringBuilder("map/").append(Game.map.getFile_ActiveMap_Path()).append("data/scales/");
                int i3 = this.iLevelOfPort;
                Continents continents2 = Game.continents;
                if (i3 != -4) {
                    i2 = (int) (Game.mapBG.iMapScale / Game.mapBG.iMapExtraScale);
                }
                Pixmap cim = PixmapIO.readCIM(FileManager.loadFile(sbAppend2.append(i2).append("/").append(this.iProvinceID).toString()));
                this.provinceBG = new Image(new Texture(cim), Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
                cim.dispose();
            }
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
            CFG.LOG(jkEBdieJhbh.PkDqzpQOMObDI + this.iProvinceID);
            buildProvinceBG(false);
            loadProvinceBG();
        }
    }

    public final void lootProvince(int i) {
        if (i < 0) {
            return;
        }
        Game.getCiv(i).fGold += Game.getLootValue(getProvinceID());
        setLoot(0.0f);
        setDevastation(getDevastation() + Game.getDevastationOccupiedProvince(i));
    }

    public final String mergeUnits(List<String> list) {
        try {
            int size = list.size();
            if (size <= 1) {
                return null;
            }
            int armyKeyID = getArmyKeyID(list.get(0));
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i >= size) {
                    i = i2;
                    break;
                }
                int armyKeyID2 = getArmyKeyID(list.get(i));
                if (armyKeyID2 >= 0) {
                    if (getArmy(armyKeyID2).armyGeneral != null) {
                        armyKeyID = armyKeyID2;
                        break;
                    }
                    if (armyKeyID < 0) {
                        i2 = i;
                        armyKeyID = armyKeyID2;
                    }
                }
                i++;
            }
            if (armyKeyID < 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (int i3 = 0; i3 < size; i3++) {
                int armyKeyID3 = getArmyKeyID(list.get(i3));
                if (armyKeyID3 >= 0) {
                    for (int i4 = 0; i4 < getArmy(armyKeyID3).iArmyRegimentSize; i4++) {
                        arrayList.add(getArmy(armyKeyID3).lArmyRegiment.get(i4));
                    }
                }
            }
            String str = list.get(i);
            updateRegiment(armyKeyID, arrayList);
            list.remove(i);
            int size2 = list.size();
            for (int i5 = 0; i5 < size2; i5++) {
                int armyKeyID4 = getArmyKeyID(list.get(i5));
                if (armyKeyID4 >= 0 && armyKeyID4 < this.iArmiesSize) {
                    removeArmy_UnassignGeneral(armyKeyID4);
                    removeArmy(armyKeyID4);
                }
            }
            return str;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    public final void occupyProvince() {
        resetSiegeData();
        boolean z = getCivID() == Game.player.iCivID;
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        for (int i3 = 0; i3 < getArmySize(); i3++) {
            if (DiplomacyManager.isAtWar(getCivID(), getArmy(i3).civID)) {
                if (getArmy(i3).civID == Game.player.iCivID) {
                    z = true;
                    z2 = true;
                }
                if (getArmy(i3).iArmy > i2) {
                    i = getArmy(i3).civID;
                    i2 = getArmy(i3).iArmy;
                }
            }
        }
        if (i != 0) {
            Game.getCiv(getCivID()).updateTotalProvincesValue();
            setOccupiedByCivID(i);
            if (i < 0) {
                Game.revolutionManager.addOccupiedProvince(getProvinceID());
            } else if (i > 0) {
                lootProvince(i);
                occupyProvince_DecreaseGrowthRate();
                EventsManager.runEvents_Siege(i, getProvinceID());
            }
            if (z) {
                Game.player.addNotification(new AnonymousClass14(Notification.Notification_Type.SIEGE, Game.lang.get(z2 ? "SiegeWon" : "SiegeLost") + ": " + getProvinceName(), Images.siege, Game_Calendar.TURN_ID, z2 ? Notification.Notification_BG.GREEN : Notification.Notification_BG.RED, getProvinceID()));
            }
            if (i >= 0 || GameValues.rebels.REBELS_OCCUPY_NEIGHBORING_PROVINCES) {
                for (int i4 = 0; i4 < getNeighboringProvincesSize(); i4++) {
                    if (Game.getProvince(getNeighboringProvinces(i4)).getFortLevel() == 0 && Game.getProvince(getNeighboringProvinces(i4)).getCivID() == getCivID()) {
                        if (Game.getProvinceData(getNeighboringProvinces(i4)).getOccupiedByCivID() <= 0) {
                            Game.getProvince(getNeighboringProvinces(i4)).setOccupiedByCivID(i);
                            if (i < 0) {
                                Game.revolutionManager.addOccupiedProvince(getNeighboringProvinces(i4));
                            }
                            if (Game.getProvinceData4(getNeighboringProvinces(i4)).isUnderSiege()) {
                                SiegeManager.removeProvinceSiege(getNeighboringProvinces(i4));
                                Game.getProvince(getNeighboringProvinces(i4)).resetSiegeData();
                                Game.getProvince(getNeighboringProvinces(i4)).lootProvince(i);
                                Game.getProvince(getNeighboringProvinces(i4)).invasionMoveArmies();
                            }
                        } else if (DiplomacyManager.isAtWar(i, Game.getProvinceData(getNeighboringProvinces(i4)).getOccupiedByCivID())) {
                            Game.getProvince(getNeighboringProvinces(i4)).setOccupiedByCivID(i);
                            if (i < 0) {
                                Game.revolutionManager.addOccupiedProvince(getNeighboringProvinces(i4));
                            }
                            if (Game.getProvinceData4(getNeighboringProvinces(i4)).isUnderSiege()) {
                                SiegeManager.removeProvinceSiege(getNeighboringProvinces(i4));
                                Game.getProvince(getNeighboringProvinces(i4)).resetSiegeData();
                                Game.getProvince(getNeighboringProvinces(i4)).lootProvince(i);
                                Game.getProvince(getNeighboringProvinces(i4)).invasionMoveArmies();
                            }
                        }
                    }
                }
            }
            if (z) {
                invasionMoveArmies();
            }
        }
    }

    public final void occupyProvince_DecreaseGrowthRate() {
        this.provBonuses.LocalGrowthRate += GameValues.siege.OCCUPY_PROVINCE_DECREASE_GROWTH_RATE;
    }

    public final void removeArmy(int i) {
        try {
            int i2 = this.lArmies.get(i).civID;
            if (i2 < 0) {
                Game.revolutionManager.removeArmyPosition(getProvinceID(), this.lArmies.get(i).key);
            } else {
                Game.getCiv(i2).removeArmyPosition(getProvinceID(), this.lArmies.get(i).key);
            }
            this.lArmies.remove(i);
            this.iArmiesSize = this.lArmies.size();
            updateDrawArmy();
            updateArmyPosY();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeArmy(String str) {
        for (int i = 0; i < this.iArmiesSize; i++) {
            try {
                if (getArmy(i).key.equals(str)) {
                    removeArmy(i);
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void removeArmyCivID(int i) {
        try {
            for (int i2 = this.iArmiesSize - 1; i2 >= 0; i2--) {
                if (this.lArmies.get(i2).civID == i) {
                    this.lArmies.remove(i2);
                }
            }
            this.iArmiesSize = this.lArmies.size();
            updateDrawArmy();
            updateArmyPosY();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeArmy_MoveUnits(int i) {
        try {
            int i2 = this.lArmies.get(i).civID;
            this.lArmies.remove(i);
            this.iArmiesSize = this.lArmies.size();
            updateDrawArmy();
            updateArmyPosY();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeArmy_MoveUnits(String str) {
        for (int i = 0; i < this.iArmiesSize; i++) {
            try {
                if (getArmy(i).key.equals(str)) {
                    removeArmy_MoveUnits(i);
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void removeArmy_UnassignGeneral(int i) {
        try {
            if (this.lArmies.get(i).armyGeneral != null) {
                Game.getCiv(this.lArmies.get(i).civID).addGeneral(this.lArmies.get(i).armyGeneral);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void removeCore(int i) {
        for (int i2 = 0; i2 < this.iCoresSize; i2++) {
            if (Game.getProvinceData5(getProvinceID()).co.get(i2).intValue() == i) {
                Game.getProvinceData5(getProvinceID()).co.remove(i2);
                break;
            }
        }
        this.iCoresSize = Game.getProvinceData5(getProvinceID()).co.size();
        this.haveACore = false;
        for (int i3 = 0; i3 < this.iCoresSize; i3++) {
            if (Game.getProvinceData5(getProvinceID()).co.get(i3).intValue() == getCivID()) {
                this.haveACore = true;
                break;
            }
        }
        updateProvinceIncome();
        Game.gameThreadTurns.addCivUpdateMaxManpower(getCivID());
        Game.gameThread.addCivUpdateLegacyPerMonth(getCivID());
        Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
        Game.getCiv(getCivID()).civilizationCores.checkProvince(getProvinceID(), getCivID());
    }

    public void removeCore_ScenarioEditor(int i) {
        for (int i2 = 0; i2 < this.iCoresSize; i2++) {
            if (Game.getProvinceData5(getProvinceID()).co.get(i2).intValue() == i) {
                Game.getProvinceData5(getProvinceID()).co.remove(i2);
                this.iCoresSize = Game.getProvinceData5(getProvinceID()).co.size();
                updateHaveACore();
                return;
            }
        }
    }

    public final void removeNeighboringProvince(int i) {
        for (int i2 = 0; i2 < this.iNeighboringProvincesSize; i2++) {
            if (i == getNeighboringProvinces(i2)) {
                this.lNeighboringProvinces.remove(i2);
                this.iNeighboringProvincesSize = this.lNeighboringProvinces.size();
                return;
            }
        }
    }

    public final void removeNeighboringSeaProvince(int i) {
        for (int i2 = 0; i2 < this.iNeighboringSeaProvincesSize; i2++) {
            if (i == getNeighboringSeaProvinces(i2)) {
                this.lNeighboringSeaProvinces.remove(i2);
                this.iNeighboringSeaProvincesSize = this.lNeighboringSeaProvinces.size();
                updateAccessToMainSea();
                return;
            }
        }
    }

    public final void removeProvinceBorder(int i) {
        for (int i2 = 0; i2 < this.iProvinceBordersLandByLandSize; i2++) {
            if (i == this.lProvinceBordersLandByLand.get(i2).getWithProvinceID()) {
                this.lProvinceBordersLandByLand.remove(i2);
                this.iProvinceBordersLandByLandSize = this.lProvinceBordersLandByLand.size();
                return;
            }
        }
        for (int i3 = 0; i3 < this.iProvinceBordersLandBySeaSize; i3++) {
            if (i == this.lProvinceBordersLandBySea.get(i3).getWithProvinceID()) {
                this.lProvinceBordersLandBySea.remove(i3);
                this.iProvinceBordersLandBySeaSize = this.lProvinceBordersLandBySea.size();
                return;
            }
        }
        for (int i4 = 0; i4 < this.iProvinceBordersSeaBySeaSize; i4++) {
            if (i == this.lProvinceBordersSeaBySea.get(i4).getWithProvinceID()) {
                this.lProvinceBordersSeaBySea.remove(i4);
                this.iProvinceBordersSeaBySeaSize = this.lProvinceBordersSeaBySea.size();
                return;
            }
        }
    }

    public final void resetColonizationData() {
        Game.getProvinceData9(getProvinceID()).setColonizationStartedTurnID(-1);
        Game.getProvinceData9(getProvinceID()).setColonizationGrowthRateExtra(0);
    }

    public final void resetSiegeData() {
        Game.getProvinceData4(getProvinceID()).setSiegeProgress(0.0f);
        Game.getProvinceData4(getProvinceID()).setIsUnderSiege(getProvinceID(), false);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00dc  */
    public final void retakeOccupiedProvince() {
        boolean z;
        boolean z2;
        String warKey = WarManager.getWarKey(getCivID(), Game.getProvinceData(getProvinceID()).getOccupiedByCivID());
        Game.getCiv(getCivID()).updateTotalProvincesValue();
        boolean z3 = true;
        if (warKey != null) {
            try {
                float fAddWarScore_ValueToAdd_Province = WarManager.lWars.get(warKey).addWarScore_ValueToAdd_Province(getWarScore(), Game.getProvinceData(getProvinceID()).getOccupiedByCivID(), getCivID(), getProvinceID());
                if (WarManager.lWars.get(warKey).isAggressor(Game.getProvinceData(getProvinceID()).getOccupiedByCivID())) {
                    WarManager.lWars.get(warKey).addWarScore_Just(-fAddWarScore_ValueToAdd_Province);
                    WarManager.lWars.get(warKey).warScoreFromOccupiedProvinces -= fAddWarScore_ValueToAdd_Province;
                } else {
                    WarManager.lWars.get(warKey).addWarScore_Just(fAddWarScore_ValueToAdd_Province);
                    WarManager.lWars.get(warKey).warScoreFromOccupiedProvinces += fAddWarScore_ValueToAdd_Province;
                }
                WarManager.lWars.get(warKey).lastFight_TurnID = Game_Calendar.TURN_ID;
                if (WarManager.lWars.get(warKey).isAggressor(Game.player.iCivID) || WarManager.lWars.get(warKey).isDefender(Game.player.iCivID)) {
                    try {
                        z2 = getCivID() == Game.player.iCivID;
                        z = true;
                    } catch (Exception e) {
                        e = e;
                        z = true;
                        CFG.exceptionStack(e);
                        z2 = false;
                    }
                } else {
                    z2 = false;
                    z = false;
                }
            } catch (Exception e2) {
                e = e2;
                z = false;
            }
        } else {
            z2 = false;
            z = false;
        }
        if (Game.getProvinceData(getProvinceID()).getOccupiedByCivID() >= 0) {
            z3 = z;
            break;
        }
        Game.revolutionManager.removeOccupiedProvince(getProvinceID());
        int i = 0;
        while (true) {
            if (i >= Game.getProvince(getProvinceID()).getArmySize()) {
                z3 = z;
                break;
            } else {
                if (Game.getProvince(getProvinceID()).getArmy(i).civID == Game.player.iCivID) {
                    z2 = true;
                    break;
                }
                i++;
            }
        }
        resetSiegeData();
        Game.getProvinceData(getProvinceID()).setOccupiedByCivID(getProvinceID(), 0);
        if (z3) {
            Game.player.addNotification(new AnonymousClass13(Notification.Notification_Type.SIEGE, Game.lang.get(z2 ? "SiegeWon" : "SiegeLost") + ": " + getProvinceName(), Images.siege, Game_Calendar.TURN_ID, z2 ? Notification.Notification_BG.GREEN : Notification.Notification_BG.RED, getProvinceID()));
        }
        for (int i2 = 0; i2 < getNeighboringProvincesSize(); i2++) {
            if (Game.getProvince(getNeighboringProvinces(i2)).getFortLevel() == 0 && Game.getProvince(getNeighboringProvinces(i2)).getCivID() == getCivID() && Game.getProvince(getNeighboringProvinces(i2)).isOccupied()) {
                String warKey2 = WarManager.getWarKey(getCivID(), Game.getProvinceData(getNeighboringProvinces(i2)).getOccupiedByCivID());
                if (warKey2 != null) {
                    try {
                        float fAddWarScore_ValueToAdd_Province2 = WarManager.lWars.get(warKey2).addWarScore_ValueToAdd_Province(getWarScore(getNeighboringProvinces(i2)), Game.getProvinceData(getNeighboringProvinces(i2)).getOccupiedByCivID(), getCivID(), getProvinceID());
                        if (WarManager.lWars.get(warKey2).isAggressor(Game.getProvinceData(getNeighboringProvinces(i2)).getOccupiedByCivID())) {
                            WarManager.lWars.get(warKey2).addWarScore_Just(-fAddWarScore_ValueToAdd_Province2);
                            WarManager.lWars.get(warKey2).warScoreFromOccupiedProvinces -= fAddWarScore_ValueToAdd_Province2;
                        } else {
                            WarManager.lWars.get(warKey2).addWarScore_Just(fAddWarScore_ValueToAdd_Province2);
                            WarManager.lWars.get(warKey2).warScoreFromOccupiedProvinces += fAddWarScore_ValueToAdd_Province2;
                        }
                    } catch (Exception e3) {
                        CFG.exceptionStack(e3);
                    }
                }
                Game.getProvinceData(getNeighboringProvinces(i2)).setOccupiedByCivID(getProvinceID(), 0);
                if (Game.getProvinceData4(getNeighboringProvinces(i2)).isUnderSiege()) {
                    Game.getProvince(getNeighboringProvinces(i2)).resetSiegeData();
                    SiegeManager.removeProvinceSiege(getNeighboringProvinces(i2));
                }
                Game.getProvince(getNeighboringProvinces(i2)).invasionMoveArmies();
            }
        }
        if (z3) {
            invasionMoveArmies();
        }
    }

    public final void retakeOccupiedProvince_Peace() {
        resetSiegeData();
        Game.getProvinceData(getProvinceID()).setOccupiedByCivID(getProvinceID(), 0);
    }

    public final void setBG(Pixmap pixmap) {
        this.provinceBG.getTexture().dispose();
        this.provinceBG = null;
        this.provinceBG = new Image(new Texture(pixmap), Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
    }

    public final void setCivID(int i) {
        if (i == Game.getProvinceData(getProvinceID()).getCivID()) {
            return;
        }
        if (Game.getProvinceData(getProvinceID()).getCivID() > 0) {
            Game.getCiv(Game.getProvinceData(getProvinceID()).getCivID()).removeProvince(getProvinceID());
            if (this.wonderID >= 0 && getWonderBuilt()) {
                WondersManager.updateCivBonuses(getCivID(), this.wonderID, -1);
                WondersManager.updateProvinceBonuses(getProvinceID(), this.wonderID, -1);
            }
        }
        boolean z = this.isCapital && Game.getCiv(Game.getProvinceData(getProvinceID()).getCivID()).getCapitalProvinceID() == getProvinceID();
        if (z) {
            for (int i2 = 0; i2 < this.iBuildingsSize; i2++) {
                BonusesManager.updateBuildingBonuses(getProvinceID(), this.buildings.get(i2).getBuilding(), this.buildings.get(i2).getBuildingID(), -1);
            }
        }
        Game.addSimpleTask(new AnonymousClass5("buildCivilizationsRegion" + Game.getProvinceData(getProvinceID()).getCivID(), Game.getProvinceData(getProvinceID()).getCivID()));
        Game.addSimpleTask(new AnonymousClass6("updateCivStability" + getCivID(), getCivID()));
        String str = ClXgFvsSKQc.wYglKUyw;
        Game.addSimpleTask(new AnonymousClass7(str + getCivID(), getCivID()));
        Game.getProvinceData(getProvinceID()).setOccupiedByCivID(getProvinceID(), 0);
        Game.getProvinceData(getProvinceID()).setCivID(i);
        Game.addSimpleTask(new AnonymousClass8("updateCivStability" + getCivID(), getCivID()));
        Game.addSimpleTask(new AnonymousClass9(str + getCivID(), getCivID()));
        if (z) {
            for (int i3 = 0; i3 < this.iBuildingsSize; i3++) {
                BonusesManager.updateBuildingBonuses(getProvinceID(), this.buildings.get(i3).getBuilding(), this.buildings.get(i3).getBuildingID(), 1);
            }
        }
        if (Game.getProvinceData(getProvinceID()).getCivID() > 0) {
            Game.getCiv(Game.getProvinceData(getProvinceID()).getCivID()).addProvince(getProvinceID());
            if (this.wonderID >= 0 && getWonderBuilt()) {
                WondersManager.updateCivBonuses(getCivID(), this.wonderID, 1);
                WondersManager.updateProvinceBonuses(getProvinceID(), this.wonderID, 1);
            }
        }
        if (this.religionConversion != null) {
            Game.gameThreadTurns.removeProvinceConvertReligion(getProvinceID());
        }
        if (this.coreCreation != null) {
            Game.gameThreadTurns.removeProvinceCoreCreation(getProvinceID());
        }
        this.religionConversion = null;
        this.coreCreation = null;
        this.haveACore = false;
        for (int i4 = 0; i4 < this.iCoresSize; i4++) {
            if (Game.getProvinceData5(getProvinceID()).co.get(i4).intValue() == getCivID()) {
                this.haveACore = true;
                break;
            }
        }
        if (this.isCapital && Game.getCiv(getCivID()).getCapitalProvinceID() != getProvinceID()) {
            setIsCapital(false);
        }
        updateProvinceIncome();
        Game.mapCities.updateNameToNewTrueOwner(getProvinceID(), false);
        Game.updateProvinceBorder(getProvinceID());
        Game.addSimpleTask(new AnonymousClass10("buildCivilizationsRegion" + i, i));
        if (this.drawProvince) {
            FBOProvincesBG.redrawnProvinces();
        }
        buildDistanceToCapital();
    }

    public final void setCivID_Just(int i) {
        Game.getProvinceData(getProvinceID()).setOccupiedByCivID(getProvinceID(), 0);
        Game.getProvinceData(getProvinceID()).setCivID(i);
        Game.mapCities.updateNameToNewTrueOwner(getProvinceID(), false);
    }

    public final void setCivID_LoadScenario(int i) {
        Game.getProvinceData(getProvinceID()).setCivID(i);
    }

    public final void setCivID_RemoveOldAddNewToCiv(int i) {
        if (i == Game.getProvinceData(getProvinceID()).getCivID()) {
            return;
        }
        if (Game.getProvinceData(getProvinceID()).getCivID() > 0) {
            Game.getCiv(Game.getProvinceData(getProvinceID()).getCivID()).removeProvince(getProvinceID());
            if (this.wonderID >= 0 && getWonderBuilt()) {
                WondersManager.updateCivBonuses(getCivID(), this.wonderID, -1);
                WondersManager.updateProvinceBonuses(getProvinceID(), this.wonderID, -1);
            }
        }
        Game.getProvinceData(getProvinceID()).setOccupiedByCivID(getProvinceID(), 0);
        Game.getProvinceData(getProvinceID()).setCivID(i);
        clearCores();
        if (i > 0) {
            addCore_Just(i);
        }
        Game.mapCities.updateNameToNewTrueOwner(getProvinceID(), false);
        if (Game.getProvinceData(getProvinceID()).getCivID() > 0) {
            Game.getCiv(Game.getProvinceData(getProvinceID()).getCivID()).addProvince(getProvinceID());
            if (this.wonderID < 0 || !getWonderBuilt()) {
                return;
            }
            WondersManager.updateCivBonuses(getCivID(), this.wonderID, 1);
            WondersManager.updateProvinceBonuses(getProvinceID(), this.wonderID, 1);
        }
    }

    public final void setCivRegionID(int i) {
        this.iCivRegionID = i;
    }

    public final void setCivilizationProvinceColor(SpriteBatch spriteBatch, int i, float f) {
        Game.getCiv(i).civColorMap.a = f;
        spriteBatch.setColor(Game.getCiv(i).civColorMap);
    }

    public final void setCivilizationProvinceColor_Fog(SpriteBatch spriteBatch, int i, float f) {
        Game.getCiv(i).civColorMap.a = f;
        Game.getCiv(i).civColorFog.a = f;
        spriteBatch.setColor(Game.getCiv(i).civColorFog);
    }

    public final void setContinent(int i) {
        this.iContinentID = i;
    }

    public void setDevastation(float f) {
        float fMax = Math.max(0.0f, Math.min(f, GameValues.siege.DEVASTATION_MAX));
        if (Game.getProvinceData2(getProvinceID()).getDevastation() != fMax) {
            Game.getProvinceData2(getProvinceID()).setDevastation(fMax);
            if (Math.abs(this.lastUpdatedDevastation - fMax) > GameValues.gameUpdate.GAME_UPDATE_INCOME_PER_DEVASTATION_CHANGE) {
                this.lastUpdatedDevastation = fMax;
                updateProvinceIncome();
                Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
            }
        }
    }

    public final void setDrawCities(boolean z) {
        this.drawCities = z;
    }

    public final void setDrawProvince(boolean z) {
        this.drawProvince = z;
    }

    public void setEconomy(float f) {
        Game.getProvinceData6(getProvinceID()).setEconomy(Math.max(0.1f, f));
    }

    public void setFogDrawArmy(boolean z) {
        this.fogDrawArmy = z;
        if (z) {
            this.fog_drawLandProvince = new AnonymousClass15();
        } else {
            this.fog_drawLandProvince = new AnonymousClass16();
        }
    }

    public final void setGeoRegion(int i) {
        this.iGeoRegionID = i;
    }

    public final void setGrowthRate(float f) {
        this.fBaseGrowthRate = f;
    }

    public final void setInfrastructure(int i) {
        Game.getProvinceData6(getProvinceID()).setInfrastructure(Math.max(0, i));
    }

    public final void setIsCapital(boolean z) {
        setIsCapital(z, false);
    }

    public final void setIsCapital(boolean z, boolean z2) {
        try {
            if (this.isCapital != z || z2) {
                if (z) {
                    this.provBonuses.LocalGrowthRate += GameValues.capital.CAPITAL_GROWTH_RATE;
                    this.provBonuses.MonthlyIncome += GameValues.capital.CAPITAL_MONTHLY_INCOME;
                    this.provBonuses.FortLevel += GameValues.capital.CAPITAL_FORT_LVL;
                } else {
                    this.provBonuses.LocalGrowthRate -= GameValues.capital.CAPITAL_GROWTH_RATE;
                    this.provBonuses.MonthlyIncome -= GameValues.capital.CAPITAL_MONTHLY_INCOME;
                    this.provBonuses.FortLevel -= GameValues.capital.CAPITAL_FORT_LVL;
                    for (int i = this.iBuildingsSize - 1; i >= 0; i--) {
                        try {
                            if (BuildingsManager.buildings.get(this.buildings.get(i).getBuilding()).UniqueCapitalBuilding) {
                                BonusesManager.updateBuildingBonuses(getProvinceID(), this.buildings.get(i).getBuilding(), this.buildings.get(i).getBuildingID(), -1);
                                this.buildings.remove(i);
                            }
                        } catch (Exception e) {
                            CFG.exceptionStack(e);
                        }
                    }
                    this.iBuildingsSize = this.buildings.size();
                }
                this.isCapital = z;
                updateProvinceIncome();
                updateProvinceValue();
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void setLevelOfPort(int i) {
        this.iLevelOfPort = i;
    }

    public void setLoot(float f) {
        Game.getProvinceData2(getProvinceID()).setLoot(Math.max(0.0f, Math.min(f, 1.0f)));
    }

    public void setManpower(float f) {
        Game.getProvinceData3(getProvinceID()).setManpower(Math.max(0.0f, f));
    }

    public final void setMapModeRegionID(int i) {
        this.iMapModeRegion = i;
    }

    public final void setOccupiedByCivID(int i) {
        Game.getProvinceData(getProvinceID()).setOccupiedByCivID(getProvinceID(), i);
        String warKey = WarManager.getWarKey(getCivID(), i);
        if (warKey != null) {
            try {
                float fAddWarScore_ValueToAdd_Province = WarManager.lWars.get(warKey).addWarScore_ValueToAdd_Province(getWarScore(), i, getCivID(), getProvinceID());
                if (WarManager.lWars.get(warKey).isAggressor(i)) {
                    WarManager.lWars.get(warKey).addWarScore_Just(fAddWarScore_ValueToAdd_Province);
                    WarManager.lWars.get(warKey).warScoreFromOccupiedProvinces += fAddWarScore_ValueToAdd_Province;
                } else {
                    WarManager.lWars.get(warKey).addWarScore_Just(-fAddWarScore_ValueToAdd_Province);
                    WarManager.lWars.get(warKey).warScoreFromOccupiedProvinces -= fAddWarScore_ValueToAdd_Province;
                }
                WarManager.lWars.get(warKey).lastFight_TurnID = Game_Calendar.TURN_ID;
                Game.getCiv(getCivID()).updateWarWeariness(fAddWarScore_ValueToAdd_Province * GameValues.war.WAR_WAR_WEARINESS_OCCUPIED_PROVINCE);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public final boolean setPopulationOfCivID(int i, int i2) {
        for (int i3 = 0; i3 < this.provincePopulationSize; i3++) {
            try {
                if (Game.getProvincePopulation(getProvinceID()).getPopulation(i3).getCivID() == i) {
                    if (i2 > 0) {
                        this.provincePopulationTotal = (this.provincePopulationTotal - Game.getProvincePopulation(getProvinceID()).getPopulation(i3).getPopulation()) + i2;
                        Game.getProvincePopulation(getProvinceID()).getPopulation(i3).setPopulation(i2);
                    } else {
                        if (this.provincePopulationSize > 1) {
                            this.provincePopulationTotal -= Game.getProvincePopulation(getProvinceID()).getPopulation(i3).getPopulation();
                            Game.getProvincePopulation(getProvinceID()).getPopulation().remove(i3);
                            this.provincePopulationSize = Game.getProvincePopulation(getProvinceID()).getPopulation().size();
                            return true;
                        }
                        Game.getProvincePopulation(getProvinceID()).getPopulation(i3).setPopulation(GameValues.province.MIN_POPULATION);
                        this.provincePopulationTotal = GameValues.province.MIN_POPULATION;
                    }
                    return false;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        if (i2 > 0) {
            try {
                Game.getProvincePopulation(getProvinceID()).getPopulation().add(new ProvincePopulation(i, i2));
                this.provincePopulationTotal += i2;
                this.provincePopulationSize = Game.getProvincePopulation(getProvinceID()).getPopulation().size();
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
        return false;
    }

    public final void setPortShiftX(int i) {
        this.iPortShiftX = i;
    }

    public final void setPortShiftY(int i) {
        this.iPortShiftY = i;
    }

    public final void setProvinceColor(SpriteBatch spriteBatch, float f) {
        setCivilizationProvinceColor(spriteBatch, getCivID(), f);
    }

    public final void setProvinceColor_Fog(SpriteBatch spriteBatch, float f) {
        setCivilizationProvinceColor_Fog(spriteBatch, getCivID(), f);
    }

    public final void setProvinceName(String str) {
        this.sProvinceName = str;
        String upperCase = str.toUpperCase();
        this.sProvinceNameUpperCase = upperCase;
        this.iProvinceNameLength_Minus1 = upperCase.length() - 1;
    }

    public void setReligion(int i) {
        if (i < 0 || i >= Game.religionManager.getReligionsSize()) {
            return;
        }
        Game.getProvinceData7(getProvinceID()).setReligionID(i);
        if (getCivID() > 0) {
            Game.getCiv(getCivID()).convertReligion.checkProvince(getProvinceID(), getCivID());
        }
    }

    public void setReligion_LoadScenario(int i) {
        Game.getProvinceData7(getProvinceID()).setReligionID(i);
        if (getCivID() <= 0 || i == Game.getCiv(getCivID()).getReligionID()) {
            return;
        }
        Game.getCiv(getCivID()).convertReligion.addProvince(getProvinceID());
    }

    public final void setResourceID(int i) {
        this.iResourceID = i;
    }

    public void setRevulutionaryRisk(float f) {
        Game.getProvinceData8(getProvinceID()).setRevolutionaryRisk(Math.max(0.0f, Math.min(GameValues.province.PROVINCE_MAX_UNREST, f)));
    }

    public final void setShiftX(int i) {
        this.iShiftX = i;
        this.iCenterShiftX = getCenterX() + getShiftX();
    }

    public final void setShiftY(int i) {
        this.iShiftY = i;
        this.iCenterShiftY = getCenterY() + getShiftY();
    }

    public void setTaxEfficiency(float f) {
        Game.getProvinceData3(getProvinceID()).setTaxEfficiency(f);
    }

    public final void setTerrainID(int i) {
        this.iTerrainTypeID = i;
    }

    public final void setTranslateProvincePosX(int i) {
        this.iTranslateProvincePosX = i;
    }

    public final void setWasteland(int i) {
        Game.getProvinceData(getProvinceID()).setWastelandLevel(i);
        int i2 = 0;
        while (true) {
            if (i2 >= getNeighboringProvincesSize()) {
                Game.setUpdateProvincesInView(true);
                return;
            }
            if (getProvinceID() < getNeighboringProvinces(i2)) {
                if (i >= 0) {
                    if (Game.getProvince(getNeighboringProvinces(i2)).getWasteland() >= 0) {
                        getProvinceBordersLandByLand(getNeighboringProvinces(i2)).setIsCivilizationBorder_Just(false, getNeighboringProvinces(i2));
                        getProvinceBordersLandByLand(getNeighboringProvinces(i2)).setIsWastelandBorder(false, getNeighboringProvinces(i2));
                    } else {
                        getProvinceBordersLandByLand(getNeighboringProvinces(i2)).setIsCivilizationBorder_Just(getCivID() != Game.getProvince(getNeighboringProvinces(i2)).getCivID(), getNeighboringProvinces(i2));
                        getProvinceBordersLandByLand(getNeighboringProvinces(i2)).setIsWastelandBorder(true, getNeighboringProvinces(i2));
                    }
                } else if (Game.getProvince(getNeighboringProvinces(i2)).getWasteland() >= 0) {
                    getProvinceBordersLandByLand(getNeighboringProvinces(i2)).setIsCivilizationBorder_Just(getCivID() != Game.getProvince(getNeighboringProvinces(i2)).getCivID(), getNeighboringProvinces(i2));
                    getProvinceBordersLandByLand(getNeighboringProvinces(i2)).setIsWastelandBorder(true, getNeighboringProvinces(i2));
                } else {
                    getProvinceBordersLandByLand(getNeighboringProvinces(i2)).setIsCivilizationBorder_Just(getCivID() != Game.getProvince(getNeighboringProvinces(i2)).getCivID(), getNeighboringProvinces(i2));
                    getProvinceBordersLandByLand(getNeighboringProvinces(i2)).setIsWastelandBorder(false, getNeighboringProvinces(i2));
                }
            } else if (i >= 0) {
                if (Game.getProvince(getNeighboringProvinces(i2)).getWasteland() >= 0) {
                    Game.getProvince(getNeighboringProvinces(i2)).getProvinceBordersLandByLand(getProvinceID()).setIsCivilizationBorder_Just(false, getProvinceID());
                    Game.getProvince(getNeighboringProvinces(i2)).getProvinceBordersLandByLand(getProvinceID()).setIsWastelandBorder(false, getProvinceID());
                } else {
                    Game.getProvince(getNeighboringProvinces(i2)).getProvinceBordersLandByLand(getProvinceID()).setIsCivilizationBorder_Just(getCivID() != Game.getProvince(getNeighboringProvinces(i2)).getCivID(), getProvinceID());
                    Game.getProvince(getNeighboringProvinces(i2)).getProvinceBordersLandByLand(getProvinceID()).setIsWastelandBorder(true, getProvinceID());
                }
            } else if (Game.getProvince(getNeighboringProvinces(i2)).getWasteland() >= 0) {
                Game.getProvince(getNeighboringProvinces(i2)).getProvinceBordersLandByLand(getProvinceID()).setIsCivilizationBorder_Just(getCivID() != Game.getProvince(getNeighboringProvinces(i2)).getCivID(), getProvinceID());
                Game.getProvince(getNeighboringProvinces(i2)).getProvinceBordersLandByLand(getProvinceID()).setIsWastelandBorder(true, getProvinceID());
            } else {
                Game.getProvince(getNeighboringProvinces(i2)).getProvinceBordersLandByLand(getProvinceID()).setIsCivilizationBorder_Just(getCivID() != Game.getProvince(getNeighboringProvinces(i2)).getCivID(), getProvinceID());
                Game.getProvince(getNeighboringProvinces(i2)).getProvinceBordersLandByLand(getProvinceID()).setIsWastelandBorder(false, getProvinceID());
            }
            i2++;
        }
    }

    public void setWonderBuilt(boolean z) {
        Game.getProvinceData8(getProvinceID()).setWonderBuilt(z);
    }

    public final void splitInHalf(int i) {
        try {
            if (this.lArmies.get(i).iArmyRegimentSize > 1) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 0; i2 < this.lArmies.get(i).iArmyRegimentSize; i2++) {
                    if (i2 % 2 == 0) {
                        arrayList.add(this.lArmies.get(i).lArmyRegiment.get(i2));
                    } else {
                        arrayList2.add(this.lArmies.get(i).lArmyRegiment.get(i2));
                    }
                }
                if (updateRegiment(i, arrayList)) {
                    addArmy(new ArmyDivision(this.lArmies.get(i).civID, this.lArmies.get(i).provinceID, arrayList2));
                    updateDrawArmy();
                    updateArmyPosY();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void startBattle() {
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < getArmySize(); i++) {
                getArmy(i).addedToBattle = false;
            }
            int i2 = 0;
            boolean z = false;
            while (i2 < getArmySize() - 1) {
                int i3 = i2 + 1;
                for (int i4 = i3; i4 < getArmySize(); i4++) {
                    if (!getArmy(i2).inRetreat && !getArmy(i4).inRetreat && !getArmy(i2).inBattle && !getArmy(i4).inBattle && DiplomacyManager.isAtWar(getArmy(i2).civID, getArmy(i4).civID)) {
                        String warKey = Game.getCiv(getArmy(i2).civID).diplomacy.getWarKey(getArmy(i2).civID, getArmy(i4).civID);
                        if (warKey == null) {
                            warKey = WarManager.getWarKey(getArmy(i2).civID, getArmy(i4).civID);
                        }
                        if (warKey != null && WarManager.lWars.containsKey(warKey)) {
                            if (WarManager.lWars.get(warKey).isAggressor(getArmy(i2).civID)) {
                                arrayList.add(getArmy(i2));
                                arrayList2.add(getArmy(i4));
                                getArmy(i2).addedToBattle = true;
                                getArmy(i4).addedToBattle = true;
                                break;
                            }
                            if (WarManager.lWars.get(warKey).isAggressor(getArmy(i4).civID)) {
                                arrayList.add(getArmy(i4));
                                arrayList2.add(getArmy(i2));
                                getArmy(i2).addedToBattle = true;
                                getArmy(i4).addedToBattle = true;
                                break;
                            }
                        } else {
                            if ((getArmy(i2).civID < 0 || getArmy(i4).civID < 0) && getArmy(i2).civID != getArmy(i4).civID) {
                                if (getArmy(i2).civID < 0) {
                                    arrayList.add(getArmy(i4));
                                    arrayList2.add(getArmy(i2));
                                    getArmy(i2).addedToBattle = true;
                                    getArmy(i4).addedToBattle = true;
                                } else {
                                    arrayList.add(getArmy(i2));
                                    arrayList2.add(getArmy(i4));
                                    getArmy(i2).addedToBattle = true;
                                    getArmy(i4).addedToBattle = true;
                                }
                                z = true;
                                break;
                            }
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    break;
                } else {
                    i2 = i3;
                }
            }
            if (arrayList.size() <= 0 || arrayList2.size() <= 0) {
                return;
            }
            int i5 = i2 + 1;
            if (z) {
                while (i5 < getArmySize()) {
                    if (!getArmy(i5).inRetreat && !getArmy(i5).inBattle && !getArmy(i5).addedToBattle) {
                        if (getArmy(i5).civID < 0) {
                            arrayList2.add(getArmy(i5));
                        } else {
                            arrayList.add(getArmy(i5));
                        }
                    }
                    i5++;
                }
            } else {
                while (i5 < getArmySize()) {
                    if (!getArmy(i5).inRetreat && !getArmy(i5).inBattle && !getArmy(i5).addedToBattle) {
                        if (DiplomacyManager.isAtWar(getArmy(i5).civID, ((ArmyDivision) arrayList.get(0)).civID)) {
                            arrayList2.add(getArmy(i5));
                        } else if (DiplomacyManager.isAtWar(getArmy(i5).civID, ((ArmyDivision) arrayList2.get(0)).civID)) {
                            arrayList.add(getArmy(i5));
                        }
                    }
                    i5++;
                }
            }
            Game.battleManager.addBattle(new Battle(getProvinceID(), arrayList, arrayList2));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final float underConstruction(int i, int i2) {
        for (int i3 = 0; i3 < this.iBuildingsConstructionSize; i3++) {
            if (this.buildingsConstruction.get(i3).getBuilding() == i && this.buildingsConstruction.get(i3).getBuildingID() == i2) {
                return this.buildingsConstruction.get(i3).getConstructionTimeLeft() / this.buildingsConstruction.get(i3).getConstructionTime();
            }
        }
        return -1.0f;
    }

    public void updateAccessToMainSea() {
        this.accessToMainSea = false;
        for (int i = 0; i < this.iNeighboringSeaProvincesSize; i++) {
            if (Game.getProvince(getNeighboringSeaProvinces(i)).getLevelOfPort() == -2) {
                this.accessToMainSea = true;
                return;
            }
        }
    }

    public final void updateAfterEconomyChange() {
        updateProvinceIncome();
        updateBuildingLimit();
        updateInfrastructureMax();
    }

    public final void updateAfterReligionConversion() {
        updateProvinceIncome();
        Game.gameThreadTurns.addCivUpdateMaxManpower(getCivID());
        Game.gameThread.addCivUpdateLegacyPerMonth(getCivID());
        Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
    }

    public final void updateArmyPosY() {
        int i = 0;
        for (int i2 = 0; i2 < this.iArmiesSize; i2++) {
            try {
                if (!this.lArmies.get(i2).inMovement) {
                    this.lArmies.get(i2).iShiftY = ((ProvinceDrawArmy.getArmyHeight() * i) + (i * 2)) - (ProvinceDrawArmy.getArmyHeight() / 2);
                    i++;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void updateArmy_AfterBattle(String str, String str2, int i, float f) {
        for (int i2 = 0; i2 < this.iArmiesSize; i2++) {
            try {
                if (getArmy(i2).key.equals(str)) {
                    for (int i3 = 0; i3 < this.lArmies.get(i2).iArmyRegimentSize; i3++) {
                        if (this.lArmies.get(i2).lArmyRegiment.get(i3).key.equals(str2)) {
                            this.lArmies.get(i2).provinceID = getProvinceID();
                            this.lArmies.get(i2).lArmyRegiment.get(i3).num = i;
                            this.lArmies.get(i2).lArmyRegiment.get(i3).mo = f;
                            return;
                        }
                    }
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void updateArmy_BattleSummary(String str) {
        try {
            for (int i = this.iArmiesSize - 1; i >= 0; i--) {
                if (this.lArmies.get(i).key.equals(str)) {
                    this.lArmies.get(i).inBattle = false;
                    this.lArmies.get(i).updateMorale();
                    this.lArmies.get(i).updateArmy(false);
                    if (this.lArmies.get(i).iArmy == 0) {
                        removeArmy(i);
                        return;
                    } else {
                        if (this.lArmies.get(i).inMovement) {
                            if (this.lArmies.get(i).civID < 0) {
                                Game.revolutionMoveUnits.updateMoveInBattle(this.lArmies.get(i).key, this.lArmies.get(i).inBattle);
                                return;
                            } else {
                                Game.getCiv(this.lArmies.get(i).civID).updateMoveInBattle(this.lArmies.get(i).key, this.lArmies.get(i).inBattle);
                                return;
                            }
                        }
                        return;
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateBuildingLimit() {
        this.iBuildingsLimit = GameValues.buildings.BUILDINGS_LIMIT_DEFAULT + (this.isCapital ? GameValues.buildings.BUILDINGS_LIMIT_CAPITAL : 0) + (GameValues.infrastructure.INFRASTRUCTURE_BUILDINGS_SLOT_PER_LVL * getInfrastructure()) + ((int) Math.floor(getEconomyWithBonuses() / GameValues.buildings.BUILDINGS_SLOT_PER_ECONOMY)) + this.provBonuses.BuildingSlots + Game.getCiv(getCivID()).civBonuses.BuildingSlot;
    }

    public void updateBuildingsUnderConstrucion(int i) {
        for (int i2 = this.iBuildingsConstructionSize - 1; i2 >= 0; i2--) {
            this.buildingsConstruction.get(i2).iConstructionTimeLeft -= i;
            if (this.buildingsConstruction.get(i2).iConstructionTimeLeft <= 0) {
                try {
                    if (getCivID() == Game.player.iCivID) {
                        Game.stats.civStats.bc++;
                    }
                    Game.getCiv(getCivID()).eventsData2.addBuildingsConstructed(1);
                    int i3 = BuildingsManager.buildings.get(this.buildingsConstruction.get(i2).getBuilding()).GroupID;
                    if (i3 == 0) {
                        Game.getCiv(getCivID()).eventsData2.addAdministrativeBuildingsConstructed(1);
                    } else if (i3 == 1) {
                        Game.getCiv(getCivID()).eventsData2.addMilitaryBuildingsConstructed(1);
                    } else if (i3 == 2) {
                        Game.getCiv(getCivID()).eventsData2.addEconomyBuildingsConstructed(1);
                    } else if (i3 == 3) {
                        Game.getCiv(getCivID()).eventsData2.addCapitalBuildingsConstructed(1);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
                addNewBuilding(new ProvinceConstructedBuilding(this.buildingsConstruction.get(i2).getBuilding(), this.buildingsConstruction.get(i2).getBuildingID()));
                BonusesManager.updateBuildingBonuses(getProvinceID(), this.buildingsConstruction.get(i2).getBuilding(), this.buildingsConstruction.get(i2).getBuildingID(), 1);
                if (BuildingsManager.buildings.get(this.buildingsConstruction.get(i2).getBuilding()).UniqueCapitalBuilding && getCivID() == Game.player.iCivID && !isOccupied()) {
                    InGame_Info.iCivID = Game.player.iCivID;
                    InGame_Info.iCivID2 = 0;
                    Game.menuManager.rebuildInGame_Info(BuildingsManager.buildings.get(this.buildingsConstruction.get(i2).getBuilding()).Name[this.buildingsConstruction.get(i2).getBuildingID()], Game.lang.get("BuildingConstructed"));
                    InGame_Info.imgID = Images.infoCrown;
                }
                this.buildingsConstruction.remove(i2);
                int size = this.buildingsConstruction.size();
                this.iBuildingsConstructionSize = size;
                if (size == 0) {
                    Game.gameThreadTurns.removeProvinceBuildingsUnderConstruction(getProvinceID());
                }
                updateProvinceIncome();
                updateBuildingLimit();
                if (getCivID() == Game.player.iCivID) {
                    Game.menuManager.addRebuildInGame_RightQueue();
                }
            }
        }
    }

    public final void updateCityScale() {
        this.cityScale = Game.mapCities.citiesSettings.citiesScale[0] * Math.min(1.0f, Math.max(0.4f, getGrowthRateWithBonuses() / 100.0f));
    }

    public final void updateCoreCreation(int i) {
        ProvinceInvest provinceInvest = this.coreCreation;
        if (provinceInvest != null) {
            provinceInvest.daysLeft -= i;
            if (this.coreCreation.daysLeft <= 0) {
                addCore(getCivID());
                this.coreCreation = null;
                Game.addSimpleTask(new AnonymousClass12("updateCivStability" + getCivID(), getCivID()));
                Game.gameThreadTurns.removeProvinceCoreCreation(getProvinceID());
            }
        }
    }

    public void updateCoresSize() {
        this.iCoresSize = Game.getProvinceData5(getProvinceID()).co.size();
    }

    public void updateCores_AfterRemoveCiv(int i) {
        for (int i2 = this.iCoresSize - 1; i2 >= 0; i2--) {
            if (Game.getProvinceData5(getProvinceID()).co.get(i2).intValue() > i) {
                Game.getProvinceData5(getProvinceID()).co.set(i2, Integer.valueOf(Game.getProvinceData5(getProvinceID()).co.get(i2).intValue() - 1));
            } else if (Game.getProvinceData5(getProvinceID()).co.get(i2).intValue() == i) {
                Game.getProvinceData5(getProvinceID()).co.remove(i2);
                this.iCoresSize = Game.getProvinceData5(getProvinceID()).co.size();
            }
        }
    }

    public final void updateDevastation() {
        if (isOccupied()) {
            setDevastation(getDevastation() + GameValues.siege.DEVASTATION_PER_MONTH_OCCUPIED);
        } else {
            setDevastation(getDevastation() + GameValues.siege.DEVASTATION_PER_MONTH_DEFAULT);
        }
    }

    public void updateDevelopInfrastructure() {
        if (this.iProvinceDevelopInfrastructureSize > 0) {
            this.provinceDevelopInfrastructureDaysLeft.get(0).daysLeft--;
            if (this.provinceDevelopInfrastructureDaysLeft.get(0).daysLeft <= 0) {
                this.provinceDevelopInfrastructureDaysLeft.remove(0);
                this.iProvinceDevelopInfrastructureSize = this.provinceDevelopInfrastructureDaysLeft.size();
                setInfrastructure(Math.min(this.iInfrastructureMax, getInfrastructure() + 1));
                if (this.iProvinceDevelopInfrastructureSize == 0) {
                    Game.gameThreadTurns.removeProvinceDevelopInfrastructure(getProvinceID());
                }
                updateProvinceIncome();
                updateBuildingLimit();
                updateInfrastructureMax();
                if (Game.getProvince(this.iProvinceID).haveResearchBuilding()) {
                    Game.getCiv(Game.getProvince(this.iProvinceID).getCivID()).updateResearchPerMonth();
                }
                Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
            }
        }
    }

    public void updateDrawArmy() {
        this.drawArmy = ProvinceDrawArmy.updateDrawArmy(this.iProvinceID);
    }

    public void updateHaveACore() {
        this.haveACore = false;
        for (int i = 0; i < this.iCoresSize; i++) {
            if (Game.getProvinceData5(getProvinceID()).co.get(i).intValue() == getCivID()) {
                this.haveACore = true;
                return;
            }
        }
    }

    public final void updateIncomeEconomy() {
        this.fProvinceIncomeEconomy = Game.getIncomeFromEconomy(getProvinceID());
    }

    public final void updateIncomeProduction() {
        this.fProvinceIncomeProduction = ResourcesManager.getMonthlyIncome(getProvinceID(), getResourceID());
    }

    public final void updateIncomeTaxation() {
        this.fProvinceIncomeTaxation = Game.getIncomePopulationTaxation(getProvinceID());
    }

    public void updateIncreaseGrowthRate() {
        if (this.iProvinceIncreaseGrowthRateSize > 0) {
            this.provinceIncreaseGrowthRateDaysLeft.get(0).daysLeft--;
            Game.getProvinceData7(getProvinceID()).setIncreasedGrowthRate(Game.getProvinceData7(getProvinceID()).getIncreasedGrowthRate() + (GameValues.growthRate.INCREASE_GROWTH_RATE_GROWTH / this.provinceIncreaseGrowthRateDaysLeft.get(0).investTime));
            updateProvinceIncome();
            updateInfrastructureMax();
            if (this.provinceIncreaseGrowthRateDaysLeft.get(0).daysLeft <= 0) {
                this.provinceIncreaseGrowthRateDaysLeft.remove(0);
                this.iProvinceIncreaseGrowthRateSize = this.provinceIncreaseGrowthRateDaysLeft.size();
                updateCityScale();
                if (this.iProvinceIncreaseGrowthRateSize == 0) {
                    Game.gameThreadTurns.removeProvinceIncreaseGrowthRate(getProvinceID());
                }
                if (haveResearchBuilding()) {
                    Game.getCiv(getCivID()).updateResearchPerMonth();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
                }
            }
        }
    }

    public void updateIncreaseManpower() {
        if (this.iProvinceIncreaseManpowerSize > 0) {
            this.provinceIncreaseManpowerDaysLeft.get(0).daysLeft--;
            setManpower(getManpower() + (GameValues.manpower.INCREASE_MANPOWER_GROWTH / this.provinceIncreaseManpowerDaysLeft.get(0).investTime));
            if (this.provinceIncreaseManpowerDaysLeft.get(0).daysLeft <= 0) {
                this.provinceIncreaseManpowerDaysLeft.remove(0);
                this.iProvinceIncreaseManpowerSize = this.provinceIncreaseManpowerDaysLeft.size();
                Game.gameThreadTurns.addCivUpdateMaxManpower(getCivID());
                if (this.iProvinceIncreaseManpowerSize == 0) {
                    Game.gameThreadTurns.removeProvinceIncreaseManpower(getProvinceID());
                }
            }
        }
    }

    public final void updateIncreasePopulationOfCivID(int i, int i2) {
        for (int i3 = 0; i3 < this.provincePopulationSize; i3++) {
            ProvincePopulation population = Game.getProvincePopulation(getProvinceID()).getPopulation(i3);
            if (population.getCivID() == i) {
                population.setPopulation(population.getPopulation() + i2);
                this.provincePopulationTotal += i2;
                return;
            }
        }
        Game.getProvincePopulation(getProvinceID()).getPopulation().add(new ProvincePopulation(i, i2));
        this.provincePopulationTotal += i2;
        this.provincePopulationSize = Game.getProvincePopulation(getProvinceID()).getPopulation().size();
    }

    public void updateIncreaseTaxEfficiency() {
        if (this.iProvinceIncreaseTaxEfficiencySize > 0) {
            this.provinceIncreasTaxEfficiencyDaysLeft.get(0).daysLeft--;
            setTaxEfficiency(getTaxEfficiency() + (GameValues.tax.INCREASE_TAX_EFFICIENCY_GROWTH / this.provinceIncreasTaxEfficiencyDaysLeft.get(0).investTime));
            if (this.provinceIncreasTaxEfficiencyDaysLeft.get(0).daysLeft <= 0) {
                this.provinceIncreasTaxEfficiencyDaysLeft.remove(0);
                this.iProvinceIncreaseTaxEfficiencySize = this.provinceIncreasTaxEfficiencyDaysLeft.size();
                updateProvinceIncome();
                Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
                if (this.iProvinceIncreaseTaxEfficiencySize == 0) {
                    Game.gameThreadTurns.removeProvinceIncreaseTaxEfficiency(getProvinceID());
                }
            }
        }
    }

    public final void updateInfrastructureMax() {
        this.iInfrastructureMax = Math.min(GameValues.infrastructure.INFRASTRUCTURE_MAX_DEFAULT + (this.isCapital ? GameValues.infrastructure.INFRASTRUCTURE_MAX_CAPITAL : 0) + ((int) Math.floor((getEconomyWithBonuses() / GameValues.infrastructure.INFRASTRUCTURE_MAX_PER_ECONOMY) + (getGrowthRateWithBonuses() / GameValues.infrastructure.INFRASTRUCTURE_MAX_PER_GROWTH_RATE))) + this.provBonuses.MaxInfrastructure + Game.getCiv(getCivID()).civBonuses.MaxInfrastructure, GameValues.infrastructure.INFRASTRUCTURE_MAX_LVL + Game.getCiv(getCivID()).civBonuses.MaxInfrastructure);
    }

    public void updateInvestEconomy() {
        if (this.iProvinceInvestSize > 0) {
            this.provinceInvestDaysLeft.get(0).daysLeft--;
            setEconomy(getEconomy() + (Game.getInvestEconomyGrowth(this.iProvinceID) / this.provinceInvestDaysLeft.get(0).investTime));
            if (this.provinceInvestDaysLeft.get(0).daysLeft <= 0) {
                this.provinceInvestDaysLeft.remove(0);
                this.iProvinceInvestSize = this.provinceInvestDaysLeft.size();
                updateAfterEconomyChange();
                Game.gameThread.addCivUpdateTotalIncomePerMonth(getCivID());
                if (this.iProvinceInvestSize == 0) {
                    Game.gameThreadTurns.removeProvinceInvest(getProvinceID());
                }
            }
        }
    }

    public final void updateIsUnderSiege() {
        if (Game.getProvinceData4(getProvinceID()).isUnderSiege()) {
            int i = 0;
            if (isOccupied()) {
                while (i < this.iArmiesSize) {
                    if (!getArmy(i).inMovement && !getArmy(i).inRetreat && DiplomacyManager.isAtWar(Game.getProvinceData(getProvinceID()).getOccupiedByCivID(), getArmy(i).civID)) {
                        return;
                    } else {
                        i++;
                    }
                }
            } else {
                while (i < this.iArmiesSize) {
                    if (!getArmy(i).inMovement && !getArmy(i).inRetreat && DiplomacyManager.isAtWar(getCivID(), getArmy(i).civID)) {
                        return;
                    } else {
                        i++;
                    }
                }
            }
            resetSiegeData();
            SiegeManager.removeProvinceSiege(getProvinceID());
        }
    }

    public final void updateLoot() {
        if (isOccupied()) {
            return;
        }
        setLoot(getLoot() + GameValues.siege.LOOT_PROVINCE_RECOVERY_PER_MONTH);
    }

    public final void updatePopulationGrowth() {
        updateIncreasePopulationOfCivID(getCivID(), (int) Math.max(1.0f, Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).POPULATION_GROWTH_PER_MONTH * (getGrowthRateWithBonuses() / 100.0f)));
    }

    public final void updatePopulationOfProvince() {
        this.provincePopulationTotal = 0;
        for (int i = 0; i < this.provincePopulationSize; i++) {
            this.provincePopulationTotal += Game.getProvincePopulation(getProvinceID()).getPopulation(i).getPopulation();
        }
    }

    public final void updateProvinceIncome() {
        this.fProvinceIncome = 0.0f;
        updateIncomeTaxation();
        updateIncomeEconomy();
        updateIncomeProduction();
        this.fProvinceIncome += this.fProvinceIncomeTaxation + this.fProvinceIncomeEconomy + this.fProvinceIncomeProduction + this.provBonuses.MonthlyIncome;
        updateProvinceMaintenance();
    }

    public final void updateProvinceMaintenance() {
        float provinceBuildingsMaintenance = getProvinceBuildingsMaintenance() + getProvinceMaintenance();
        this.fProvinceMaintenance = provinceBuildingsMaintenance;
        float f = this.fProvinceIncome;
        if (f - provinceBuildingsMaintenance < 0.0f) {
            this.fProvinceMaintenance = f;
        }
    }

    public final void updateProvinceValue() {
        float f = GameValues.province.PROVINCE_VALUE_BASE;
        this.fProvinceValue = f;
        float provinceValue_Economy = f + getProvinceValue_Economy();
        this.fProvinceValue = provinceValue_Economy;
        this.fProvinceValue = provinceValue_Economy + getProvinceValue_GrowthRate();
        if (this.wonderID >= 0 && getWonderBuilt()) {
            this.fProvinceValue += GameValues.province.PROVINCE_VALUE_WONDER_BUILT;
        }
        if (this.isCapital) {
            this.fProvinceValue += GameValues.province.PROVINCE_VALUE_CAPITAL;
        }
    }

    public final boolean updateRegiment(int i, List<ArmyRegiment> list) {
        try {
            if (list.size() == 0) {
                removeArmy(i);
                return false;
            }
            getArmy(i).provinceID = getProvinceID();
            getArmy(i).updateRegiment(list);
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return true;
        }
    }

    public final void updateReligionConversion(int i) {
        ProvinceInvest provinceInvest = this.religionConversion;
        if (provinceInvest != null) {
            provinceInvest.daysLeft -= i;
            if (this.religionConversion.daysLeft <= 0) {
                setReligion(Game.getCiv(getCivID()).getReligionID());
                this.religionConversion = null;
                Game.addSimpleTask(new AnonymousClass11("updateCivStability" + getCivID(), getCivID()));
                Game.gameThreadTurns.removeProvinceConvertReligion(getProvinceID());
                updateAfterReligionConversion();
            }
        }
    }

    public final void updateRevolutionaryRisk() {
        Game.getProvinceData8(getProvinceID()).setRevolutionaryRisk(Math.max(0.0f, Math.min(GameValues.province.PROVINCE_MAX_UNREST, Game.getProvinceData8(getProvinceID()).getRevolutionaryRisk() + getRevolutionaryRisk_MonhtlyChange())));
        if (getCivID() != Game.player.iCivID || Game.getProvinceData8(getProvinceID()).getRevolutionaryRisk() <= GameValues.rebels.SEND_NOTIFICATION_IF_UNREST_OVER) {
            return;
        }
        Game.player.addNotification_Unrest(new Notification(Notification.Notification_Type.HIGH_UNREST, Game.lang.get("Unrest") + ": " + ((int) Game.getProvinceData8(getProvinceID()).getRevolutionaryRisk()) + "% - " + getProvinceName(), Images.revolutionRisk, Game_Calendar.TURN_ID, Notification.Notification_BG.RED, getProvinceID()));
    }

    public final void updateSeaProvince() {
        this.seaProvince = getLevelOfPort() < -1;
    }

    public void updateWonderConstruction() {
        ProvinceInvest provinceInvest = this.wonderConstruction;
        if (provinceInvest != null) {
            provinceInvest.daysLeft--;
            if (this.wonderConstruction.daysLeft <= 0) {
                setWonderBuilt(true);
                this.wonderConstruction = null;
                Game.gameThreadTurns.removeProvinceWonderConstruction(getProvinceID());
                WondersManager.updateCivBonuses(getCivID(), this.wonderID, 1);
                WondersManager.updateProvinceBonuses(getProvinceID(), this.wonderID, 1);
                if (WondersManager.wonders.get(this.wonderID).Legacy > 0.0f) {
                    Game.getCiv(getCivID()).addLegacy(WondersManager.wonders.get(this.wonderID).Legacy);
                }
                if (getCivID() == Game.player.iCivID) {
                    InGame_Info.iCivID = Game.player.iCivID;
                    InGame_Info.iCivID2 = 0;
                    Game.menuManager.rebuildInGame_Info(WondersManager.wonders.get(this.wonderID).Name, Game.lang.get("WonderConstructed"));
                    InGame_Info.imgID = Images.infoCrown;
                }
                if (Game.menuManager.getVisibleInGame_Wonder() && InGame_Wonder.iProvinceID == getProvinceID()) {
                    InGame_Wonder.rebuildMenu = true;
                }
            }
        }
    }
}
