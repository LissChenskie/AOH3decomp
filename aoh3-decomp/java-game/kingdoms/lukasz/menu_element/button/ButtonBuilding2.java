package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Resource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroup;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceBonuses;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonBuilding2 extends MenuElement {
    public static int goldIconHeight = 0;
    public static int goldIconWidth = 0;
    public static float iconScale = 1.0f;
    public static int timeIconHeight;
    public static int timeIconWidth;
    public int building;
    public int buildingID;
    public boolean built;
    public int iCostHeight;
    public int iCostWidth;
    public int iRecruitmentTimeHeight;
    public int iRecruitmentTimeWidth;
    public String sCost;
    public String sRecruitmentTime;
    public String sText;
    public int iTextWidth = 0;
    public int iTextHeight = 0;
    public float underConstruction = -1.0f;
    public String sProgress = "";
    public int iProgressWidth = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding2$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            if (Game.menuManager.getVisibleInGame_ProvinceBonuses()) {
                Game.menuManager.rebuildInGame_ProvinceBonuses();
                Game.menuManager.setVisibleInGame_ProvinceBonuses(true, false);
                InGame_ProvinceBonuses.lTime = 0L;
            }
            if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                Game.menuManager.rebuildInGame_ProvinceInfo(false);
            }
            if (Game.menuManager.getVisibleInGame_Buildings()) {
                Game.menuManager.rebuildInGame_Buildings(false);
            }
        }
    }

    public ButtonBuilding2(int i, boolean z, int i2, int i3, int i4, int i5, int i6, boolean z2) {
        this.built = false;
        this.typeOfElement = MenuElement_Type.BUTTON;
        this.built = z;
        this.building = i2;
        this.buildingID = i3;
        this.fontID = CFG.FONT_REGULAR;
        iconScale = getImageScale(Images.gold) * 1.1f;
        timeIconWidth = (int) (ImageManager.getImage(Images.buildTime).getWidth() * iconScale);
        timeIconHeight = (int) (ImageManager.getImage(Images.buildTime).getHeight() * iconScale);
        goldIconWidth = (int) (ImageManager.getImage(Images.gold).getWidth() * iconScale);
        goldIconHeight = (int) (ImageManager.getImage(Images.gold).getHeight() * iconScale);
        this.sRecruitmentTime = "" + Game.getBuildingConstructionTime(Game.player.iCivID, -1, i2, i3);
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sRecruitmentTime);
        this.iRecruitmentTimeWidth = (int) glyphLayout_Game.width;
        this.iRecruitmentTimeHeight = (int) glyphLayout_Game.height;
        this.sCost = "" + Game.getBuildingConstructionCost(Game.player.iCivID, i, i2, i3);
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sCost);
        this.iCostWidth = (int) glyphLayout_Game.width;
        this.iCostHeight = (int) glyphLayout_Game.height;
        setText(BuildingsManager.buildings.get(i2).Name[i3]);
        setPosX(i4);
        setPosY(i5);
        setWidth(i6);
        setHeight(ImageManager.getImage(Images.buildingsFrame).getHeight() + getTitleHeight());
        setClickable(z2);
        setVisible(true);
        int i7 = 0;
        while (this.iTextWidth > i6 - (CFG.PADDING * 2) && getText().length() > 5 && (i7 = i7 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(BuildingsManager.buildings.get(this.building).Name[this.buildingID], CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (BuildingsManager.buildings.get(this.building).RequiredResource < 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get(BuildingsManager.buildings.get(this.building).NameDesc[this.buildingID]), CFG.FONT_REGULAR_SMALL, Colors.BUTTON_TEXT_BRIGHT));
        }
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (BuildingsManager.buildings.get(this.building).RequiredResource >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(HjHDSSkYG.wIHfNxGCjU) + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(ResourcesManager.getResourceName(BuildingsManager.buildings.get(this.building).RequiredResource), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Resource(BuildingsManager.buildings.get(this.building).RequiredResource, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).RequiredGovernmentID >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Government") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.ideologiesManager.getIdeology(BuildingsManager.buildings.get(this.building).RequiredGovernmentID).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).RequiredReligionID >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(uiwPYaNhJS.LTdI) + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(BuildingsManager.buildings.get(this.building).RequiredReligionID).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (BuildingsManager.buildings.get(this.building).MonthlyIncome != null && BuildingsManager.buildings.get(this.building).MonthlyIncome[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", (BuildingsManager.buildings.get(this.building).MonthlyIncome[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).MonthlyIncome[this.buildingID], 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).TaxEfficiency != null && BuildingsManager.buildings.get(this.building).TaxEfficiency[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + ": ", "" + (BuildingsManager.buildings.get(this.building).TaxEfficiency[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).TaxEfficiency[this.buildingID], 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).LocalTaxEfficiency != null && BuildingsManager.buildings.get(this.building).LocalTaxEfficiency[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LocalTaxEfficiency") + ": ", "" + (BuildingsManager.buildings.get(this.building).LocalTaxEfficiency[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).LocalTaxEfficiency[this.buildingID], 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).MaxInfrastructure != null && BuildingsManager.buildings.get(this.building).MaxInfrastructure[this.buildingID] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumInfrastructureLevel") + ": ", "" + (BuildingsManager.buildings.get(this.building).MaxInfrastructure[this.buildingID] > 0 ? "+" : "") + BuildingsManager.buildings.get(this.building).MaxInfrastructure[this.buildingID], Images.infrastructure, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).BuildingSlots != null && BuildingsManager.buildings.get(this.building).BuildingSlots[this.buildingID] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BuildingSlots") + ": ", "" + (BuildingsManager.buildings.get(this.building).BuildingSlots[this.buildingID] > 0 ? "+" : "") + BuildingsManager.buildings.get(this.building).BuildingSlots[this.buildingID], Images.build, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).IncomeProduction != null && BuildingsManager.buildings.get(this.building).IncomeProduction[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeProduction") + ": ", "" + (BuildingsManager.buildings.get(this.building).IncomeProduction[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).IncomeProduction[this.buildingID], 100) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).ProductionEfficiency != null && BuildingsManager.buildings.get(this.building).ProductionEfficiency[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProductionEfficiency") + ": ", "" + (BuildingsManager.buildings.get(this.building).ProductionEfficiency[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).ProductionEfficiency[this.buildingID], 100) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).ProvinceMaintenance != null && BuildingsManager.buildings.get(this.building).ProvinceMaintenance[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceMaintenance") + ": ", "" + (BuildingsManager.buildings.get(this.building).ProvinceMaintenance[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).ProvinceMaintenance[this.buildingID], 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).Economy != null && BuildingsManager.buildings.get(this.building).Economy[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", "" + (BuildingsManager.buildings.get(this.building).Economy[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).Economy[this.buildingID], 100) + "", Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).ConstructionCost != null && BuildingsManager.buildings.get(this.building).ConstructionCost[this.buildingID] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructionCost") + ": ", "" + (BuildingsManager.buildings.get(this.building).ConstructionCost[this.buildingID] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).ConstructionCost[this.buildingID] * 100, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).ConstructionTimeBonus != null && BuildingsManager.buildings.get(this.building).ConstructionTimeBonus[this.buildingID] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructionTime") + ": ", "" + (BuildingsManager.buildings.get(this.building).ConstructionTimeBonus[this.buildingID] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).ConstructionTimeBonus[this.buildingID] * 100, 100) + "%", Images.buildTime, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).LocalGrowthRate != null && BuildingsManager.buildings.get(this.building).LocalGrowthRate[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(ATsAGKCnv.vSjAb) + ": ", "" + (BuildingsManager.buildings.get(this.building).LocalGrowthRate[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).LocalGrowthRate[this.buildingID], 100) + "%", Images.populationGrowth, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).InvestInEconomyCost != null && BuildingsManager.buildings.get(this.building).InvestInEconomyCost[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("InvestInEconomyCost") + ": ", "" + (BuildingsManager.buildings.get(this.building).InvestInEconomyCost[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).InvestInEconomyCost[this.buildingID] * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).IncreaseGrowthRateCost != null && BuildingsManager.buildings.get(this.building).IncreaseGrowthRateCost[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseGrowthRateCost") + ": ", "" + (BuildingsManager.buildings.get(this.building).IncreaseGrowthRateCost[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).IncreaseGrowthRateCost[this.buildingID] * 100.0f, 100) + "%", Images.populationUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).DevelopInfrastructureCost != null && BuildingsManager.buildings.get(this.building).DevelopInfrastructureCost[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DevelopInfrastructureCost") + ": ", "" + (BuildingsManager.buildings.get(this.building).DevelopInfrastructureCost[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).DevelopInfrastructureCost[this.buildingID] * 100.0f, 100) + "%", Images.infrastructureUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).IncreaseManpowerCost != null && BuildingsManager.buildings.get(this.building).IncreaseManpowerCost[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(ATsAGKCnv.LQVAdgppEOSrZT) + ": ", "" + (BuildingsManager.buildings.get(this.building).IncreaseManpowerCost[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).IncreaseManpowerCost[this.buildingID] * 100.0f, 100) + "%", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).IncreaseTaxEfficiencyCost != null && BuildingsManager.buildings.get(this.building).IncreaseTaxEfficiencyCost[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseTaxEfficiencyCost") + ": ", "" + (BuildingsManager.buildings.get(this.building).IncreaseTaxEfficiencyCost[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).IncreaseTaxEfficiencyCost[this.buildingID] * 100.0f, 100) + "%", Images.taxUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).ResearchPoints != null && BuildingsManager.buildings.get(this.building).ResearchPoints[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ResearchPerMonth") + ": ", "" + (BuildingsManager.buildings.get(this.building).ResearchPoints[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).ResearchPoints[this.buildingID], 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).MonthlyLegacy != null && BuildingsManager.buildings.get(this.building).MonthlyLegacy[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + ": ", "" + (BuildingsManager.buildings.get(this.building).MonthlyLegacy[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).MonthlyLegacy[this.buildingID], 100) + "", Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).MaximumManpower != null && BuildingsManager.buildings.get(this.building).MaximumManpower[this.buildingID] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(fTNtCctcBZcqKK.PMtWF) + ": ", "" + (BuildingsManager.buildings.get(this.building).MaximumManpower[this.buildingID] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).MaximumManpower[this.buildingID], 1) + "", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).LocalManpower != null && BuildingsManager.buildings.get(this.building).LocalManpower[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LocalManpower") + ": ", "" + (BuildingsManager.buildings.get(this.building).LocalManpower[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).LocalManpower[this.buildingID] * 100.0f, 1) + "%", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).RecruitArmyCostInProvince != null && BuildingsManager.buildings.get(this.building).RecruitArmyCostInProvince[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyRecruitmentCostInProvince") + ": ", "" + (BuildingsManager.buildings.get(this.building).RecruitArmyCostInProvince[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).RecruitArmyCostInProvince[this.buildingID], 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).DefenseBonus != null && BuildingsManager.buildings.get(this.building).DefenseBonus[this.buildingID] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DefenseBonus") + ": ", "" + (BuildingsManager.buildings.get(this.building).DefenseBonus[this.buildingID] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).DefenseBonus[this.buildingID], 100), Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).FortLevel != null && BuildingsManager.buildings.get(this.building).FortLevel[this.buildingID] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DefenseLevel") + ": ", "" + (BuildingsManager.buildings.get(this.building).FortLevel[this.buildingID] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).FortLevel[this.buildingID], 100), Images.fort, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).FortDefense != null && BuildingsManager.buildings.get(this.building).FortDefense[this.buildingID] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(SwmJtrccN.wzAw) + ": ", "" + (BuildingsManager.buildings.get(this.building).FortDefense[this.buildingID] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).FortDefense[this.buildingID], 1), Game_Calendar.IMG_FORT_DEFENSE, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).ArmyMovementSpeed != null && BuildingsManager.buildings.get(this.building).ArmyMovementSpeed[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyMovementSpeed") + ": ", "" + (BuildingsManager.buildings.get(this.building).ArmyMovementSpeed[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).ArmyMovementSpeed[this.buildingID] * 100.0f, 100) + "%", Images.movementSpeed, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).CasualtiesNuclearAttacks != null && BuildingsManager.buildings.get(this.building).CasualtiesNuclearAttacks[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CasualtiesFromNuclearAttacks") + ": ", "" + (BuildingsManager.buildings.get(this.building).CasualtiesNuclearAttacks[this.buildingID] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).CasualtiesNuclearAttacks[this.buildingID] * 100.0f, 100) + "%", Images.nuke, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).DiseaseDeathRate != null && BuildingsManager.buildings.get(this.building).DiseaseDeathRate[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DiseasesDeathRate") + ": ", "" + (BuildingsManager.buildings.get(this.building).DiseaseDeathRate[this.buildingID] <= 0.0f ? "" : "+") + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).DiseaseDeathRate[this.buildingID] * 100.0f, 100) + "%", Images.disease, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(this.building).MaintenanceCost[this.buildingID] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaintenanceCost") + ": ", Game.lang.get("XPerMonth", "" + CFG.getPrecision2(BuildingsManager.buildings.get(this.building).MaintenanceCost[this.buildingID], 1000)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(this.sCost, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionTime") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", Game.getBuildingConstructionTime(Game.player.iCivID, -1, this.building, this.buildingID)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.buildTime, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (BuildingsManager.buildings.get(this.building).FortLevel != null && BuildingsManager.buildings.get(this.building).FortLevel[this.buildingID] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public final void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        drawButtonBG(spriteBatch, i, i2, z);
        drawText(spriteBatch, i, i2, z);
    }

    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (this.built) {
            this.underConstruction = -1.0f;
        } else {
            float fUnderConstruction = Game.getProvince(InGame_BuildingsGroup.iProvinceID).underConstruction(this.building, this.buildingID);
            this.underConstruction = fUnderConstruction;
            if (fUnderConstruction < 0.0f) {
                boolean zBuildingBuilt = Game.getProvince(InGame_BuildingsGroup.iProvinceID).buildingBuilt(this.building, this.buildingID);
                this.built = zBuildingBuilt;
                if (zBuildingBuilt) {
                    Game.addSimpleTask(new AnonymousClass1("rebuildBuildings"));
                }
            }
        }
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        if (this.built) {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_GREEN.r, Colors.COLOR_GRADIENT_BG_GREEN.g, Colors.COLOR_GRADIENT_BG_GREEN.b, 0.4f));
            Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_GREEN.r, Colors.COLOR_GRADIENT_OVER_GREEN.g, Colors.COLOR_GRADIENT_OVER_GREEN.b, 0.75f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + getTitleHeight() + i2, getInnerWidth(), getImageHeight());
            spriteBatch.setColor(new Color(Colors.BUTTON_BUILDING_COLORS_STATS.r, Colors.BUTTON_BUILDING_COLORS_STATS.g, Colors.BUTTON_BUILDING_COLORS_STATS.b, 0.4f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + getTitleHeight() + i2, getInnerWidth(), getImageHeight());
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + getTitleHeight() + i2, getInnerWidth(), 1);
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, (((getPosY() + getTitleHeight()) + getImageHeight()) - 1) + i2, getInnerWidth(), 1);
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, ((getPosY() + getTitleHeight()) - 1) + i2, getInnerWidth(), 1);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_GREEN.r, Colors.COLOR_GRADIENT_BG_GREEN.g, Colors.COLOR_GRADIENT_BG_GREEN.b, 0.8f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.3f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + getTitleHeight() + i2, getInnerWidth(), CFG.PADDING);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + getInnerPosX() + i, (((getPosY() + getTitleHeight()) + getImageHeight()) - CFG.PADDING) + i2, getInnerWidth(), CFG.PADDING, false, true);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_GREEN.r, Colors.COLOR_GRADIENT_BG_GREEN.g, Colors.COLOR_GRADIENT_BG_GREEN.b, 0.9f));
            Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getTitleHeight());
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_GREEN.r, Colors.COLOR_GRADIENT_OVER_GREEN.g, Colors.COLOR_GRADIENT_OVER_GREEN.b, 0.5f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getTitleHeight());
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_GREEN.r, Colors.COLOR_GRADIENT_OVER_GREEN.g, Colors.COLOR_GRADIENT_OVER_GREEN.b, 0.75f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getTitleHeight());
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING * 2);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_GREEN.r, Colors.COLOR_GRADIENT_OVER_GREEN.g, Colors.COLOR_GRADIENT_OVER_GREEN.b, 1.0f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, ((getPosY() + getTitleHeight()) - 2) + i2, getWidth(), 1);
        } else {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.4f));
            Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.75f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + getTitleHeight() + i2, getInnerWidth(), getImageHeight());
            spriteBatch.setColor(new Color(Colors.BUTTON_BUILDING_COLORS_STATS.r, Colors.BUTTON_BUILDING_COLORS_STATS.g, Colors.BUTTON_BUILDING_COLORS_STATS.b, 0.4f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + getTitleHeight() + i2, getInnerWidth(), getImageHeight());
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + getTitleHeight() + i2, getInnerWidth(), 1);
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, (((getPosY() + getTitleHeight()) + getImageHeight()) - 1) + i2, getInnerWidth(), 1);
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, ((getPosY() + getTitleHeight()) - 1) + i2, getInnerWidth(), 1);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.8f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.3f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + getTitleHeight() + i2, getInnerWidth(), CFG.PADDING);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + getInnerPosX() + i, (((getPosY() + getTitleHeight()) + getImageHeight()) - CFG.PADDING) + i2, getInnerWidth(), CFG.PADDING, false, true);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.9f));
            Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getTitleHeight());
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.5f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getTitleHeight());
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.75f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getTitleHeight());
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING * 2);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 1.0f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, ((getPosY() + getTitleHeight()) - 2) + i2, getWidth(), 1);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, ((getPosY() + getTitleHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        try {
            BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(this.building).ImageID[this.buildingID]).draw(spriteBatch, getPosX() + i, getPosY() + getTitleHeight() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight());
        } catch (Exception unused) {
        }
        spriteBatch.setColor(Color.WHITE);
        if (BuildingsManager.buildings.get(this.building).RequiredResource >= 0) {
            ResourcesManager.resourceImages.get(BuildingsManager.buildings.get(this.building).RequiredResource).draw(spriteBatch, (((getPosX() + ImageManager.getImage(Images.buildingsFrame).getWidth()) - ResourcesManager.resourceImages.get(BuildingsManager.buildings.get(this.building).RequiredResource).getWidth()) - CFG.PADDING) + i, ((((getPosY() + ImageManager.getImage(Images.buildingsFrame).getHeight()) - ResourcesManager.resourceImages.get(BuildingsManager.buildings.get(this.building).RequiredResource).getHeight()) + getTitleHeight()) - CFG.PADDING) + i2);
        }
        ImageManager.getImage(Images.buildingsFrame).draw(spriteBatch, getPosX() + i, getPosY() + getTitleHeight() + i2);
        if (z) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, getPosY() + getTitleHeight() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight(), Colors.COLOR_BOX_ACTIVE);
        } else if (getIsHovered()) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, getPosY() + getTitleHeight() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight(), Colors.COLOR_BOX_HOVER);
        }
        if (this.underConstruction >= 0.0f) {
            spriteBatch.setColor(new Color(ProvinceDraw.progressBarBG));
            ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, ((getPosX() + (ImageManager.getImage(Images.buildingsFrame).getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getWidth() / 2)) + i, ((((getPosY() - (CFG.PADDING / 2)) + getHeight()) - (ImageManager.getImage(Images.progressBarFrame).getHeight() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getHeight() / 2)) + i2);
            spriteBatch.setColor(new Color(ProvinceDraw.progressBar));
            ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, ((getPosX() + (ImageManager.getImage(Images.buildingsFrame).getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getWidth() / 2)) + i, ((((getPosY() - (CFG.PADDING / 2)) + getHeight()) - (ImageManager.getImage(Images.progressBarFrame).getHeight() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getHeight() / 2)) + i2, (int) (ImageManager.getImage(Images.progressBarFrameMask).getWidth() * (1.0f - this.underConstruction)), ImageManager.getImage(Images.progressBarFrameMask).getHeight());
            spriteBatch.setColor(Color.WHITE);
            ImageManager.getImage(Images.progressBarFrame).draw(spriteBatch, ((getPosX() + (ImageManager.getImage(Images.buildingsFrame).getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrame).getWidth() / 2)) + i, (((getPosY() - (CFG.PADDING / 2)) + getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight()) + i2);
        }
    }

    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getText(), getPosX() + (CFG.PADDING * 2) + i, ((getPosY() + (getTitleHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
        if (this.built) {
            ImageManager.getImage(Images.x).draw(spriteBatch, (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (ImageManager.getImage(Images.x).getWidth() / 2)) + i, (((getPosY() + getTitleHeight()) + (getImageHeight() / 2)) - (ImageManager.getImage(Images.x).getHeight() / 2)) + i2);
            return;
        }
        if (this.underConstruction >= 0.0f) {
            this.sProgress = "" + ((int) Math.floor((1.0f - this.underConstruction) * 100.0f)) + "%";
            GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
            glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR), this.sProgress);
            this.iProgressWidth = (int) glyphLayout_Game.width;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR, this.sProgress, (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (this.iProgressWidth / 2)) + i, (((getPosY() + getTitleHeight()) + (getImageHeight() / 2)) - (CFG.TEXT_HEIGHT / 2)) + i2, Colors.HOVER_RIGHT);
            return;
        }
        Image image = ImageManager.getImage(Images.gold);
        int posX = (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (((this.iCostWidth + CFG.PADDING) + goldIconWidth) / 2)) + i;
        int posY = getPosY() + getTitleHeight() + (getImageHeight() / 4);
        int i3 = goldIconHeight;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, goldIconWidth, i3);
        int i4 = CFG.FONT_REGULAR_SMALL;
        String str = this.sCost;
        int posX2 = getPosX() + getInnerPosX() + (getInnerWidth() / 2);
        int i5 = this.iCostWidth + CFG.PADDING;
        int i6 = goldIconWidth;
        Renderer.drawText(spriteBatch, i4, str, (posX2 - ((i5 + i6) / 2)) + i6 + CFG.PADDING + i, (((getPosY() + getTitleHeight()) + (getImageHeight() / 4)) - (CFG.TEXT_HEIGHT_SMALL / 2)) + i2, Colors.HOVER_RIGHT2);
        Image image2 = ImageManager.getImage(Images.buildTime);
        int posX3 = (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (((this.iRecruitmentTimeWidth + CFG.PADDING) + timeIconWidth) / 2)) + i;
        int posY2 = getPosY() + getTitleHeight() + (getImageHeight() / 2) + (getImageHeight() / 4);
        int i7 = timeIconHeight;
        image2.draw(spriteBatch, posX3, (posY2 - (i7 / 2)) + i2, timeIconWidth, i7);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sRecruitmentTime, (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (((this.iRecruitmentTimeWidth + CFG.PADDING) + timeIconWidth) / 2)) + CFG.PADDING + timeIconWidth + i, ((((getPosY() + getTitleHeight()) + (getImageHeight() / 2)) + (getImageHeight() / 4)) - (CFG.TEXT_HEIGHT_SMALL / 2)) + i2, Colors.HOVER_RIGHT2);
    }

    protected Color getColor(boolean z) {
        return Colors.getColorTopStatsHover(z, getIsHovered());
    }

    public int getImageHeight() {
        return ImageManager.getImage(Images.buildingsFrame).getHeight();
    }

    public int getInnerPosX() {
        return ImageManager.getImage(Images.buildingsFrame).getWidth();
    }

    public int getInnerWidth() {
        return getWidth() - ImageManager.getImage(Images.buildingsFrame).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getSFX() {
        return getClickable() ? Game.soundsManager.getBuild() : super.getSFX();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getText() {
        return this.sText;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getTextHeight() {
        return this.iTextHeight;
    }

    public int getTitleHeight() {
        return this.iTextHeight + (CFG.PADDING * 4);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue1() {
        return this.building;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue2() {
        return this.buildingID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText(String str) {
        this.sText = str;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(this.fontID), getText());
        this.iTextWidth = (int) glyphLayout_Game.width;
        this.iTextHeight = (int) glyphLayout_Game.height;
    }
}
