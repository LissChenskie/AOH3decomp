package aoc.kingdoms.lukasz.menusInGame.Court;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Formable;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.graph.Graph;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsFlags;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_Stats extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonCurrentSituation {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
            Game.setRegroupArmyMode(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(GameValues.court.COUNCIL_NAME), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fManpowerMax, 1)), Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass11(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            double populationTotal = ((Game.getCiv(Game.player.iCivID).getPopulationTotal() / Math.max(200L, Game.player.playerStats.startingPopulation)) - 1.0f) * 100.0f;
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", (populationTotal > 0.0d ? "+" : "") + CFG.getPrecision2(populationTotal, 100) + "%", Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game_Calendar.getDate_ByTurnID(1), Images.time, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.player.playerStats.startingPopulation), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game_Calendar.getCurrentDate(), Images.time, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(Game.player.iCivID).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game_Calendar.TURN_ID != 1) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("PlayingTime") + ": ", Game_Calendar.getNumOfDates_ByTurnID(1), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_RIGHT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass12(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float economyTotal = ((Game.getCiv(Game.player.iCivID).getEconomyTotal() / Math.max(1.0f, Game.player.playerStats.startingEconomy)) - 1.0f) * 100.0f;
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", (economyTotal > 0.0f ? "+" : "") + CFG.getPrecision2(economyTotal, 100) + "%", Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game_Calendar.getDate_ByTurnID(1), Images.time, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(Game.player.playerStats.startingEconomy, 10)), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game_Calendar.getCurrentDate(), Images.time, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getEconomyTotal(), 10)), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game_Calendar.TURN_ID != 1) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(qIuEvFbUtcea.bpXXsK) + ": ", Game_Calendar.getNumOfDates_ByTurnID(1), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_RIGHT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonFlag {
        AnonymousClass2(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag
        public int getFlagCivID() {
            return Game.player.iCivID;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats$3, reason: invalid class name */
    class AnonymousClass3 extends Text_StaticBG_RulerTitle {
        AnonymousClass3(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float numOfProvinces = ((Game.getCiv(Game.player.iCivID).getNumOfProvinces() / Math.max(1, Game.player.playerStats.startingProvinces)) - 1.0f) * 100.0f;
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", (numOfProvinces > 0.0f ? "+" : "") + CFG.getPrecision2(numOfProvinces, 100) + "%", Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game_Calendar.getDate_ByTurnID(1), Images.time, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", CFG.getNumberWithSpaces("" + Game.player.playerStats.startingProvinces), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", "" + Game_Calendar.getCurrentDate(), Images.time, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(Game.player.iCivID).getNumOfProvinces()), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game_Calendar.TURN_ID != 1) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("PlayingTime") + ": ", Game_Calendar.getNumOfDates_ByTurnID(1), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_RIGHT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass6(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats$7, reason: invalid class name */
    class AnonymousClass7 extends PieChart_WithStatsFlags {
        AnonymousClass7(int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, MenuElement_Hover menuElement_Hover) {
            super(i, i2, i3, i4, pieChart_Data, menuElement_Hover);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
        protected float animationPerc() {
            return Math.min(1.0f, (CFG.currentTimeMillis - this.lTime) / 150.0f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            for (int i = 0; i < this.pieChartData.getPieChartValuesSize(); i++) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.pieChartData.getCivID(i)).getCivName() + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(this.pieChartData.getPieChartValue(i).getValue(), 1)), this.pieChartData.getCivID(i), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsFlags, aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStats, aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
        protected void drawPieChart(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7) {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, (getPosX() - CFG.PADDING) + i, (getPosY() - CFG.PADDING) + i2, (CFG.PADDING * 2) + getWidth(), (CFG.PADDING * 2) + getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
            super.drawPieChart(spriteBatch, i, i2, z, z2, i3, i4, i5, i6, i7);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(Game.player.iCivID).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorPopulation(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GrowthRate") + ": ", CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getAverageGrowthRate(), 100) + "%", Images.populationGrowth, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public InGame_Court_Stats() {
        boolean z;
        ArrayList arrayList = new ArrayList();
        int i = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int i2 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i3 = CFG.PADDING;
        int i4 = CFG.PADDING;
        int i5 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get(GameValues.court.COUNCIL_NAME), Images.council, i, i4, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        int height2 = i4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int width2 = ImageManager.getImage(Images.gold).getWidth();
        int i6 = CFG.BUTTON_HEIGHT3;
        int i7 = height2 + CFG.PADDING;
        arrayList.add(new AnonymousClass2(Game.player.iCivID, i2, i7, true));
        int width3 = i2 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        int buttonHeight = (ButtonFlag_Formable.getButtonHeight() - CFG.PADDING) / 2;
        int i8 = (width - width3) - i2;
        arrayList.add(new AnonymousClass3(Game.getCiv(Game.player.iCivID).getCivName(), width3, i7, i8, buttonHeight));
        arrayList.add(new AnonymousClass4(Game.lang.get("Provinces") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(Game.player.iCivID).getNumOfProvinces()), Images.provinces, width3, i7 + buttonHeight + CFG.PADDING, i8, buttonHeight, width2));
        int buttonHeight2 = i7 + ButtonFlag_Formable.getButtonHeight() + CFG.PADDING;
        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i, buttonHeight2 - (ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)), i5, ButtonFlag_Formable.getButtonHeight() + (CFG.PADDING * 2)));
        int i9 = buttonHeight2 + CFG.PADDING;
        float numOfProvinces = ((Game.getCiv(Game.player.iCivID).getNumOfProvinces() / Math.max(1, Game.player.playerStats.startingProvinces)) - 1.0f) * 100.0f;
        String str = Game.lang.get("Provinces") + ": ";
        StringBuilder sb = new StringBuilder();
        String str2 = uNBYrZVGzy.JKBUdJwrPZjmw;
        int i10 = 1;
        arrayList.add(new AnonymousClass5(str, sb.append(numOfProvinces > 0.0f ? str2 : "").append(CFG.getPrecision2(numOfProvinces, 100)).append("%").toString(), Images.provinces, i, i9, i5, i6, width2));
        int height3 = i9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass6(Game.lang.get("PlayingTime") + ": ", Game_Calendar.getNumOfDates_ByTurnID(1), Images.time, i, height3, i5, i6, width2));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i11 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i12 = CFG.PADDING + i;
        PieChart_Data pieChart_Data = new PieChart_Data();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Civilization civ = Game.getCiv(Game.player.iCivID);
        int i13 = 0;
        while (i13 < civ.getNumOfProvinces()) {
            int i14 = 0;
            while (i14 < Game.getProvince(civ.getProvinceID(i13)).getPopulationSize()) {
                int size = arrayList2.size() - i10;
                while (true) {
                    if (size < 0) {
                        z = false;
                        break;
                    } else {
                        if (((Integer) arrayList2.get(size)).equals(Integer.valueOf(Game.getProvince(civ.getProvinceID(i13)).getPopulationCivID(i14)))) {
                            arrayList3.set(size, Integer.valueOf(((Integer) arrayList3.get(size)).intValue() + Game.getProvince(civ.getProvinceID(i13)).getPopulationID(i14)));
                            z = true;
                            break;
                        }
                        size--;
                    }
                }
                if (!z) {
                    arrayList2.add(Integer.valueOf(Game.getProvince(civ.getProvinceID(i13)).getPopulationCivID(i14)));
                    arrayList3.add(Integer.valueOf(Game.getProvince(civ.getProvinceID(i13)).getPopulationID(i14)));
                }
                i14++;
                i10 = 1;
            }
            i13++;
            i10 = 1;
        }
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            pieChart_Data.addPieChartValues(new PieChart_Value(((Integer) arrayList2.get(size2)).intValue(), ((Integer) arrayList3.get(size2)).intValue()));
        }
        int i15 = (i11 * 3) + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass7(i12, height4 + CFG.PADDING, i15 - (CFG.PADDING * 2), i15 - (CFG.PADDING * 2), pieChart_Data, null));
        int width4 = arrayList.get(arrayList.size() - 1).getWidth() + (CFG.PADDING * 2) + i12;
        int i16 = (width - i) - width4;
        arrayList.add(new AnonymousClass8(CFG.getNumberWithSpaces("" + Game.getCiv(Game.player.iCivID).getPopulationTotal()), Images.population, width4, height4, i16, i11, ImageManager.getImage(Images.population).getWidth(), 0, CFG.FONT_BOLD_SMALL));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i17 = i11;
        arrayList.add(new AnonymousClass9("" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getAverageGrowthRate(), 100) + "%", Images.populationGrowth, width4, height5, i16, i17, ImageManager.getImage(Images.population).getWidth(), 0));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass10(CFG.getNumberWithSpaces("" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fManpowerMax, 1)), Game_Calendar.IMG_MANPOWER, width4, height6, i16, i17, ImageManager.getImage(Images.population).getWidth(), 0));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        double populationTotal = ((Game.getCiv(Game.player.iCivID).getPopulationTotal() / Math.max(200L, Game.player.playerStats.startingPopulation)) - 1.0f) * 100.0f;
        StringBuilder sb2 = new StringBuilder();
        LanguageManager languageManager = Game.lang;
        String str3 = lJxd.nIfxonACgB;
        arrayList.add(new AnonymousClass11(sb2.append(languageManager.get(str3)).append(": ").toString(), (populationTotal > 0.0d ? str2 : "") + CFG.getPrecision2(populationTotal, 100) + "%", Images.population, i, height7, i5, i6, width2));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + CFG.PADDING;
        int i18 = (i5 * 4) / 10;
        arrayList.add(new Graph(Game.lang.get(str3), Game.lang.get(str3), i, height8, i5, i18, true, 1, Graph.GraphType.PLAYER_POPULATION, false));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        float economyTotal = ((Game.getCiv(Game.player.iCivID).getEconomyTotal() / Math.max(1.0f, Game.player.playerStats.startingEconomy)) - 1.0f) * 100.0f;
        arrayList.add(new AnonymousClass12(Game.lang.get("Economy") + ": ", (economyTotal > 0.0f ? str2 : "") + CFG.getPrecision2(economyTotal, 100) + "%", Game_Calendar.IMG_ECONOMY, i, height9, i5, i6, width2));
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Graph(Game.lang.get("Income"), Game.lang.get("Income"), i, height10, i5, i18, true, 1, Graph.GraphType.PLAYER_INCOME, false));
        int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("Wars") + ": ", "" + CFG.getNumberWithSpaces("" + Game.player.playerStats.numOfWars), Images.war, i, height11, i5, i6, width2));
        int height12 = height11 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("RecruitedArmy") + ", " + Game.lang.get("Regiments") + ": ", "" + CFG.getNumberWithSpaces("" + Game.player.playerStats.recruitedRegiments), Game_Calendar.IMG_MANPOWER, i, height12, i5, i6, width2));
        int height13 = height12 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("Generals") + ": ", "" + CFG.getPrecision2(Game.player.playerStats.recruitedGenerals, 1), Images.general, i, height13, i5, i6, width2));
        int height14 = height13 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("Advisors") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData3.getRecruitedAdvisors(), 1), Images.council, i, height14, i5, i6, width2));
        int height15 = height14 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Provinces"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height15, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height16 = height15 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ConqueredProvinces") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(Game.player.iCivID).eventsData3.getConqueredProvinces()), Images.provinces, i, height16, i5, i6, width2));
        int height17 = height16 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncreasedTaxEfficiency") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData.getIncreasedTaxEfficiency() / 100.0f, 10), Images.tax, i, height17, i5, i6, width2));
        int height18 = height17 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get(XjthpFh.OohasxYHbETjh) + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData.getInvestedInEconomy() / 100.0f, 10), Game_Calendar.IMG_ECONOMY, i, height18, i5, i6, width2));
        int height19 = height18 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("DevelopedInfrastructure") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData.getDevelopedInfrastructure(), 10), Images.infrastructure, i, height19, i5, i6, width2));
        int height20 = height19 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncreasedPopulationGrowthRate") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData.getIncreasedGrowthRate() / 100.0f, 10), Images.populationGrowth, i, height20, i5, i6, width2));
        int height21 = height20 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncreasedManpower") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData.getIncreasedManpower() / 100.0f, 10), Game_Calendar.IMG_MANPOWER_UP, i, height21, i5, i6, width2));
        int height22 = height21 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Buildings"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height22, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height23 = height22 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("BuildingsConstructed") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData2.getBuildingsConstructed(), 1), Images.buildings, i, height23, i5, i6, width2));
        int height24 = height23 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("AdministrativeBuildingsConstructed") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData2.getAdministrativeBuildingsConstructed(), 1), Images.build, i, height24, i5, i6, width2));
        int height25 = height24 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get(fiRhHJntP.ffHcjZ) + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData2.getEconomyBuildingsConstructed(), 1), Game_Calendar.IMG_ECONOMY, i, height25, i5, i6, width2));
        int height26 = height25 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MilitaryBuildingsConstructed") + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData2.getMilitaryBuildingsConstructed(), 1), Game_Calendar.IMG_MANPOWER, i, height26, i5, i6, width2));
        int height27 = height26 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get(ALZmnpZHj.HNtjifn) + ": ", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData2.getCapitalBuildingsConstructed(), 1), Images.capital, i, height27, i5, i6, width2));
        int height28 = height27 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("More"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height28, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height29 = height28 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + CFG.PADDING;
        arrayList.add(new Graph(Game.lang.get("Prestige"), Game.lang.get("Prestige"), i, height29, i5, i18, true, 1, Graph.GraphType.PLAYER_PRESTIGE, false));
        int height30 = height29 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        arrayList.add(new Graph(Game.lang.get("Balance"), Game.lang.get("Balance"), i, height30, i5, i18, true, 1, Graph.GraphType.PLAYER_BALANCE, false));
        int height31 = height30 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int i19 = height + InGame_CourtOptions.menuH;
        int iMin = Math.min(height31, (CFG.GAME_HEIGHT - i19) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height31, iMin)));
        initMenu(null, otherMenuPosX, i19, width, iMin, arrayList, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Statistics"));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - InGame_CourtOptions.menuH) + i2, getWidth(), getHeight() + InGame_CourtOptions.menuH + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameCourt();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        InGame_Court.lTime = CFG.currentTimeMillis;
        InGame_Court.lTime2 = CFG.currentTimeMillis;
    }
}
