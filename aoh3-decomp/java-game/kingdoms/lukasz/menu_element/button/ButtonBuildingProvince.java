package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonBuildingProvince extends Button {
    public int building;
    public int buildingID;
    public boolean underConstruction;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.ButtonBuildingProvince$1, reason: invalid class name */
    class AnonymousClass1 extends MenuElement_Hover {
        AnonymousClass1(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_ProvinceInfo.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_ProvinceInfo.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_ProvinceInfo.HOVER_POSX;
        }
    }

    public ButtonBuildingProvince(int i, int i2, int i3, int i4, boolean z) {
        init(null, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i, i2, getButtonWidth(), getButtonHeight(), true, true, false, false);
        this.building = i3;
        this.buildingID = i4;
        this.underConstruction = z;
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.buildingsFrameSmall).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.buildingsFrameSmall).getWidth();
    }

    public static MenuElement_Hover getHoverBuilding(int i, int i2, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID() == Game.player.iCivID && Game.getProvince(InGame_ProvinceInfo.iProvinceID).isUnderConstruction(i, i2)) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToCancel"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(BuildingsManager.buildings.get(i).Name[i2], CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (z) {
            int constructionID = Game.getProvince(InGame_ProvinceInfo.iProvinceID).getConstructionID(i, i2);
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionWillBeCompleted") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + Game.getProvince(InGame_ProvinceInfo.iProvinceID).getBuildingsConstruction(constructionID).getConstructionTimeLeft()), CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).MonthlyIncome != null && BuildingsManager.buildings.get(i).MonthlyIncome[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", (BuildingsManager.buildings.get(i).MonthlyIncome[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).MonthlyIncome[i2], 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).TaxEfficiency != null && BuildingsManager.buildings.get(i).TaxEfficiency[i2] != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + ": ", "" + (BuildingsManager.buildings.get(i).TaxEfficiency[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).TaxEfficiency[i2], 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
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
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + ": ", "" + (BuildingsManager.buildings.get(i).MonthlyLegacy[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).MonthlyLegacy[i2], 100) + "", Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (BuildingsManager.buildings.get(i).MaximumManpower != null && BuildingsManager.buildings.get(i).MaximumManpower[i2] != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", "" + (BuildingsManager.buildings.get(i).MaximumManpower[i2] > 0 ? "+" : "") + CFG.getPrecision2(BuildingsManager.buildings.get(i).MaximumManpower[i2], 1) + "", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
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
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaintenanceCost") + ": ", Game.lang.get(IlLkpaQxs.POlIdeaPj, "" + CFG.getPrecision2(BuildingsManager.buildings.get(i).MaintenanceCost[i2], 1000)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (z2) {
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ConstructNewBuilding") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getProvinceName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.build, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingSlots") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(InGame_ProvinceInfo.iProvinceID).getUsedBuildingsSlots() + " / " + Game.getProvince(InGame_ProvinceInfo.iProvinceID).iBuildingsLimit, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return new AnonymousClass1(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID() == Game.player.iCivID && Game.getProvince(InGame_ProvinceInfo.iProvinceID).isUnderConstruction(this.building, this.buildingID)) {
            Game.getProvince(InGame_ProvinceInfo.iProvinceID).cancelBuildingConstruction(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID(), this.building, this.buildingID);
            Game.menuManager.rebuildInGame_ProvinceInfo(false);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = getHoverBuilding(this.building, this.buildingID, this.underConstruction, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        try {
            BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(this.building).ImageID[this.buildingID]).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.buildingsFrameSmall).getWidth(), ImageManager.getImage(Images.buildingsFrameSmall).getHeight());
        } catch (Exception unused) {
        }
        ImageManager.getImage(Images.buildingsFrameSmall).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (this.underConstruction) {
            float fUnderConstruction = Game.getProvince(InGame_ProvinceInfo.iProvinceID).underConstruction(this.building, this.buildingID);
            if (fUnderConstruction < 0.0f) {
                this.underConstruction = false;
                fUnderConstruction = 0.0f;
            }
            spriteBatch.setColor(new Color(ProvinceDraw.progressBarBG));
            ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getWidth() / 2)) + i, ((((getPosY() - CFG.PADDING) + getHeight()) - (ImageManager.getImage(Images.progressBarFrame).getHeight() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getHeight() / 2)) + i2);
            spriteBatch.setColor(new Color(ProvinceDraw.progressBar));
            ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getWidth() / 2)) + i, ((((getPosY() - CFG.PADDING) + getHeight()) - (ImageManager.getImage(Images.progressBarFrame).getHeight() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getHeight() / 2)) + i2, (int) (ImageManager.getImage(Images.progressBarFrameMask).getWidth() * (1.0f - fUnderConstruction)), ImageManager.getImage(Images.progressBarFrameMask).getHeight());
            spriteBatch.setColor(Color.WHITE);
            ImageManager.getImage(Images.progressBarFrame).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrame).getWidth() / 2)) + i, (((getPosY() - CFG.PADDING) + getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight()) + i2);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }
}
