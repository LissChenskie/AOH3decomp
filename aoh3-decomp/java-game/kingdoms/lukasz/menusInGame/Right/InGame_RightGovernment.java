package aoc.kingdoms.lukasz.menusInGame.Right;

import androidx.core.internal.oiV.CoLRpi;
import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical_Data_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusIdeology;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsGovernment;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_Center;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RightGovernment extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iGovID = -1;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$1, reason: invalid class name */
    class AnonymousClass1 extends PieChart_Data {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data
        public float getPieChartValue_ColorB(int i) {
            return Game.ideologiesManager.getIdeology(getPieChartValue(i).getDataID()).Color[2];
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data
        public float getPieChartValue_ColorG(int i) {
            return Game.ideologiesManager.getIdeology(getPieChartValue(i).getDataID()).Color[1];
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data
        public float getPieChartValue_ColorR(int i) {
            return Game.ideologiesManager.getIdeology(getPieChartValue(i).getDataID()).Color[0];
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonIdeology2 {
        AnonymousClass10(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RightGovernment.iGovID = -1;
            Game.menuManager.rebuildInGame_RightGovernment();
            InGame_RightGovernment.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Government"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$11, reason: invalid class name */
    class AnonymousClass11 extends Graph_Vertical {
        AnonymousClass11(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$12, reason: invalid class name */
    class AnonymousClass12 extends Text_TitleBlueSort {
        AnonymousClass12(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightGovernment.iSortID == 0) {
                InGame_RightGovernment.iSortID = 1;
            } else {
                InGame_RightGovernment.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RightGovernment();
            InGame_RightGovernment.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$13, reason: invalid class name */
    class AnonymousClass13 extends Text_TitleBlueSort {
        AnonymousClass13(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightGovernment.iSortID == 2) {
                InGame_RightGovernment.iSortID = 3;
            } else {
                InGame_RightGovernment.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RightGovernment();
            InGame_RightGovernment.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$14, reason: invalid class name */
    class AnonymousClass14 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(getCurrent(), Game.ideologiesManager.getIdeology(Game.getCiv(getCurrent()).getIdeologyID()).Name));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$15, reason: invalid class name */
    class AnonymousClass15 extends Text_StaticBG {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, int i6) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$16, reason: invalid class name */
    class AnonymousClass16 extends MenuTitleIMG {
        AnonymousClass16(String str, boolean z, boolean z2, int i) {
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
            return InGame_RightGovernment.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$2, reason: invalid class name */
    class AnonymousClass2 extends PieChart_WithStatsGovernment {
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
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get(Game.map.lMaps.get(Game.map.iActiveMapID).mapData.Name));
            String str = HTGgowNjn.eOmDtGlXTjQ;
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(sbAppend.append(str).toString(), Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Governments"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            for (int i = 0; i < this.pieChartData.getPieChartValuesSize() && i < 10; i++) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusIdeology(Game.ideologiesManager.getIdeology(this.pieChartData.getCivID(i)).Name + str, CFG.getPrecision2(this.pieChartData.getPieChartValue(i).getPercentage(), 10) + "%", this.pieChartData.getCivID(i), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsGovernment, aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStats, aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
        protected void drawPieChart(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7) {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, (getPosX() - CFG.PADDING) + i, (getPosY() - CFG.PADDING) + i2, (CFG.PADDING * 2) + getWidth(), (CFG.PADDING * 2) + getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
            super.drawPieChart(spriteBatch, i, i2, z, z2, i3, i4, i5, i6, i7);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Population") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(this.sText2, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(this.imageID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.COLOR_POPULATION;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightGovernment.iSortID == 0) {
                InGame_RightGovernment.iSortID = 1;
            } else {
                InGame_RightGovernment.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RightGovernment();
            InGame_RightGovernment.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightGovernment.iSortID == 2) {
                InGame_RightGovernment.iSortID = 3;
            } else {
                InGame_RightGovernment.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RightGovernment();
            InGame_RightGovernment.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(CaiJWNfqszJNZ.OeHU) + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonIdeology2 {
        AnonymousClass7(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RightGovernment.iGovID = this.ideologyID;
            Game.menuManager.rebuildInGame_RightGovernment();
            InGame_RightGovernment.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(jkEBdieJhbh.VbhwdveKLrvPWyy) + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.ideologiesManager.getIdeology(this.ideologyID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID_FlagCiv_Center {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(getCurrent(), Game.ideologiesManager.getIdeology(Game.getCiv(getCurrent()).getIdeologyID()).Name));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x04df  */
    /* JADX WARN: Code duplicated, block: B:102:0x04f7  */
    /* JADX WARN: Code duplicated, block: B:105:0x04fd  */
    /* JADX WARN: Code duplicated, block: B:106:0x0531  */
    /* JADX WARN: Code duplicated, block: B:211:0x04f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:94:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:95:0x04cd  */
    public InGame_RightGovernment() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        ArrayList arrayList;
        int i6;
        int i7;
        int width;
        int i8;
        ArrayList arrayList2;
        int i9;
        int i10;
        int i11;
        ArrayList arrayList3 = new ArrayList();
        int i12 = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i13 = Images.boxTitleBORDERWIDTH;
        int width2 = ImageManager.getImage(Images.title1Red).getWidth();
        int i14 = CFG.GAME_WIDTH - width2;
        int height = ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i15 = CFG.PADDING;
        int i16 = Images.boxTitleBORDERWIDTH;
        int i17 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i18 = (int) ((width2 - Images.boxTitleBORDERWIDTH) * 0.35f);
        int i19 = (int) ((width2 - Images.boxTitleBORDERWIDTH) * 0.65f);
        int i20 = (int) (((width2 - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 3)) * 0.35f);
        int i21 = (int) (((width2 - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 3)) * 0.65f);
        int i22 = (int) ((width2 - Images.boxTitleBORDERWIDTH) * 0.6f);
        int i23 = (int) ((width2 - Images.boxTitleBORDERWIDTH) * 0.4f);
        int i24 = (int) (((width2 - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 3)) * 0.6f);
        int i25 = (int) (((width2 - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 3)) * 0.4f);
        int i26 = Images.boxTitleBORDERWIDTH;
        int i27 = CFG.BUTTON_HEIGHT;
        int i28 = (CFG.BUTTON_HEIGHT - CFG.PADDING) / 2;
        if (iGovID < 0) {
            int i29 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            for (int i30 = 0; i30 < Game.ideologiesManager.getIdeologiesSize(); i30++) {
                arrayList4.add(Integer.valueOf(i30));
                arrayList5.add(0L);
            }
            int i31 = 0;
            while (i31 < Game.getProvincesSize()) {
                if (Game.getProvince(i31).getCivID() > 0) {
                    arrayList5.set(Game.getCiv(Game.getProvince(i31).getCivID()).getIdeologyID(), Long.valueOf(((Long) arrayList5.get(Game.getCiv(Game.getProvince(i31).getCivID()).getIdeologyID())).longValue() + ((long) Game.getProvince(i31).getPopulationTotal())));
                }
                i31++;
                i12 = i12;
            }
            int i32 = i12;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1();
            int size = arrayList4.size() - 1;
            long jLongValue = 0;
            while (size >= 0) {
                if (((Long) arrayList5.get(size)).longValue() > 0.001f) {
                    anonymousClass1.addPieChartValues(new PieChart_Value(((Integer) arrayList4.get(size)).intValue(), ((Long) arrayList5.get(size)).longValue()));
                    jLongValue += ((Long) arrayList5.get(size)).longValue();
                }
                size--;
                i19 = i19;
            }
            int i33 = i19;
            int i34 = (CFG.BUTTON_HEIGHT3 * 2) + CFG.PADDING;
            ArrayList arrayList6 = arrayList5;
            ArrayList arrayList7 = arrayList4;
            arrayList3.add(new AnonymousClass2(i29, 0 + CFG.PADDING, i34 - (CFG.PADDING * 2), i34 - (CFG.PADDING * 2), anonymousClass1, null));
            int posX = arrayList3.get(arrayList3.size() - 1).getPosX() + arrayList3.get(arrayList3.size() - 1).getWidth() + (CFG.PADDING * 2);
            int i35 = (width2 - i32) - posX;
            int height2 = 0 + arrayList3.get(arrayList3.size() - 1).getHeight() + (CFG.PADDING * 3);
            i2 = i14;
            i3 = height;
            int i36 = 1;
            arrayList3.add(new AnonymousClass3(Game.lang.get("Governments") + ": ", "" + Game.ideologiesManager.getIdeologiesSize(), Images.government, posX, 0, i35, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
            String str = "";
            arrayList3.add(new AnonymousClass4(CoLRpi.yGmpnW, "" + CFG.getShortNumber(jLongValue), Images.population, posX, 0 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING, i35, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
            int i37 = iSortID;
            arrayList3.add(new AnonymousClass5(i37 == 0 || i37 == 1, i37 == 1, Game.lang.get("Name"), -1, i29, height2, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width3 = i29 + arrayList3.get(arrayList3.size() - 1).getWidth();
            int i38 = iSortID;
            arrayList3.add(new AnonymousClass6(i38 == 2 || i38 == 3, i38 == 3, Game.lang.get("Population"), -1, width3, height2, i33, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int height3 = height2 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
            while (arrayList7.size() > 0) {
                int i39 = iSortID;
                if (i39 == 0) {
                    int i40 = i36;
                    i7 = 0;
                    while (i40 < arrayList7.size()) {
                        ArrayList arrayList8 = arrayList7;
                        if (CFG.compareAlphabetic_TwoString(Game.ideologiesManager.getIdeology(((Integer) arrayList8.get(i7)).intValue()).Name, Game.ideologiesManager.getIdeology(((Integer) arrayList8.get(i40)).intValue()).Name)) {
                            i7 = i40;
                        }
                        i40++;
                        arrayList7 = arrayList8;
                    }
                    arrayList = arrayList7;
                } else {
                    arrayList = arrayList7;
                    if (i39 == i36) {
                        i7 = 0;
                        for (int i41 = i36; i41 < arrayList.size(); i41++) {
                            if (CFG.compareAlphabetic_TwoString(Game.ideologiesManager.getIdeology(((Integer) arrayList.get(i41)).intValue()).Name, Game.ideologiesManager.getIdeology(((Integer) arrayList.get(i7)).intValue()).Name)) {
                                i7 = i41;
                            }
                        }
                    } else if (i39 == 2) {
                        int i42 = 0;
                        for (int i43 = i36; i43 < arrayList.size(); i43++) {
                            if (((Long) arrayList6.get(i42)).longValue() < ((Long) arrayList6.get(i43)).longValue()) {
                                i42 = i43;
                            }
                        }
                        i6 = i42;
                    } else if (i39 == 3) {
                        int i44 = 0;
                        for (int i45 = i36; i45 < arrayList.size(); i45++) {
                            if (((Long) arrayList6.get(i44)).longValue() > ((Long) arrayList6.get(i45)).longValue()) {
                                i44 = i45;
                            }
                        }
                        i6 = i44;
                    } else {
                        i6 = 0;
                    }
                    int i46 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                    arrayList3.add(new AnonymousClass7(((Integer) arrayList.get(i6)).intValue(), i46, height3, i20, i27));
                    width = i46 + arrayList3.get(arrayList3.size() - i36).getWidth() + CFG.PADDING;
                    String str2 = str;
                    i8 = i6;
                    arrayList3.add(new AnonymousClass8(CFG.getNumberWithSpaces(str2 + arrayList6.get(i6)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i21, i28));
                    arrayList2 = new ArrayList();
                    for (i9 = 0; i9 < Game.getCivsSize(); i9++) {
                        if (Game.getCiv(i9).getIdeologyID() == ((Integer) arrayList.get(i8)).intValue()) {
                            arrayList2.add(Long.valueOf(Game.getCiv(i9).getPopulationTotal()));
                        } else {
                            arrayList2.add(0L);
                        }
                    }
                    i11 = 0;
                    for (i10 = 1; i10 < Game.getCivsSize(); i10++) {
                        if (((Long) arrayList2.get(i11)).longValue() < ((Long) arrayList2.get(i10)).longValue()) {
                            i11 = i10;
                        }
                    }
                    if (i11 > 0) {
                        arrayList3.add(new AnonymousClass9(Game.getCiv(i11).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i28, i21, i28, i11));
                    } else {
                        arrayList3.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i28, i21, i28));
                    }
                    arrayList2.clear();
                    height3 += i27 + CFG.PADDING;
                    arrayList.remove(i8);
                    ArrayList arrayList9 = arrayList6;
                    arrayList9.remove(i8);
                    arrayList6 = arrayList9;
                    width2 = width2;
                    str = str2;
                    i36 = 1;
                    arrayList7 = arrayList;
                }
                i6 = i7;
                int i47 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                arrayList3.add(new AnonymousClass7(((Integer) arrayList.get(i6)).intValue(), i47, height3, i20, i27));
                width = i47 + arrayList3.get(arrayList3.size() - i36).getWidth() + CFG.PADDING;
                String str3 = str;
                i8 = i6;
                arrayList3.add(new AnonymousClass8(CFG.getNumberWithSpaces(str3 + arrayList6.get(i6)), CFG.FONT_REGULAR_SMALL, -1, width, height3, i21, i28));
                arrayList2 = new ArrayList();
                while (i9 < Game.getCivsSize()) {
                    if (Game.getCiv(i9).getIdeologyID() == ((Integer) arrayList.get(i8)).intValue()) {
                        arrayList2.add(Long.valueOf(Game.getCiv(i9).getPopulationTotal()));
                    } else {
                        arrayList2.add(0L);
                    }
                }
                i11 = 0;
                while (i10 < Game.getCivsSize()) {
                    if (((Long) arrayList2.get(i11)).longValue() < ((Long) arrayList2.get(i10)).longValue()) {
                        i11 = i10;
                    }
                }
                if (i11 > 0) {
                    arrayList3.add(new AnonymousClass9(Game.getCiv(i11).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i28, i21, i28, i11));
                } else {
                    arrayList3.add(new Text_StaticBG("-", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width, CFG.PADDING + height3 + i28, i21, i28));
                }
                arrayList2.clear();
                height3 += i27 + CFG.PADDING;
                arrayList.remove(i8);
                ArrayList arrayList10 = arrayList6;
                arrayList10.remove(i8);
                arrayList6 = arrayList10;
                width2 = width2;
                str = str3;
                i36 = 1;
                arrayList7 = arrayList;
            }
            i = width2;
        } else {
            i = width2;
            i2 = i14;
            i3 = height;
            int i48 = CFG.PADDING;
            int i49 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
            int i50 = i24;
            arrayList3.add(new AnonymousClass10(iGovID, i49, i48, (i - i49) - CFG.PADDING, i27));
            int height4 = i48 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
            arrayList3.add(new AnonymousClass11(Graph_Vertical_Data_Type.GOVERNMENTS_CIVS_RIGHT, Game.lang.get("Civilizations"), Game.lang.get("Civilizations"), i12, height4, i - (i12 * 2), i / 2, true));
            int height5 = height4 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
            int i51 = Images.boxTitleBORDERWIDTH;
            int i52 = iSortID;
            arrayList3.add(new AnonymousClass12(i52 == 0 || i52 == 1, i52 == 1, Game.lang.get("Name"), -1, i51, height5, i22, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width4 = i51 + arrayList3.get(arrayList3.size() - 1).getWidth();
            int i53 = iSortID;
            int i54 = 3;
            arrayList3.add(new AnonymousClass13(i53 == 2 || i53 == 3, i53 == 3, Game.lang.get("Population"), -1, width4, height5, i23, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int height6 = height5 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
            ArrayList arrayList11 = new ArrayList();
            ArrayList arrayList12 = new ArrayList();
            for (int i55 = 0; i55 < Game.getCivsSize(); i55++) {
                arrayList11.add(Integer.valueOf(i55));
                if (Game.getCiv(i55).getIdeologyID() == iGovID) {
                    arrayList12.add(Long.valueOf(Game.getCiv(i55).getPopulationTotal()));
                } else {
                    arrayList12.add(0L);
                }
            }
            for (int size2 = arrayList11.size() - 1; size2 >= 0; size2--) {
                if (((Long) arrayList12.get(size2)).longValue() <= 0) {
                    arrayList11.remove(size2);
                    arrayList12.remove(size2);
                }
            }
            if (arrayList11.size() > 0) {
                int height7 = height6;
                while (arrayList11.size() > 0) {
                    int i56 = iSortID;
                    if (i56 == 0) {
                        i5 = 0;
                        for (int i57 = 1; i57 < arrayList11.size(); i57++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList11.get(i5)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList11.get(i57)).intValue()).getCivName())) {
                                i5 = i57;
                            }
                        }
                    } else if (i56 == 1) {
                        i5 = 0;
                        for (int i58 = 1; i58 < arrayList11.size(); i58++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList11.get(i58)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList11.get(i5)).intValue()).getCivName())) {
                                i5 = i58;
                            }
                        }
                    } else if (i56 == 2) {
                        i5 = 0;
                        for (int i59 = 1; i59 < arrayList11.size(); i59++) {
                            if (((Long) arrayList12.get(i5)).longValue() < ((Long) arrayList12.get(i59)).longValue()) {
                                i5 = i59;
                            }
                        }
                    } else {
                        if (i56 == i54) {
                            i5 = 0;
                            for (int i60 = 1; i60 < arrayList11.size(); i60++) {
                                if (((Long) arrayList12.get(i5)).longValue() > ((Long) arrayList12.get(i60)).longValue()) {
                                    i5 = i60;
                                }
                            }
                        } else {
                            i4 = 0;
                        }
                        int i61 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        int i62 = height7;
                        int i63 = i50;
                        int i64 = i50;
                        int i65 = i4;
                        arrayList3.add(new AnonymousClass14(Game.getCiv(((Integer) arrayList11.get(i4)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i61, i62, i63, i17, ((Integer) arrayList11.get(i4)).intValue()));
                        arrayList3.add(new AnonymousClass15(CFG.getNumberWithSpaces("" + arrayList12.get(i65)), CFG.FONT_REGULAR_SMALL, -1, i61 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, i62, i25, i17));
                        height7 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                        arrayList11.remove(i65);
                        arrayList12.remove(i65);
                        i50 = i64;
                        i54 = 3;
                    }
                    i4 = i5;
                    int i66 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                    int i67 = height7;
                    int i68 = i50;
                    int i69 = i50;
                    int i610 = i4;
                    arrayList3.add(new AnonymousClass14(Game.getCiv(((Integer) arrayList11.get(i4)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i66, i67, i68, i17, ((Integer) arrayList11.get(i4)).intValue()));
                    arrayList3.add(new AnonymousClass15(CFG.getNumberWithSpaces("" + arrayList12.get(i610)), CFG.FONT_REGULAR_SMALL, -1, i66 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, i67, i25, i17));
                    height7 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                    arrayList11.remove(i610);
                    arrayList12.remove(i610);
                    i50 = i69;
                    i54 = 3;
                }
            } else {
                arrayList3.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, CFG.PADDING + Images.boxTitleBORDERWIDTH, height6, i - (Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2)), CFG.BUTTON_HEIGHT2));
                arrayList3.get(arrayList3.size() - 1).getHeight();
                int i70 = CFG.PADDING;
            }
        }
        int size3 = arrayList3.size();
        int posY = 0;
        for (int i71 = 0; i71 < size3; i71++) {
            if (posY < arrayList3.get(i71).getPosY() + arrayList3.get(i71).getHeight() + CFG.PADDING) {
                posY = arrayList3.get(i71).getPosY() + arrayList3.get(i71).getHeight() + CFG.PADDING;
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - i3) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
        int i72 = i;
        arrayList3.add(new Empty(0, 0, i72, Math.max(posY, iMin)));
        initMenu(new AnonymousClass16(Game.lang.get("Government"), false, false, Images.title600), i2, i3, i72, iMin, arrayList3, false, true);
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
