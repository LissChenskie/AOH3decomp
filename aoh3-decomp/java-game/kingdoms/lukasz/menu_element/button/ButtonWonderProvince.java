package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTemporaryLoad;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonWonderProvince extends Button {
    public static final int ANIMATION_T = 1000;
    public static int animationState;
    private static final Color colorLine = new Color(0.5176471f, 0.43529412f, 0.25882354f, 0.55f);
    public static long lTimeAnimation;
    public int iProvinceID;
    public int wonderID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.button.ButtonWonderProvince$1, reason: invalid class name */
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

    public ButtonWonderProvince(int i, int i2, int i3, int i4) {
        this.wonderID = i3;
        this.iProvinceID = i4;
        init(null, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i, i2, getButtonWidth(), getButtonHeight(), true, true, false, false);
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.wonderFrame).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.wonderFrame).getWidth();
    }

    public static final Color getColorLine() {
        return colorLine;
    }

    public static MenuElement_Hover getHoverWonder(int i, int i2, boolean z) {
        Color color;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Wonder") + ": ", CFG.FONT_BOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(WondersManager.wonders.get(i2).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTemporaryLoad("map/" + Game.map.getFile_ActiveMap_Path() + "wonders/wondersImagesBig/" + CFG.getRescouresPath_Short() + WondersManager.wonders.get(i2).ImageID + ".png"));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Province") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(i).getProvinceName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getProvince(i).getWonderBuilt()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("WonderConstructed") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (Game.getProvince(i).wonderConstruction != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionWillBeCompleted") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + Game.getProvince(i).wonderConstruction.daysLeft), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).MonthlyIncome != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MonthlyIncome") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).MonthlyIncome > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).MonthlyIncome, 100) + "", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).LocalTaxEfficiency != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LocalTaxEfficiency") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).LocalTaxEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).LocalTaxEfficiency, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).TaxEfficiency != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TaxEfficiency") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).TaxEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).TaxEfficiency, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).ProductionEfficiency != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(SwmJtrccN.qRLojEOvwReblvQ) + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).ProductionEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).ProductionEfficiency, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).ProvinceMaintenance != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceMaintenance") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).ProvinceMaintenance > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).ProvinceMaintenance, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).BuildingsMaintenanceCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingsMaintenanceCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).BuildingsMaintenanceCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).BuildingsMaintenanceCost * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.buildings, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).Economy != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Economy") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).Economy > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).Economy, 100) + "", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).GrowthRate != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GrowthRate") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).GrowthRate > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).GrowthRate, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).Research != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Research") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).Research > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).Research, 100) + "", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).ResearchPoints != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ResearchPerMonth") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).ResearchPoints > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).ResearchPoints, 100) + "", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).TechnologyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TechnologyCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).TechnologyCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).TechnologyCost, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).MonthlyLegacy != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MonthlyLegacy") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).MonthlyLegacy > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).MonthlyLegacy, 100) + "", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).ArmyMaintenance != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ArmyMaintenance") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).ArmyMaintenance > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).ArmyMaintenance, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.armyMaintenance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).MaxManpower != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumManpower") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).MaxManpower > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).MaxManpower, 100) + "", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_UP, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).ManpowerRecoverySpeed != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ManpowerRecoverySpeed") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).ManpowerRecoverySpeed > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).ManpowerRecoverySpeed * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_TIME, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).RecruitmentTime != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RecruitmentTime") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).RecruitmentTime > 0.0f ? "-" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).RecruitmentTime, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_TIME, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).RecruitArmyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ArmyRecruitmentCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).RecruitArmyCost > 0.0f ? "-" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).RecruitArmyCost, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).RecruitArmyFirstLineCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("FirstLineArmyRecruitmentCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).RecruitArmyFirstLineCost > 0.0f ? "-" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).RecruitArmyFirstLineCost, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).RecruitArmySecondLineCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SecondLineArmyRecruitmentCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).RecruitArmySecondLineCost > 0.0f ? "-" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).RecruitArmySecondLineCost, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).ConstructionCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).ConstructionCost > 0.0f ? "-" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).ConstructionCost * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.construction, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).AdministrationBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AdministrationBuildingsCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).AdministrationBuildingsCost > 0.0f ? "-" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).AdministrationBuildingsCost * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.construction, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).EconomyBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("EconomyBuildingsCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).EconomyBuildingsCost > 0.0f ? "-" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).EconomyBuildingsCost * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.construction, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).MilitaryBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MilitaryBuildingsCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).MilitaryBuildingsCost > 0.0f ? "-" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).MilitaryBuildingsCost * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.construction, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).ConstructionTimeBonus != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionTime") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).ConstructionTimeBonus > 0.0f ? "-" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).ConstructionTimeBonus * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.buildTime, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).MaxInfrastructure != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumInfrastructureLevel") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).MaxInfrastructure > 0 ? "+" : "") + WondersManager.wonders.get(i2).MaxInfrastructure, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.infrastructure, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).AdvisorMaxLevel != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumAdvisorSkillLevel") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).AdvisorMaxLevel > 0 ? "+" : "") + WondersManager.wonders.get(i2).AdvisorMaxLevel, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skill, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).AdvisorPoolSize != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AdvisorPool") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).AdvisorPoolSize > 0 ? "+" : "") + WondersManager.wonders.get(i2).AdvisorPoolSize, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).BuildingSlot != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingSlot") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).BuildingSlot > 0 ? "+" : "") + WondersManager.wonders.get(i2).BuildingSlot, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).InvestInEconomyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InvestInEconomyCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).InvestInEconomyCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).InvestInEconomyCost * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY_UP, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).IncreaseTaxEfficiencyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncreaseTaxEfficiencyCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).IncreaseTaxEfficiencyCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).IncreaseTaxEfficiencyCost * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.taxUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).IncreaseGrowthRateCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncreaseGrowthRateCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).IncreaseGrowthRateCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).IncreaseGrowthRateCost * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).DevelopInfrastructureCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DevelopInfrastructureCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).DevelopInfrastructureCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).DevelopInfrastructureCost * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.infrastructureUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).IncreaseManpowerCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncreaseManpowerCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).IncreaseManpowerCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).IncreaseManpowerCost, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_UP, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).GeneralAttack != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GeneralsAttack") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).GeneralAttack > 0 ? "+" : "") + WondersManager.wonders.get(i2).GeneralAttack, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.attack, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).GeneralDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(cIUGJCqyPXfp.RMvcVroPjLDIddZ) + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).GeneralDefense > 0 ? "+" : "") + WondersManager.wonders.get(i2).GeneralDefense, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.defense, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).UnitsAttack != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UnitsAttack") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).UnitsAttack > 0 ? "+" : "") + WondersManager.wonders.get(i2).UnitsAttack, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.attack, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).UnitsDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UnitsDefense") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).UnitsDefense > 0 ? "+" : "") + WondersManager.wonders.get(i2).UnitsDefense, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.defense, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).MaxMorale != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaxMorale") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).MaxMorale > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).MaxMorale * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.morale, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).ArmyMovementSpeed != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ArmyMovementSpeed") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).ArmyMovementSpeed > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).ArmyMovementSpeed, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.movementSpeed, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).SiegeEffectiveness != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SiegeEffectiveness") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).SiegeEffectiveness > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).SiegeEffectiveness * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.siege, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).ImproveRelationsModifier != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ImproveRelationsModifier") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).ImproveRelationsModifier > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).ImproveRelationsModifier, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.relations, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).IncomeFromVassals != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncomeFromVassals") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).IncomeFromVassals > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).IncomeFromVassals * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.vassal, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).MaxNumberOfLoans != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumNumberOfLoans") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).MaxNumberOfLoans > 0 ? "+" : "") + WondersManager.wonders.get(i2).MaxNumberOfLoans, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).LoanInterest != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LoanInterest") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).LoanInterest > 0.0f ? "-" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).LoanInterest, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).DiplomacyPoints != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiplomacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).DiplomacyPoints > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).DiplomacyPoints * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).AggressiveExpansion != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AggressiveExpansion") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).AggressiveExpansion > 0.0f ? "-" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).AggressiveExpansion, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.war, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).RevolutionaryRisk != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RevolutionaryRisk") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).RevolutionaryRisk <= 0.0f ? "" : "-") + CFG.getPrecision2(WondersManager.wonders.get(i2).RevolutionaryRisk, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.revolutionRisk, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).CoreCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CoreConstruction") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).CoreCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).CoreCost, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.core, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).AllCharactersLifeExpectancy != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AllCharactersLifeExpectancy") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).AllCharactersLifeExpectancy > 0 ? "+" : "") + Game.lang.get("YearsX", WondersManager.wonders.get(i2).AllCharactersLifeExpectancy), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).DefenseBonus != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Defense") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).DefenseBonus > 0 ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).DefenseBonus, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.defense, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).FortLevel != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DefenseLevel") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).FortLevel > 0 ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).FortLevel, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.fort, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).FortDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceDefense") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).FortDefense > 0 ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).FortDefense, 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_FORT_DEFENSE, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).DiseaseDeathRate != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiseasesDeathRate") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).DiseaseDeathRate > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).DiseaseDeathRate * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.disease, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).MaximumAmountOfGold != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumAmountOfGold") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).MaximumAmountOfGold > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).MaximumAmountOfGold * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).Discipline != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Discipline") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).Discipline > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).Discipline * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.discipline, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).RegimentsLimit != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RegimentsLimit") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).RegimentsLimit > 0 ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).RegimentsLimit, 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).BattleWidth != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BattleWidth") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).BattleWidth > 0 ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).BattleWidth, 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).ManpowerRecoveryFromADisbandedArmy != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ManpowerRecoveryFromADisbandedArmy") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (WondersManager.wonders.get(i2).ManpowerRecoveryFromADisbandedArmy > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i2).ManpowerRecoveryFromADisbandedArmy * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_DISBAND, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (WondersManager.wonders.get(i2).Legacy != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Legacy") + ": ", CFG.FONT_REGULAR_SMALL));
            String str = (WondersManager.wonders.get(i2).Legacy <= 0.0f ? "" : "+") + CFG.getPrecision2(WondersManager.wonders.get(i2).Legacy, 10);
            int i3 = CFG.FONT_BOLD_SMALL;
            if (WondersManager.wonders.get(i2).Legacy > 0.0f) {
                color = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
            } else {
                color = WondersManager.wonders.get(i2).Legacy < 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.HOVER_RIGHT;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str, i3, color));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(WondersManager.getWonderConstructionCost(i, i2), 10), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionTime") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", WondersManager.wonders.get(i2).ConstructionTime), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.buildTime, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (WondersManager.wonders.get(i2).MaintenanceCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaintenanceCost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XPerMonth", "" + CFG.getPrecision2(WondersManager.wonders.get(i2).MaintenanceCost, 100)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return z ? new AnonymousClass1(arrayList) : new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = getHoverWonder(this.iProvinceID, this.wonderID, true);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    public void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        WondersManager.wonderImages.get(WondersManager.wonders.get(this.wonderID).ImageID).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.wonderFrame).getWidth(), ImageManager.getImage(Images.wonderFrame).getHeight());
        ImageManager.getImage(Images.wonderFrame).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.setColor(Color.WHITE);
        if (Game.getProvince(this.iProvinceID).wonderConstruction != null) {
            float f = Game.getProvince(this.iProvinceID).wonderConstruction.daysLeft / Game.getProvince(this.iProvinceID).wonderConstruction.investTime;
            if (f < 0.0f) {
                f = 0.0f;
            }
            spriteBatch.setColor(new Color(ProvinceDraw.progressBarBG));
            ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getWidth() / 2)) + i, ((((getPosY() - CFG.PADDING) + getHeight()) - (ImageManager.getImage(Images.progressBarFrame).getHeight() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getHeight() / 2)) + i2);
            spriteBatch.setColor(new Color(ProvinceDraw.progressBar));
            ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getWidth() / 2)) + i, ((((getPosY() - CFG.PADDING) + getHeight()) - (ImageManager.getImage(Images.progressBarFrame).getHeight() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getHeight() / 2)) + i2, (int) (ImageManager.getImage(Images.progressBarFrameMask).getWidth() * (1.0f - f)), ImageManager.getImage(Images.progressBarFrameMask).getHeight());
            spriteBatch.setColor(Color.WHITE);
            ImageManager.getImage(Images.progressBarFrame).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrame).getWidth() / 2)) + i, (((getPosY() - CFG.PADDING) + getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight()) + i2);
        }
        int i3 = animationState;
        if (i3 >= 0) {
            if (i3 == 0) {
                float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + 1 + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + getHeight()) - 2) + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState++;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, getPosY() + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, ((getPosY() + getHeight()) - 1) + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState = 0;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    public void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iProvinceID;
    }
}
