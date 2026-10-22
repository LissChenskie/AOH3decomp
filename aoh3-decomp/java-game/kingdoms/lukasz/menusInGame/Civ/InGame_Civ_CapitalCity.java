package aoc.kingdoms.lukasz.menusInGame.Civ;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsFlags;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ_CapitalCity extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID = 4;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_CapitalCity$1, reason: invalid class name */
    class AnonymousClass1 extends PieChart_WithStatsFlags {
        AnonymousClass1(int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, MenuElement_Hover menuElement_Hover) {
            super(i, i2, i3, i4, pieChart_Data, menuElement_Hover);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
        protected float animationPerc() {
            return Math.min(1.0f, (CFG.currentTimeMillis - InGame_ProvinceInfo.lTime) / 150.0f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Capital") + ": " + Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            for (int i = 0; i < this.pieChartData.getPieChartValuesSize() && i < 10; i++) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.pieChartData.getCivID(i)).getCivName() + ": ", "" + CFG.getPrecision2(this.pieChartData.getPieChartValue(i).getPercentage(), 5) + "%", this.pieChartData.getCivID(i), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_CapitalCity$10, reason: invalid class name */
    class AnonymousClass10 extends MenuTitleIMG {
        AnonymousClass10(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Civ_CapitalCity.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_CapitalCity$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass2(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Civilizations") + ": ", this.sText2, Images.council, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_CapitalCity$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumLevelOfCapitalCity") + ": ", this.sText2, Images.capital, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_CapitalCity$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_CapitalCity.iSortID == 0) {
                InGame_Civ_CapitalCity.iSortID = 1;
            } else {
                InGame_Civ_CapitalCity.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Civ_CapitalCity();
            InGame_Civ_CapitalCity.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Name"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_CapitalCity$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_CapitalCity.iSortID == 2) {
                InGame_Civ_CapitalCity.iSortID = 3;
            } else {
                InGame_Civ_CapitalCity.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_Civ_CapitalCity();
            InGame_Civ_CapitalCity.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Capital") + ": " + Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_CapitalCity$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_CapitalCity.iSortID == 4) {
                InGame_Civ_CapitalCity.iSortID = 5;
            } else {
                InGame_Civ_CapitalCity.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_Civ_CapitalCity();
            InGame_Civ_CapitalCity.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("CapitalCity") + ": " + Game.lang.get("Level"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_CapitalCity$7, reason: invalid class name */
    class AnonymousClass7 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getCivID() != getCurrent()) {
                return;
            }
            if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() == getCurrent()) {
                Game.menuManager.rebuildInGame_Civ();
                return;
            }
            Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
            Game.setActiveProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_CapitalCity$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_ID {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.id).getCivName(), "", this.id, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Capital") + ", " + Game.lang.get("Population") + ": ", getText(), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_CapitalCity$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.id).getCivName(), "", this.id, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CapitalCity") + ": ", Game.lang.get(uiwPYaNhJS.hEjO) + ": " + getText(), Images.capital, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public InGame_Civ_CapitalCity() {
        ArrayList arrayList;
        ArrayList arrayList2;
        int i;
        int i2;
        int i3;
        int i4;
        ArrayList arrayList3 = new ArrayList();
        int i5 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i6 = CFG.PADDING * 2;
        int i7 = CFG.PADDING;
        int i8 = Images.boxTitleBORDERWIDTH;
        int i9 = CFG.BUTTON_HEIGHT3;
        if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
            InGame_Civ.iActiveCivID = Game.getProvince(Game.iActiveProvince).getCivID();
        } else if (InGame_Civ.iActiveCivID <= 0) {
            InGame_Civ.iActiveCivID = Game.player.iCivID;
        }
        int i10 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.4f);
        int i11 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
        int i12 = CFG.PADDING + i5;
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        PieChart_Data pieChart_Data = new PieChart_Data();
        int i13 = 0;
        int capitalLevel = 0;
        while (i13 < Game.getCivsSize()) {
            if (Game.getCiv(i13).getNumOfProvinces() > 0) {
                arrayList4.add(Integer.valueOf(i13));
                i4 = otherMenuPosX_2;
                arrayList5.add(Long.valueOf(Game.getProvince(Game.getCiv(i13).getCapitalProvinceID()).getPopulationTotal()));
                pieChart_Data.addPieChartValues(new PieChart_Value(i13, Game.getProvince(Game.getCiv(i13).getCapitalProvinceID()).getPopulationTotal()));
                if (Game.getCiv(i13).getCapitalLevel() > capitalLevel) {
                    capitalLevel = Game.getCiv(i13).getCapitalLevel();
                }
            } else {
                i4 = otherMenuPosX_2;
            }
            i13++;
            otherMenuPosX_2 = i4;
        }
        int i14 = otherMenuPosX_2;
        int i15 = (i9 * 2) + CFG.PADDING;
        arrayList3.add(new AnonymousClass1(i12, i6 + CFG.PADDING, i15 - (CFG.PADDING * 2), i15 - (CFG.PADDING * 2), pieChart_Data, null));
        int width2 = arrayList3.get(arrayList3.size() - 1).getWidth() + (CFG.PADDING * 2) + i12;
        int i16 = (width - i5) - width2;
        ArrayList arrayList6 = arrayList5;
        ArrayList arrayList7 = arrayList4;
        arrayList3.add(new AnonymousClass2(Game.lang.get("Civilizations") + ": ", "" + arrayList4.size(), Images.council, width2, i6, i16, i9, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height2 = i6 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        arrayList3.add(new AnonymousClass3(Game.lang.get("Max") + ": ", "" + capitalLevel, Images.capital, width2, height2, i16, i9, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height3 = height2 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        int i17 = Images.boxTitleBORDERWIDTH;
        int i18 = iSortID;
        arrayList3.add(new AnonymousClass4(i18 == 0 || i18 == 1, i18 == 1, Game.lang.get("Name"), -1, i17, height3, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = i17 + arrayList3.get(arrayList3.size() - 1).getWidth();
        int i19 = iSortID;
        int i20 = 3;
        arrayList3.add(new AnonymousClass5(i19 == 2 || i19 == 3, i19 == 3, Game.lang.get("Capital") + ": " + Game.lang.get("Population"), -1, width3, height3, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList3.get(arrayList3.size() - 1).getWidth();
        int i21 = iSortID;
        int i22 = 4;
        int i23 = 5;
        String str = "CapitalCity";
        arrayList3.add(new AnonymousClass6(i21 == 4 || i21 == 5, i21 == 5, Game.lang.get("CapitalCity") + ": " + Game.lang.get("Level"), -1, width4, height3, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = height3 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        int i24 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.4f);
        int i25 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
        while (!arrayList7.isEmpty()) {
            int i26 = iSortID;
            if (i26 == 0) {
                int i27 = 1;
                i3 = 0;
                while (true) {
                    arrayList = arrayList7;
                    if (i27 >= arrayList7.size()) {
                        break;
                    }
                    if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i3)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i27)).intValue()).getCivName())) {
                        i3 = i27;
                    }
                    i27++;
                    arrayList7 = arrayList;
                }
            } else {
                arrayList = arrayList7;
                if (i26 == 1) {
                    i3 = 0;
                    for (int i28 = 1; i28 < arrayList.size(); i28++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i28)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i3)).intValue()).getCivName())) {
                            i3 = i28;
                        }
                    }
                } else {
                    if (i26 == 2) {
                        int i29 = 1;
                        i2 = 0;
                        while (true) {
                            arrayList2 = arrayList6;
                            if (i29 >= arrayList.size()) {
                                break;
                            }
                            if (((Long) arrayList2.get(i2)).longValue() < ((Long) arrayList2.get(i29)).longValue()) {
                                i2 = i29;
                            }
                            i29++;
                            arrayList6 = arrayList2;
                        }
                    } else {
                        arrayList2 = arrayList6;
                        if (i26 == i20) {
                            i2 = 0;
                            for (int i30 = 1; i30 < arrayList.size(); i30++) {
                                if (((Long) arrayList2.get(i2)).longValue() > ((Long) arrayList2.get(i30)).longValue()) {
                                    i2 = i30;
                                }
                            }
                        } else if (i26 == i22) {
                            i2 = 0;
                            for (int i31 = 1; i31 < arrayList.size(); i31++) {
                                if (Game.getCiv(((Integer) arrayList.get(i2)).intValue()).getCapitalLevel() < Game.getCiv(((Integer) arrayList.get(i31)).intValue()).getCapitalLevel()) {
                                    i2 = i31;
                                }
                            }
                        } else if (i26 == i23) {
                            i2 = 0;
                            for (int i32 = 1; i32 < arrayList.size(); i32++) {
                                if (Game.getCiv(((Integer) arrayList.get(i2)).intValue()).getCapitalLevel() > Game.getCiv(((Integer) arrayList.get(i32)).intValue()).getCapitalLevel()) {
                                    i2 = i32;
                                }
                            }
                        } else {
                            i = 0;
                        }
                    }
                    i = i2;
                }
                ArrayList arrayList8 = arrayList2;
                int i33 = i25;
                ArrayList arrayList9 = arrayList;
                int i34 = i23;
                arrayList3.add(new AnonymousClass7(Game.getCiv(((Integer) arrayList.get(i)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i5, height4, i24, i9, ((Integer) arrayList.get(i)).intValue()));
                int width5 = i5 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                int i35 = height4;
                arrayList3.add(new AnonymousClass8("" + CFG.getNumberWithSpaces("" + arrayList8.get(i)), CFG.FONT_REGULAR_SMALL, -1, width5, i35, i33, i9, ((Integer) arrayList9.get(i)).intValue()));
                arrayList3.add(new AnonymousClass9("" + Game.getCiv(((Integer) arrayList9.get(i)).intValue()).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(((Integer) arrayList9.get(i)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width5 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, i35, i33, i9, ((Integer) arrayList9.get(i)).intValue()));
                height4 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                arrayList9.remove(i);
                arrayList8.remove(i);
                arrayList6 = arrayList8;
                arrayList7 = arrayList9;
                i25 = i33;
                i23 = i34;
                i20 = i20;
                str = str;
                i22 = 4;
            }
            i = i3;
            arrayList2 = arrayList6;
            ArrayList arrayList10 = arrayList2;
            int i36 = i25;
            ArrayList arrayList11 = arrayList;
            int i37 = i23;
            arrayList3.add(new AnonymousClass7(Game.getCiv(((Integer) arrayList.get(i)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i5, height4, i24, i9, ((Integer) arrayList.get(i)).intValue()));
            int width6 = i5 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
            int i38 = height4;
            arrayList3.add(new AnonymousClass8("" + CFG.getNumberWithSpaces("" + arrayList10.get(i)), CFG.FONT_REGULAR_SMALL, -1, width6, i38, i36, i9, ((Integer) arrayList11.get(i)).intValue()));
            arrayList3.add(new AnonymousClass9("" + Game.getCiv(((Integer) arrayList11.get(i)).intValue()).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(((Integer) arrayList11.get(i)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width6 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, i38, i36, i9, ((Integer) arrayList11.get(i)).intValue()));
            height4 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
            arrayList11.remove(i);
            arrayList10.remove(i);
            arrayList6 = arrayList10;
            arrayList7 = arrayList11;
            i25 = i36;
            i23 = i37;
            i20 = i20;
            str = str;
            i22 = 4;
        }
        int iMin = Math.min(height4, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList3.add(new Empty(0, 0, width, Math.max(height4, iMin)));
        initMenu(new AnonymousClass10(Game.lang.get(str), false, false, Images.title500), i14, height, width, iMin, arrayList3, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        InGame_Civ.actionOnClose();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civInfoOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
    }
}
