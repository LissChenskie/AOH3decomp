package aoc.kingdoms.lukasz.menusInGame.Right;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
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
import aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RightInfrastructure extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iModeID = 0;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;
    public static float totalInfrastructure;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRect_Active {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightInfrastructure.iModeID != 0) {
                InGame_RightInfrastructure.iModeID = 0;
                Game.menuManager.rebuildInGame_RightInfrastructure();
                InGame_RightInfrastructure.lTime = 0L;
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
            return InGame_RightInfrastructure.iModeID == 0 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$10, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Infrastructure") + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(getCurrent()).getInfrastructure()), Images.infrastructure, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$11, reason: invalid class name */
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
            float infrastructure = 0.0f;
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).getContinent() == getCurrent()) {
                    infrastructure += Game.getProvince(i).getInfrastructure();
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Infrastructure") + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(infrastructure, 1)), Images.infrastructure, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$12, reason: invalid class name */
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
            float infrastructure = 0.0f;
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).getReligion() == this.imageID) {
                    infrastructure += Game.getProvince(i).getInfrastructure();
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Infrastructure") + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(infrastructure, 1)), Images.infrastructure, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$13, reason: invalid class name */
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
            return InGame_RightInfrastructure.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRect_Active {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightInfrastructure.iModeID != 1) {
                InGame_RightInfrastructure.iModeID = 1;
                Game.menuManager.rebuildInGame_RightInfrastructure();
                InGame_RightInfrastructure.lTime = 0L;
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
            return InGame_RightInfrastructure.iModeID == 1 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRect_Active {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightInfrastructure.iModeID != 2) {
                InGame_RightInfrastructure.iModeID = 2;
                Game.menuManager.rebuildInGame_RightInfrastructure();
                InGame_RightInfrastructure.lTime = 0L;
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
            return InGame_RightInfrastructure.iModeID == 2 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRect_Active {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightInfrastructure.iModeID != 3) {
                InGame_RightInfrastructure.iModeID = 3;
                Game.menuManager.rebuildInGame_RightInfrastructure();
                InGame_RightInfrastructure.lTime = 0L;
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
            return InGame_RightInfrastructure.iModeID == 3 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$5, reason: invalid class name */
    class AnonymousClass5 extends Graph_Vertical {
        AnonymousClass5(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GraphPopulation.activeModeID = 3;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightInfrastructure.iSortID == 0) {
                InGame_RightInfrastructure.iSortID = 1;
            } else {
                InGame_RightInfrastructure.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RightInfrastructure();
            InGame_RightInfrastructure.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightInfrastructure.iSortID == 2) {
                InGame_RightInfrastructure.iSortID = 3;
            } else {
                InGame_RightInfrastructure.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RightInfrastructure();
            InGame_RightInfrastructure.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Infrastructure"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightInfrastructure.iSortID == 4) {
                InGame_RightInfrastructure.iSortID = 5;
            } else {
                InGame_RightInfrastructure.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_RightInfrastructure();
            InGame_RightInfrastructure.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            LanguageManager languageManager;
            String str;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            if (InGame_RightInfrastructure.iModeID == 1) {
                languageManager = Game.lang;
                str = "Infrastructure";
            } else {
                languageManager = Game.lang;
                str = "World";
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(languageManager.get(str), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure$9, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(getCurrent(), Game.lang.get("Provinces") + ": " + CFG.getNumberWithSpaces("" + Game.getCiv(getCurrent()).getNumOfProvinces())));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Infrastructure") + ": ", CFG.getPrecision2(Game.getCiv(getCurrent()).getInfrastructure(), 10), Images.infrastructure, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float infrastructure = 0.0f;
            for (int i = 0; i < Game.getCiv(getCurrent()).getNumOfProvinces(); i++) {
                infrastructure += Game.getProvince(Game.getCiv(getCurrent()).getProvinceID(i)).getInfrastructure();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Average") + ": ", CFG.getPrecision2(infrastructure / Game.getCiv(getCurrent()).getNumOfProvinces(), 100), Images.infrastructure, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("World") + ": ", "" + CFG.getPrecision2((Game.getCiv(getCurrent()).getInfrastructure() / InGame_RightInfrastructure.totalInfrastructure) * 100.0f, 100) + "%", Images.infrastructure, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:381:0x0d6d  */
    /* JADX WARN: Code duplicated, block: B:383:0x0d87  */
    /* JADX WARN: Code duplicated, block: B:420:0x0d9f A[SYNTHETIC] */
    public InGame_RightInfrastructure() {
        String str;
        String str2;
        String str3;
        String str4;
        Exception exc;
        int size;
        int posY;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        List<MenuElement> arrayList = new ArrayList<>();
        int i8 = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i9 = Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.title1Red).getWidth();
        int i10 = CFG.GAME_WIDTH - width;
        int height = ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i11 = CFG.PADDING;
        int i12 = Images.boxTitleBORDERWIDTH + i8;
        int i13 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i14 = width - (i8 * 2);
        int i15 = (int) (((i14 - CFG.PADDING) - Images.boxTitleBORDERWIDTH) / 2.0f);
        totalInfrastructure = 0.0f;
        for (int i16 = 0; i16 < Game.getProvincesSize(); i16++) {
            if (Game.getProvince(i16).getCivID() > 0) {
                totalInfrastructure += Game.getProvince(i16).getInfrastructure();
            }
        }
        arrayList.add(new AnonymousClass1(Game.lang.get("Civilizations"), i12, i11, i15, i13, iModeID == 0 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass2(Game.lang.get("Provinces"), CFG.PADDING + i12 + i15, i11, i15, i13, iModeID == 1 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int height2 = i11 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass3(Game.lang.get("Continents"), i12, height2, i15, i13, iModeID == 2 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass4(Game.lang.get("Religion"), i12 + CFG.PADDING + i15, height2, i15, i13, iModeID == 3 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (iModeID == 0 && totalInfrastructure > 0.0f) {
            AnonymousClass5 anonymousClass5 = new AnonymousClass5(Graph_Vertical_Data_Type.CIVS_INFRASTRUCTURE, Game.lang.get("Civilizations"), Game.lang.get("Infrastructure"), i8, height3, i14, width / 2, true);
            anonymousClass5.allowStatisticsMode = false;
            arrayList.add(anonymousClass5);
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i17 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.5f);
        int i18 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i19 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i20 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.5f);
        int i21 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.25f);
        int i22 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.25f);
        int i23 = Images.boxTitleBORDERWIDTH;
        int i24 = iSortID;
        int i25 = 4;
        int i26 = i19;
        arrayList.add(new AnonymousClass6(i24 == 0 || i24 == 1, i24 == 1, Game.lang.get("Name"), -1, i23, height3, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i23 + arrayList.get(arrayList.size() - 1).getWidth();
        int i27 = iSortID;
        boolean z = i27 == 2 || i27 == 3;
        boolean z2 = i27 == 3;
        if (iModeID == 1) {
            str2 = Game.lang.get("Economy");
            str = "Infrastructure";
        } else {
            str = r15;
            str2 = Game.lang.get(str);
        }
        String str5 = str;
        arrayList.add(new AnonymousClass7(z, z2, str2, -1, width2, height3, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i28 = iSortID;
        boolean z3 = i28 == 4 || i28 == 5;
        boolean z4 = i28 == 5;
        if (iModeID == 1) {
            str3 = str5;
            str4 = Game.lang.get(str3);
        } else {
            str3 = str5;
            str4 = Game.lang.get("World");
        }
        String str6 = str3;
        arrayList.add(new AnonymousClass8(z3, z4, str4, -1, width3, height3, i26, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        try {
            int i29 = iModeID;
            try {
                if (i29 == 0) {
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    for (int i30 = 1; i30 < Game.getCivsSize(); i30++) {
                        if (Game.getCiv(i30).getNumOfProvinces() > 0) {
                            arrayList2.add(Integer.valueOf(i30));
                            arrayList3.add(Integer.valueOf(Game.getCiv(i30).getInfrastructure()));
                            arrayList4.add(Float.valueOf((Game.getCiv(i30).getInfrastructure() / totalInfrastructure) * 100.0f));
                        }
                    }
                    while (arrayList2.size() > 0) {
                        int i31 = iSortID;
                        if (i31 == 0) {
                            i7 = 0;
                            for (int i32 = 1; i32 < arrayList2.size(); i32++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i7)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i32)).intValue()).getCivName())) {
                                    i7 = i32;
                                }
                            }
                        } else if (i31 == 1) {
                            i7 = 0;
                            for (int i33 = 1; i33 < arrayList2.size(); i33++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i33)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i7)).intValue()).getCivName())) {
                                    i7 = i33;
                                }
                            }
                        } else if (i31 == 2) {
                            i7 = 0;
                            for (int i34 = 1; i34 < arrayList2.size(); i34++) {
                                if (((Integer) arrayList3.get(i7)).intValue() < ((Integer) arrayList3.get(i34)).intValue()) {
                                    i7 = i34;
                                }
                            }
                        } else if (i31 == 3) {
                            i7 = 0;
                            for (int i35 = 1; i35 < arrayList2.size(); i35++) {
                                if (((Integer) arrayList3.get(i7)).intValue() > ((Integer) arrayList3.get(i35)).intValue()) {
                                    i7 = i35;
                                }
                            }
                        } else {
                            if (i31 == i25) {
                                i7 = 0;
                                for (int i36 = 1; i36 < arrayList2.size(); i36++) {
                                    if (((Float) arrayList4.get(i7)).floatValue() < ((Float) arrayList4.get(i36)).floatValue()) {
                                        i7 = i36;
                                    }
                                }
                            } else if (i31 == 5) {
                                i7 = 0;
                                for (int i37 = 1; i37 < arrayList2.size(); i37++) {
                                    if (((Float) arrayList4.get(i7)).floatValue() > ((Float) arrayList4.get(i37)).floatValue()) {
                                        i7 = i37;
                                    }
                                }
                            } else {
                                i7 = 0;
                            }
                            int i38 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                            arrayList.add(new AnonymousClass9(Game.getCiv(((Integer) arrayList2.get(i7)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i38, height4, i20, i13, ((Integer) arrayList2.get(i7)).intValue()));
                            int width4 = i38 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Integer) arrayList3.get(i7)).intValue(), 10), CFG.FONT_REGULAR_SMALL, -1, width4, height4, i21, i13));
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList4.get(i7)).floatValue(), 100) + "%", CFG.FONT_REGULAR_SMALL, -1, width4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i22, i13));
                            arrayList.get(arrayList.size() - 1).getWidth();
                            int i39 = CFG.PADDING;
                            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                            arrayList2.remove(i7);
                            arrayList3.remove(i7);
                            arrayList4.remove(i7);
                            i25 = 4;
                        }
                        int i310 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        arrayList.add(new AnonymousClass9(Game.getCiv(((Integer) arrayList2.get(i7)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i310, height4, i20, i13, ((Integer) arrayList2.get(i7)).intValue()));
                        int width5 = i310 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Integer) arrayList3.get(i7)).intValue(), 10), CFG.FONT_REGULAR_SMALL, -1, width5, height4, i21, i13));
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList4.get(i7)).floatValue(), 100) + "%", CFG.FONT_REGULAR_SMALL, -1, width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i22, i13));
                        arrayList.get(arrayList.size() - 1).getWidth();
                        int i311 = CFG.PADDING;
                        height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList2.remove(i7);
                        arrayList3.remove(i7);
                        arrayList4.remove(i7);
                        i25 = 4;
                    }
                } else {
                    if (i29 != 1) {
                        try {
                            if (i29 == 2) {
                                ArrayList arrayList5 = new ArrayList();
                                ArrayList arrayList6 = new ArrayList();
                                ArrayList arrayList7 = new ArrayList();
                                for (int i40 = 0; i40 < Game.continents.iContinentsSize; i40++) {
                                    arrayList5.add(Integer.valueOf(i40));
                                    arrayList6.add(0);
                                    arrayList7.add(Float.valueOf(0.0f));
                                }
                                for (int i41 = 0; i41 < Game.getProvincesSize(); i41++) {
                                    if (Game.getProvince(i41).getCivID() > 0) {
                                        arrayList6.set(Game.getProvince(i41).getContinent(), Integer.valueOf(((Integer) arrayList6.get(Game.getProvince(i41).getContinent())).intValue() + Game.getProvince(i41).getInfrastructure()));
                                    }
                                }
                                arrayList5.remove(0);
                                arrayList6.remove(0);
                                arrayList7.remove(0);
                                for (int i42 = 0; i42 < arrayList5.size(); i42++) {
                                    arrayList7.set(i42, Float.valueOf((((Integer) arrayList6.get(i42)).intValue() / totalInfrastructure) * 100.0f));
                                }
                                while (arrayList5.size() > 0) {
                                    int i43 = iSortID;
                                    if (i43 == 0) {
                                        i5 = 0;
                                        for (int i44 = 1; i44 < arrayList5.size(); i44++) {
                                            if (CFG.compareAlphabetic_TwoString(Game.continents.lContinents.get(((Integer) arrayList5.get(i5)).intValue()).sName, Game.continents.lContinents.get(((Integer) arrayList5.get(i44)).intValue()).sName)) {
                                                i5 = i44;
                                            }
                                        }
                                    } else if (i43 == 1) {
                                        i5 = 0;
                                        for (int i45 = 1; i45 < arrayList5.size(); i45++) {
                                            if (CFG.compareAlphabetic_TwoString(Game.continents.lContinents.get(((Integer) arrayList5.get(i45)).intValue()).sName, Game.continents.lContinents.get(((Integer) arrayList5.get(i5)).intValue()).sName)) {
                                                i5 = i45;
                                            }
                                        }
                                    } else if (i43 == 2) {
                                        i5 = 0;
                                        for (int i46 = 1; i46 < arrayList5.size(); i46++) {
                                            if (((Integer) arrayList6.get(i5)).intValue() < ((Integer) arrayList6.get(i46)).intValue()) {
                                                i5 = i46;
                                            }
                                        }
                                    } else if (i43 == 3) {
                                        i5 = 0;
                                        for (int i47 = 1; i47 < arrayList5.size(); i47++) {
                                            if (((Integer) arrayList6.get(i5)).intValue() > ((Integer) arrayList6.get(i47)).intValue()) {
                                                i5 = i47;
                                            }
                                        }
                                    } else if (i43 == 4) {
                                        i5 = 0;
                                        for (int i48 = 1; i48 < arrayList5.size(); i48++) {
                                            if (((Float) arrayList7.get(i5)).floatValue() < ((Float) arrayList7.get(i48)).floatValue()) {
                                                i5 = i48;
                                            }
                                        }
                                    } else {
                                        i5 = 0;
                                        if (i43 == 5) {
                                            for (int i49 = 1; i49 < arrayList5.size(); i49++) {
                                                if (((Float) arrayList7.get(i5)).floatValue() > ((Float) arrayList7.get(i49)).floatValue()) {
                                                    i5 = i49;
                                                }
                                            }
                                        }
                                    }
                                    int i50 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                    arrayList.add(new AnonymousClass11(Game.continents.lContinents.get(((Integer) arrayList5.get(i5)).intValue()).sName, CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i50, height4, i20, i13, ((Integer) arrayList5.get(i5)).intValue()));
                                    int width6 = i50 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                    int i51 = width;
                                    arrayList.add(new Text_StaticBG(CFG.getNumberWithSpaces("" + CFG.getPrecision2(((Integer) arrayList6.get(i5)).intValue(), 1)), CFG.FONT_REGULAR_SMALL, -1, width6, height4, i21, i13));
                                    arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList7.get(i5)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i22, i13));
                                    arrayList.get(arrayList.size() - 1).getWidth();
                                    int i52 = CFG.PADDING;
                                    height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                    arrayList5.remove(i5);
                                    arrayList6.remove(i5);
                                    arrayList7.remove(i5);
                                    width = i51;
                                }
                            } else {
                                i26 = width;
                                if (i29 == 3) {
                                    ArrayList arrayList8 = new ArrayList();
                                    ArrayList arrayList9 = new ArrayList();
                                    ArrayList arrayList10 = new ArrayList();
                                    for (int i53 = 0; i53 < Game.religionManager.getReligionsSize(); i53++) {
                                        arrayList8.add(Integer.valueOf(i53));
                                        arrayList9.add(0);
                                        arrayList10.add(Float.valueOf(0.0f));
                                    }
                                    for (int i54 = 0; i54 < Game.getProvincesSize(); i54++) {
                                        if (Game.getProvince(i54).getCivID() > 0) {
                                            arrayList9.set(Game.getProvince(i54).getReligion(), Integer.valueOf(((Integer) arrayList9.get(Game.getProvince(i54).getReligion())).intValue() + Game.getProvince(i54).getInfrastructure()));
                                        }
                                    }
                                    for (int i55 = 0; i55 < arrayList8.size(); i55++) {
                                        arrayList10.set(i55, Float.valueOf((((Integer) arrayList9.get(i55)).intValue() / totalInfrastructure) * 100.0f));
                                    }
                                    while (arrayList8.size() > 0) {
                                        int i56 = iSortID;
                                        if (i56 == 0) {
                                            i4 = 0;
                                            for (int i57 = 1; i57 < arrayList8.size(); i57++) {
                                                if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList8.get(i4)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList8.get(i57)).intValue()).Name)) {
                                                    i4 = i57;
                                                }
                                            }
                                        } else {
                                            if (i56 == 1) {
                                                i4 = 0;
                                                for (int i58 = 1; i58 < arrayList8.size(); i58++) {
                                                    if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList8.get(i58)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList8.get(i4)).intValue()).Name)) {
                                                        i4 = i58;
                                                    }
                                                }
                                            } else {
                                                if (i56 == 2) {
                                                    i3 = 0;
                                                    for (int i59 = 1; i59 < arrayList8.size(); i59++) {
                                                        if (((Integer) arrayList9.get(i3)).intValue() < ((Integer) arrayList9.get(i59)).intValue()) {
                                                            i3 = i59;
                                                        }
                                                    }
                                                } else if (i56 == 3) {
                                                    i3 = 0;
                                                    for (int i60 = 1; i60 < arrayList8.size(); i60++) {
                                                        if (((Integer) arrayList9.get(i3)).intValue() > ((Integer) arrayList9.get(i60)).intValue()) {
                                                            i3 = i60;
                                                        }
                                                    }
                                                } else if (i56 == 4) {
                                                    int i61 = 0;
                                                    for (int i62 = 1; i62 < arrayList8.size(); i62++) {
                                                        if (((Float) arrayList10.get(i61)).floatValue() < ((Float) arrayList10.get(i62)).floatValue()) {
                                                            i61 = i62;
                                                        }
                                                    }
                                                    i2 = i61;
                                                } else if (i56 == 5) {
                                                    i2 = 0;
                                                    for (int i63 = 1; i63 < arrayList8.size(); i63++) {
                                                        if (((Float) arrayList10.get(i2)).floatValue() > ((Float) arrayList10.get(i63)).floatValue()) {
                                                            i2 = i63;
                                                        }
                                                    }
                                                } else {
                                                    i2 = 0;
                                                }
                                                i2 = i3;
                                            }
                                            int i64 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                            arrayList.add(new AnonymousClass12(Game.religionManager.getReligion(((Integer) arrayList8.get(i2)).intValue()).Name, ((Integer) arrayList8.get(i2)).intValue(), i64, height4, i20, i13, ImageManager.getImage(Images.religion).getWidth(), 0));
                                            int width7 = i64 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                            arrayList.add(new Text_StaticBG(CFG.getNumberWithSpaces("" + CFG.getPrecision2(((Integer) arrayList9.get(i2)).intValue(), 1)), CFG.FONT_REGULAR_SMALL, -1, width7, height4, i21, i13));
                                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList10.get(i2)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i22, i13));
                                            arrayList.get(arrayList.size() - 1).getWidth();
                                            int i65 = CFG.PADDING;
                                            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                            arrayList8.remove(i2);
                                            arrayList9.remove(i2);
                                            arrayList10.remove(i2);
                                        }
                                        i2 = i4;
                                        int i66 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                        arrayList.add(new AnonymousClass12(Game.religionManager.getReligion(((Integer) arrayList8.get(i2)).intValue()).Name, ((Integer) arrayList8.get(i2)).intValue(), i66, height4, i20, i13, ImageManager.getImage(Images.religion).getWidth(), 0));
                                        int width8 = i66 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                        arrayList.add(new Text_StaticBG(CFG.getNumberWithSpaces("" + CFG.getPrecision2(((Integer) arrayList9.get(i2)).intValue(), 1)), CFG.FONT_REGULAR_SMALL, -1, width8, height4, i21, i13));
                                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList10.get(i2)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i22, i13));
                                        arrayList.get(arrayList.size() - 1).getWidth();
                                        int i67 = CFG.PADDING;
                                        height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                        arrayList8.remove(i2);
                                        arrayList9.remove(i2);
                                        arrayList10.remove(i2);
                                    }
                                }
                            }
                        } catch (Exception e) {
                            e = e;
                            exc = e;
                            CFG.exceptionStack(exc);
                        }
                        size = arrayList.size();
                        posY = 0;
                        for (i = 0; i < size; i++) {
                            if (posY < arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING) {
                                posY = arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING;
                            }
                        }
                        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
                        int i68 = i26;
                        arrayList.add(new Empty(0, 0, i68, Math.max(posY, iMin)));
                        initMenu(new AnonymousClass13(Game.lang.get(str6), Game.lang.get("Total") + ": " + CFG.getNumberWithSpaces("" + CFG.getPrecision2(totalInfrastructure, 1)), false, false, Images.title600), i10, height, i68, iMin, arrayList, false, true);
                        this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
                    }
                    ArrayList arrayList11 = new ArrayList();
                    ArrayList arrayList12 = new ArrayList();
                    ArrayList arrayList13 = new ArrayList();
                    for (int i69 = 0; i69 < Game.getProvincesSize(); i69++) {
                        if (Game.getProvince(i69).getCivID() > 0) {
                            arrayList11.add(Integer.valueOf(i69));
                            arrayList12.add(Float.valueOf(Game.getProvince(i69).getEconomyWithBonuses()));
                            arrayList13.add(Integer.valueOf(Game.getProvince(i69).getInfrastructure()));
                        }
                    }
                    int i70 = Graph.ANIMATION_TIME;
                    while (arrayList11.size() > 0) {
                        int i71 = i70 - 1;
                        if (i70 <= 0) {
                            break;
                        }
                        int i72 = iSortID;
                        if (i72 == 0) {
                            i6 = 0;
                            for (int i73 = 1; i73 < arrayList11.size(); i73++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList11.get(i6)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList11.get(i73)).intValue()).getProvinceName())) {
                                    i6 = i73;
                                }
                            }
                        } else if (i72 == 1) {
                            i6 = 0;
                            for (int i74 = 1; i74 < arrayList11.size(); i74++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList11.get(i74)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList11.get(i6)).intValue()).getProvinceName())) {
                                    i6 = i74;
                                }
                            }
                        } else if (i72 == 2) {
                            i6 = 0;
                            for (int i75 = 1; i75 < arrayList11.size(); i75++) {
                                if (((Float) arrayList12.get(i6)).floatValue() < ((Float) arrayList12.get(i75)).floatValue()) {
                                    i6 = i75;
                                }
                            }
                        } else if (i72 == 3) {
                            i6 = 0;
                            for (int i76 = 1; i76 < arrayList11.size(); i76++) {
                                if (((Float) arrayList12.get(i6)).floatValue() > ((Float) arrayList12.get(i76)).floatValue()) {
                                    i6 = i76;
                                }
                            }
                        } else if (i72 == 4) {
                            i6 = 0;
                            for (int i77 = 1; i77 < arrayList11.size(); i77++) {
                                if (((Integer) arrayList13.get(i6)).intValue() < ((Integer) arrayList13.get(i77)).intValue()) {
                                    i6 = i77;
                                }
                            }
                        } else {
                            i6 = 0;
                            if (i72 == 5) {
                                for (int i78 = 1; i78 < arrayList11.size(); i78++) {
                                    if (((Integer) arrayList13.get(i6)).intValue() > ((Integer) arrayList13.get(i78)).intValue()) {
                                        i6 = i78;
                                    }
                                }
                            }
                        }
                        int i79 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        arrayList.add(new AnonymousClass10(Game.getProvince(((Integer) arrayList11.get(i6)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i79, height4, i20, i13, ((Integer) arrayList11.get(i6)).intValue()));
                        int width9 = i79 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList12.get(i6)).floatValue(), 10), CFG.FONT_REGULAR_SMALL, -1, width9, height4, i21, i13));
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Integer) arrayList13.get(i6)).intValue(), 1) + " / " + Game.getProvince(((Integer) arrayList11.get(i6)).intValue()).iInfrastructureMax, CFG.FONT_REGULAR_SMALL, -1, width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i22, i13));
                        arrayList.get(arrayList.size() - 1).getWidth();
                        int i80 = CFG.PADDING;
                        height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList11.remove(i6);
                        arrayList12.remove(i6);
                        arrayList13.remove(i6);
                        i70 = i71;
                    }
                }
                i26 = width;
            } catch (Exception e2) {
                exc = e2;
                i26 = width;
                CFG.exceptionStack(exc);
            }
        } catch (Exception e3) {
            e = e3;
            i26 = width;
        }
        size = arrayList.size();
        posY = 0;
        while (i < size) {
            if (posY < arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING;
            }
        }
        int iMin2 = Math.min(posY, (CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
        int i610 = i26;
        arrayList.add(new Empty(0, 0, i610, Math.max(posY, iMin2)));
        initMenu(new AnonymousClass13(Game.lang.get(str6), Game.lang.get("Total") + ": " + CFG.getNumberWithSpaces("" + CFG.getPrecision2(totalInfrastructure, 1)), false, false, Images.title600), i10, height, i610, iMin2, arrayList, false, true);
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
