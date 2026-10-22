package aoc.kingdoms.lukasz.menusInGame.Civ;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
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
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.InGame_Ranking;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ_Population extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static boolean goBackToRank = false;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$1, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            for (int i = 0; i < this.pieChartData.getPieChartValuesSize() && i < 10; i++) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulation(getCurrent(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG_ID {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulationGrowth(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$12, reason: invalid class name */
    class AnonymousClass12 extends Text_StaticBG_ID {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverManpower(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$13, reason: invalid class name */
    class AnonymousClass13 extends MenuTitleIMG_FlagCenter {
        AnonymousClass13(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_Civ.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Civ_Population.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!InGame_Civ_Population.goBackToRank) {
                Game.menuManager.rebuildInGame_Civ();
            } else {
                InGame_Ranking.sSearch = "";
                Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (InGame_Civ_Population.goBackToRank) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Ranking"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.rank, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(InGame_Civ.iActiveCivID).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorPopulation(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!InGame_Civ_Population.goBackToRank) {
                Game.menuManager.rebuildInGame_Civ();
            } else {
                InGame_Ranking.sSearch = "";
                Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (InGame_Civ_Population.goBackToRank) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Ranking"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.rank, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GrowthRate") + ": ", CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).getAverageGrowthRate(), 100) + "%", Images.populationGrowth, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!InGame_Civ_Population.goBackToRank) {
                Game.menuManager.rebuildInGame_Civ();
            } else {
                InGame_Ranking.sSearch = "";
                Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (InGame_Civ_Population.goBackToRank) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Ranking"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.rank, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).fManpowerMax, 1)), Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Population.iSortID == 0) {
                InGame_Civ_Population.iSortID = 1;
            } else {
                InGame_Civ_Population.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Civ_Population();
            InGame_Civ_Population.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Population.iSortID == 2) {
                InGame_Civ_Population.iSortID = 3;
            } else {
                InGame_Civ_Population.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_Civ_Population();
            InGame_Civ_Population.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(CoLRpi.AkaQdcffHXQWWO) + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Population.iSortID == 4) {
                InGame_Civ_Population.iSortID = 5;
            } else {
                InGame_Civ_Population.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_Civ_Population();
            InGame_Civ_Population.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("GrowthRate"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Population.iSortID == 6) {
                InGame_Civ_Population.iSortID = 7;
            } else {
                InGame_Civ_Population.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_Civ_Population();
            InGame_Civ_Population.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MaximumManpower"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince != getCurrent()) {
                Game.mapCoords.centerToProvinceID(getCurrent());
                Game.setActiveProvinceID(getCurrent());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            } else {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.setActiveProvinceID(getCurrent());
                Game.menuManager.rebuildInGame_ProvinceInfo(true);
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvince(this.id);
        }
    }

    public InGame_Civ_Population() {
        char c;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        ArrayList arrayList = new ArrayList();
        int i6 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i7 = CFG.PADDING * 2;
        int i8 = CFG.PADDING;
        int i9 = Images.boxTitleBORDERWIDTH;
        int i10 = CFG.BUTTON_HEIGHT3;
        if (goBackToRank) {
            if (InGame_Civ.iActiveCivID <= 0) {
                InGame_Civ.iActiveCivID = Game.player.iCivID;
            }
        } else if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
            InGame_Civ.iActiveCivID = Game.getProvince(Game.iActiveProvince).getCivID();
        } else if (InGame_Civ.iActiveCivID <= 0) {
            InGame_Civ.iActiveCivID = Game.player.iCivID;
        }
        int i11 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
        int i12 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i13 = Images.boxTitleBORDERWIDTH;
        int i14 = CFG.PADDING;
        int i15 = CFG.PADDING + i6;
        PieChart_Data pieChart_Data = new PieChart_Data();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Civilization civ = Game.getCiv(InGame_Civ.iActiveCivID);
        for (int i16 = 0; i16 < civ.getNumOfProvinces(); i16++) {
            int i17 = 0;
            while (i17 < Game.getProvince(civ.getProvinceID(i16)).getPopulationSize()) {
                int size = arrayList2.size() - 1;
                while (true) {
                    if (size < 0) {
                        i4 = i12;
                        i5 = i11;
                        z = false;
                        break;
                    }
                    i4 = i12;
                    i5 = i11;
                    if (((Integer) arrayList2.get(size)).equals(Integer.valueOf(Game.getProvince(civ.getProvinceID(i16)).getPopulationCivID(i17)))) {
                        arrayList3.set(size, Integer.valueOf(((Integer) arrayList3.get(size)).intValue() + Game.getProvince(civ.getProvinceID(i16)).getPopulationID(i17)));
                        z = true;
                        break;
                    } else {
                        size--;
                        i12 = i4;
                        i11 = i5;
                    }
                }
                if (!z) {
                    arrayList2.add(Integer.valueOf(Game.getProvince(civ.getProvinceID(i16)).getPopulationCivID(i17)));
                    arrayList3.add(Integer.valueOf(Game.getProvince(civ.getProvinceID(i16)).getPopulationID(i17)));
                }
                i17++;
                i12 = i4;
                i11 = i5;
            }
        }
        int i18 = i12;
        int i19 = i11;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            pieChart_Data.addPieChartValues(new PieChart_Value(((Integer) arrayList2.get(size2)).intValue(), ((Integer) arrayList3.get(size2)).intValue()));
        }
        int i20 = (i10 * 3) + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass1(i15, i7 + CFG.PADDING, i20 - (CFG.PADDING * 2), i20 - (CFG.PADDING * 2), pieChart_Data, null));
        int width2 = arrayList.get(arrayList.size() - 1).getWidth() + (CFG.PADDING * 2) + i15;
        int i21 = (width - i6) - width2;
        arrayList.add(new AnonymousClass2(CFG.getNumberWithSpaces("" + Game.getCiv(InGame_Civ.iActiveCivID).getPopulationTotal()), Images.population, width2, i7, i21, i10, ImageManager.getImage(Images.population).getWidth(), 0, CFG.FONT_BOLD_SMALL));
        int height2 = i7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        String str = "%";
        arrayList.add(new AnonymousClass3("" + CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).getAverageGrowthRate(), 100) + "%", Images.populationGrowth, width2, height2, i21, i10, ImageManager.getImage(Images.population).getWidth(), 0));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass4(CFG.getNumberWithSpaces("" + CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).fManpowerMax, 1)), Game_Calendar.IMG_MANPOWER, width2, height3, i21, i10, ImageManager.getImage(Images.population).getWidth(), 0));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i22 = Images.boxTitleBORDERWIDTH;
        int i23 = iSortID;
        arrayList.add(new AnonymousClass5(i23 == 0 || i23 == 1, i23 == 1, Game.lang.get("Name"), -1, i22, height4, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = i22 + arrayList.get(arrayList.size() - 1).getWidth();
        int i24 = iSortID;
        int i25 = 3;
        String str2 = "Population";
        arrayList.add(new AnonymousClass6(i24 == 2 || i24 == 3, i24 == 3, Game.lang.get("Population"), -1, width3, height4, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i26 = iSortID;
        int i27 = 4;
        arrayList.add(new AnonymousClass7(i26 == 4 || i26 == 5, i26 == 5, Game.lang.get(uiwPYaNhJS.QICgLXjf), -1, width4, height4, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = width4 + arrayList.get(arrayList.size() - 1).getWidth();
        int i28 = iSortID;
        arrayList.add(new AnonymousClass8(i28 == 6 || i28 == 7, i28 == 7, Game.lang.get("Manpower"), -1, width5, height4, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i29 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
        int i30 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
        ArrayList arrayList4 = new ArrayList();
        for (int i31 = 0; i31 < Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces(); i31++) {
            if (!Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i31)).isOccupied()) {
                arrayList4.add(Integer.valueOf(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i31)));
            }
        }
        while (arrayList4.size() > 0) {
            int i32 = iSortID;
            if (i32 == 0) {
                i3 = 0;
                for (int i33 = 1; i33 < arrayList4.size(); i33++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList4.get(i3)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList4.get(i33)).intValue()).getProvinceName())) {
                        i3 = i33;
                    }
                }
            } else if (i32 == 1) {
                i3 = 0;
                for (int i34 = 1; i34 < arrayList4.size(); i34++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList4.get(i34)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList4.get(i3)).intValue()).getProvinceName())) {
                        i3 = i34;
                    }
                }
            } else if (i32 == 2) {
                i3 = 0;
                for (int i35 = 1; i35 < arrayList4.size(); i35++) {
                    if (Game.getProvince(((Integer) arrayList4.get(i3)).intValue()).getPopulationTotal() < Game.getProvince(((Integer) arrayList4.get(i35)).intValue()).getPopulationTotal()) {
                        i3 = i35;
                    }
                }
            } else if (i32 == i25) {
                i3 = 0;
                for (int i36 = 1; i36 < arrayList4.size(); i36++) {
                    if (Game.getProvince(((Integer) arrayList4.get(i3)).intValue()).getPopulationTotal() > Game.getProvince(((Integer) arrayList4.get(i36)).intValue()).getPopulationTotal()) {
                        i3 = i36;
                    }
                }
            } else if (i32 == i27) {
                i3 = 0;
                for (int i37 = 1; i37 < arrayList4.size(); i37++) {
                    if (Game.getProvince(((Integer) arrayList4.get(i3)).intValue()).getGrowthRateWithBonuses() < Game.getProvince(((Integer) arrayList4.get(i37)).intValue()).getGrowthRateWithBonuses()) {
                        i3 = i37;
                    }
                }
            } else {
                if (i32 == 5) {
                    i3 = 0;
                    for (int i38 = 1; i38 < arrayList4.size(); i38++) {
                        if (Game.getProvince(((Integer) arrayList4.get(i3)).intValue()).getGrowthRateWithBonuses() > Game.getProvince(((Integer) arrayList4.get(i38)).intValue()).getGrowthRateWithBonuses()) {
                            i3 = i38;
                        }
                    }
                } else {
                    c = 6;
                    if (i32 == 6) {
                        i2 = 0;
                        for (int i39 = 1; i39 < arrayList4.size(); i39++) {
                            if (Game.getManpowerMaxFromProvinceManpowerLvl(((Integer) arrayList4.get(i2)).intValue()) < Game.getManpowerMaxFromProvinceManpowerLvl(((Integer) arrayList4.get(i39)).intValue())) {
                                i2 = i39;
                            }
                        }
                    } else if (i32 == 7) {
                        i2 = 0;
                        for (int i40 = 1; i40 < arrayList4.size(); i40++) {
                            if (Game.getManpowerMaxFromProvinceManpowerLvl(((Integer) arrayList4.get(i2)).intValue()) > Game.getManpowerMaxFromProvinceManpowerLvl(((Integer) arrayList4.get(i40)).intValue())) {
                                i2 = i40;
                            }
                        }
                    } else {
                        i = 0;
                    }
                    i = i2;
                }
                String str3 = str;
                int i41 = width;
                int i42 = i30;
                ArrayList arrayList5 = arrayList4;
                int i43 = i;
                int i44 = i25;
                arrayList.add(new AnonymousClass9(Game.getProvince(((Integer) arrayList4.get(i)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i6, height5, i29, i10, ((Integer) arrayList4.get(i)).intValue()));
                int width6 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i6;
                arrayList.add(new AnonymousClass10("" + CFG.getNumberWithSpaces("" + Game.getProvince(((Integer) arrayList5.get(i43)).intValue()).getPopulationTotal()), CFG.FONT_REGULAR_SMALL, -1, width6, height5, i29, i10, ((Integer) arrayList5.get(i43)).intValue()));
                int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                int i45 = height5;
                arrayList.add(new AnonymousClass11("" + CFG.getPrecision2(Game.getProvince(((Integer) arrayList5.get(i43)).intValue()).getGrowthRateWithBonuses(), 100) + str3, CFG.FONT_REGULAR_SMALL, -1, width7, i45, i42, i10, ((Integer) arrayList5.get(i43)).intValue()));
                arrayList.add(new AnonymousClass12("" + Game.getManpowerMaxFromProvinceManpowerLvl(((Integer) arrayList5.get(i43)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i45, i42, i10, ((Integer) arrayList5.get(i43)).intValue()));
                height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList5.remove(i43);
                arrayList4 = arrayList5;
                i27 = 4;
                i25 = i44;
                str = str3;
                width = i41;
                i30 = i42;
                str2 = str2;
            }
            i = i3;
            c = 6;
            String str4 = str;
            int i46 = width;
            int i47 = i30;
            ArrayList arrayList6 = arrayList4;
            int i48 = i;
            int i49 = i25;
            arrayList.add(new AnonymousClass9(Game.getProvince(((Integer) arrayList4.get(i)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i6, height5, i29, i10, ((Integer) arrayList4.get(i)).intValue()));
            int width8 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i6;
            arrayList.add(new AnonymousClass10("" + CFG.getNumberWithSpaces("" + Game.getProvince(((Integer) arrayList6.get(i48)).intValue()).getPopulationTotal()), CFG.FONT_REGULAR_SMALL, -1, width8, height5, i29, i10, ((Integer) arrayList6.get(i48)).intValue()));
            int width9 = width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int i410 = height5;
            arrayList.add(new AnonymousClass11("" + CFG.getPrecision2(Game.getProvince(((Integer) arrayList6.get(i48)).intValue()).getGrowthRateWithBonuses(), 100) + str4, CFG.FONT_REGULAR_SMALL, -1, width9, i410, i47, i10, ((Integer) arrayList6.get(i48)).intValue()));
            arrayList.add(new AnonymousClass12("" + Game.getManpowerMaxFromProvinceManpowerLvl(((Integer) arrayList6.get(i48)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i410, i47, i10, ((Integer) arrayList6.get(i48)).intValue()));
            height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList6.remove(i48);
            arrayList4 = arrayList6;
            i27 = 4;
            i25 = i49;
            str = str4;
            width = i46;
            i30 = i47;
            str2 = str2;
        }
        int iMin = Math.min(height5, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height5, iMin)));
        initMenu(new AnonymousClass13(Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Game.lang.get(str2), false, false, Images.title500), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
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
