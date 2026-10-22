package aoc.kingdoms.lukasz.menu_element.button;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
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
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonBuilding extends MenuElement {
    public static final Color COLOR_STATS = new Color(0.039215688f, 0.05882353f, 0.09803922f, 0.6f);
    public static int goldIconHeight = 0;
    public static int goldIconWidth = 0;
    public static float iconScale = 1.0f;
    public static int timeIconHeight;
    public static int timeIconWidth;
    public int building;
    public int buildingID;
    public boolean built;
    public Color colorBG;
    public Color colorBGOver;
    public int iCostHeight;
    public int iCostWidth;
    public int iRecruitmentTimeHeight;
    public int iRecruitmentTimeWidth;
    public int iTextWidth = 0;
    public String sCost;
    public String sRecruitmentTime;
    public String sText;

    public ButtonBuilding(boolean z, int i, int i2, int i3, int i4, int i5, boolean z2, boolean z3) {
        this.built = false;
        this.typeOfElement = MenuElement_Type.BUTTON;
        this.built = z;
        this.building = i;
        this.buildingID = i2;
        this.fontID = CFG.FONT_REGULAR;
        iconScale = getImageScale(Images.gold);
        timeIconWidth = (int) (ImageManager.getImage(Images.buildTime).getWidth() * iconScale);
        timeIconHeight = (int) (ImageManager.getImage(Images.buildTime).getHeight() * iconScale);
        goldIconWidth = (int) (ImageManager.getImage(Images.gold).getWidth() * iconScale);
        goldIconHeight = (int) (ImageManager.getImage(Images.gold).getHeight() * iconScale);
        this.sRecruitmentTime = "" + Game.getBuildingConstructionTime(Game.player.iCivID, -1, i, i2);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sRecruitmentTime);
        this.iRecruitmentTimeWidth = (int) Renderer.glyphLayout.width;
        this.iRecruitmentTimeHeight = (int) Renderer.glyphLayout.height;
        this.sCost = "" + Game.getBuildingConstructionCost(Game.player.iCivID, -1, i, i2);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sCost);
        this.iCostWidth = (int) Renderer.glyphLayout.width;
        this.iCostHeight = (int) Renderer.glyphLayout.height;
        setPosX(i3);
        setPosY(i4);
        setWidth(i5);
        setHeight(ImageManager.getImage(Images.buildingsFrame).getHeight());
        setText(BuildingsManager.buildings.get(i).Name[i2]);
        setClickable(z2);
        setVisible(true);
        if (z3) {
            this.colorBG = Colors.COLOR_GRADIENT_BG_BLUE;
            this.colorBGOver = Colors.COLOR_GRADIENT_OVER_BLUE;
        } else {
            this.colorBG = Colors.COLOR_GRADIENT_BG;
            this.colorBGOver = Colors.COLOR_GRADIENT_OVER;
        }
        int i6 = 0;
        while (this.iTextWidth > i5 && getText().length() > 5 && (i6 = i6 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    public static List<MenuElement> getBuildingBonuses(int i, int i2, int i3, int i4) {
        String str;
        ArrayList arrayList = new ArrayList();
        int width = ImageManager.getImage(Images.gold).getWidth();
        int i5 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        if (BuildingsManager.buildings.get(i).MonthlyIncome != null && BuildingsManager.buildings.get(i).MonthlyIncome[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MonthlyIncome") + ": ", (BuildingsManager.buildings.get(i).MonthlyIncome[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).MonthlyIncome[i2], 100), Images.gold, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).TaxEfficiency != null && BuildingsManager.buildings.get(i).TaxEfficiency[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("TaxEfficiency") + ": ", (BuildingsManager.buildings.get(i).TaxEfficiency[i2] > 0.0f ? "+" : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).TaxEfficiency[i2], 100) + "%", Images.tax, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).LocalTaxEfficiency != null && BuildingsManager.buildings.get(i).LocalTaxEfficiency[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("LocalTaxEfficiency") + ": ", (BuildingsManager.buildings.get(i).LocalTaxEfficiency[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).LocalTaxEfficiency[i2], 100) + "%", Images.tax, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).MaxInfrastructure != null && BuildingsManager.buildings.get(i).MaxInfrastructure[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumInfrastructureLevel") + ": ", (BuildingsManager.buildings.get(i).MaxInfrastructure[i2] > 0 ? r14 : r9) + BuildingsManager.buildings.get(i).MaxInfrastructure[i2], Images.infrastructure, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).BuildingSlots != null && BuildingsManager.buildings.get(i).BuildingSlots[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("BuildingSlots") + ": ", (BuildingsManager.buildings.get(i).BuildingSlots[i2] > 0 ? r14 : r9) + BuildingsManager.buildings.get(i).BuildingSlots[i2], Images.build, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).IncomeProduction != null && BuildingsManager.buildings.get(i).IncomeProduction[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncomeProduction") + ": ", (BuildingsManager.buildings.get(i).IncomeProduction[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).IncomeProduction[i2], 100) + "%", Images.goods, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).ProductionEfficiency != null && BuildingsManager.buildings.get(i).ProductionEfficiency[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ProductionEfficiency") + ": ", (BuildingsManager.buildings.get(i).ProductionEfficiency[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).ProductionEfficiency[i2], 100) + "%", Images.goods, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).ProvinceMaintenance != null && BuildingsManager.buildings.get(i).ProvinceMaintenance[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get(CoLRpi.klEIP) + ": ", (BuildingsManager.buildings.get(i).ProvinceMaintenance[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).ProvinceMaintenance[i2], 100) + "%", Images.gold, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).Economy != null && BuildingsManager.buildings.get(i).Economy[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("Economy") + ": ", (BuildingsManager.buildings.get(i).Economy[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).Economy[i2], 100), Game_Calendar.IMG_ECONOMY, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).ConstructionCost != null && BuildingsManager.buildings.get(i).ConstructionCost[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ConstructionCost") + ": ", (BuildingsManager.buildings.get(i).ConstructionCost[i2] > 0 ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).ConstructionCost[i2] * 100, 100) + "%", Images.construction, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).ConstructionTimeBonus != null && BuildingsManager.buildings.get(i).ConstructionTimeBonus[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ConstructionTime") + ": ", (BuildingsManager.buildings.get(i).ConstructionTimeBonus[i2] > 0 ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).ConstructionTimeBonus[i2] * 100, 100) + "%", Images.buildTime, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).LocalGrowthRate != null && BuildingsManager.buildings.get(i).LocalGrowthRate[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("LocalGrowthRate") + ": ", (BuildingsManager.buildings.get(i).LocalGrowthRate[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).LocalGrowthRate[i2], 100) + "%", Images.populationGrowth, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).InvestInEconomyCost != null && BuildingsManager.buildings.get(i).InvestInEconomyCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("InvestInEconomyCost") + ": ", (BuildingsManager.buildings.get(i).InvestInEconomyCost[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).InvestInEconomyCost[i2] * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY_UP, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).IncreaseGrowthRateCost != null && BuildingsManager.buildings.get(i).IncreaseGrowthRateCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncreaseGrowthRateCost") + ": ", (BuildingsManager.buildings.get(i).IncreaseGrowthRateCost[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).IncreaseGrowthRateCost[i2] * 100.0f, 100) + "%", Images.populationUp, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).DevelopInfrastructureCost != null && BuildingsManager.buildings.get(i).DevelopInfrastructureCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("DevelopInfrastructureCost") + ": ", (BuildingsManager.buildings.get(i).DevelopInfrastructureCost[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).DevelopInfrastructureCost[i2] * 100.0f, 100) + "%", Images.infrastructureUp, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).IncreaseManpowerCost != null && BuildingsManager.buildings.get(i).IncreaseManpowerCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncreaseManpowerCost") + ": ", (BuildingsManager.buildings.get(i).IncreaseManpowerCost[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).IncreaseManpowerCost[i2] * 100.0f, 100) + "%", Game_Calendar.IMG_MANPOWER_UP, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).IncreaseTaxEfficiencyCost != null && BuildingsManager.buildings.get(i).IncreaseTaxEfficiencyCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncreaseTaxEfficiencyCost") + ": ", (BuildingsManager.buildings.get(i).IncreaseTaxEfficiencyCost[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).IncreaseTaxEfficiencyCost[i2] * 100.0f, 100) + "%", Images.taxUp, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).ResearchPoints != null && BuildingsManager.buildings.get(i).ResearchPoints[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ResearchPerMonth") + ": ", (BuildingsManager.buildings.get(i).ResearchPoints[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).ResearchPoints[i2], 100), Game_Calendar.IMG_TECHNOLOGY, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).MonthlyLegacy != null && BuildingsManager.buildings.get(i).MonthlyLegacy[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MonthlyLegacy") + ": ", (BuildingsManager.buildings.get(i).MonthlyLegacy[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).MonthlyLegacy[i2], 100), Images.legacy, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).MaximumManpower != null && BuildingsManager.buildings.get(i).MaximumManpower[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumManpower") + ": ", (BuildingsManager.buildings.get(i).MaximumManpower[i2] > 0 ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).MaximumManpower[i2], 1), Game_Calendar.IMG_MANPOWER_UP, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).LocalManpower != null && BuildingsManager.buildings.get(i).LocalManpower[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("LocalManpower") + ": ", (BuildingsManager.buildings.get(i).LocalManpower[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).LocalManpower[i2] * 100.0f, 1) + "%", Game_Calendar.IMG_MANPOWER_UP, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).RecruitArmyCostInProvince != null && BuildingsManager.buildings.get(i).RecruitArmyCostInProvince[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ArmyRecruitmentCostInProvince") + ": ", (BuildingsManager.buildings.get(i).RecruitArmyCostInProvince[i2] > 0.0f ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).RecruitArmyCostInProvince[i2], 100) + "%", Images.gold, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).DefenseBonus != null && BuildingsManager.buildings.get(i).DefenseBonus[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("DefenseBonus") + ": ", (BuildingsManager.buildings.get(i).DefenseBonus[i2] > 0 ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).DefenseBonus[i2], 100), Images.defense, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).FortLevel != null && BuildingsManager.buildings.get(i).FortLevel[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("DefenseLevel") + ": ", (BuildingsManager.buildings.get(i).FortLevel[i2] > 0 ? r14 : r9) + CFG.getPrecision2(BuildingsManager.buildings.get(i).FortLevel[i2], 100), Images.fort, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).FortDefense == null || BuildingsManager.buildings.get(i).FortDefense[i2] == 0) {
            str = "";
        } else {
            str = "";
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ProvinceDefense") + ": ", "" + (BuildingsManager.buildings.get(i).FortDefense[i2] > 0 ? r14 : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).FortDefense[i2], 1), Game_Calendar.IMG_FORT_DEFENSE, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).ArmyMovementSpeed != null && BuildingsManager.buildings.get(i).ArmyMovementSpeed[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ArmyMovementSpeed") + ": ", str + (BuildingsManager.buildings.get(i).ArmyMovementSpeed[i2] > 0.0f ? r14 : str) + CFG.getPrecision2(BuildingsManager.buildings.get(i).ArmyMovementSpeed[i2] * 100.0f, 100) + "%", Images.movementSpeed, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).CasualtiesNuclearAttacks != null && BuildingsManager.buildings.get(i).CasualtiesNuclearAttacks[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("CasualtiesFromNuclearAttacks") + ": ", str + (BuildingsManager.buildings.get(i).CasualtiesNuclearAttacks[i2] > 0.0f ? r14 : str) + CFG.getPrecision2(BuildingsManager.buildings.get(i).CasualtiesNuclearAttacks[i2] * 100.0f, 100) + "%", Images.nuke, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (BuildingsManager.buildings.get(i).DiseaseDeathRate != null && BuildingsManager.buildings.get(i).DiseaseDeathRate[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("DiseasesDeathRate") + ": ", str + (BuildingsManager.buildings.get(i).DiseaseDeathRate[i2] > 0.0f ? r14 : str) + CFG.getPrecision2(BuildingsManager.buildings.get(i).DiseaseDeathRate[i2] * 100.0f, 100) + "%", Images.disease, i3, 0, i4 - (i3 * 2), i5, width));
        }
        return arrayList;
    }

    public static MenuElement_Hover getHoverBuilding(int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (z) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Back"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(BuildingsManager.buildings.get(i).Name[i2], CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (BuildingsManager.buildings.get(i).RequiredResource < 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get(BuildingsManager.buildings.get(i).NameDesc[i2]), CFG.FONT_REGULAR_SMALL, Colors.BUTTON_TEXT_BRIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (BuildingsManager.buildings.get(i).MonthlyIncome != null && BuildingsManager.buildings.get(i).MonthlyIncome[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", (BuildingsManager.buildings.get(i).MonthlyIncome[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).MonthlyIncome[i2], 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).TaxEfficiency != null && BuildingsManager.buildings.get(i).TaxEfficiency[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(aBEBOpwLZcQFCZ.quMQZcmT) + ": ", "" + (BuildingsManager.buildings.get(i).TaxEfficiency[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).TaxEfficiency[i2], 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).LocalTaxEfficiency != null && BuildingsManager.buildings.get(i).LocalTaxEfficiency[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LocalTaxEfficiency") + ": ", "" + (BuildingsManager.buildings.get(i).LocalTaxEfficiency[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).LocalTaxEfficiency[i2], 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).MaxInfrastructure != null && BuildingsManager.buildings.get(i).MaxInfrastructure[i2] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumInfrastructureLevel") + ": ", "" + (BuildingsManager.buildings.get(i).MaxInfrastructure[i2] > 0 ? "+" : "") + BuildingsManager.buildings.get(i).MaxInfrastructure[i2], Images.infrastructure, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).BuildingSlots != null && BuildingsManager.buildings.get(i).BuildingSlots[i2] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BuildingSlots") + ": ", "" + (BuildingsManager.buildings.get(i).BuildingSlots[i2] > 0 ? "+" : "") + BuildingsManager.buildings.get(i).BuildingSlots[i2], Images.build, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).IncomeProduction != null && BuildingsManager.buildings.get(i).IncomeProduction[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeProduction") + ": ", "" + (BuildingsManager.buildings.get(i).IncomeProduction[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).IncomeProduction[i2], 100) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).ProductionEfficiency != null && BuildingsManager.buildings.get(i).ProductionEfficiency[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProductionEfficiency") + ": ", "" + (BuildingsManager.buildings.get(i).ProductionEfficiency[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).ProductionEfficiency[i2], 100) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).ProvinceMaintenance != null && BuildingsManager.buildings.get(i).ProvinceMaintenance[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceMaintenance") + ": ", "" + (BuildingsManager.buildings.get(i).ProvinceMaintenance[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).ProvinceMaintenance[i2], 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).Economy != null && BuildingsManager.buildings.get(i).Economy[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", "" + (BuildingsManager.buildings.get(i).Economy[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).Economy[i2], 100) + "", Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).ConstructionCost != null && BuildingsManager.buildings.get(i).ConstructionCost[i2] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructionCost") + ": ", "" + (BuildingsManager.buildings.get(i).ConstructionCost[i2] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).ConstructionCost[i2] * 100, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).ConstructionTimeBonus != null && BuildingsManager.buildings.get(i).ConstructionTimeBonus[i2] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructionTime") + ": ", "" + (BuildingsManager.buildings.get(i).ConstructionTimeBonus[i2] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).ConstructionTimeBonus[i2] * 100, 100) + "%", Images.buildTime, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).LocalGrowthRate != null && BuildingsManager.buildings.get(i).LocalGrowthRate[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LocalGrowthRate") + ": ", "" + (BuildingsManager.buildings.get(i).LocalGrowthRate[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).LocalGrowthRate[i2], 100) + "%", Images.populationGrowth, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).InvestInEconomyCost != null && BuildingsManager.buildings.get(i).InvestInEconomyCost[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("InvestInEconomyCost") + ": ", "" + (BuildingsManager.buildings.get(i).InvestInEconomyCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).InvestInEconomyCost[i2] * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).IncreaseGrowthRateCost != null && BuildingsManager.buildings.get(i).IncreaseGrowthRateCost[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseGrowthRateCost") + ": ", "" + (BuildingsManager.buildings.get(i).IncreaseGrowthRateCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).IncreaseGrowthRateCost[i2] * 100.0f, 100) + "%", Images.populationUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).DevelopInfrastructureCost != null && BuildingsManager.buildings.get(i).DevelopInfrastructureCost[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DevelopInfrastructureCost") + ": ", "" + (BuildingsManager.buildings.get(i).DevelopInfrastructureCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).DevelopInfrastructureCost[i2] * 100.0f, 100) + "%", Images.infrastructureUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).IncreaseManpowerCost != null && BuildingsManager.buildings.get(i).IncreaseManpowerCost[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseManpowerCost") + ": ", "" + (BuildingsManager.buildings.get(i).IncreaseManpowerCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).IncreaseManpowerCost[i2] * 100.0f, 100) + "%", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).IncreaseTaxEfficiencyCost != null && BuildingsManager.buildings.get(i).IncreaseTaxEfficiencyCost[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseTaxEfficiencyCost") + ": ", "" + (BuildingsManager.buildings.get(i).IncreaseTaxEfficiencyCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).IncreaseTaxEfficiencyCost[i2] * 100.0f, 100) + "%", Images.taxUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).ResearchPoints != null && BuildingsManager.buildings.get(i).ResearchPoints[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ResearchPerMonth") + ": ", "" + (BuildingsManager.buildings.get(i).ResearchPoints[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).ResearchPoints[i2], 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).MonthlyLegacy != null && BuildingsManager.buildings.get(i).MonthlyLegacy[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(nEtnPpUF.hgfOTtNxRMc) + ": ", "" + (BuildingsManager.buildings.get(i).MonthlyLegacy[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).MonthlyLegacy[i2], 100) + "", Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).MaximumManpower != null && BuildingsManager.buildings.get(i).MaximumManpower[i2] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(CvuNnwgYwe.vypCQFVieayOqJ) + ": ", "" + (BuildingsManager.buildings.get(i).MaximumManpower[i2] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).MaximumManpower[i2], 1) + "", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).LocalManpower != null && BuildingsManager.buildings.get(i).LocalManpower[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LocalManpower") + ": ", "" + (BuildingsManager.buildings.get(i).LocalManpower[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).LocalManpower[i2] * 100.0f, 1) + "%", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).RecruitArmyCostInProvince != null && BuildingsManager.buildings.get(i).RecruitArmyCostInProvince[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyRecruitmentCostInProvince") + ": ", "" + (BuildingsManager.buildings.get(i).RecruitArmyCostInProvince[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).RecruitArmyCostInProvince[i2], 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).DefenseBonus != null && BuildingsManager.buildings.get(i).DefenseBonus[i2] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DefenseBonus") + ": ", "" + (BuildingsManager.buildings.get(i).DefenseBonus[i2] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).DefenseBonus[i2], 100), Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).FortLevel != null && BuildingsManager.buildings.get(i).FortLevel[i2] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DefenseLevel") + ": ", "" + (BuildingsManager.buildings.get(i).FortLevel[i2] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).FortLevel[i2], 100), Images.fort, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).FortDefense != null && BuildingsManager.buildings.get(i).FortDefense[i2] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceDefense") + ": ", "" + (BuildingsManager.buildings.get(i).FortDefense[i2] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).FortDefense[i2], 1), Game_Calendar.IMG_FORT_DEFENSE, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).ArmyMovementSpeed != null && BuildingsManager.buildings.get(i).ArmyMovementSpeed[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyMovementSpeed") + ": ", "" + (BuildingsManager.buildings.get(i).ArmyMovementSpeed[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).ArmyMovementSpeed[i2] * 100.0f, 100) + "%", Images.movementSpeed, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).CasualtiesNuclearAttacks != null && BuildingsManager.buildings.get(i).CasualtiesNuclearAttacks[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CasualtiesFromNuclearAttacks") + ": ", "" + (BuildingsManager.buildings.get(i).CasualtiesNuclearAttacks[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).CasualtiesNuclearAttacks[i2] * 100.0f, 100) + "%", Images.nuke, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).DiseaseDeathRate != null && BuildingsManager.buildings.get(i).DiseaseDeathRate[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DiseasesDeathRate") + ": ", "" + (BuildingsManager.buildings.get(i).DiseaseDeathRate[i2] <= 0.0f ? "" : "+") + CFG.getPrecision2(BuildingsManager.buildings.get(i).DiseaseDeathRate[i2] * 100.0f, 100) + "%", Images.disease, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).MaintenanceCost[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaintenanceCost") + ": ", Game.lang.get("XPerMonth", "" + CFG.getPrecision2(BuildingsManager.buildings.get(i).MaintenanceCost[i2], 1000)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getBuildingConstructionCost(Game.player.iCivID, -1, i, i2), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionTime") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", Game.getBuildingConstructionTime(Game.player.iCivID, -1, i, i2)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.buildTime, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (BuildingsManager.buildings.get(i).RequiredResource >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RequiredResource") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(ResourcesManager.getResourceName(BuildingsManager.buildings.get(i).RequiredResource), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Resource(BuildingsManager.buildings.get(i).RequiredResource, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).RequiredGovernmentID >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Government") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.ideologiesManager.getIdeology(BuildingsManager.buildings.get(i).RequiredGovernmentID).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).RequiredReligionID >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Religion") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(BuildingsManager.buildings.get(i).RequiredReligionID).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).FortLevel != null && BuildingsManager.buildings.get(i).FortLevel[i2] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
        }
        return new MenuElement_Hover(arrayList);
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = getHoverBuilding(this.building, this.buildingID, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public final void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        drawButtonBG(spriteBatch, i, i2, z);
        drawText(spriteBatch, i, i2, z);
    }

    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(this.colorBG.r, this.colorBG.g, this.colorBG.b, 0.4f));
        Images.pix.draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + i2, getInnerWidth(), getHeight());
        spriteBatch.setColor(new Color(this.colorBG.r, this.colorBG.g, this.colorBG.b, 0.3f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + i2, getInnerWidth(), getHeight());
        Color color = COLOR_STATS;
        spriteBatch.setColor(new Color(color.r, color.g, color.b, 0.6f));
        Images.pix.draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + i2, getInnerWidth(), (CFG.PADDING * 4) + CFG.TEXT_HEIGHT);
        spriteBatch.setColor(new Color(this.colorBGOver.r, this.colorBGOver.g, this.colorBGOver.b, 0.6f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + i2, getInnerWidth(), (CFG.PADDING * 4) + CFG.TEXT_HEIGHT);
        spriteBatch.setColor(new Color(color.r, color.g, color.b, 0.4f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + i2, getInnerWidth(), getHeight());
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + i2, getInnerWidth(), 1);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getInnerWidth(), 1);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, (((getPosY() + CFG.TEXT_HEIGHT) + (CFG.PADDING * 4)) - 1) + i2, getInnerWidth(), 1);
        spriteBatch.setColor(new Color(this.colorBGOver.r, this.colorBGOver.g, this.colorBGOver.b, 0.8f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + i2, getInnerWidth(), (CFG.PADDING * 4) + CFG.TEXT_HEIGHT, false, true);
        spriteBatch.setColor(new Color(this.colorBG.r, this.colorBG.g, this.colorBG.b, 0.5f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + i2, getInnerWidth(), 1);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + getInnerPosX() + i, (((getPosY() + CFG.TEXT_HEIGHT) + (CFG.PADDING * 4)) - 1) + i2, getInnerWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.3f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + getInnerPosX() + i, getPosY() + CFG.TEXT_HEIGHT + (CFG.PADDING * 4) + i2, getInnerWidth(), CFG.PADDING);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + getInnerPosX() + i, ((getPosY() + getHeight()) - CFG.PADDING) + i2, getInnerWidth(), CFG.PADDING, false, true);
        spriteBatch.setColor(Color.WHITE);
        if (this.built || getIsHovered() || z) {
            BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(this.building).ImageID[this.buildingID]).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight());
        } else {
            Renderer.setBlackWhite(spriteBatch);
            BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(this.building).ImageID[this.buildingID]).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight());
            Renderer.setShaderDefault(spriteBatch);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.3f));
            BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(this.building).ImageID[this.buildingID]).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight());
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(Color.WHITE);
        if (BuildingsManager.buildings.get(this.building).RequiredResource >= 0) {
            ResourcesManager.resourceImages.get(BuildingsManager.buildings.get(this.building).RequiredResource).draw(spriteBatch, (((getPosX() + ImageManager.getImage(Images.buildingsFrame).getWidth()) - ResourcesManager.resourceImages.get(BuildingsManager.buildings.get(this.building).RequiredResource).getWidth()) - CFG.PADDING) + i, (((getPosY() + ImageManager.getImage(Images.buildingsFrame).getHeight()) - ResourcesManager.resourceImages.get(BuildingsManager.buildings.get(this.building).RequiredResource).getHeight()) - CFG.PADDING) + i2);
        }
        ImageManager.getImage(Images.buildingsFrame).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (z) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight(), Colors.COLOR_BOX_ACTIVE);
        } else if (getIsHovered()) {
            Renderer.drawBoxLineFrame(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.buildingsFrame).getWidth(), ImageManager.getImage(Images.buildingsFrame).getHeight(), Colors.COLOR_BOX_HOVER);
        }
    }

    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getText(), getPosX() + getInnerPosX() + (CFG.PADDING * 2) + i, getPosY() + (CFG.PADDING * 2) + i2, this.built ? Colors.HOVER_POSITIVE : getColor(z));
        int height = CFG.TEXT_HEIGHT + (CFG.PADDING * 4) + (((getHeight() - CFG.TEXT_HEIGHT) - (CFG.PADDING * 4)) / 2);
        ImageManager.getImage(Images.gold).draw(spriteBatch, (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (((((this.iCostWidth + goldIconWidth) + this.iRecruitmentTimeWidth) + timeIconWidth) + (CFG.PADDING * 6)) / 2)) + this.iCostWidth + CFG.PADDING + i, ((getPosY() + height) - (timeIconHeight / 2)) + i2, goldIconWidth, goldIconHeight);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sCost, (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (((((this.iCostWidth + goldIconWidth) + this.iRecruitmentTimeWidth) + timeIconWidth) + (CFG.PADDING * 6)) / 2)) + i, ((getPosY() + height) - (this.iRecruitmentTimeHeight / 2)) + i2, Colors.HOVER_RIGHT2);
        Image image = ImageManager.getImage(Images.buildTime);
        int posX = (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (((((this.iCostWidth + goldIconWidth) + this.iRecruitmentTimeWidth) + timeIconWidth) + (CFG.PADDING * 6)) / 2)) + this.iCostWidth + goldIconWidth + (CFG.PADDING * 6) + this.iRecruitmentTimeWidth + i;
        int posY = getPosY() + height;
        int i3 = timeIconHeight;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, timeIconWidth, i3);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sRecruitmentTime, (((getPosX() + getInnerPosX()) + (getInnerWidth() / 2)) - (((((this.iCostWidth + goldIconWidth) + this.iRecruitmentTimeWidth) + timeIconWidth) + (CFG.PADDING * 6)) / 2)) + this.iCostWidth + (CFG.PADDING * 5) + goldIconWidth + i, ((getPosY() + height) - (this.iRecruitmentTimeHeight / 2)) + i2, Colors.HOVER_RIGHT2);
    }

    protected Color getColor(boolean z) {
        return Colors.getColorTopStatsHover(z, getIsHovered());
    }

    public int getInnerPosX() {
        return ImageManager.getImage(Images.buildingsFrame).getWidth();
    }

    public int getInnerWidth() {
        return getWidth() - ImageManager.getImage(Images.buildingsFrame).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getText() {
        return this.sText;
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
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), getText());
        this.iTextWidth = (int) Renderer.glyphLayout.width;
    }
}
