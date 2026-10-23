package aoc.kingdoms.lukasz.menusInGame.Right;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Religion;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRect_Active;
import aoc.kingdoms.lukasz.menu_element.graph.Graph;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical_Data_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ReligionTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RightPopulation extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iModeID = 0;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;
    public static long totalPopulation;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRect_Active {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightPopulation.iModeID != 0) {
                InGame_RightPopulation.iModeID = 0;
                Game.menuManager.rebuildInGame_RightPopulation();
                InGame_RightPopulation.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Civilizations"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_RightPopulation.iModeID == 0 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID_Flag {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince == getCurrent()) {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.setActiveProvinceID(getCurrent());
                Game.menuManager.rebuildInGame_ProvinceInfo(true);
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                return;
            }
            Game.mapCoords.centerToProvinceID(getCurrent());
            Game.setActiveProvinceID(getCurrent());
            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                Game.menuManager.rebuildInGame_ProvinceInfo(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(getCurrent()).getCivID(), Game.getProvince(getCurrent()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("WorldsPopulation") + ": ", CFG.getPrecision2((Game.getProvince(getCurrent()).getPopulationTotal() / InGame_RightPopulation.totalPopulation) * 100.0f, 1000) + kfGnwGN.PqIWo, Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG_ID {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.continents.lContinents.get(getCurrent()).sName, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int populationTotal = 0;
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).getContinent() == getCurrent()) {
                    populationTotal += Game.getProvince(i).getPopulationTotal();
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + populationTotal), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("WorldsPopulation") + ": ", CFG.getPrecision2((populationTotal / InGame_RightPopulation.totalPopulation) * 100.0f, 1000) + "%", Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG_Religion {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Religion, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.religionManager.getReligion(this.imageID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ReligionTitle(this.imageID, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int populationTotal = 0;
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).getReligion() == this.imageID) {
                    populationTotal += Game.getProvince(i).getPopulationTotal();
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + populationTotal), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("WorldsPopulation") + ": ", CFG.getPrecision2((populationTotal / InGame_RightPopulation.totalPopulation) * 100.0f, 1000) + MQYGMkZOAcS.yqRVdoWUNMIEWu, Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$13, reason: invalid class name */
    class AnonymousClass13 extends MenuTitleIMG_DoubleText {
        AnonymousClass13(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            ImageManager.getImage(this.imageID).draw2(spriteBatch, i, i2 - getHeight(), i3, getHeight());
            drawGradient(spriteBatch, i, i2, i3, status);
            drawText(spriteBatch, i + (Images.boxTitleBORDERWIDTH / 2), i2, i3, status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_RightPopulation.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRect_Active {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightPopulation.iModeID != 1) {
                InGame_RightPopulation.iModeID = 1;
                Game.menuManager.rebuildInGame_RightPopulation();
                InGame_RightPopulation.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Provinces"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_RightPopulation.iModeID == 1 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRect_Active {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightPopulation.iModeID != 2) {
                InGame_RightPopulation.iModeID = 2;
                Game.menuManager.rebuildInGame_RightPopulation();
                InGame_RightPopulation.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Continents"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_RightPopulation.iModeID == 2 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRect_Active {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightPopulation.iModeID != 3) {
                InGame_RightPopulation.iModeID = 3;
                Game.menuManager.rebuildInGame_RightPopulation();
                InGame_RightPopulation.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Religion"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_RightPopulation.iModeID == 3 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$5, reason: invalid class name */
    class AnonymousClass5 extends Graph_Vertical {
        AnonymousClass5(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GraphPopulation.activeModeID = 0;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightPopulation.iSortID == 0) {
                InGame_RightPopulation.iSortID = 1;
            } else {
                InGame_RightPopulation.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RightPopulation();
            InGame_RightPopulation.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(cIUGJCqyPXfp.PGBufuUwkGW), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightPopulation.iSortID == 2) {
                InGame_RightPopulation.iSortID = 3;
            } else {
                InGame_RightPopulation.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RightPopulation();
            InGame_RightPopulation.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(lOow.ZlCALuhb), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightPopulation.iSortID == 4) {
                InGame_RightPopulation.iSortID = 5;
            } else {
                InGame_RightPopulation.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_RightPopulation();
            InGame_RightPopulation.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(aBEBOpwLZcQFCZ.sgr) + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Average") + ": " + Game.lang.get("GrowthRate"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID_FlagCiv {
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
            int current = getCurrent();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Provinces")).append(": ");
            String str = IwYCCQBuFGwl.mlRKnKpbcIUuhzZ;
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(current, sbAppend.append(CFG.getNumberWithSpaces(str + Game.getCiv(getCurrent()).getNumOfProvinces())).toString()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces(str + Game.getCiv(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("WorldsPopulation") + ": ", CFG.getPrecision2((Game.getCiv(getCurrent()).getPopulationTotal() / InGame_RightPopulation.totalPopulation) * 100.0f, 100) + "%", Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InGame_RightPopulation() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        List<MenuElement> arrayList = new ArrayList<>();
        int i6 = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i7 = Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.title1Red).getWidth();
        int i8 = CFG.GAME_WIDTH - width;
        int height = ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i9 = CFG.PADDING;
        int i10 = Images.boxTitleBORDERWIDTH + i6;
        int i11 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i12 = width - (i6 * 2);
        int i13 = (int) (((i12 - CFG.PADDING) - Images.boxTitleBORDERWIDTH) / 2.0f);
        arrayList.add(new AnonymousClass1(Game.lang.get("Civilizations"), i10, i9, i13, i11, iModeID == 0 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass2(Game.lang.get("Provinces"), CFG.PADDING + i10 + i13, i9, i13, i11, iModeID == 1 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int height2 = i9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass3(Game.lang.get("Continents"), i10, height2, i13, i11, iModeID == 2 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass4(Game.lang.get("Religion"), i10 + CFG.PADDING + i13, height2, i13, i11, iModeID == 3 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (iModeID == 0) {
            AnonymousClass5 anonymousClass5 = new AnonymousClass5(Graph_Vertical_Data_Type.CIVS_POPULATION, Game.lang.get("Civilizations"), Game.lang.get("Population"), i6, height3, i12, width / 2, true);
            anonymousClass5.allowStatisticsMode = false;
            arrayList.add(anonymousClass5);
            i = 1;
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            i = 1;
        }
        int i14 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.45f);
        int i15 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.35f);
        int i16 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.2f);
        int i17 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.45f);
        int i18 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.35f);
        int i19 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.2f);
        int i20 = Images.boxTitleBORDERWIDTH;
        int i21 = iSortID;
        arrayList.add(new AnonymousClass6((i21 == 0 || i21 == i) ? i : 0, i21 == i ? i : 0, Game.lang.get("Name"), -1, i20, height3, i14, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i20 + arrayList.get(arrayList.size() - 1).getWidth();
        int i22 = iSortID;
        int i23 = 2;
        arrayList.add(new AnonymousClass7(i22 == 2 || i22 == 3, i22 == 3, Game.lang.get("Population"), -1, width2, height3, i15, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i24 = iSortID;
        arrayList.add(new AnonymousClass8(i24 == 4 || i24 == 5, i24 == 5, Game.lang.get("GrowthRate"), -1, width3, height3, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        try {
            int i25 = iModeID;
            if (i25 == 0) {
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                for (int i26 = 1; i26 < Game.getCivsSize(); i26++) {
                    if (Game.getCiv(i26).getNumOfProvinces() > 0) {
                        arrayList2.add(Integer.valueOf(i26));
                        arrayList3.add(Long.valueOf(Game.getCiv(i26).getPopulationTotal()));
                        arrayList4.add(Float.valueOf(Game.getCiv(i26).getAverageGrowthRate()));
                    }
                }
                while (arrayList2.size() > 0) {
                    int i27 = iSortID;
                    if (i27 == 0) {
                        i5 = 0;
                        for (int i28 = 1; i28 < arrayList2.size(); i28++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i5)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i28)).intValue()).getCivName())) {
                                i5 = i28;
                            }
                        }
                    } else if (i27 == 1) {
                        i5 = 0;
                        for (int i29 = 1; i29 < arrayList2.size(); i29++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i29)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i5)).intValue()).getCivName())) {
                                i5 = i29;
                            }
                        }
                    } else if (i27 == i23) {
                        i5 = 0;
                        for (int i30 = 1; i30 < arrayList2.size(); i30++) {
                            if (((Long) arrayList3.get(i5)).longValue() < ((Long) arrayList3.get(i30)).longValue()) {
                                i5 = i30;
                            }
                        }
                    } else if (i27 == 3) {
                        i5 = 0;
                        for (int i31 = 1; i31 < arrayList2.size(); i31++) {
                            if (((Long) arrayList3.get(i5)).longValue() > ((Long) arrayList3.get(i31)).longValue()) {
                                i5 = i31;
                            }
                        }
                    } else {
                        if (i27 == 4) {
                            i5 = 0;
                            for (int i32 = 1; i32 < arrayList2.size(); i32++) {
                                if (((Float) arrayList4.get(i5)).floatValue() < ((Float) arrayList4.get(i32)).floatValue()) {
                                    i5 = i32;
                                }
                            }
                        } else if (i27 == 5) {
                            i5 = 0;
                            for (int i33 = 1; i33 < arrayList2.size(); i33++) {
                                if (((Float) arrayList4.get(i5)).floatValue() > ((Float) arrayList4.get(i33)).floatValue()) {
                                    i5 = i33;
                                }
                            }
                        } else {
                            i5 = 0;
                        }
                        int i34 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        arrayList.add(new AnonymousClass9(Game.getCiv(((Integer) arrayList2.get(i5)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i34, height4, i17, i11, ((Integer) arrayList2.get(i5)).intValue()));
                        int width4 = i34 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        arrayList.add(new Text_StaticBG(CFG.getNumberWithSpaces("" + arrayList3.get(i5)), CFG.FONT_REGULAR_SMALL, -1, width4, height4, i18, i11));
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList4.get(i5)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i19, i11));
                        arrayList.get(arrayList.size() - 1).getWidth();
                        int i35 = CFG.PADDING;
                        height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList2.remove(i5);
                        arrayList3.remove(i5);
                        arrayList4.remove(i5);
                        i23 = 2;
                    }
                    int i36 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                    arrayList.add(new AnonymousClass9(Game.getCiv(((Integer) arrayList2.get(i5)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i36, height4, i17, i11, ((Integer) arrayList2.get(i5)).intValue()));
                    int width5 = i36 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    arrayList.add(new Text_StaticBG(CFG.getNumberWithSpaces("" + arrayList3.get(i5)), CFG.FONT_REGULAR_SMALL, -1, width5, height4, i18, i11));
                    arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList4.get(i5)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i19, i11));
                    arrayList.get(arrayList.size() - 1).getWidth();
                    int i37 = CFG.PADDING;
                    height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.remove(i5);
                    arrayList3.remove(i5);
                    arrayList4.remove(i5);
                    i23 = 2;
                }
            } else if (i25 == 1) {
                ArrayList arrayList5 = new ArrayList();
                ArrayList arrayList6 = new ArrayList();
                ArrayList arrayList7 = new ArrayList();
                for (int i38 = 0; i38 < Game.getProvincesSize(); i38++) {
                    if (Game.getProvince(i38).getCivID() > 0) {
                        arrayList5.add(Integer.valueOf(i38));
                        arrayList6.add(Integer.valueOf(Game.getProvince(i38).getPopulationTotal()));
                        arrayList7.add(Float.valueOf(Game.getProvince(i38).getGrowthRateWithBonuses()));
                    }
                }
                int i39 = Graph.ANIMATION_TIME;
                while (arrayList5.size() > 0) {
                    int i40 = i39 - 1;
                    if (i39 <= 0) {
                        break;
                    }
                    int i41 = iSortID;
                    if (i41 == 0) {
                        i4 = 0;
                        for (int i42 = 1; i42 < arrayList5.size(); i42++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList5.get(i4)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList5.get(i42)).intValue()).getProvinceName())) {
                                i4 = i42;
                            }
                        }
                    } else if (i41 == 1) {
                        i4 = 0;
                        for (int i43 = 1; i43 < arrayList5.size(); i43++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList5.get(i43)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList5.get(i4)).intValue()).getProvinceName())) {
                                i4 = i43;
                            }
                        }
                    } else if (i41 == 2) {
                        i4 = 0;
                        for (int i44 = 1; i44 < arrayList5.size(); i44++) {
                            if (((Integer) arrayList6.get(i4)).intValue() < ((Integer) arrayList6.get(i44)).intValue()) {
                                i4 = i44;
                            }
                        }
                    } else if (i41 == 3) {
                        i4 = 0;
                        for (int i45 = 1; i45 < arrayList5.size(); i45++) {
                            if (((Integer) arrayList6.get(i4)).intValue() > ((Integer) arrayList6.get(i45)).intValue()) {
                                i4 = i45;
                            }
                        }
                    } else if (i41 == 4) {
                        i4 = 0;
                        for (int i46 = 1; i46 < arrayList5.size(); i46++) {
                            if (((Float) arrayList7.get(i4)).floatValue() < ((Float) arrayList7.get(i46)).floatValue()) {
                                i4 = i46;
                            }
                        }
                    } else if (i41 == 5) {
                        i4 = 0;
                        for (int i47 = 1; i47 < arrayList5.size(); i47++) {
                            if (((Float) arrayList7.get(i4)).floatValue() > ((Float) arrayList7.get(i47)).floatValue()) {
                                i4 = i47;
                            }
                        }
                    } else {
                        i4 = 0;
                    }
                    int i48 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                    arrayList.add(new AnonymousClass10(Game.getProvince(((Integer) arrayList5.get(i4)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i48, height4, i17, i11, ((Integer) arrayList5.get(i4)).intValue()));
                    int width6 = i48 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    arrayList.add(new Text_StaticBG(CFG.getNumberWithSpaces("" + arrayList6.get(i4)), CFG.FONT_REGULAR_SMALL, -1, width6, height4, i18, i11));
                    arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList7.get(i4)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i19, i11));
                    arrayList.get(arrayList.size() - 1).getWidth();
                    int i49 = CFG.PADDING;
                    height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList5.remove(i4);
                    arrayList6.remove(i4);
                    arrayList7.remove(i4);
                    i39 = i40;
                }
            } else if (i25 == 2) {
                ArrayList arrayList8 = new ArrayList();
                ArrayList arrayList9 = new ArrayList();
                ArrayList arrayList10 = new ArrayList();
                ArrayList arrayList11 = new ArrayList();
                for (int i50 = 0; i50 < Game.continents.iContinentsSize; i50++) {
                    arrayList8.add(Integer.valueOf(i50));
                    arrayList9.add(0);
                    arrayList10.add(Float.valueOf(0.0f));
                    arrayList11.add(0);
                }
                for (int i51 = 0; i51 < Game.getProvincesSize(); i51++) {
                    if (Game.getProvince(i51).getCivID() > 0) {
                        arrayList9.set(Game.getProvince(i51).getContinent(), Integer.valueOf(((Integer) arrayList9.get(Game.getProvince(i51).getContinent())).intValue() + Game.getProvince(i51).getPopulationTotal()));
                        arrayList10.set(Game.getProvince(i51).getContinent(), Float.valueOf(((Float) arrayList10.get(Game.getProvince(i51).getContinent())).floatValue() + Game.getProvince(i51).getGrowthRateWithBonuses()));
                        arrayList11.set(Game.getProvince(i51).getContinent(), Integer.valueOf(((Integer) arrayList11.get(Game.getProvince(i51).getContinent())).intValue() + 1));
                    }
                }
                arrayList8.remove(0);
                arrayList9.remove(0);
                arrayList10.remove(0);
                arrayList11.remove(0);
                for (int i52 = 0; i52 < arrayList8.size(); i52++) {
                    arrayList10.set(i52, Float.valueOf(((Float) arrayList10.get(i52)).floatValue() / ((Integer) arrayList11.get(i52)).intValue()));
                }
                while (arrayList8.size() > 0) {
                    int i53 = iSortID;
                    if (i53 == 0) {
                        i3 = 0;
                        for (int i54 = 1; i54 < arrayList8.size(); i54++) {
                            if (CFG.compareAlphabetic_TwoString(Game.continents.lContinents.get(((Integer) arrayList8.get(i3)).intValue()).sName, Game.continents.lContinents.get(((Integer) arrayList8.get(i54)).intValue()).sName)) {
                                i3 = i54;
                            }
                        }
                    } else if (i53 == 1) {
                        i3 = 0;
                        for (int i55 = 1; i55 < arrayList8.size(); i55++) {
                            if (CFG.compareAlphabetic_TwoString(Game.continents.lContinents.get(((Integer) arrayList8.get(i55)).intValue()).sName, Game.continents.lContinents.get(((Integer) arrayList8.get(i3)).intValue()).sName)) {
                                i3 = i55;
                            }
                        }
                    } else if (i53 == 2) {
                        i3 = 0;
                        for (int i56 = 1; i56 < arrayList8.size(); i56++) {
                            if (((Integer) arrayList9.get(i3)).intValue() < ((Integer) arrayList9.get(i56)).intValue()) {
                                i3 = i56;
                            }
                        }
                    } else if (i53 == 3) {
                        i3 = 0;
                        for (int i57 = 1; i57 < arrayList8.size(); i57++) {
                            if (((Integer) arrayList9.get(i3)).intValue() > ((Integer) arrayList9.get(i57)).intValue()) {
                                i3 = i57;
                            }
                        }
                    } else if (i53 == 4) {
                        i3 = 0;
                        for (int i58 = 1; i58 < arrayList8.size(); i58++) {
                            if (((Float) arrayList10.get(i3)).floatValue() < ((Float) arrayList10.get(i58)).floatValue()) {
                                i3 = i58;
                            }
                        }
                    } else if (i53 == 5) {
                        i3 = 0;
                        for (int i59 = 1; i59 < arrayList8.size(); i59++) {
                            if (((Float) arrayList10.get(i3)).floatValue() > ((Float) arrayList10.get(i59)).floatValue()) {
                                i3 = i59;
                            }
                        }
                    } else {
                        i3 = 0;
                    }
                    int i60 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                    arrayList.add(new AnonymousClass11(Game.continents.lContinents.get(((Integer) arrayList8.get(i3)).intValue()).sName, CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i60, height4, i17, i11, ((Integer) arrayList8.get(i3)).intValue()));
                    int width7 = i60 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    arrayList.add(new Text_StaticBG(CFG.getNumberWithSpaces("" + arrayList9.get(i3)), CFG.FONT_REGULAR_SMALL, -1, width7, height4, i18, i11));
                    arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList10.get(i3)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i19, i11));
                    arrayList.get(arrayList.size() - 1).getWidth();
                    int i61 = CFG.PADDING;
                    height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList8.remove(i3);
                    arrayList9.remove(i3);
                    arrayList10.remove(i3);
                }
            } else if (i25 == 3) {
                ArrayList arrayList12 = new ArrayList();
                ArrayList arrayList13 = new ArrayList();
                ArrayList arrayList14 = new ArrayList();
                ArrayList arrayList15 = new ArrayList();
                for (int i62 = 0; i62 < Game.religionManager.getReligionsSize(); i62++) {
                    arrayList12.add(Integer.valueOf(i62));
                    arrayList13.add(0);
                    arrayList14.add(Float.valueOf(0.0f));
                    arrayList15.add(0);
                }
                for (int i63 = 0; i63 < Game.getProvincesSize(); i63++) {
                    if (Game.getProvince(i63).getCivID() > 0) {
                        arrayList13.set(Game.getProvince(i63).getReligion(), Integer.valueOf(((Integer) arrayList13.get(Game.getProvince(i63).getReligion())).intValue() + Game.getProvince(i63).getPopulationTotal()));
                        arrayList14.set(Game.getProvince(i63).getReligion(), Float.valueOf(((Float) arrayList14.get(Game.getProvince(i63).getReligion())).floatValue() + Game.getProvince(i63).getGrowthRateWithBonuses()));
                        arrayList15.set(Game.getProvince(i63).getReligion(), Integer.valueOf(((Integer) arrayList15.get(Game.getProvince(i63).getReligion())).intValue() + 1));
                    }
                }
                for (int i64 = 0; i64 < arrayList12.size(); i64++) {
                    arrayList14.set(i64, Float.valueOf(((Float) arrayList14.get(i64)).floatValue() / ((Integer) arrayList15.get(i64)).intValue()));
                }
                while (arrayList12.size() > 0) {
                    int i65 = iSortID;
                    if (i65 == 0) {
                        i2 = 0;
                        for (int i66 = 1; i66 < arrayList12.size(); i66++) {
                            if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList12.get(i2)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList12.get(i66)).intValue()).Name)) {
                                i2 = i66;
                            }
                        }
                    } else {
                        if (i65 == 1) {
                            i2 = 0;
                            for (int i67 = 1; i67 < arrayList12.size(); i67++) {
                                if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList12.get(i67)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList12.get(i2)).intValue()).Name)) {
                                    i2 = i67;
                                }
                            }
                        } else if (i65 == 2) {
                            i2 = 0;
                            for (int i68 = 1; i68 < arrayList12.size(); i68++) {
                                if (((Integer) arrayList13.get(i2)).intValue() < ((Integer) arrayList13.get(i68)).intValue()) {
                                    i2 = i68;
                                }
                            }
                        } else if (i65 == 3) {
                            i2 = 0;
                            for (int i69 = 1; i69 < arrayList12.size(); i69++) {
                                if (((Integer) arrayList13.get(i2)).intValue() > ((Integer) arrayList13.get(i69)).intValue()) {
                                    i2 = i69;
                                }
                            }
                        } else if (i65 == 4) {
                            i2 = 0;
                            for (int i70 = 1; i70 < arrayList12.size(); i70++) {
                                if (((Float) arrayList14.get(i2)).floatValue() < ((Float) arrayList14.get(i70)).floatValue()) {
                                    i2 = i70;
                                }
                            }
                        } else if (i65 == 5) {
                            i2 = 0;
                            for (int i71 = 1; i71 < arrayList12.size(); i71++) {
                                if (((Float) arrayList14.get(i2)).floatValue() > ((Float) arrayList14.get(i71)).floatValue()) {
                                    i2 = i71;
                                }
                            }
                        } else {
                            i2 = 0;
                        }
                        int i72 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        arrayList.add(new AnonymousClass12(Game.religionManager.getReligion(((Integer) arrayList12.get(i2)).intValue()).Name, ((Integer) arrayList12.get(i2)).intValue(), i72, height4, i17, i11, ImageManager.getImage(Images.religion).getWidth(), 0));
                        int width8 = i72 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        arrayList.add(new Text_StaticBG(CFG.getNumberWithSpaces("" + arrayList13.get(i2)), CFG.FONT_REGULAR_SMALL, -1, width8, height4, i18, i11));
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList14.get(i2)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i19, i11));
                        arrayList.get(arrayList.size() - 1).getWidth();
                        int i73 = CFG.PADDING;
                        height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList12.remove(i2);
                        arrayList13.remove(i2);
                        arrayList14.remove(i2);
                    }
                    int i74 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                    arrayList.add(new AnonymousClass12(Game.religionManager.getReligion(((Integer) arrayList12.get(i2)).intValue()).Name, ((Integer) arrayList12.get(i2)).intValue(), i74, height4, i17, i11, ImageManager.getImage(Images.religion).getWidth(), 0));
                    int width9 = i74 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    arrayList.add(new Text_StaticBG(CFG.getNumberWithSpaces("" + arrayList13.get(i2)), CFG.FONT_REGULAR_SMALL, -1, width9, height4, i18, i11));
                    arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList14.get(i2)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i19, i11));
                    arrayList.get(arrayList.size() - 1).getWidth();
                    int i75 = CFG.PADDING;
                    height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList12.remove(i2);
                    arrayList13.remove(i2);
                    arrayList14.remove(i2);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        int size = arrayList.size();
        int posY = 0;
        for (int i76 = 0; i76 < size; i76++) {
            if (posY < arrayList.get(i76).getPosY() + arrayList.get(i76).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i76).getPosY() + arrayList.get(i76).getHeight() + CFG.PADDING;
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        totalPopulation = 0L;
        for (int i77 = 0; i77 < Game.getProvincesSize(); i77++) {
            if (Game.getProvince(i77).getCivID() > 0) {
                totalPopulation += (long) Game.getProvince(i77).getPopulationTotal();
            }
        }
        initMenu(new AnonymousClass13(Game.lang.get("Population"), Game.lang.get("Total") + ": " + CFG.getNumberWithSpaces("" + totalPopulation), false, false, Images.title600), i8, height, width, iMin, arrayList, false, true);
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
