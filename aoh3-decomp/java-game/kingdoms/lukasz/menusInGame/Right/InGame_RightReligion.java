package aoc.kingdoms.lukasz.menusInGame.Right;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Religion;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical_Data_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusReligion;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsReligion;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_Center;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RightReligion extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iReligionID = -1;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$10, reason: invalid class name */
    class AnonymousClass10 extends Graph_Vertical {
        AnonymousClass10(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$11, reason: invalid class name */
    class AnonymousClass11 extends Text_TitleBlueSort {
        AnonymousClass11(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightReligion.iSortID == 0) {
                InGame_RightReligion.iSortID = 1;
            } else {
                InGame_RightReligion.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RightReligion();
            InGame_RightReligion.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$12, reason: invalid class name */
    class AnonymousClass12 extends Text_TitleBlueSort {
        AnonymousClass12(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightReligion.iSortID == 2) {
                InGame_RightReligion.iSortID = 3;
            } else {
                InGame_RightReligion.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RightReligion();
            InGame_RightReligion.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$13, reason: invalid class name */
    class AnonymousClass13 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                Game.menuManager.rebuildInGame_ProvinceInfo(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(getCurrent(), Game.religionManager.getReligion(Game.getCiv(getCurrent()).getReligionID()).Name));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$14, reason: invalid class name */
    class AnonymousClass14 extends Text_StaticBG {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", getText(), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$15, reason: invalid class name */
    class AnonymousClass15 extends MenuTitleIMG {
        AnonymousClass15(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            ImageManager.getImage(this.imageID).draw2(spriteBatch, i, i2 - getHeight(), i3, getHeight());
            drawGradient(spriteBatch, i, i2, i3, status);
            drawText(spriteBatch, i + (Images.boxTitleBORDERWIDTH / 2), i2, i3, status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_RightReligion.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$2, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game.map.lMaps.get(Game.map.iActiveMapID).mapData.Name) + ": ", Colors.HOVER_LEFT));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Religion {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RightReligion.iReligionID = this.imageID;
            Game.menuManager.rebuildInGame_RightReligion();
            InGame_RightReligion.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Religion, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Religion") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.religionManager.getReligion(this.imageID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightReligion.iSortID == 0) {
                InGame_RightReligion.iSortID = 1;
            } else {
                InGame_RightReligion.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RightReligion();
            InGame_RightReligion.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightReligion.iSortID == 2) {
                InGame_RightReligion.iSortID = 3;
            } else {
                InGame_RightReligion.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RightReligion();
            InGame_RightReligion.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(kfGnwGN.EfpZijXgQdnTZX), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonReligion2 {
        AnonymousClass6(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RightReligion.iReligionID = getCurrent();
            Game.menuManager.rebuildInGame_RightReligion();
            InGame_RightReligion.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(LBhZogys.kvAj) + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.religionManager.getReligion(this.religionID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$7, reason: invalid class name */
    class AnonymousClass7 extends Text_StaticBG {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(uiwPYaNhJS.UnqpZJJS) + ": ", getText(), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_ID_FlagCiv_Center {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                Game.menuManager.rebuildInGame_ProvinceInfo(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(getCurrent(), Game.religionManager.getReligion(Game.getCiv(getCurrent()).getReligionID()).Name));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(MQYGMkZOAcS.iVRmXTtshMz) + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonReligion2 {
        AnonymousClass9(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RightReligion.iReligionID = -1;
            Game.menuManager.rebuildInGame_RightReligion();
            InGame_RightReligion.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Religion"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0422  */
    /* JADX WARN: Code duplicated, block: B:103:0x044c  */
    /* JADX WARN: Code duplicated, block: B:105:0x0450  */
    /* JADX WARN: Code duplicated, block: B:107:0x0453  */
    /* JADX WARN: Code duplicated, block: B:110:0x045e  */
    /* JADX WARN: Code duplicated, block: B:112:0x0476  */
    /* JADX WARN: Code duplicated, block: B:114:0x047c  */
    /* JADX WARN: Code duplicated, block: B:116:0x0481  */
    /* JADX WARN: Code duplicated, block: B:119:0x048a  */
    /* JADX WARN: Code duplicated, block: B:121:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:124:0x04a8  */
    /* JADX WARN: Code duplicated, block: B:128:0x051a A[LOOP:7: B:126:0x0514->B:128:0x051a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:132:0x052c  */
    /* JADX WARN: Code duplicated, block: B:134:0x0536  */
    /* JADX WARN: Code duplicated, block: B:141:0x0580  */
    /* JADX WARN: Code duplicated, block: B:143:0x0596  */
    /* JADX WARN: Code duplicated, block: B:146:0x059c  */
    /* JADX WARN: Code duplicated, block: B:147:0x05c9  */
    /* JADX WARN: Code duplicated, block: B:168:0x06e6  */
    /* JADX WARN: Code duplicated, block: B:169:0x06e8  */
    /* JADX WARN: Code duplicated, block: B:173:0x072e A[LOOP:14: B:171:0x0728->B:173:0x072e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:177:0x0747  */
    /* JADX WARN: Code duplicated, block: B:185:0x0792  */
    /* JADX WARN: Code duplicated, block: B:187:0x079e  */
    /* JADX WARN: Code duplicated, block: B:191:0x07ad  */
    /* JADX WARN: Code duplicated, block: B:194:0x07b4  */
    /* JADX WARN: Code duplicated, block: B:196:0x07b8  */
    /* JADX WARN: Code duplicated, block: B:199:0x07c1  */
    /* JADX WARN: Code duplicated, block: B:201:0x07eb  */
    /* JADX WARN: Code duplicated, block: B:204:0x07f2  */
    /* JADX WARN: Code duplicated, block: B:206:0x07f5  */
    /* JADX WARN: Code duplicated, block: B:209:0x07fe  */
    /* JADX WARN: Code duplicated, block: B:211:0x0828  */
    /* JADX WARN: Code duplicated, block: B:213:0x082c  */
    /* JADX WARN: Code duplicated, block: B:215:0x082f  */
    /* JADX WARN: Code duplicated, block: B:218:0x0838  */
    /* JADX WARN: Code duplicated, block: B:220:0x084e  */
    /* JADX WARN: Code duplicated, block: B:222:0x0852  */
    /* JADX WARN: Code duplicated, block: B:224:0x0855  */
    /* JADX WARN: Code duplicated, block: B:227:0x085e  */
    /* JADX WARN: Code duplicated, block: B:229:0x0874  */
    /* JADX WARN: Code duplicated, block: B:231:0x0878  */
    /* JADX WARN: Code duplicated, block: B:233:0x0913  */
    /* JADX WARN: Code duplicated, block: B:236:0x0951  */
    /* JADX WARN: Code duplicated, block: B:238:0x096b  */
    /* JADX WARN: Code duplicated, block: B:269:0x0408 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:273:0x0574 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x0597 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:280:0x044d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:281:0x04a6 A[EDGE_INSN: B:281:0x04a6->B:123:0x04a6 BREAK  A[LOOP:11: B:108:0x0456->B:113:0x0477], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:283:0x0477 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:286:0x04a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:289:0x0983 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:297:0x07a4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:303:0x07ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:306:0x0829 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:309:0x084f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:312:0x0875 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x033c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:67:0x0342  */
    /* JADX WARN: Code duplicated, block: B:69:0x0345  */
    /* JADX WARN: Code duplicated, block: B:70:0x0347  */
    /* JADX WARN: Code duplicated, block: B:73:0x0382  */
    /* JADX WARN: Code duplicated, block: B:76:0x0386  */
    /* JADX WARN: Code duplicated, block: B:77:0x0389  */
    /* JADX WARN: Code duplicated, block: B:80:0x038d  */
    /* JADX WARN: Code duplicated, block: B:81:0x038f  */
    /* JADX WARN: Code duplicated, block: B:85:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:87:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:90:0x03db  */
    /* JADX WARN: Code duplicated, block: B:92:0x0407  */
    /* JADX WARN: Code duplicated, block: B:96:0x0414  */
    /* JADX WARN: Code duplicated, block: B:98:0x0419  */
    /* JADX WARN: Multi-variable type inference failed */
    public InGame_RightReligion() {
        int i;
        int i2;
        int i3;
        boolean z;
        boolean z2;
        int height;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i4;
        int i5;
        int size;
        int height2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int size2;
        int posY;
        int i13;
        String str;
        String str2;
        ArrayList arrayList3;
        int i14;
        boolean z3;
        boolean z4;
        int i15;
        int i16;
        boolean z5;
        boolean z6;
        int height3;
        int i17;
        ArrayList arrayList4;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int width;
        ArrayList arrayList5;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        ArrayList arrayList6;
        AnonymousClass1 anonymousClass1;
        ArrayList arrayList7 = new ArrayList();
        int i29 = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i30 = Images.boxTitleBORDERWIDTH;
        int width2 = ImageManager.getImage(Images.title1Red).getWidth();
        int i31 = CFG.GAME_WIDTH - width2;
        int height4 = ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i32 = CFG.PADDING;
        int i33 = Images.boxTitleBORDERWIDTH;
        int i34 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i35 = (int) ((width2 - Images.boxTitleBORDERWIDTH) * 0.35f);
        int i36 = (int) ((width2 - Images.boxTitleBORDERWIDTH) * 0.65f);
        int i37 = (int) (((width2 - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 3)) * 0.35f);
        int i38 = (int) (((width2 - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 3)) * 0.65f);
        int i39 = (int) ((width2 - Images.boxTitleBORDERWIDTH) * 0.6f);
        int i40 = (int) ((width2 - Images.boxTitleBORDERWIDTH) * 0.4f);
        int i41 = (int) (((width2 - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 3)) * 0.6f);
        int i42 = (int) (((width2 - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 3)) * 0.4f);
        int i43 = Images.boxTitleBORDERWIDTH;
        int i44 = CFG.BUTTON_HEIGHT;
        int i45 = (CFG.BUTTON_HEIGHT - CFG.PADDING) / 2;
        int i46 = iReligionID;
        String str3 = "Population";
        String str4 = PZBvyl.tngfFCgAJwd;
        String str5 = "";
        if (i46 < 0) {
            int i47 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
            ArrayList arrayList8 = new ArrayList();
            ArrayList arrayList9 = new ArrayList();
            for (int i48 = 0; i48 < Game.religionManager.getReligionsSize(); i48++) {
                arrayList8.add(Integer.valueOf(i48));
                arrayList9.add(0L);
            }
            int i49 = 0;
            while (i49 < Game.getProvincesSize()) {
                if (Game.getProvince(i49).getCivID() > 0) {
                    arrayList9.set(Game.getProvince(i49).getReligion(), Long.valueOf(((Long) arrayList9.get(Game.getProvince(i49).getReligion())).longValue() + ((long) Game.getProvince(i49).getPopulationTotal())));
                }
                i49++;
                str5 = str5;
            }
            String str6 = str5;
            AnonymousClass1 anonymousClass2 = new AnonymousClass1();
            int size3 = arrayList8.size() - 1;
            while (size3 >= 0) {
                if (((Long) arrayList9.get(size3)).longValue() > 0.001f) {
                    anonymousClass1 = anonymousClass2;
                    anonymousClass1.addPieChartValues(new PieChart_Value(((Integer) arrayList8.get(size3)).intValue(), ((Long) arrayList9.get(size3)).longValue()));
                } else {
                    anonymousClass1 = anonymousClass2;
                }
                size3--;
                anonymousClass2 = anonymousClass1;
            }
            int i50 = (CFG.BUTTON_HEIGHT3 * 3) + (CFG.PADDING * 2);
            ArrayList arrayList10 = arrayList9;
            int i51 = 1;
            arrayList7.add(new AnonymousClass2(i47, 0 + CFG.PADDING, i50 - (CFG.PADDING * 2), i50 - (CFG.PADDING * 2), anonymousClass2, null));
            int posX = arrayList7.get(arrayList7.size() - 1).getPosX() + arrayList7.get(arrayList7.size() - 1).getWidth() + (CFG.PADDING * 2);
            int i52 = (width2 - i29) - posX;
            int i53 = 0;
            int height5 = 0 + arrayList7.get(arrayList7.size() - 1).getHeight() + (CFG.PADDING * 3);
            try {
                arrayList3 = arrayList8;
                try {
                    ArrayList arrayList11 = new ArrayList(arrayList3);
                    ArrayList arrayList12 = new ArrayList(arrayList10);
                    int i54 = 0;
                    int height6 = 0;
                    while (!arrayList11.isEmpty() && i54 < 3) {
                        int i55 = i53;
                        for (int i56 = i51; i56 < arrayList11.size(); i56++) {
                            if (((Long) arrayList12.get(i55)).longValue() < ((Long) arrayList12.get(i56)).longValue()) {
                                i55 = i56;
                            }
                        }
                        String str7 = str6;
                        try {
                            StringBuilder sbAppend = new StringBuilder().append(str7);
                            try {
                                int i57 = i55;
                                int i58 = i54;
                                ArrayList arrayList13 = arrayList12;
                                arrayList3 = arrayList3;
                                ArrayList arrayList14 = arrayList11;
                                int i59 = i52;
                                i = 0;
                                arrayList10 = arrayList10;
                                i31 = i31;
                                str3 = str3;
                                str = str4;
                                str2 = str7;
                                try {
                                    arrayList7.add(new AnonymousClass3(sbAppend.append(Game.religionManager.getReligion(((Integer) arrayList11.get(i55)).intValue()).Name).toString(), ((Integer) arrayList11.get(i55)).intValue(), posX, height6, i52, i34, ImageManager.getImage(Images.religion).getWidth(), 0));
                                    height6 += arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
                                    arrayList14.remove(i57);
                                    arrayList13.remove(i57);
                                    i54 = i58 + 1;
                                    arrayList12 = arrayList13;
                                    arrayList11 = arrayList14;
                                    str4 = str;
                                    str6 = str2;
                                    i53 = 0;
                                    arrayList3 = arrayList3;
                                    i52 = i59;
                                    arrayList10 = arrayList10;
                                    str3 = str3;
                                    i31 = i31;
                                    i51 = 1;
                                } catch (Exception e) {
                                    e = e;
                                    CFG.exceptionStack(e);
                                    i14 = iSortID;
                                    if (i14 != 0) {
                                        z3 = 1;
                                    } else {
                                        z3 = 1;
                                    }
                                    if (i14 == 1) {
                                        z4 = 1;
                                    } else {
                                        z4 = i;
                                    }
                                    arrayList7.add(new AnonymousClass4(z3, z4, Game.lang.get(str), -1, i47, height5, i35, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                                    int width3 = i47 + arrayList7.get(arrayList7.size() - 1).getWidth();
                                    i15 = iSortID;
                                    if (i15 != 2) {
                                        i16 = 3;
                                        if (i15 != 3) {
                                            z5 = i;
                                        }
                                        if (i15 == i16) {
                                            z6 = 1;
                                        } else {
                                            z6 = i;
                                        }
                                        arrayList7.add(new AnonymousClass5(z5, z6, Game.lang.get(str3), -1, width3, height5, i36, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                                        height3 = height5 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
                                        while (arrayList3.size() > 0) {
                                            i17 = iSortID;
                                            if (i17 == 0) {
                                                i22 = i;
                                                i28 = 1;
                                                while (i28 < arrayList3.size()) {
                                                    arrayList6 = arrayList3;
                                                    if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList6.get(i22)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList6.get(i28)).intValue()).Name)) {
                                                        i22 = i28;
                                                    }
                                                    i28++;
                                                    arrayList3 = arrayList6;
                                                }
                                                arrayList4 = arrayList3;
                                            } else {
                                                arrayList4 = arrayList3;
                                                if (i17 == 1) {
                                                    i22 = i;
                                                    for (i23 = 1; i23 < arrayList4.size(); i23++) {
                                                        if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList4.get(i23)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList4.get(i22)).intValue()).Name)) {
                                                            i22 = i23;
                                                        }
                                                    }
                                                } else {
                                                    if (i17 == 2) {
                                                        i19 = i;
                                                        i21 = 1;
                                                        while (true) {
                                                            arrayList10 = arrayList10;
                                                            if (i21 < arrayList4.size()) {
                                                                break;
                                                            }
                                                            if (((Long) arrayList10.get(i19)).longValue() < ((Long) arrayList10.get(i21)).longValue()) {
                                                                i19 = i21;
                                                            }
                                                            i21++;
                                                            arrayList10 = arrayList10;
                                                        }
                                                    } else {
                                                        arrayList10 = arrayList10;
                                                        if (i17 == 3) {
                                                            i19 = i;
                                                            for (i20 = 1; i20 < arrayList4.size(); i20++) {
                                                                if (((Long) arrayList10.get(i19)).longValue() > ((Long) arrayList10.get(i20)).longValue()) {
                                                                    i19 = i20;
                                                                }
                                                            }
                                                        } else {
                                                            i18 = i;
                                                        }
                                                    }
                                                    i18 = i19;
                                                }
                                                int i60 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                                arrayList7.add(new AnonymousClass6(((Integer) arrayList4.get(i18)).intValue(), i60, height3, i37, i44));
                                                width = i60 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING;
                                                String str8 = str2;
                                                arrayList7.add(new AnonymousClass7(CFG.getNumberWithSpaces(str2 + arrayList10.get(i18)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i38, i45));
                                                arrayList5 = new ArrayList();
                                                for (i24 = i; i24 < Game.getCivsSize(); i24++) {
                                                    arrayList5.add(Integer.valueOf(i));
                                                }
                                                while (i25 < Game.getProvincesSize()) {
                                                    if (Game.getProvince(i25).getCivID() <= 0) {
                                                    }
                                                }
                                                i26 = i;
                                                for (i27 = 1; i27 < Game.getCivsSize(); i27++) {
                                                    if (((Integer) arrayList5.get(i26)).intValue() < ((Integer) arrayList5.get(i27)).intValue()) {
                                                        i26 = i27;
                                                    }
                                                }
                                                if (i26 > 0) {
                                                    arrayList7.add(new AnonymousClass8(Game.getCiv(i26).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45, i26));
                                                } else {
                                                    arrayList7.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45));
                                                }
                                                height3 += i44 + CFG.PADDING;
                                                arrayList4.remove(i18);
                                                arrayList10.remove(i18);
                                                arrayList3 = arrayList4;
                                                str2 = str8;
                                                width2 = width2;
                                            }
                                            i18 = i22;
                                            arrayList10 = arrayList10;
                                            int i61 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                            arrayList7.add(new AnonymousClass6(((Integer) arrayList4.get(i18)).intValue(), i61, height3, i37, i44));
                                            width = i61 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING;
                                            String str9 = str2;
                                            arrayList7.add(new AnonymousClass7(CFG.getNumberWithSpaces(str2 + arrayList10.get(i18)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i38, i45));
                                            arrayList5 = new ArrayList();
                                            while (i24 < Game.getCivsSize()) {
                                                arrayList5.add(Integer.valueOf(i));
                                            }
                                            while (i25 < Game.getProvincesSize()) {
                                                if (Game.getProvince(i25).getCivID() <= 0) {
                                                }
                                            }
                                            i26 = i;
                                            while (i27 < Game.getCivsSize()) {
                                                if (((Integer) arrayList5.get(i26)).intValue() < ((Integer) arrayList5.get(i27)).intValue()) {
                                                    i26 = i27;
                                                }
                                            }
                                            if (i26 > 0) {
                                                arrayList7.add(new AnonymousClass8(Game.getCiv(i26).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45, i26));
                                            } else {
                                                arrayList7.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45));
                                            }
                                            height3 += i44 + CFG.PADDING;
                                            arrayList4.remove(i18);
                                            arrayList10.remove(i18);
                                            arrayList3 = arrayList4;
                                            str2 = str9;
                                            width2 = width2;
                                        }
                                        i2 = width2;
                                        size2 = arrayList7.size();
                                        posY = i;
                                        for (i13 = posY; i13 < size2; i13++) {
                                            if (posY < arrayList7.get(i13).getPosY() + arrayList7.get(i13).getHeight() + CFG.PADDING) {
                                                posY = arrayList7.get(i13).getPosY() + arrayList7.get(i13).getHeight() + CFG.PADDING;
                                            }
                                        }
                                        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height4) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
                                        int i62 = i;
                                        int i63 = i2;
                                        arrayList7.add(new Empty(i62, i62, i63, Math.max(posY, iMin)));
                                        initMenu(new AnonymousClass15(Game.lang.get("Religion"), false, false, Images.title600), i31, height4, i63, iMin, arrayList7, false, true);
                                        this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
                                    }
                                    i16 = 3;
                                    z5 = 1;
                                    if (i15 == i16) {
                                        z6 = 1;
                                    } else {
                                        z6 = i;
                                    }
                                    arrayList7.add(new AnonymousClass5(z5, z6, Game.lang.get(str3), -1, width3, height5, i36, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                                    height3 = height5 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
                                    while (arrayList3.size() > 0) {
                                        i17 = iSortID;
                                        if (i17 == 0) {
                                            i22 = i;
                                            i28 = 1;
                                            while (i28 < arrayList3.size()) {
                                                arrayList6 = arrayList3;
                                                if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList6.get(i22)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList6.get(i28)).intValue()).Name)) {
                                                    i22 = i28;
                                                }
                                                i28++;
                                                arrayList3 = arrayList6;
                                            }
                                            arrayList4 = arrayList3;
                                        } else {
                                            arrayList4 = arrayList3;
                                            if (i17 == 1) {
                                                i22 = i;
                                                while (i23 < arrayList4.size()) {
                                                    if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList4.get(i23)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList4.get(i22)).intValue()).Name)) {
                                                        i22 = i23;
                                                    }
                                                }
                                            } else {
                                                if (i17 == 2) {
                                                    i19 = i;
                                                    i21 = 1;
                                                    while (true) {
                                                        arrayList10 = arrayList10;
                                                        if (i21 < arrayList4.size()) {
                                                            break;
                                                            break;
                                                        }
                                                        if (((Long) arrayList10.get(i19)).longValue() < ((Long) arrayList10.get(i21)).longValue()) {
                                                            i19 = i21;
                                                        }
                                                        i21++;
                                                        arrayList10 = arrayList10;
                                                    }
                                                } else {
                                                    arrayList10 = arrayList10;
                                                    if (i17 == 3) {
                                                        i19 = i;
                                                        while (i20 < arrayList4.size()) {
                                                            if (((Long) arrayList10.get(i19)).longValue() > ((Long) arrayList10.get(i20)).longValue()) {
                                                                i19 = i20;
                                                            }
                                                        }
                                                    } else {
                                                        i18 = i;
                                                    }
                                                }
                                                i18 = i19;
                                            }
                                            int i64 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                            arrayList7.add(new AnonymousClass6(((Integer) arrayList4.get(i18)).intValue(), i64, height3, i37, i44));
                                            width = i64 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING;
                                            String str10 = str2;
                                            arrayList7.add(new AnonymousClass7(CFG.getNumberWithSpaces(str2 + arrayList10.get(i18)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i38, i45));
                                            arrayList5 = new ArrayList();
                                            while (i24 < Game.getCivsSize()) {
                                                arrayList5.add(Integer.valueOf(i));
                                            }
                                            while (i25 < Game.getProvincesSize()) {
                                                if (Game.getProvince(i25).getCivID() <= 0) {
                                                }
                                            }
                                            i26 = i;
                                            while (i27 < Game.getCivsSize()) {
                                                if (((Integer) arrayList5.get(i26)).intValue() < ((Integer) arrayList5.get(i27)).intValue()) {
                                                    i26 = i27;
                                                }
                                            }
                                            if (i26 > 0) {
                                                arrayList7.add(new AnonymousClass8(Game.getCiv(i26).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45, i26));
                                            } else {
                                                arrayList7.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45));
                                            }
                                            height3 += i44 + CFG.PADDING;
                                            arrayList4.remove(i18);
                                            arrayList10.remove(i18);
                                            arrayList3 = arrayList4;
                                            str2 = str10;
                                            width2 = width2;
                                        }
                                        i18 = i22;
                                        arrayList10 = arrayList10;
                                        int i65 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                        arrayList7.add(new AnonymousClass6(((Integer) arrayList4.get(i18)).intValue(), i65, height3, i37, i44));
                                        width = i65 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING;
                                        String str11 = str2;
                                        arrayList7.add(new AnonymousClass7(CFG.getNumberWithSpaces(str2 + arrayList10.get(i18)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i38, i45));
                                        arrayList5 = new ArrayList();
                                        while (i24 < Game.getCivsSize()) {
                                            arrayList5.add(Integer.valueOf(i));
                                        }
                                        while (i25 < Game.getProvincesSize()) {
                                            if (Game.getProvince(i25).getCivID() <= 0) {
                                            }
                                        }
                                        i26 = i;
                                        while (i27 < Game.getCivsSize()) {
                                            if (((Integer) arrayList5.get(i26)).intValue() < ((Integer) arrayList5.get(i27)).intValue()) {
                                                i26 = i27;
                                            }
                                        }
                                        if (i26 > 0) {
                                            arrayList7.add(new AnonymousClass8(Game.getCiv(i26).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45, i26));
                                        } else {
                                            arrayList7.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45));
                                        }
                                        height3 += i44 + CFG.PADDING;
                                        arrayList4.remove(i18);
                                        arrayList10.remove(i18);
                                        arrayList3 = arrayList4;
                                        str2 = str11;
                                        width2 = width2;
                                    }
                                    i2 = width2;
                                    size2 = arrayList7.size();
                                    posY = i;
                                    while (i13 < size2) {
                                        if (posY < arrayList7.get(i13).getPosY() + arrayList7.get(i13).getHeight() + CFG.PADDING) {
                                            posY = arrayList7.get(i13).getPosY() + arrayList7.get(i13).getHeight() + CFG.PADDING;
                                        }
                                    }
                                    int iMin2 = Math.min(posY, (CFG.GAME_HEIGHT - height4) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
                                    int i66 = i;
                                    int i67 = i2;
                                    arrayList7.add(new Empty(i66, i66, i67, Math.max(posY, iMin2)));
                                    initMenu(new AnonymousClass15(Game.lang.get("Religion"), false, false, Images.title600), i31, height4, i67, iMin2, arrayList7, false, true);
                                    this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
                                }
                            } catch (Exception e2) {
                                e = e2;
                                i = 0;
                                str2 = str7;
                                str = str4;
                                CFG.exceptionStack(e);
                                i14 = iSortID;
                                if (i14 != 0) {
                                    z3 = 1;
                                } else {
                                    z3 = 1;
                                }
                                if (i14 == 1) {
                                    z4 = 1;
                                } else {
                                    z4 = i;
                                }
                                arrayList7.add(new AnonymousClass4(z3, z4, Game.lang.get(str), -1, i47, height5, i35, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                                int width4 = i47 + arrayList7.get(arrayList7.size() - 1).getWidth();
                                i15 = iSortID;
                                if (i15 != 2) {
                                    i16 = 3;
                                    if (i15 != 3) {
                                        z5 = i;
                                    }
                                    if (i15 == i16) {
                                        z6 = 1;
                                    } else {
                                        z6 = i;
                                    }
                                    arrayList7.add(new AnonymousClass5(z5, z6, Game.lang.get(str3), -1, width4, height5, i36, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                                    height3 = height5 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
                                    while (arrayList3.size() > 0) {
                                        i17 = iSortID;
                                        if (i17 == 0) {
                                            i22 = i;
                                            i28 = 1;
                                            while (i28 < arrayList3.size()) {
                                                arrayList6 = arrayList3;
                                                if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList6.get(i22)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList6.get(i28)).intValue()).Name)) {
                                                    i22 = i28;
                                                }
                                                i28++;
                                                arrayList3 = arrayList6;
                                            }
                                            arrayList4 = arrayList3;
                                        } else {
                                            arrayList4 = arrayList3;
                                            if (i17 == 1) {
                                                i22 = i;
                                                while (i23 < arrayList4.size()) {
                                                    if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList4.get(i23)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList4.get(i22)).intValue()).Name)) {
                                                        i22 = i23;
                                                    }
                                                }
                                            } else {
                                                if (i17 == 2) {
                                                    i19 = i;
                                                    i21 = 1;
                                                    while (true) {
                                                        arrayList10 = arrayList10;
                                                        if (i21 < arrayList4.size()) {
                                                            break;
                                                            break;
                                                        }
                                                        if (((Long) arrayList10.get(i19)).longValue() < ((Long) arrayList10.get(i21)).longValue()) {
                                                            i19 = i21;
                                                        }
                                                        i21++;
                                                        arrayList10 = arrayList10;
                                                    }
                                                } else {
                                                    arrayList10 = arrayList10;
                                                    if (i17 == 3) {
                                                        i19 = i;
                                                        while (i20 < arrayList4.size()) {
                                                            if (((Long) arrayList10.get(i19)).longValue() > ((Long) arrayList10.get(i20)).longValue()) {
                                                                i19 = i20;
                                                            }
                                                        }
                                                    } else {
                                                        i18 = i;
                                                    }
                                                }
                                                i18 = i19;
                                            }
                                            int i68 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                            arrayList7.add(new AnonymousClass6(((Integer) arrayList4.get(i18)).intValue(), i68, height3, i37, i44));
                                            width = i68 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING;
                                            String str12 = str2;
                                            arrayList7.add(new AnonymousClass7(CFG.getNumberWithSpaces(str2 + arrayList10.get(i18)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i38, i45));
                                            arrayList5 = new ArrayList();
                                            while (i24 < Game.getCivsSize()) {
                                                arrayList5.add(Integer.valueOf(i));
                                            }
                                            while (i25 < Game.getProvincesSize()) {
                                                if (Game.getProvince(i25).getCivID() <= 0) {
                                                }
                                            }
                                            i26 = i;
                                            while (i27 < Game.getCivsSize()) {
                                                if (((Integer) arrayList5.get(i26)).intValue() < ((Integer) arrayList5.get(i27)).intValue()) {
                                                    i26 = i27;
                                                }
                                            }
                                            if (i26 > 0) {
                                                arrayList7.add(new AnonymousClass8(Game.getCiv(i26).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45, i26));
                                            } else {
                                                arrayList7.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45));
                                            }
                                            height3 += i44 + CFG.PADDING;
                                            arrayList4.remove(i18);
                                            arrayList10.remove(i18);
                                            arrayList3 = arrayList4;
                                            str2 = str12;
                                            width2 = width2;
                                        }
                                        i18 = i22;
                                        arrayList10 = arrayList10;
                                        int i69 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                        arrayList7.add(new AnonymousClass6(((Integer) arrayList4.get(i18)).intValue(), i69, height3, i37, i44));
                                        width = i69 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING;
                                        String str13 = str2;
                                        arrayList7.add(new AnonymousClass7(CFG.getNumberWithSpaces(str2 + arrayList10.get(i18)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i38, i45));
                                        arrayList5 = new ArrayList();
                                        while (i24 < Game.getCivsSize()) {
                                            arrayList5.add(Integer.valueOf(i));
                                        }
                                        while (i25 < Game.getProvincesSize()) {
                                            if (Game.getProvince(i25).getCivID() <= 0) {
                                            }
                                        }
                                        i26 = i;
                                        while (i27 < Game.getCivsSize()) {
                                            if (((Integer) arrayList5.get(i26)).intValue() < ((Integer) arrayList5.get(i27)).intValue()) {
                                                i26 = i27;
                                            }
                                        }
                                        if (i26 > 0) {
                                            arrayList7.add(new AnonymousClass8(Game.getCiv(i26).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45, i26));
                                        } else {
                                            arrayList7.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45));
                                        }
                                        height3 += i44 + CFG.PADDING;
                                        arrayList4.remove(i18);
                                        arrayList10.remove(i18);
                                        arrayList3 = arrayList4;
                                        str2 = str13;
                                        width2 = width2;
                                    }
                                    i2 = width2;
                                    size2 = arrayList7.size();
                                    posY = i;
                                    while (i13 < size2) {
                                        if (posY < arrayList7.get(i13).getPosY() + arrayList7.get(i13).getHeight() + CFG.PADDING) {
                                            posY = arrayList7.get(i13).getPosY() + arrayList7.get(i13).getHeight() + CFG.PADDING;
                                        }
                                    }
                                    int iMin3 = Math.min(posY, (CFG.GAME_HEIGHT - height4) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
                                    int i610 = i;
                                    int i611 = i2;
                                    arrayList7.add(new Empty(i610, i610, i611, Math.max(posY, iMin3)));
                                    initMenu(new AnonymousClass15(Game.lang.get("Religion"), false, false, Images.title600), i31, height4, i611, iMin3, arrayList7, false, true);
                                    this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
                                }
                                i16 = 3;
                                z5 = 1;
                                if (i15 == i16) {
                                    z6 = 1;
                                } else {
                                    z6 = i;
                                }
                                arrayList7.add(new AnonymousClass5(z5, z6, Game.lang.get(str3), -1, width4, height5, i36, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                                height3 = height5 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
                                while (arrayList3.size() > 0) {
                                    i17 = iSortID;
                                    if (i17 == 0) {
                                        i22 = i;
                                        i28 = 1;
                                        while (i28 < arrayList3.size()) {
                                            arrayList6 = arrayList3;
                                            if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList6.get(i22)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList6.get(i28)).intValue()).Name)) {
                                                i22 = i28;
                                            }
                                            i28++;
                                            arrayList3 = arrayList6;
                                        }
                                        arrayList4 = arrayList3;
                                    } else {
                                        arrayList4 = arrayList3;
                                        if (i17 == 1) {
                                            i22 = i;
                                            while (i23 < arrayList4.size()) {
                                                if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList4.get(i23)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList4.get(i22)).intValue()).Name)) {
                                                    i22 = i23;
                                                }
                                            }
                                        } else {
                                            if (i17 == 2) {
                                                i19 = i;
                                                i21 = 1;
                                                while (true) {
                                                    arrayList10 = arrayList10;
                                                    if (i21 < arrayList4.size()) {
                                                        break;
                                                        break;
                                                    }
                                                    if (((Long) arrayList10.get(i19)).longValue() < ((Long) arrayList10.get(i21)).longValue()) {
                                                        i19 = i21;
                                                    }
                                                    i21++;
                                                    arrayList10 = arrayList10;
                                                }
                                            } else {
                                                arrayList10 = arrayList10;
                                                if (i17 == 3) {
                                                    i19 = i;
                                                    while (i20 < arrayList4.size()) {
                                                        if (((Long) arrayList10.get(i19)).longValue() > ((Long) arrayList10.get(i20)).longValue()) {
                                                            i19 = i20;
                                                        }
                                                    }
                                                } else {
                                                    i18 = i;
                                                }
                                            }
                                            i18 = i19;
                                        }
                                        int i612 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                        arrayList7.add(new AnonymousClass6(((Integer) arrayList4.get(i18)).intValue(), i612, height3, i37, i44));
                                        width = i612 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING;
                                        String str14 = str2;
                                        arrayList7.add(new AnonymousClass7(CFG.getNumberWithSpaces(str2 + arrayList10.get(i18)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i38, i45));
                                        arrayList5 = new ArrayList();
                                        while (i24 < Game.getCivsSize()) {
                                            arrayList5.add(Integer.valueOf(i));
                                        }
                                        while (i25 < Game.getProvincesSize()) {
                                            if (Game.getProvince(i25).getCivID() <= 0) {
                                            }
                                        }
                                        i26 = i;
                                        while (i27 < Game.getCivsSize()) {
                                            if (((Integer) arrayList5.get(i26)).intValue() < ((Integer) arrayList5.get(i27)).intValue()) {
                                                i26 = i27;
                                            }
                                        }
                                        if (i26 > 0) {
                                            arrayList7.add(new AnonymousClass8(Game.getCiv(i26).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45, i26));
                                        } else {
                                            arrayList7.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45));
                                        }
                                        height3 += i44 + CFG.PADDING;
                                        arrayList4.remove(i18);
                                        arrayList10.remove(i18);
                                        arrayList3 = arrayList4;
                                        str2 = str14;
                                        width2 = width2;
                                    }
                                    i18 = i22;
                                    arrayList10 = arrayList10;
                                    int i613 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                    arrayList7.add(new AnonymousClass6(((Integer) arrayList4.get(i18)).intValue(), i613, height3, i37, i44));
                                    width = i613 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING;
                                    String str15 = str2;
                                    arrayList7.add(new AnonymousClass7(CFG.getNumberWithSpaces(str2 + arrayList10.get(i18)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i38, i45));
                                    arrayList5 = new ArrayList();
                                    while (i24 < Game.getCivsSize()) {
                                        arrayList5.add(Integer.valueOf(i));
                                    }
                                    while (i25 < Game.getProvincesSize()) {
                                        if (Game.getProvince(i25).getCivID() <= 0) {
                                        }
                                    }
                                    i26 = i;
                                    while (i27 < Game.getCivsSize()) {
                                        if (((Integer) arrayList5.get(i26)).intValue() < ((Integer) arrayList5.get(i27)).intValue()) {
                                            i26 = i27;
                                        }
                                    }
                                    if (i26 > 0) {
                                        arrayList7.add(new AnonymousClass8(Game.getCiv(i26).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45, i26));
                                    } else {
                                        arrayList7.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45));
                                    }
                                    height3 += i44 + CFG.PADDING;
                                    arrayList4.remove(i18);
                                    arrayList10.remove(i18);
                                    arrayList3 = arrayList4;
                                    str2 = str15;
                                    width2 = width2;
                                }
                                i2 = width2;
                                size2 = arrayList7.size();
                                posY = i;
                                while (i13 < size2) {
                                    if (posY < arrayList7.get(i13).getPosY() + arrayList7.get(i13).getHeight() + CFG.PADDING) {
                                        posY = arrayList7.get(i13).getPosY() + arrayList7.get(i13).getHeight() + CFG.PADDING;
                                    }
                                }
                                int iMin4 = Math.min(posY, (CFG.GAME_HEIGHT - height4) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
                                int i614 = i;
                                int i615 = i2;
                                arrayList7.add(new Empty(i614, i614, i615, Math.max(posY, iMin4)));
                                initMenu(new AnonymousClass15(Game.lang.get("Religion"), false, false, Images.title600), i31, height4, i615, iMin4, arrayList7, false, true);
                                this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            i = i53;
                        }
                    }
                    arrayList3 = arrayList3;
                    i = i53;
                    arrayList10 = arrayList10;
                    i31 = i31;
                    str3 = str3;
                    str = str4;
                    str2 = str6;
                } catch (Exception e4) {
                    e = e4;
                    arrayList3 = arrayList3;
                    i = i53;
                    arrayList10 = arrayList10;
                    i31 = i31;
                    str3 = str3;
                    str = str4;
                    str2 = str6;
                }
            } catch (Exception e5) {
                e = e5;
                i = 0;
                arrayList10 = arrayList10;
                i31 = i31;
                str3 = str3;
                str = str4;
                str2 = str6;
                arrayList3 = arrayList8;
            }
            i14 = iSortID;
            if (i14 != 0 || i14 == 1) {
                z3 = 1;
            } else {
                z3 = i;
            }
            if (i14 == 1) {
                z4 = 1;
            } else {
                z4 = i;
            }
            arrayList7.add(new AnonymousClass4(z3, z4, Game.lang.get(str), -1, i47, height5, i35, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width5 = i47 + arrayList7.get(arrayList7.size() - 1).getWidth();
            i15 = iSortID;
            if (i15 != 2) {
                i16 = 3;
                if (i15 != 3) {
                    z5 = i;
                }
                if (i15 == i16) {
                    z6 = 1;
                } else {
                    z6 = i;
                }
                arrayList7.add(new AnonymousClass5(z5, z6, Game.lang.get(str3), -1, width5, height5, i36, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                height3 = height5 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
                while (arrayList3.size() > 0) {
                    i17 = iSortID;
                    if (i17 == 0) {
                        i22 = i;
                        i28 = 1;
                        while (i28 < arrayList3.size()) {
                            arrayList6 = arrayList3;
                            if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList6.get(i22)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList6.get(i28)).intValue()).Name)) {
                                i22 = i28;
                            }
                            i28++;
                            arrayList3 = arrayList6;
                        }
                        arrayList4 = arrayList3;
                    } else {
                        arrayList4 = arrayList3;
                        if (i17 == 1) {
                            i22 = i;
                            while (i23 < arrayList4.size()) {
                                if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList4.get(i23)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList4.get(i22)).intValue()).Name)) {
                                    i22 = i23;
                                }
                            }
                        } else {
                            if (i17 == 2) {
                                i19 = i;
                                i21 = 1;
                                while (true) {
                                    arrayList10 = arrayList10;
                                    if (i21 < arrayList4.size()) {
                                        break;
                                        break;
                                    }
                                    if (((Long) arrayList10.get(i19)).longValue() < ((Long) arrayList10.get(i21)).longValue()) {
                                        i19 = i21;
                                    }
                                    i21++;
                                    arrayList10 = arrayList10;
                                }
                            } else {
                                arrayList10 = arrayList10;
                                if (i17 == 3) {
                                    i19 = i;
                                    while (i20 < arrayList4.size()) {
                                        if (((Long) arrayList10.get(i19)).longValue() > ((Long) arrayList10.get(i20)).longValue()) {
                                            i19 = i20;
                                        }
                                    }
                                } else {
                                    i18 = i;
                                }
                            }
                            i18 = i19;
                        }
                        int i616 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        arrayList7.add(new AnonymousClass6(((Integer) arrayList4.get(i18)).intValue(), i616, height3, i37, i44));
                        width = i616 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING;
                        String str16 = str2;
                        arrayList7.add(new AnonymousClass7(CFG.getNumberWithSpaces(str2 + arrayList10.get(i18)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i38, i45));
                        arrayList5 = new ArrayList();
                        while (i24 < Game.getCivsSize()) {
                            arrayList5.add(Integer.valueOf(i));
                        }
                        for (i25 = i; i25 < Game.getProvincesSize(); i25++) {
                            if (Game.getProvince(i25).getCivID() <= 0 && Game.getProvince(i25).getReligion() == ((Integer) arrayList4.get(i18)).intValue()) {
                                arrayList5.set(Game.getProvince(i25).getCivID(), Integer.valueOf(((Integer) arrayList5.get(Game.getProvince(i25).getCivID())).intValue() + Game.getProvince(i25).getPopulationTotal()));
                            }
                        }
                        i26 = i;
                        while (i27 < Game.getCivsSize()) {
                            if (((Integer) arrayList5.get(i26)).intValue() < ((Integer) arrayList5.get(i27)).intValue()) {
                                i26 = i27;
                            }
                        }
                        if (i26 > 0) {
                            arrayList7.add(new AnonymousClass8(Game.getCiv(i26).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45, i26));
                        } else {
                            arrayList7.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45));
                        }
                        height3 += i44 + CFG.PADDING;
                        arrayList4.remove(i18);
                        arrayList10.remove(i18);
                        arrayList3 = arrayList4;
                        str2 = str16;
                        width2 = width2;
                    }
                    i18 = i22;
                    arrayList10 = arrayList10;
                    int i617 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                    arrayList7.add(new AnonymousClass6(((Integer) arrayList4.get(i18)).intValue(), i617, height3, i37, i44));
                    width = i617 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING;
                    String str17 = str2;
                    arrayList7.add(new AnonymousClass7(CFG.getNumberWithSpaces(str2 + arrayList10.get(i18)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i38, i45));
                    arrayList5 = new ArrayList();
                    while (i24 < Game.getCivsSize()) {
                        arrayList5.add(Integer.valueOf(i));
                    }
                    while (i25 < Game.getProvincesSize()) {
                        if (Game.getProvince(i25).getCivID() <= 0) {
                        }
                    }
                    i26 = i;
                    while (i27 < Game.getCivsSize()) {
                        if (((Integer) arrayList5.get(i26)).intValue() < ((Integer) arrayList5.get(i27)).intValue()) {
                            i26 = i27;
                        }
                    }
                    if (i26 > 0) {
                        arrayList7.add(new AnonymousClass8(Game.getCiv(i26).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45, i26));
                    } else {
                        arrayList7.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45));
                    }
                    height3 += i44 + CFG.PADDING;
                    arrayList4.remove(i18);
                    arrayList10.remove(i18);
                    arrayList3 = arrayList4;
                    str2 = str17;
                    width2 = width2;
                }
                i2 = width2;
            } else {
                i16 = 3;
            }
            z5 = 1;
            if (i15 == i16) {
                z6 = 1;
            } else {
                z6 = i;
            }
            arrayList7.add(new AnonymousClass5(z5, z6, Game.lang.get(str3), -1, width5, height5, i36, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            height3 = height5 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
            while (arrayList3.size() > 0) {
                i17 = iSortID;
                if (i17 == 0) {
                    i22 = i;
                    i28 = 1;
                    while (i28 < arrayList3.size()) {
                        arrayList6 = arrayList3;
                        if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList6.get(i22)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList6.get(i28)).intValue()).Name)) {
                            i22 = i28;
                        }
                        i28++;
                        arrayList3 = arrayList6;
                    }
                    arrayList4 = arrayList3;
                } else {
                    arrayList4 = arrayList3;
                    if (i17 == 1) {
                        i22 = i;
                        while (i23 < arrayList4.size()) {
                            if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList4.get(i23)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList4.get(i22)).intValue()).Name)) {
                                i22 = i23;
                            }
                        }
                    } else {
                        if (i17 == 2) {
                            i19 = i;
                            i21 = 1;
                            while (true) {
                                arrayList10 = arrayList10;
                                if (i21 < arrayList4.size()) {
                                    break;
                                    break;
                                }
                                if (((Long) arrayList10.get(i19)).longValue() < ((Long) arrayList10.get(i21)).longValue()) {
                                    i19 = i21;
                                }
                                i21++;
                                arrayList10 = arrayList10;
                            }
                        } else {
                            arrayList10 = arrayList10;
                            if (i17 == 3) {
                                i19 = i;
                                while (i20 < arrayList4.size()) {
                                    if (((Long) arrayList10.get(i19)).longValue() > ((Long) arrayList10.get(i20)).longValue()) {
                                        i19 = i20;
                                    }
                                }
                            } else {
                                i18 = i;
                            }
                        }
                        i18 = i19;
                    }
                    int i618 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                    arrayList7.add(new AnonymousClass6(((Integer) arrayList4.get(i18)).intValue(), i618, height3, i37, i44));
                    width = i618 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING;
                    String str18 = str2;
                    arrayList7.add(new AnonymousClass7(CFG.getNumberWithSpaces(str2 + arrayList10.get(i18)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i38, i45));
                    arrayList5 = new ArrayList();
                    while (i24 < Game.getCivsSize()) {
                        arrayList5.add(Integer.valueOf(i));
                    }
                    while (i25 < Game.getProvincesSize()) {
                        if (Game.getProvince(i25).getCivID() <= 0) {
                        }
                    }
                    i26 = i;
                    while (i27 < Game.getCivsSize()) {
                        if (((Integer) arrayList5.get(i26)).intValue() < ((Integer) arrayList5.get(i27)).intValue()) {
                            i26 = i27;
                        }
                    }
                    if (i26 > 0) {
                        arrayList7.add(new AnonymousClass8(Game.getCiv(i26).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45, i26));
                    } else {
                        arrayList7.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45));
                    }
                    height3 += i44 + CFG.PADDING;
                    arrayList4.remove(i18);
                    arrayList10.remove(i18);
                    arrayList3 = arrayList4;
                    str2 = str18;
                    width2 = width2;
                }
                i18 = i22;
                arrayList10 = arrayList10;
                int i619 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                arrayList7.add(new AnonymousClass6(((Integer) arrayList4.get(i18)).intValue(), i619, height3, i37, i44));
                width = i619 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING;
                String str19 = str2;
                arrayList7.add(new AnonymousClass7(CFG.getNumberWithSpaces(str2 + arrayList10.get(i18)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i38, i45));
                arrayList5 = new ArrayList();
                while (i24 < Game.getCivsSize()) {
                    arrayList5.add(Integer.valueOf(i));
                }
                while (i25 < Game.getProvincesSize()) {
                    if (Game.getProvince(i25).getCivID() <= 0) {
                    }
                }
                i26 = i;
                while (i27 < Game.getCivsSize()) {
                    if (((Integer) arrayList5.get(i26)).intValue() < ((Integer) arrayList5.get(i27)).intValue()) {
                        i26 = i27;
                    }
                }
                if (i26 > 0) {
                    arrayList7.add(new AnonymousClass8(Game.getCiv(i26).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45, i26));
                } else {
                    arrayList7.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i45, i38, i45));
                }
                height3 += i44 + CFG.PADDING;
                arrayList4.remove(i18);
                arrayList10.remove(i18);
                arrayList3 = arrayList4;
                str2 = str19;
                width2 = width2;
            }
            i2 = width2;
        } else {
            i = 0;
            i2 = width2;
            i31 = i31;
            int i70 = CFG.PADDING;
            int i71 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
            arrayList7.add(new AnonymousClass9(iReligionID, i71, i70, (i2 - i71) - CFG.PADDING, i44));
            int height7 = i70 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
            arrayList7.add(new AnonymousClass10(Graph_Vertical_Data_Type.RELIGION_CIVS_RIGHT, Game.lang.get("Civilizations"), Game.lang.get("Civilizations"), i29, height7, i2 - (i29 * 2), i2 / 2, true));
            int height8 = height7 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
            int i72 = Images.boxTitleBORDERWIDTH;
            int i73 = iSortID;
            arrayList7.add(new AnonymousClass11(i73 == 0 || i73 == 1, i73 == 1, Game.lang.get(str4), -1, i72, height8, i39, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width6 = i72 + arrayList7.get(arrayList7.size() - 1).getWidth();
            int i74 = iSortID;
            if (i74 != 2) {
                i3 = 3;
                if (i74 != 3) {
                    z = false;
                }
                if (i74 == i3) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                arrayList7.add(new AnonymousClass12(z, z2, Game.lang.get(str3), -1, width6, height8, i40, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                height = height8 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
                arrayList = new ArrayList();
                arrayList2 = new ArrayList();
                for (i4 = 0; i4 < Game.getCivsSize(); i4++) {
                    arrayList.add(Integer.valueOf(i4));
                    arrayList2.add(0);
                }
                for (i5 = 0; i5 < Game.getProvincesSize(); i5++) {
                    if (Game.getProvince(i5).getCivID() <= 0 && Game.getProvince(i5).getReligion() == iReligionID) {
                        arrayList2.set(Game.getProvince(i5).getCivID(), Integer.valueOf(((Integer) arrayList2.get(Game.getProvince(i5).getCivID())).intValue() + Game.getProvince(i5).getPopulationTotal()));
                    }
                }
                for (size = arrayList.size() - 1; size >= 0; size--) {
                    if (((Integer) arrayList2.get(size)).intValue() <= 0) {
                        arrayList.remove(size);
                        arrayList2.remove(size);
                    }
                }
                if (arrayList.size() > 0) {
                    height2 = height;
                    while (arrayList.size() > 0) {
                        i6 = iSortID;
                        if (i6 == 0) {
                            i8 = 0;
                            for (i12 = 1; i12 < arrayList.size(); i12++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i8)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getCivName())) {
                                    i8 = i12;
                                }
                            }
                        } else if (i6 == 1) {
                            i8 = 0;
                            for (i11 = 1; i11 < arrayList.size(); i11++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i11)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i8)).intValue()).getCivName())) {
                                    i8 = i11;
                                }
                            }
                        } else if (i6 == 2) {
                            i8 = 0;
                            for (i10 = 1; i10 < arrayList.size(); i10++) {
                                if (((Integer) arrayList2.get(i8)).intValue() < ((Integer) arrayList2.get(i10)).intValue()) {
                                    i8 = i10;
                                }
                            }
                        } else {
                            if (i6 == 3) {
                                i8 = 0;
                                for (i9 = 1; i9 < arrayList.size(); i9++) {
                                    if (((Integer) arrayList2.get(i8)).intValue() > ((Integer) arrayList2.get(i9)).intValue()) {
                                        i8 = i9;
                                    }
                                }
                            } else {
                                i7 = 0;
                            }
                            int i75 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                            int i76 = height2;
                            arrayList7.add(new AnonymousClass13(Game.getCiv(((Integer) arrayList.get(i7)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i75, i76, i41, i34, ((Integer) arrayList.get(i7)).intValue()));
                            arrayList7.add(new AnonymousClass14(CFG.getNumberWithSpaces("" + arrayList2.get(i7)), CFG.FONT_REGULAR_SMALL, -1, i75 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING, i76, i42, i34));
                            height2 += arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
                            arrayList = arrayList;
                            arrayList.remove(i7);
                            arrayList2.remove(i7);
                        }
                        i7 = i8;
                        int i77 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        int i78 = height2;
                        arrayList7.add(new AnonymousClass13(Game.getCiv(((Integer) arrayList.get(i7)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i77, i78, i41, i34, ((Integer) arrayList.get(i7)).intValue()));
                        arrayList7.add(new AnonymousClass14(CFG.getNumberWithSpaces("" + arrayList2.get(i7)), CFG.FONT_REGULAR_SMALL, -1, i77 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING, i78, i42, i34));
                        height2 += arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
                        arrayList = arrayList;
                        arrayList.remove(i7);
                        arrayList2.remove(i7);
                    }
                } else {
                    arrayList7.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, CFG.PADDING + Images.boxTitleBORDERWIDTH, height, i2 - (Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2)), CFG.BUTTON_HEIGHT2));
                    arrayList7.get(arrayList7.size() - 1).getHeight();
                    int i79 = CFG.PADDING;
                }
            } else {
                i3 = 3;
            }
            z = true;
            if (i74 == i3) {
                z2 = true;
            } else {
                z2 = false;
            }
            arrayList7.add(new AnonymousClass12(z, z2, Game.lang.get(str3), -1, width6, height8, i40, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            height = height8 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
            arrayList = new ArrayList();
            arrayList2 = new ArrayList();
            while (i4 < Game.getCivsSize()) {
                arrayList.add(Integer.valueOf(i4));
                arrayList2.add(0);
            }
            while (i5 < Game.getProvincesSize()) {
                if (Game.getProvince(i5).getCivID() <= 0) {
                }
            }
            while (size >= 0) {
                if (((Integer) arrayList2.get(size)).intValue() <= 0) {
                    arrayList.remove(size);
                    arrayList2.remove(size);
                }
            }
            if (arrayList.size() > 0) {
                height2 = height;
                while (arrayList.size() > 0) {
                    i6 = iSortID;
                    if (i6 == 0) {
                        i8 = 0;
                        while (i12 < arrayList.size()) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i8)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getCivName())) {
                                i8 = i12;
                            }
                        }
                    } else if (i6 == 1) {
                        i8 = 0;
                        while (i11 < arrayList.size()) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i11)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i8)).intValue()).getCivName())) {
                                i8 = i11;
                            }
                        }
                    } else if (i6 == 2) {
                        i8 = 0;
                        while (i10 < arrayList.size()) {
                            if (((Integer) arrayList2.get(i8)).intValue() < ((Integer) arrayList2.get(i10)).intValue()) {
                                i8 = i10;
                            }
                        }
                    } else {
                        if (i6 == 3) {
                            i8 = 0;
                            while (i9 < arrayList.size()) {
                                if (((Integer) arrayList2.get(i8)).intValue() > ((Integer) arrayList2.get(i9)).intValue()) {
                                    i8 = i9;
                                }
                            }
                        } else {
                            i7 = 0;
                        }
                        int i710 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        int i711 = height2;
                        arrayList7.add(new AnonymousClass13(Game.getCiv(((Integer) arrayList.get(i7)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i710, i711, i41, i34, ((Integer) arrayList.get(i7)).intValue()));
                        arrayList7.add(new AnonymousClass14(CFG.getNumberWithSpaces("" + arrayList2.get(i7)), CFG.FONT_REGULAR_SMALL, -1, i710 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING, i711, i42, i34));
                        height2 += arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
                        arrayList = arrayList;
                        arrayList.remove(i7);
                        arrayList2.remove(i7);
                    }
                    i7 = i8;
                    int i712 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                    int i713 = height2;
                    arrayList7.add(new AnonymousClass13(Game.getCiv(((Integer) arrayList.get(i7)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i712, i713, i41, i34, ((Integer) arrayList.get(i7)).intValue()));
                    arrayList7.add(new AnonymousClass14(CFG.getNumberWithSpaces("" + arrayList2.get(i7)), CFG.FONT_REGULAR_SMALL, -1, i712 + arrayList7.get(arrayList7.size() - 1).getWidth() + CFG.PADDING, i713, i42, i34));
                    height2 += arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
                    arrayList = arrayList;
                    arrayList.remove(i7);
                    arrayList2.remove(i7);
                }
            } else {
                arrayList7.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, CFG.PADDING + Images.boxTitleBORDERWIDTH, height, i2 - (Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2)), CFG.BUTTON_HEIGHT2));
                arrayList7.get(arrayList7.size() - 1).getHeight();
                int i714 = CFG.PADDING;
            }
        }
        size2 = arrayList7.size();
        posY = i;
        while (i13 < size2) {
            if (posY < arrayList7.get(i13).getPosY() + arrayList7.get(i13).getHeight() + CFG.PADDING) {
                posY = arrayList7.get(i13).getPosY() + arrayList7.get(i13).getHeight() + CFG.PADDING;
            }
        }
        int iMin5 = Math.min(posY, (CFG.GAME_HEIGHT - height4) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
        int i6110 = i;
        int i6111 = i2;
        arrayList7.add(new Empty(i6110, i6110, i6111, Math.max(posY, iMin5)));
        initMenu(new AnonymousClass15(Game.lang.get("Religion"), false, false, Images.title600), i31, height4, i6111, iMin5, arrayList7, false, true);
        this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (CFG.BUTTON_WIDTH + i) - ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop600, Images.insideBot600);
        spriteBatch.setColor(Colors.COLOR_GRADIENT);
        Images.gradientXY.draw(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut() && !Game.menuManager.getVisibleInGame_CivBonuses();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
    }
}
