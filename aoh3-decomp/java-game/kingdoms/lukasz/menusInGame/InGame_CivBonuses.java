package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Right_Color;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_CivBonuses extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iCivID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_CivBonuses(false);
            Game.menuManager.rebuildInGame_Civ_UnlockedAdvantages();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(InGame_CivBonuses.iCivID).getCivName() + lJxd.OmGEXI + Game.lang.get(ClXgFvsSKQc.OxUPR), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.advantages, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Bonuses_Right_Color {
        AnonymousClass2(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Right_Color, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Right
        public Color getColorBonus() {
            return Game.getCiv(InGame_CivBonuses.iCivID).civBonuses.TaxEfficiency > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses$3, reason: invalid class name */
    class AnonymousClass3 extends Text_Static {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.BUTTON_TEXT_ACTIVE;
            }
            if (getIsHovered()) {
                return Colors.BUTTON_TEXT_HOVERED;
            }
            return getClickable() ? Colors.BUTTON_TEXT : Colors.BUTTON_TEXT_DISABLED;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses$4, reason: invalid class name */
    class AnonymousClass4 extends MenuTitleIMG_FlagCenter {
        AnonymousClass4(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_CivBonuses.iCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_CivBonuses.lTime;
        }
    }

    public InGame_CivBonuses() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        ArrayList arrayList;
        String str10;
        String str11;
        ArrayList arrayList2 = new ArrayList();
        int i = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int i2 = CFG.BUTTON_WIDTH;
        int i3 = Renderer.boxBGExtraY;
        int i4 = CFG.PADDING;
        int height = ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i5 = CFG.PADDING;
        int width2 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 2);
        int i6 = CFG.TEXT_HEIGHT + (CFG.PADDING * 6);
        int i7 = width - (i * 2);
        arrayList2.add(new AnonymousClass1(Game.lang.get("CivilizationAdvantages") + ": " + Game.getCiv(iCivID).iAdvantagesSize, Images.advantages, i, i5, i7, i6, width2, 0));
        int height2 = i5 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        ArrayList arrayList3 = new ArrayList();
        if (Game.getCiv(iCivID).canAccessSea) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ArmyCanGoToSea"), "", Images.ship, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).canColonize) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ColonizationAllowed"), "", Images.population, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).canBuildNuke) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("NuclearWeapons"), "", Images.nuke, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MonthlyIncome != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MonthlyIncome") + "", (Game.getCiv(iCivID).civBonuses.MonthlyIncome > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.MonthlyIncome, 100), Images.gold, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.TaxEfficiency != 0.0f) {
            arrayList3.add(new AnonymousClass2(Game.lang.get("TaxEfficiency") + r13, (Game.getCiv(iCivID).civBonuses.TaxEfficiency > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.TaxEfficiency, 100) + "%", Images.tax, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.IncomeTaxation != 0.0f) {
            str = "%";
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("IncomeTaxation") + r13, (Game.getCiv(iCivID).civBonuses.IncomeTaxation > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.IncomeTaxation * 100.0f, (int) r15) + "%", Images.tax, i, height2, i7, i6, width2));
        } else {
            str = r15;
        }
        if (Game.getCiv(iCivID).civBonuses.IncomeEconomy != 0.0f) {
            String str12 = Game.lang.get(uiwPYaNhJS.tvUxGBXN) + r13;
            StringBuilder sbAppend = new StringBuilder().append(Game.getCiv(iCivID).civBonuses.IncomeEconomy > 0.0f ? r14 : r13).append(CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.IncomeEconomy * 100.0f, (int) r15));
            String str13 = str;
            str2 = str13;
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str12, sbAppend.append(str13).toString(), Game_Calendar.IMG_ECONOMY, i, height2, i7, i6, width2));
        } else {
            str2 = str;
        }
        if (Game.getCiv(iCivID).civBonuses.IncomeProduction != 0.0f) {
            String str14 = Game.lang.get("IncomeProduction") + r13;
            StringBuilder sbAppend2 = new StringBuilder().append(Game.getCiv(iCivID).civBonuses.IncomeProduction > 0.0f ? r14 : r13).append(CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.IncomeProduction, (int) r15));
            String str15 = str2;
            str3 = str15;
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str14, sbAppend2.append(str15).toString(), Images.goods, i, height2, i7, i6, width2));
        } else {
            str3 = str2;
        }
        if (Game.getCiv(iCivID).civBonuses.ProductionEfficiency != 0.0f) {
            String str16 = Game.lang.get("ProductionEfficiency") + r13;
            StringBuilder sbAppend3 = new StringBuilder().append(Game.getCiv(iCivID).civBonuses.ProductionEfficiency > 0.0f ? r14 : r13).append(CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ProductionEfficiency, (int) r15));
            String str17 = str3;
            str4 = str17;
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str16, sbAppend3.append(str17).toString(), Images.goods, i, height2, i7, i6, width2));
        } else {
            str4 = str3;
        }
        if (Game.getCiv(iCivID).civBonuses.ProvinceMaintenance != 0.0f) {
            String str18 = str4;
            str5 = str18;
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ProvinceMaintenance") + r13, r13 + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ProvinceMaintenance, (int) r15) + str18, Images.provinces, i, height2, i7, i6, width2));
        } else {
            str5 = str4;
        }
        if (Game.getCiv(iCivID).civBonuses.BuildingsMaintenanceCost != 0.0f) {
            String str19 = Game.lang.get("BuildingsMaintenanceCost") + r13;
            StringBuilder sbAppend4 = new StringBuilder(r13).append(CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.BuildingsMaintenanceCost * 100.0f, (int) r15));
            String str20 = str5;
            str6 = str20;
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str19, sbAppend4.append(str20).toString(), Images.buildings, i, height2, i7, i6, width2));
        } else {
            str6 = str5;
        }
        if (Game.getCiv(iCivID).civBonuses.MaintenanceCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaintenanceCost") + r13, r13 + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.MaintenanceCost, (int) r15), Images.gold, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).getInflation_Just() > 0.0f) {
            String str21 = str6;
            str7 = str21;
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("Inflation") + r13, r13 + CFG.getPrecision2(Game.getCiv(iCivID).getInflation_Just() * 100.0f, (int) r15) + str21, Images.inflation, i, height2, i7, i6, width2));
        } else {
            str7 = str6;
        }
        if (Game.getCiv(iCivID).civBonuses.GrowthRate != 0.0f) {
            String str22 = Game.lang.get("GrowthRate") + r13;
            StringBuilder sbAppend5 = new StringBuilder().append(Game.getCiv(iCivID).civBonuses.GrowthRate > 0.0f ? r14 : r13).append(CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.GrowthRate, (int) r15));
            String str23 = str7;
            str8 = str23;
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str22, sbAppend5.append(str23).toString(), Images.populationGrowth, i, height2, i7, i6, width2));
        } else {
            str8 = str7;
        }
        if (Game.getCiv(iCivID).civBonuses.MonthlyLegacy != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MonthlyLegacy") + r13, (Game.getCiv(iCivID).civBonuses.MonthlyLegacy > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.MonthlyLegacy, (int) r15), Images.legacy, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MonthlyLegacy_Percentage != 0.0f) {
            String str24 = Game.lang.get(r15) + r13;
            String str25 = str8;
            str9 = str25;
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str24, (Game.getCiv(iCivID).civBonuses.MonthlyLegacy_Percentage > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.MonthlyLegacy_Percentage * 100.0f, 100) + str25, Images.legacy, i, height2, i7, i6, width2));
        } else {
            str9 = str8;
        }
        if (Game.getCiv(iCivID).civBonuses.MaxManpower != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumManpower") + r13, (Game.getCiv(iCivID).civBonuses.MaxManpower > 0.0f ? r14 : r13) + ((int) Game.getCiv(iCivID).civBonuses.MaxManpower), Game_Calendar.IMG_MANPOWER_UP, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MaxManpower_Percentage != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get(r15) + r13, (Game.getCiv(iCivID).civBonuses.MaxManpower_Percentage > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.MaxManpower_Percentage * 100.0f, 100) + str9, Game_Calendar.IMG_MANPOWER_UP, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.ManpowerRecoverySpeed != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ManpowerRecoverySpeed") + r13, (Game.getCiv(iCivID).civBonuses.ManpowerRecoverySpeed > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ManpowerRecoverySpeed * 100.0f, 100) + str9, Game_Calendar.IMG_MANPOWER_TIME, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.ReinforcementSpeed != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ReinforcementSpeed") + r13, (Game.getCiv(iCivID).civBonuses.ReinforcementSpeed > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ReinforcementSpeed * 100.0f, 100) + str9, Game_Calendar.IMG_MANPOWER_TIME, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.ArmyMoraleRecovery != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ArmyMoraleRecovery") + r13, (Game.getCiv(iCivID).civBonuses.ArmyMoraleRecovery > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ArmyMoraleRecovery * 100.0f, 100) + str9, Images.morale, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.WarScoreCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("WarScoreCost") + r13, (Game.getCiv(iCivID).civBonuses.WarScoreCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.WarScoreCost * 100.0f, 100) + str9, Images.victoryPoints, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.ArmyMaintenance != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ArmyMaintenance") + r13, (Game.getCiv(iCivID).civBonuses.ArmyMaintenance > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ArmyMaintenance, 100) + str9, Images.armyMaintenance, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.RecruitmentTime != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("RecruitmentTime") + r13, (Game.getCiv(iCivID).civBonuses.RecruitmentTime > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.RecruitmentTime, 100) + str9, Game_Calendar.IMG_MANPOWER_TIME, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.RecruitArmyCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get(lJxd.RQQckEHTQpz) + r13, (Game.getCiv(iCivID).civBonuses.RecruitArmyCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.RecruitArmyCost, 100) + str9, Images.gold, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.RecruitArmyFirstLineCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("FirstLineArmyRecruitmentCost") + r13, (Game.getCiv(iCivID).civBonuses.RecruitArmyFirstLineCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.RecruitArmyFirstLineCost, 100) + str9, Images.gold, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.RecruitArmySecondLineCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("SecondLineArmyRecruitmentCost") + r13, (Game.getCiv(iCivID).civBonuses.RecruitArmySecondLineCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.RecruitArmySecondLineCost, 100) + str9, Images.gold, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.Research != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("Research") + r13, (Game.getCiv(iCivID).civBonuses.Research > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.Research, 100) + str9, Game_Calendar.IMG_TECHNOLOGY, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.ResearchPoints != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ResearchPerMonth") + r13, (Game.getCiv(iCivID).civBonuses.ResearchPoints > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ResearchPoints, 100), Game_Calendar.IMG_TECHNOLOGY, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.Devastation != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("Devastation") + r13, (Game.getCiv(iCivID).civBonuses.Devastation > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.Devastation * 100.0f, 100) + str9, Images.devastation, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.TechnologyCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("TechnologyCost") + r13, (Game.getCiv(iCivID).civBonuses.TechnologyCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.TechnologyCost, 100) + str9, Game_Calendar.IMG_TECHNOLOGY, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.ConstructionCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ConstructionCost") + r13, (Game.getCiv(iCivID).civBonuses.ConstructionCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ConstructionCost * 100.0f, 100) + str9, Images.construction, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.AdministrationBuildingsCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("AdministrationBuildingsCost") + r13, (Game.getCiv(iCivID).civBonuses.AdministrationBuildingsCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.AdministrationBuildingsCost * 100.0f, 100) + str9, Images.construction, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MilitaryBuildingsCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MilitaryBuildingsCost") + r13, (Game.getCiv(iCivID).civBonuses.MilitaryBuildingsCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.MilitaryBuildingsCost * 100.0f, 100) + str9, Images.construction, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.EconomyBuildingsCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("EconomyBuildingsCost") + r13, (Game.getCiv(iCivID).civBonuses.EconomyBuildingsCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.EconomyBuildingsCost * 100.0f, 100) + str9, Images.construction, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.ConstructionTime != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get(fTNtCctcBZcqKK.FblSb) + r13, (Game.getCiv(iCivID).civBonuses.ConstructionTime > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ConstructionTime * 100.0f, 100) + str9, Images.buildTime, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.WonderConstructionCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("WonderConstructionCost") + r13, (Game.getCiv(iCivID).civBonuses.WonderConstructionCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.WonderConstructionCost * 100.0f, 100) + str9, Images.mapModesWonders, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.BuildingSlot != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("BuildingSlot") + r13, (Game.getCiv(iCivID).civBonuses.BuildingSlot > 0 ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.BuildingSlot, 100), Images.build, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MaxInfrastructure != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumInfrastructureLevel") + r13, (Game.getCiv(iCivID).civBonuses.MaxInfrastructure > 0 ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.MaxInfrastructure, 100), Images.infrastructure, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.InvestInEconomyCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("InvestInEconomyCost") + r13, (Game.getCiv(iCivID).civBonuses.InvestInEconomyCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.InvestInEconomyCost * 100.0f, 100) + str9, Game_Calendar.IMG_ECONOMY_UP, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.IncreaseTaxEfficiencyCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("IncreaseTaxEfficiencyCost") + r13, (Game.getCiv(iCivID).civBonuses.IncreaseTaxEfficiencyCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.IncreaseTaxEfficiencyCost * 100.0f, 100) + str9, Images.taxUp, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.IncreaseGrowthRateCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("IncreaseGrowthRateCost") + r13, (Game.getCiv(iCivID).civBonuses.IncreaseGrowthRateCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.IncreaseGrowthRateCost * 100.0f, 100) + str9, Images.populationUp, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.DevelopInfrastructureCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("DevelopInfrastructureCost") + r13, (Game.getCiv(iCivID).civBonuses.DevelopInfrastructureCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.DevelopInfrastructureCost * 100.0f, 100) + str9, Images.infrastructureUp, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.IncreaseManpowerCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("IncreaseManpowerCost") + r13, (Game.getCiv(iCivID).civBonuses.IncreaseManpowerCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.IncreaseManpowerCost, 100) + str9, Game_Calendar.IMG_MANPOWER_UP, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.GeneralAttack != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("GeneralsAttack") + r13, (Game.getCiv(iCivID).civBonuses.GeneralAttack > 0 ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.GeneralAttack, 100), Images.attack, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.GeneralDefense != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("GeneralsDefense") + r13, (Game.getCiv(iCivID).civBonuses.GeneralDefense > 0 ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.GeneralDefense, 100), Images.defense, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.RegimentsLimit != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("RegimentsLimit") + r13, (Game.getCiv(iCivID).civBonuses.RegimentsLimit > 0 ? r14 : r13) + Game.getCiv(iCivID).civBonuses.RegimentsLimit, Images.regimentsLimit, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.UnitsAttack != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("UnitsAttack") + r13, (Game.getCiv(iCivID).civBonuses.UnitsAttack > 0 ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.UnitsAttack, 100), Images.attack, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.UnitsDefense != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("UnitsDefense") + r13, (Game.getCiv(iCivID).civBonuses.UnitsDefense > 0 ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.UnitsDefense, 100), Images.defense, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MaxMorale != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaxMorale") + r13, (Game.getCiv(iCivID).civBonuses.MaxMorale > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.MaxMorale * 100.0f, 100) + str9, Images.morale, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.AdvisorMaxLevel != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumAdvisorSkillLevel") + r13, (Game.getCiv(iCivID).civBonuses.AdvisorMaxLevel > 0 ? r14 : r13) + Game.getCiv(iCivID).civBonuses.AdvisorMaxLevel, Images.skill, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.AdvisorPoolSize != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("AdvisorPool") + r13, (Game.getCiv(iCivID).civBonuses.AdvisorPoolSize > 0 ? r14 : r13) + Game.getCiv(iCivID).civBonuses.AdvisorPoolSize, Images.council, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.ArmyMovementSpeed != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ArmyMovementSpeed") + r13, (Game.getCiv(iCivID).civBonuses.ArmyMovementSpeed > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ArmyMovementSpeed, 100) + str9, Images.movementSpeed, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.SiegeEffectiveness != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("SiegeEffectiveness") + r13, (Game.getCiv(iCivID).civBonuses.SiegeEffectiveness > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.SiegeEffectiveness * 100.0f, 100) + str9, Images.siege, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.ImproveRelationsModifier != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ImproveRelationsModifier") + r13, (Game.getCiv(iCivID).civBonuses.ImproveRelationsModifier > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ImproveRelationsModifier, 100) + str9, Images.relations, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.IncomeFromVassals != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("IncomeFromVassals") + r13, (Game.getCiv(iCivID).civBonuses.IncomeFromVassals > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.IncomeFromVassals * 100.0f, 100) + str9, Images.vassal, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.DiplomacyPoints != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get(cIUGJCqyPXfp.olFMiMbyNxLaKaX) + r13, (Game.getCiv(iCivID).civBonuses.DiplomacyPoints > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.DiplomacyPoints * 100.0f, 100) + str9, Images.diplomacy, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.Corruption != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("Corruption") + r13, (Game.getCiv(iCivID).civBonuses.Corruption > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.Corruption * 100.0f, 100), Images.corruption, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.Inflation != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("Inflation") + r13, (Game.getCiv(iCivID).civBonuses.Inflation > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.Inflation * 100.0f, 100), Images.inflation, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MaxNumberOfLoans != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumNumberOfLoans") + r13, (Game.getCiv(iCivID).civBonuses.MaxNumberOfLoans > 0 ? r14 : r13) + Game.getCiv(iCivID).civBonuses.MaxNumberOfLoans, Images.loan, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MaximumLevelOfTheMilitaryAcademyForGenerals != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumLevelOfTheMilitaryAcademyForGenerals") + r13, (Game.getCiv(iCivID).civBonuses.MaximumLevelOfTheMilitaryAcademyForGenerals > 0 ? r14 : r13) + Game.getCiv(iCivID).civBonuses.MaximumLevelOfTheMilitaryAcademyForGenerals, Images.general, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MaximumLevelOfTheMilitaryAcademy != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumLevelOfTheMilitaryAcademy") + r13, (Game.getCiv(iCivID).civBonuses.MaximumLevelOfTheMilitaryAcademy > 0 ? r14 : r13) + Game.getCiv(iCivID).civBonuses.MaximumLevelOfTheMilitaryAcademy, Game_Calendar.IMG_MANPOWER, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MaximumLevelOfTheSupremeCourt != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumLevelOfTheSupremeCourt") + r13, (Game.getCiv(iCivID).civBonuses.MaximumLevelOfTheSupremeCourt > 0 ? r14 : r13) + Game.getCiv(iCivID).civBonuses.MaximumLevelOfTheSupremeCourt, Images.stability, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MaximumLevelOfNuclearReactor != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumLevelOfTheNuclearReactor") + r13, (Game.getCiv(iCivID).civBonuses.MaximumLevelOfNuclearReactor > 0 ? r14 : r13) + Game.getCiv(iCivID).civBonuses.MaximumLevelOfNuclearReactor, Images.nuke, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MaximumLevelOfCapitalCity != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumLevelOfCapitalCity") + r13, (Game.getCiv(iCivID).civBonuses.MaximumLevelOfCapitalCity > 0 ? r14 : r13) + Game.getCiv(iCivID).civBonuses.MaximumLevelOfCapitalCity, Images.capital, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.Discipline != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("Discipline") + r13, (Game.getCiv(iCivID).civBonuses.Discipline > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.Discipline * 100.0f, 10) + str9, Images.discipline, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MaximumAmountOfGold != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumAmountOfGold") + r13, (Game.getCiv(iCivID).civBonuses.MaximumAmountOfGold > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.MaximumAmountOfGold, 10), Images.gold, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MaximumAmountOfGold_Percentage != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumAmountOfGold") + r13, (Game.getCiv(iCivID).civBonuses.MaximumAmountOfGold_Percentage > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.MaximumAmountOfGold_Percentage * 100.0f, 100) + str9, Images.gold, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.Loot != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("Loot") + r13, (Game.getCiv(iCivID).civBonuses.Loot > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.Loot * 100.0f, 10) + str9, Images.loot, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.ManpowerRecoveryFromADisbandedArmy != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ManpowerRecoveryFromADisbandedArmy") + r13, (Game.getCiv(iCivID).civBonuses.ManpowerRecoveryFromADisbandedArmy > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ManpowerRecoveryFromADisbandedArmy * 100.0f, 10) + str9, Game_Calendar.IMG_MANPOWER_DISBAND, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.BattleWidth != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("BattleWidth") + r13, (Game.getCiv(iCivID).civBonuses.BattleWidth > 0 ? r14 : r13) + Game.getCiv(iCivID).civBonuses.BattleWidth, Images.battleWidth, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.AllCharactersLifeExpectancy != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("AllCharactersLifeExpectancy") + r13, (Game.getCiv(iCivID).civBonuses.AllCharactersLifeExpectancy > 0 ? r14 : r13) + Game.lang.get("YearsX", Game.getCiv(iCivID).civBonuses.AllCharactersLifeExpectancy), Images.council, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.DiseaseDeathRate != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("DiseasesDeathRate") + r13, (Game.getCiv(iCivID).civBonuses.DiseaseDeathRate > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.DiseaseDeathRate * 100.0f, 100) + str9, Images.disease, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.LoanInterest != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("LoanInterest") + r13, (Game.getCiv(iCivID).civBonuses.LoanInterest > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.LoanInterest, 100) + str9, Images.loan, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.AggressiveExpansion != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("AggressiveExpansion") + r13, (Game.getCiv(iCivID).civBonuses.AggressiveExpansion > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.AggressiveExpansion, 100) + str9, Images.war, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.MaxNumOfAlliances != 0) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaxNumOfAlliances") + r13, (Game.getCiv(iCivID).civBonuses.MaxNumOfAlliances > 0 ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.MaxNumOfAlliances, 100), Images.alliance, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.AdvisorCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("AdvisorCost") + r13, (Game.getCiv(iCivID).civBonuses.AdvisorCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.AdvisorCost * 100.0f, 100) + str9, Images.council, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.GeneralCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("GeneralCost") + r13, (Game.getCiv(iCivID).civBonuses.GeneralCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.GeneralCost * 100.0f, 100) + str9, Images.general, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.RevolutionaryRisk != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("RevolutionaryRisk") + r13, (Game.getCiv(iCivID).civBonuses.RevolutionaryRisk > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.RevolutionaryRisk, 100) + str9, Images.revolutionRisk, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.CoreCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("CoreConstruction") + r13, (Game.getCiv(iCivID).civBonuses.CoreCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.CoreCost, 100) + str9, Images.core, i, height2, i7, i6, width2));
        }
        if (Game.getCiv(iCivID).civBonuses.ReligionCost != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get(HjHDSSkYG.uwXpLQ) + r13, (Game.getCiv(iCivID).civBonuses.ReligionCost > 0.0f ? r14 : r13) + CFG.getPrecision2(Game.getCiv(iCivID).civBonuses.ReligionCost, 100) + str9, Images.religion, i, height2, i7, i6, width2));
        }
        int height3 = height2;
        while (true) {
            int i8 = 0;
            if (arrayList3.size() <= 0) {
                break;
            }
            int size = arrayList3.size();
            for (int i9 = 1; i9 < size; i9++) {
                if (CFG.compareAlphabetic_TwoString(((MenuElement) arrayList3.get(i8)).getText(), ((MenuElement) arrayList3.get(i9)).getText())) {
                    i8 = i9;
                }
            }
            arrayList2.add((MenuElement) arrayList3.get(i8));
            arrayList2.get(arrayList2.size() - 1).setPosY(height3);
            height3 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
            arrayList3.remove(i8);
        }
        if (arrayList2.size() == 0) {
            arrayList = arrayList2;
            arrayList.add(new AnonymousClass3(Game.lang.get("None") + ".", CFG.FONT_REGULAR_SMALL, -1, i, height3, i7, CFG.BUTTON_HEIGHT));
        } else {
            arrayList = arrayList2;
        }
        int size2 = arrayList.size();
        int posY = height3;
        for (int i10 = 0; i10 < size2; i10++) {
            if (posY < arrayList.get(i10).getPosY() + arrayList.get(i10).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i10).getPosY() + arrayList.get(i10).getHeight() + CFG.PADDING;
            }
        }
        arrayList.add(new Text_Title_v2(Game.lang.get("CivilizationRank") + ": " + CivilizationRanking.getCivilizationRank_Name(Game.getCiv(iCivID).iCivRankID), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, posY, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height4 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + posY;
        if (GameValues.civRank.CIV_RANK_MANPOWER_MAX[Game.getCiv(iCivID).iCivRankID] != 0) {
            str10 = "+";
            arrayList3.add(new ButtonStatsRectIMG_Bonuses2(Game.lang.get("MaximumManpower") + ": ", "+" + GameValues.civRank.CIV_RANK_MANPOWER_MAX[Game.getCiv(iCivID).iCivRankID], Game_Calendar.IMG_MANPOWER_UP, i, height4, i7, i6, width2));
        } else {
            str10 = r14;
        }
        if (GameValues.civRank.CIV_RANK_ARMY_MAINTENANCE[Game.getCiv(iCivID).iCivRankID] != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses2(Game.lang.get("ArmyMaintenance") + ": ", r13 + CFG.getPrecision2(GameValues.civRank.CIV_RANK_ARMY_MAINTENANCE[Game.getCiv(iCivID).iCivRankID] * 100.0f, 100) + str9, Images.armyMaintenance, i, height4, i7, i6, width2));
        }
        if (GameValues.civRank.CIV_RANK_INVEST_ECONOMY_COST[Game.getCiv(iCivID).iCivRankID] != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses2(Game.lang.get("InvestInEconomyCost") + ": ", r13 + CFG.getPrecision2(GameValues.civRank.CIV_RANK_INVEST_ECONOMY_COST[Game.getCiv(iCivID).iCivRankID] * 100.0f, 100) + str9, Game_Calendar.IMG_ECONOMY_UP, i, height4, i7, i6, width2));
        }
        if (GameValues.civRank.CIV_RANK_BUILDING_CONSTRUCTION_COST[Game.getCiv(iCivID).iCivRankID] != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses2(Game.lang.get("ConstructionCost") + ": ", r13 + CFG.getPrecision2(GameValues.civRank.CIV_RANK_BUILDING_CONSTRUCTION_COST[Game.getCiv(iCivID).iCivRankID] * 100.0f, 100) + str9, Images.construction, i, height4, i7, i6, width2));
        }
        if (GameValues.civRank.CIV_RANK_ADVISOR_COST[Game.getCiv(iCivID).iCivRankID] != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses2(Game.lang.get("AdvisorCost") + ": ", r13 + CFG.getPrecision2(GameValues.civRank.CIV_RANK_ADVISOR_COST[Game.getCiv(iCivID).iCivRankID] * 100.0f, 100) + str9, Images.council, i, height4, i7, i6, width2));
        }
        if (GameValues.civRank.CIV_RANK_GENERAL_COST[Game.getCiv(iCivID).iCivRankID] != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses2(Game.lang.get("GeneralCost") + ": ", "" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_GENERAL_COST[Game.getCiv(iCivID).iCivRankID] * 100.0f, 100) + str9, Images.general, i, height4, i7, i6, width2));
        }
        if (GameValues.civRank.CIV_RANK_MONTHLY_LEGACY[Game.getCiv(iCivID).iCivRankID] != 0.0f) {
            String str26 = str10;
            str11 = str26;
            arrayList3.add(new ButtonStatsRectIMG_Bonuses2(Game.lang.get("MonthlyLegacy") + ": ", str26 + CFG.getPrecision2(GameValues.civRank.CIV_RANK_MONTHLY_LEGACY[Game.getCiv(iCivID).iCivRankID], 100), Images.legacy, i, height4, i7, i6, width2));
        } else {
            str11 = str10;
        }
        if (GameValues.civRank.CIV_RANK_MONTHLY_RESEARCH[Game.getCiv(iCivID).iCivRankID] != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses2(Game.lang.get("ResearchPerMonth") + ": ", str11 + CFG.getPrecision2(GameValues.civRank.CIV_RANK_MONTHLY_RESEARCH[Game.getCiv(iCivID).iCivRankID], 100), Game_Calendar.IMG_TECHNOLOGY, i, height4, i7, i6, width2));
        }
        if (GameValues.civRank.CIV_RANK_PROVINCE_MAINTENANCE[Game.getCiv(iCivID).iCivRankID] != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses2(Game.lang.get("ProvinceMaintenance") + ": ", (GameValues.civRank.CIV_RANK_PROVINCE_MAINTENANCE[Game.getCiv(iCivID).iCivRankID] > 0.0f ? str11 : r13) + CFG.getPrecision2(GameValues.civRank.CIV_RANK_PROVINCE_MAINTENANCE[Game.getCiv(iCivID).iCivRankID] * 100.0f, 100) + str9, Images.gold, i, height4, i7, i6, width2));
        }
        if (GameValues.civRank.CIV_RANK_LOAN_INTEREST[Game.getCiv(iCivID).iCivRankID] != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses2(Game.lang.get("Interest") + ": ", "" + CFG.getPrecision2(GameValues.civRank.CIV_RANK_LOAN_INTEREST[Game.getCiv(iCivID).iCivRankID], 100) + str9, Images.loan, i, height4, i7, i6, width2));
        }
        if (GameValues.civRank.CIV_RANK_WAR_SCORE_COST[Game.getCiv(iCivID).iCivRankID] != 0.0f) {
            arrayList3.add(new ButtonStatsRectIMG_Bonuses2(Game.lang.get("WarScoreCost") + ": ", (GameValues.civRank.CIV_RANK_WAR_SCORE_COST[Game.getCiv(iCivID).iCivRankID] > 0.0f ? str11 : r13) + CFG.getPrecision2(GameValues.civRank.CIV_RANK_WAR_SCORE_COST[Game.getCiv(iCivID).iCivRankID] * 100.0f, 100) + str9, Images.victoryPoints, i, height4, i7, i6, width2));
        }
        int posY2 = height4;
        while (arrayList3.size() > 0) {
            int size3 = arrayList3.size();
            int i11 = 0;
            for (int i12 = 1; i12 < size3; i12++) {
                if (CFG.compareAlphabetic_TwoString(((MenuElement) arrayList3.get(i11)).getText(), ((MenuElement) arrayList3.get(i12)).getText())) {
                    i11 = i12;
                }
            }
            ArrayList arrayList4 = arrayList;
            arrayList4.add((MenuElement) arrayList3.get(i11));
            arrayList4.get(arrayList4.size() - 1).setPosY(posY2);
            posY2 += arrayList4.get(arrayList4.size() - 1).getHeight() + CFG.PADDING;
            arrayList3.remove(i11);
        }
        List<MenuElement> list = arrayList;
        int size4 = list.size();
        for (int i13 = 0; i13 < size4; i13++) {
            if (posY2 < list.get(i13).getPosY() + list.get(i13).getHeight() + CFG.PADDING) {
                posY2 = list.get(i13).getPosY() + list.get(i13).getHeight() + CFG.PADDING;
            }
        }
        int iMin = Math.min(posY2, (CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
        list.add(new Empty(0, 0, width, Math.max(posY2, iMin)));
        initMenu(new AnonymousClass4("", Game.getCiv(iCivID).getCivName(), false, false, Images.title1Red), (CFG.GAME_WIDTH - width) - (CFG.PADDING * 2), height, width, iMin, list, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i = (i + CFG.BUTTON_WIDTH) - ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f)));
        }
        int i3 = i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false);
        ImageManager.getImage(Images.newGameOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.newGameOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.newGameOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("CivilizationBonuses"));
    }
}
