package aoc.kingdoms.lukasz.menusInGame.Civ;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusReligion;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsReligion;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ_Provinces extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$1, reason: invalid class name */
    class AnonymousClass1 extends PieChart_Data {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data
        public float getPieChartValue_ColorB(int i) {
            return Game.religionManager.getReligion(getPieChartValue(i).getDataID()).Color[2];
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data
        public float getPieChartValue_ColorG(int i) {
            return Game.religionManager.getReligion(getPieChartValue(i).getDataID()).Color[1];
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data
        public float getPieChartValue_ColorR(int i) {
            return Game.religionManager.getReligion(getPieChartValue(i).getDataID()).Color[0];
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvinceIncome(getCurrent(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG_ID {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverLoot(getCurrent(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$12, reason: invalid class name */
    class AnonymousClass12 extends Text_StaticBG_ID {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverReligion(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$13, reason: invalid class name */
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
            return InGame_Civ_Provinces.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$2, reason: invalid class name */
    class AnonymousClass2 extends PieChart_WithStatsReligion {
        AnonymousClass2(int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, MenuElement_Hover menuElement_Hover) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(InGame_Civ.iActiveCivID).getCivName() + ": ", Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Religion"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            for (int i = 0; i < this.pieChartData.getPieChartValuesSize() && i < 10; i++) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusReligion(Game.religionManager.getReligion(this.pieChartData.getCivID(i)).Name + ": ", CFG.getPrecision2(this.pieChartData.getPieChartValue(i).getPercentage(), 10) + "%", this.pieChartData.getCivID(i), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsReligion, aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStats, aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
        protected void drawPieChart(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7) {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, (getPosX() - CFG.PADDING) + i, (getPosY() - CFG.PADDING) + i2, (CFG.PADDING * 2) + getWidth(), (CFG.PADDING * 2) + getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
            super.drawPieChart(spriteBatch, i, i2, z, z2, i3, i4, i5, i6, i7);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$3, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces()), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TotalLoot") + ": ", CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).getTotalLoot(), 100), Images.loot, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Provinces.iSortID == 0) {
                InGame_Civ_Provinces.iSortID = 1;
            } else {
                InGame_Civ_Provinces.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Civ_Provinces();
            InGame_Civ_Provinces.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Provinces.iSortID == 2) {
                InGame_Civ_Provinces.iSortID = 3;
            } else {
                InGame_Civ_Provinces.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_Civ_Provinces();
            InGame_Civ_Provinces.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Income"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Provinces.iSortID == 4) {
                InGame_Civ_Provinces.iSortID = 5;
            } else {
                InGame_Civ_Provinces.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_Civ_Provinces();
            InGame_Civ_Provinces.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Loot"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Provinces.iSortID == 6) {
                InGame_Civ_Provinces.iSortID = 7;
            } else {
                InGame_Civ_Provinces.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_Civ_Provinces();
            InGame_Civ_Provinces.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Religion"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces$9, reason: invalid class name */
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

    public InGame_Civ_Provinces() {
        int i;
        int i2;
        int i3;
        ArrayList arrayList = new ArrayList();
        int i4 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i5 = CFG.PADDING * 2;
        int i6 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int i7 = CFG.BUTTON_HEIGHT3;
        if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
            InGame_Civ.iActiveCivID = Game.getProvince(Game.iActiveProvince).getCivID();
        } else if (InGame_Civ.iActiveCivID <= 0) {
            InGame_Civ.iActiveCivID = Game.player.iCivID;
        }
        int i8 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.25f);
        int i9 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.25f);
        int i10 = Images.boxTitleBORDERWIDTH;
        int i11 = CFG.PADDING;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i12 = 0; i12 < Game.religionManager.getReligionsSize(); i12++) {
            arrayList2.add(Integer.valueOf(i12));
            arrayList3.add(0L);
        }
        int i13 = 0;
        while (i13 < Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces()) {
            arrayList3.set(Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i13)).getReligion(), Long.valueOf(((Long) arrayList3.get(Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i13)).getReligion())).longValue() + ((long) Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i13)).getPopulationTotal())));
            i13++;
            otherMenuPosX_2 = otherMenuPosX_2;
        }
        int i14 = otherMenuPosX_2;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        int size = arrayList2.size() - 1;
        while (size >= 0) {
            if (((Long) arrayList3.get(size)).longValue() > 0.001f) {
                anonymousClass1.addPieChartValues(new PieChart_Value(((Integer) arrayList2.get(size)).intValue(), ((Long) arrayList3.get(size)).longValue()));
            }
            size--;
            i8 = i8;
            i9 = i9;
        }
        int i15 = i9;
        int i16 = i8;
        int i17 = (CFG.BUTTON_HEIGHT3 * 2) + CFG.PADDING;
        arrayList.add(new AnonymousClass2(i6, i5 + CFG.PADDING, i17 - (CFG.PADDING * 2), i17 - (CFG.PADDING * 2), anonymousClass1, null));
        int posX = arrayList.get(arrayList.size() - 1).getPosX() + arrayList.get(arrayList.size() - 1).getWidth() + (CFG.PADDING * 2);
        int i18 = (width - i4) - posX;
        int height2 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 3);
        int i19 = 3;
        arrayList.add(new AnonymousClass3(Game.lang.get("Provinces") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces()), Images.provinces, posX, i5, i18, i7, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height3 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float totalLoot = Game.getCiv(InGame_Civ.iActiveCivID).getTotalLoot();
        String str = "";
        arrayList.add(new AnonymousClass4(Game.lang.get("TotalLoot") + ": ", str + CFG.getPrecision2(totalLoot, totalLoot < 10.0f ? 100 : totalLoot < 100.0f ? 10 : 1), Images.loot, posX, height3, i18, i7, ImageManager.getImage(Images.battleWidth).getWidth()));
        int i20 = Images.boxTitleBORDERWIDTH;
        int i21 = iSortID;
        arrayList.add(new AnonymousClass5(i21 == 0 || i21 == 1, i21 == 1, Game.lang.get("Name"), -1, i20, height2, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i20 + arrayList.get(arrayList.size() - 1).getWidth();
        int i22 = iSortID;
        arrayList.add(new AnonymousClass6(i22 == 2 || i22 == 3, i22 == 3, Game.lang.get("Income"), -1, width2, height2, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i23 = iSortID;
        int i24 = 4;
        int i25 = 5;
        arrayList.add(new AnonymousClass7(i23 == 4 || i23 == 5, i23 == 5, Game.lang.get("Loot"), -1, width3, height2, i15, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i26 = iSortID;
        arrayList.add(new AnonymousClass8(i26 == 6 || i26 == 7, i26 == 7, Game.lang.get("Religion"), -1, width4, height2, i15, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i27 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.25f);
        int i28 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.25f);
        ArrayList arrayList4 = new ArrayList();
        for (int i29 = 0; i29 < Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces(); i29++) {
            if (!Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i29)).isOccupied()) {
                arrayList4.add(Integer.valueOf(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i29)));
            }
        }
        int height5 = height4;
        while (arrayList4.size() > 0) {
            int i30 = iSortID;
            if (i30 == 0) {
                int i31 = 0;
                for (int i32 = 1; i32 < arrayList4.size(); i32++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList4.get(i31)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList4.get(i32)).intValue()).getProvinceName())) {
                        i31 = i32;
                    }
                }
                i = i31;
            } else {
                if (i30 == 1) {
                    i3 = 0;
                    for (int i33 = 1; i33 < arrayList4.size(); i33++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList4.get(i33)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList4.get(i3)).intValue()).getProvinceName())) {
                            i3 = i33;
                        }
                    }
                } else if (i30 == 2) {
                    i3 = 0;
                    for (int i34 = 1; i34 < arrayList4.size(); i34++) {
                        if (Game.getProvince(((Integer) arrayList4.get(i3)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList4.get(i3)).intValue()).fProvinceMaintenance < Game.getProvince(((Integer) arrayList4.get(i34)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList4.get(i34)).intValue()).fProvinceMaintenance) {
                            i3 = i34;
                        }
                    }
                } else {
                    if (i30 == i19) {
                        i2 = 0;
                        for (int i35 = 1; i35 < arrayList4.size(); i35++) {
                            if (Game.getProvince(((Integer) arrayList4.get(i2)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList4.get(i2)).intValue()).fProvinceMaintenance > Game.getProvince(((Integer) arrayList4.get(i35)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList4.get(i35)).intValue()).fProvinceMaintenance) {
                                i2 = i35;
                            }
                        }
                    } else if (i30 == i24) {
                        i2 = 0;
                        for (int i36 = 1; i36 < arrayList4.size(); i36++) {
                            if (Game.getLootValue(((Integer) arrayList4.get(i2)).intValue()) < Game.getLootValue(((Integer) arrayList4.get(i36)).intValue())) {
                                i2 = i36;
                            }
                        }
                    } else if (i30 == i25) {
                        i2 = 0;
                        for (int i37 = 1; i37 < arrayList4.size(); i37++) {
                            if (Game.getLootValue(((Integer) arrayList4.get(i2)).intValue()) > Game.getLootValue(((Integer) arrayList4.get(i37)).intValue())) {
                                i2 = i37;
                            }
                        }
                    } else if (i30 == 6) {
                        i2 = 0;
                        for (int i38 = 1; i38 < arrayList4.size(); i38++) {
                            if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(Game.getProvince(((Integer) arrayList4.get(i2)).intValue()).getReligion()).Name, Game.religionManager.getReligion(Game.getProvince(((Integer) arrayList4.get(i38)).intValue()).getReligion()).Name)) {
                                i2 = i38;
                            }
                        }
                    } else if (i30 == 7) {
                        i2 = 0;
                        for (int i39 = 1; i39 < arrayList4.size(); i39++) {
                            if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(Game.getProvince(((Integer) arrayList4.get(i39)).intValue()).getReligion()).Name, Game.religionManager.getReligion(Game.getProvince(((Integer) arrayList4.get(i2)).intValue()).getReligion()).Name)) {
                                i2 = i39;
                            }
                        }
                    } else {
                        i = 0;
                    }
                    i = i2;
                }
                i = i3;
            }
            int i40 = height5;
            String str2 = str;
            int i41 = width;
            ArrayList arrayList5 = arrayList4;
            int i42 = i25;
            int i43 = i24;
            int i44 = i28;
            arrayList.add(new AnonymousClass9(Game.getProvince(((Integer) arrayList4.get(i)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i4, i40, i27, i7, ((Integer) arrayList4.get(i)).intValue()));
            int width5 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i4;
            float provinceIncome = Game.getProvince(((Integer) arrayList5.get(i)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList5.get(i)).intValue()).fProvinceMaintenance;
            arrayList.add(new AnonymousClass10(str2 + CFG.getPrecision2(provinceIncome, provinceIncome < 10.0f ? 100 : provinceIncome < 100.0f ? 10 : 1), CFG.FONT_REGULAR_SMALL, -1, width5, i40, i27, i7, ((Integer) arrayList5.get(i)).intValue()));
            int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass11(str2 + CFG.getPrecision2(Game.getLootValue(((Integer) arrayList5.get(i)).intValue()), 100), CFG.FONT_REGULAR_SMALL, -1, width6, i40, i44, i7, ((Integer) arrayList5.get(i)).intValue()));
            arrayList.add(new AnonymousClass12(str2 + Game.religionManager.getReligion(Game.getProvince(((Integer) arrayList5.get(i)).intValue()).getReligion()).Name, CFG.FONT_REGULAR_SMALL, -1, width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i40, i44, i7, ((Integer) arrayList5.get(i)).intValue()));
            height5 = i40 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList5.remove(i);
            arrayList4 = arrayList5;
            str = str2;
            i25 = i42;
            i24 = i43;
            i28 = i44;
            width = i41;
            i19 = 3;
        }
        int i45 = height5;
        int iMin = Math.min(i45, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(i45, iMin)));
        initMenu(new AnonymousClass13(Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Game.lang.get("Provinces"), false, false, Images.title500), i14, height, width, iMin, arrayList, false, true);
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
