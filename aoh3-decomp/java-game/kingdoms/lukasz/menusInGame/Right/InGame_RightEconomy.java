package aoc.kingdoms.lukasz.menusInGame.Right;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
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
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RightEconomy extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iModeID = 0;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;
    public static float totalEconomy;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRect_Active {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightEconomy.iModeID != 0) {
                InGame_RightEconomy.iModeID = 0;
                Game.menuManager.rebuildInGame_RightEconomy();
                InGame_RightEconomy.lTime = 0L;
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
            return InGame_RightEconomy.iModeID == 0 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$10, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("" + Game.getCiv(Game.getProvince(getCurrent()).getCivID()).getCivName() + ": ", CFG.getPrecision2((Game.getProvince(getCurrent()).getEconomyWithBonuses() / Game.getCiv(Game.getProvince(getCurrent()).getCivID()).getEconomyTotal()) * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$11, reason: invalid class name */
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
            float economyWithBonuses = 0.0f;
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).getContinent() == getCurrent()) {
                    economyWithBonuses += Game.getProvince(i).getEconomyWithBonuses();
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(economyWithBonuses, 1)), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$12, reason: invalid class name */
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
            float economyWithBonuses = 0.0f;
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).getReligion() == this.imageID) {
                    economyWithBonuses += Game.getProvince(i).getEconomyWithBonuses();
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(economyWithBonuses, 1)), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$13, reason: invalid class name */
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
            return InGame_RightEconomy.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRect_Active {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightEconomy.iModeID != 1) {
                InGame_RightEconomy.iModeID = 1;
                Game.menuManager.rebuildInGame_RightEconomy();
                InGame_RightEconomy.lTime = 0L;
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
            return InGame_RightEconomy.iModeID == 1 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRect_Active {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightEconomy.iModeID != 2) {
                InGame_RightEconomy.iModeID = 2;
                Game.menuManager.rebuildInGame_RightEconomy();
                InGame_RightEconomy.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(ClXgFvsSKQc.ObFwwzQZ), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_RightEconomy.iModeID == 2 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRect_Active {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightEconomy.iModeID != 3) {
                InGame_RightEconomy.iModeID = 3;
                Game.menuManager.rebuildInGame_RightEconomy();
                InGame_RightEconomy.lTime = 0L;
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
            return InGame_RightEconomy.iModeID == 3 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$5, reason: invalid class name */
    class AnonymousClass5 extends Graph_Vertical {
        AnonymousClass5(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GraphPopulation.activeModeID = 1;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightEconomy.iSortID == 0) {
                InGame_RightEconomy.iSortID = 1;
            } else {
                InGame_RightEconomy.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RightEconomy();
            InGame_RightEconomy.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightEconomy.iSortID == 2) {
                InGame_RightEconomy.iSortID = 3;
            } else {
                InGame_RightEconomy.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RightEconomy();
            InGame_RightEconomy.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Economy"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightEconomy.iSortID == 4) {
                InGame_RightEconomy.iSortID = 5;
            } else {
                InGame_RightEconomy.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_RightEconomy();
            InGame_RightEconomy.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            LanguageManager languageManager;
            String str;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            if (InGame_RightEconomy.iModeID == 1) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy$9, reason: invalid class name */
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
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Provinces"));
            String str = cIUGJCqyPXfp.FbapPnsRfLRX;
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(current, sbAppend.append(str).append(CFG.getNumberWithSpaces(MQYGMkZOAcS.MVqfQVGKQbxSVBX + Game.getCiv(getCurrent()).getNumOfProvinces())).toString()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + str, CFG.getPrecision2(Game.getCiv(getCurrent()).getEconomyTotal(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float economyWithBonuses = 0.0f;
            for (int i = 0; i < Game.getCiv(getCurrent()).getNumOfProvinces(); i++) {
                economyWithBonuses += Game.getProvince(Game.getCiv(getCurrent()).getProvinceID(i)).getEconomyWithBonuses();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Average") + str, CFG.getPrecision2(economyWithBonuses / Game.getCiv(getCurrent()).getNumOfProvinces(), 100), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("World") + str, CFG.getPrecision2((Game.getCiv(getCurrent()).getEconomyTotal() / InGame_RightEconomy.totalEconomy) * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:136:0x04be A[Catch: Exception -> 0x058d, TryCatch #2 {Exception -> 0x058d, blocks: (B:68:0x02ec, B:69:0x02fc, B:71:0x0302, B:73:0x030c, B:74:0x0336, B:75:0x0339, B:77:0x033f, B:80:0x0345, B:82:0x034b, B:85:0x0376, B:134:0x0458, B:136:0x04be, B:138:0x04f7, B:137:0x04e5, B:90:0x0383, B:92:0x0389, B:95:0x03b4, B:100:0x03be, B:102:0x03c4, B:105:0x03dd, B:110:0x03e8, B:112:0x03ee, B:115:0x0407, B:118:0x040e, B:120:0x0414, B:123:0x042d, B:127:0x0435, B:129:0x043b, B:132:0x0454, B:144:0x0596, B:145:0x05a6, B:147:0x05ac, B:149:0x05b6, B:150:0x05db, B:152:0x05e0, B:154:0x05e6, B:156:0x05ea, B:159:0x05f0, B:161:0x05f6, B:164:0x0621, B:210:0x06f5, B:168:0x0629, B:170:0x062f, B:173:0x065a, B:177:0x0662, B:179:0x0668, B:182:0x0681, B:186:0x0689, B:188:0x068f, B:191:0x06a8, B:195:0x06b0, B:197:0x06b6, B:200:0x06cd, B:204:0x06d5, B:206:0x06db, B:209:0x06f2, B:217:0x0811, B:222:0x0830, B:224:0x083a, B:230:0x0878, B:237:0x089e, B:239:0x08a4, B:242:0x08d7, B:246:0x08df, B:248:0x08e5, B:251:0x0918, B:255:0x0920, B:257:0x0926, B:260:0x093f, B:264:0x0947, B:266:0x094d, B:269:0x0966, B:273:0x096e, B:275:0x0974, B:278:0x098d, B:282:0x0995, B:284:0x099b), top: B:390:0x02ea }] */
    /* JADX WARN: Code duplicated, block: B:137:0x04e5 A[Catch: Exception -> 0x058d, TryCatch #2 {Exception -> 0x058d, blocks: (B:68:0x02ec, B:69:0x02fc, B:71:0x0302, B:73:0x030c, B:74:0x0336, B:75:0x0339, B:77:0x033f, B:80:0x0345, B:82:0x034b, B:85:0x0376, B:134:0x0458, B:136:0x04be, B:138:0x04f7, B:137:0x04e5, B:90:0x0383, B:92:0x0389, B:95:0x03b4, B:100:0x03be, B:102:0x03c4, B:105:0x03dd, B:110:0x03e8, B:112:0x03ee, B:115:0x0407, B:118:0x040e, B:120:0x0414, B:123:0x042d, B:127:0x0435, B:129:0x043b, B:132:0x0454, B:144:0x0596, B:145:0x05a6, B:147:0x05ac, B:149:0x05b6, B:150:0x05db, B:152:0x05e0, B:154:0x05e6, B:156:0x05ea, B:159:0x05f0, B:161:0x05f6, B:164:0x0621, B:210:0x06f5, B:168:0x0629, B:170:0x062f, B:173:0x065a, B:177:0x0662, B:179:0x0668, B:182:0x0681, B:186:0x0689, B:188:0x068f, B:191:0x06a8, B:195:0x06b0, B:197:0x06b6, B:200:0x06cd, B:204:0x06d5, B:206:0x06db, B:209:0x06f2, B:217:0x0811, B:222:0x0830, B:224:0x083a, B:230:0x0878, B:237:0x089e, B:239:0x08a4, B:242:0x08d7, B:246:0x08df, B:248:0x08e5, B:251:0x0918, B:255:0x0920, B:257:0x0926, B:260:0x093f, B:264:0x0947, B:266:0x094d, B:269:0x0966, B:273:0x096e, B:275:0x0974, B:278:0x098d, B:282:0x0995, B:284:0x099b), top: B:390:0x02ea }] */
    /* JADX WARN: Code duplicated, block: B:381:0x0d8f  */
    /* JADX WARN: Code duplicated, block: B:383:0x0da9  */
    /* JADX WARN: Code duplicated, block: B:420:0x0dc1 A[SYNTHETIC] */
    public InGame_RightEconomy() {
        LanguageManager languageManager;
        String str;
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
        int i8;
        String precision2;
        List<MenuElement> arrayList = new ArrayList<>();
        int i9 = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i10 = Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.title1Red).getWidth();
        int i11 = CFG.GAME_WIDTH - width;
        int height = ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i12 = CFG.PADDING;
        int i13 = Images.boxTitleBORDERWIDTH + i9;
        int i14 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i15 = width - (i9 * 2);
        int i16 = (int) (((i15 - CFG.PADDING) - Images.boxTitleBORDERWIDTH) / 2.0f);
        totalEconomy = 0.0f;
        for (int i17 = 0; i17 < Game.getProvincesSize(); i17++) {
            if (Game.getProvince(i17).getCivID() > 0) {
                totalEconomy += Game.getProvince(i17).getEconomyWithBonuses();
            }
        }
        arrayList.add(new AnonymousClass1(Game.lang.get("Civilizations"), i13, i12, i16, i14, iModeID == 0 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass2(Game.lang.get("Provinces"), CFG.PADDING + i13 + i16, i12, i16, i14, iModeID == 1 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int height2 = i12 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass3(Game.lang.get("Continents"), i13, height2, i16, i14, iModeID == 2 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass4(Game.lang.get("Religion"), i13 + CFG.PADDING + i16, height2, i16, i14, iModeID == 3 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (iModeID == 0) {
            AnonymousClass5 anonymousClass5 = new AnonymousClass5(Graph_Vertical_Data_Type.CIVS_ECONOMY, Game.lang.get("Civilizations"), Game.lang.get("Economy"), i9, height3, i15, width / 2, true);
            anonymousClass5.allowStatisticsMode = false;
            arrayList.add(anonymousClass5);
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i18 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.5f);
        int i19 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i20 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i21 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.5f);
        int i22 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.25f);
        int i23 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.25f);
        int i24 = Images.boxTitleBORDERWIDTH;
        int i25 = iSortID;
        int i26 = 4;
        int i27 = i20;
        arrayList.add(new AnonymousClass6(i25 == 0 || i25 == 1, i25 == 1, Game.lang.get("Name"), -1, i24, height3, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i24 + arrayList.get(arrayList.size() - 1).getWidth();
        int i28 = iSortID;
        arrayList.add(new AnonymousClass7(i28 == 2 || i28 == 3, i28 == 3, Game.lang.get("Economy"), -1, width2, height3, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i29 = iSortID;
        boolean z = i29 == 4 || i29 == 5;
        boolean z2 = i29 == 5;
        if (iModeID == 1) {
            languageManager = Game.lang;
            str = "Infrastructure";
        } else {
            languageManager = Game.lang;
            str = "World";
        }
        arrayList.add(new AnonymousClass8(z, z2, languageManager.get(str), -1, width3, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        try {
            int i30 = iModeID;
            try {
                if (i30 == 0) {
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    for (int i31 = 1; i31 < Game.getCivsSize(); i31++) {
                        if (Game.getCiv(i31).getNumOfProvinces() > 0) {
                            arrayList2.add(Integer.valueOf(i31));
                            arrayList3.add(Float.valueOf(Game.getCiv(i31).getEconomyTotal()));
                            arrayList4.add(Float.valueOf((Game.getCiv(i31).getEconomyTotal() / totalEconomy) * 100.0f));
                        }
                    }
                    while (arrayList2.size() > 0) {
                        int i32 = iSortID;
                        if (i32 == 0) {
                            i7 = 0;
                            for (int i33 = 1; i33 < arrayList2.size(); i33++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i7)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i33)).intValue()).getCivName())) {
                                    i7 = i33;
                                }
                            }
                        } else {
                            if (i32 == 1) {
                                int i34 = 0;
                                for (int i35 = 1; i35 < arrayList2.size(); i35++) {
                                    if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i35)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i34)).intValue()).getCivName())) {
                                        i34 = i35;
                                    }
                                }
                                i7 = i34;
                            } else {
                                if (i32 == 2) {
                                    i8 = 0;
                                    for (int i36 = 1; i36 < arrayList2.size(); i36++) {
                                        if (((Float) arrayList3.get(i8)).floatValue() < ((Float) arrayList3.get(i36)).floatValue()) {
                                            i8 = i36;
                                        }
                                    }
                                } else if (i32 == 3) {
                                    i7 = 0;
                                    for (int i37 = 1; i37 < arrayList2.size(); i37++) {
                                        if (((Float) arrayList3.get(i7)).floatValue() > ((Float) arrayList3.get(i37)).floatValue()) {
                                            i7 = i37;
                                        }
                                    }
                                } else if (i32 == i26) {
                                    i8 = 0;
                                    for (int i38 = 1; i38 < arrayList2.size(); i38++) {
                                        if (((Float) arrayList4.get(i8)).floatValue() < ((Float) arrayList4.get(i38)).floatValue()) {
                                            i8 = i38;
                                        }
                                    }
                                } else if (i32 == 5) {
                                    i7 = 0;
                                    for (int i39 = 1; i39 < arrayList2.size(); i39++) {
                                        if (((Float) arrayList4.get(i7)).floatValue() > ((Float) arrayList4.get(i39)).floatValue()) {
                                            i7 = i39;
                                        }
                                    }
                                } else {
                                    i7 = 0;
                                }
                                i7 = i8;
                            }
                            int i40 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                            arrayList.add(new AnonymousClass9(Game.getCiv(((Integer) arrayList2.get(i7)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i40, height4, i21, i14, ((Integer) arrayList2.get(i7)).intValue()));
                            int width4 = i40 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                            if (((Float) arrayList3.get(i7)).floatValue() >= 100.0f) {
                                precision2 = CFG.getNumberWithSpaces("" + CFG.getPrecision2(((Float) arrayList3.get(i7)).floatValue(), 1));
                            } else {
                                precision2 = CFG.getPrecision2(((Float) arrayList3.get(i7)).floatValue(), 10);
                            }
                            arrayList.add(new Text_StaticBG(precision2, CFG.FONT_REGULAR_SMALL, -1, width4, height4, i22, i14));
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList4.get(i7)).floatValue(), 100) + "%", CFG.FONT_REGULAR_SMALL, -1, width4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i23, i14));
                            arrayList.get(arrayList.size() - 1).getWidth();
                            int i41 = CFG.PADDING;
                            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                            arrayList2.remove(i7);
                            arrayList3.remove(i7);
                            arrayList4.remove(i7);
                            i26 = 4;
                        }
                        int i42 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        arrayList.add(new AnonymousClass9(Game.getCiv(((Integer) arrayList2.get(i7)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i42, height4, i21, i14, ((Integer) arrayList2.get(i7)).intValue()));
                        int width5 = i42 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        if (((Float) arrayList3.get(i7)).floatValue() >= 100.0f) {
                            precision2 = CFG.getNumberWithSpaces("" + CFG.getPrecision2(((Float) arrayList3.get(i7)).floatValue(), 1));
                        } else {
                            precision2 = CFG.getPrecision2(((Float) arrayList3.get(i7)).floatValue(), 10);
                        }
                        arrayList.add(new Text_StaticBG(precision2, CFG.FONT_REGULAR_SMALL, -1, width5, height4, i22, i14));
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList4.get(i7)).floatValue(), 100) + "%", CFG.FONT_REGULAR_SMALL, -1, width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i23, i14));
                        arrayList.get(arrayList.size() - 1).getWidth();
                        int i43 = CFG.PADDING;
                        height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList2.remove(i7);
                        arrayList3.remove(i7);
                        arrayList4.remove(i7);
                        i26 = 4;
                    }
                } else {
                    if (i30 != 1) {
                        try {
                            if (i30 == 2) {
                                ArrayList arrayList5 = new ArrayList();
                                ArrayList arrayList6 = new ArrayList();
                                ArrayList arrayList7 = new ArrayList();
                                for (int i44 = 0; i44 < Game.continents.iContinentsSize; i44++) {
                                    arrayList5.add(Integer.valueOf(i44));
                                    arrayList6.add(Float.valueOf(0.0f));
                                    arrayList7.add(Float.valueOf(0.0f));
                                }
                                for (int i45 = 0; i45 < Game.getProvincesSize(); i45++) {
                                    if (Game.getProvince(i45).getCivID() > 0) {
                                        arrayList6.set(Game.getProvince(i45).getContinent(), Float.valueOf(((Float) arrayList6.get(Game.getProvince(i45).getContinent())).floatValue() + Game.getProvince(i45).getEconomyWithBonuses()));
                                    }
                                }
                                arrayList5.remove(0);
                                arrayList6.remove(0);
                                arrayList7.remove(0);
                                for (int i46 = 0; i46 < arrayList5.size(); i46++) {
                                    arrayList7.set(i46, Float.valueOf((((Float) arrayList6.get(i46)).floatValue() / totalEconomy) * 100.0f));
                                }
                                while (arrayList5.size() > 0) {
                                    int i47 = iSortID;
                                    if (i47 == 0) {
                                        i5 = 0;
                                        for (int i48 = 1; i48 < arrayList5.size(); i48++) {
                                            if (CFG.compareAlphabetic_TwoString(Game.continents.lContinents.get(((Integer) arrayList5.get(i5)).intValue()).sName, Game.continents.lContinents.get(((Integer) arrayList5.get(i48)).intValue()).sName)) {
                                                i5 = i48;
                                            }
                                        }
                                    } else if (i47 == 1) {
                                        i5 = 0;
                                        for (int i49 = 1; i49 < arrayList5.size(); i49++) {
                                            if (CFG.compareAlphabetic_TwoString(Game.continents.lContinents.get(((Integer) arrayList5.get(i49)).intValue()).sName, Game.continents.lContinents.get(((Integer) arrayList5.get(i5)).intValue()).sName)) {
                                                i5 = i49;
                                            }
                                        }
                                    } else if (i47 == 2) {
                                        i5 = 0;
                                        for (int i50 = 1; i50 < arrayList5.size(); i50++) {
                                            if (((Float) arrayList6.get(i5)).floatValue() < ((Float) arrayList6.get(i50)).floatValue()) {
                                                i5 = i50;
                                            }
                                        }
                                    } else if (i47 == 3) {
                                        i5 = 0;
                                        for (int i51 = 1; i51 < arrayList5.size(); i51++) {
                                            if (((Float) arrayList6.get(i5)).floatValue() > ((Float) arrayList6.get(i51)).floatValue()) {
                                                i5 = i51;
                                            }
                                        }
                                    } else if (i47 == 4) {
                                        i5 = 0;
                                        for (int i52 = 1; i52 < arrayList5.size(); i52++) {
                                            if (((Float) arrayList7.get(i5)).floatValue() < ((Float) arrayList7.get(i52)).floatValue()) {
                                                i5 = i52;
                                            }
                                        }
                                    } else {
                                        i5 = 0;
                                        if (i47 == 5) {
                                            for (int i53 = 1; i53 < arrayList5.size(); i53++) {
                                                if (((Float) arrayList7.get(i5)).floatValue() > ((Float) arrayList7.get(i53)).floatValue()) {
                                                    i5 = i53;
                                                }
                                            }
                                        }
                                    }
                                    int i54 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                    arrayList.add(new AnonymousClass11(Game.continents.lContinents.get(((Integer) arrayList5.get(i5)).intValue()).sName, CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i54, height4, i21, i14, ((Integer) arrayList5.get(i5)).intValue()));
                                    int width6 = i54 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                    int i55 = width;
                                    arrayList.add(new Text_StaticBG(CFG.getNumberWithSpaces("" + CFG.getPrecision2(((Float) arrayList6.get(i5)).floatValue(), 1)), CFG.FONT_REGULAR_SMALL, -1, width6, height4, i22, i14));
                                    arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList7.get(i5)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i23, i14));
                                    arrayList.get(arrayList.size() - 1).getWidth();
                                    int i56 = CFG.PADDING;
                                    height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                    arrayList5.remove(i5);
                                    arrayList6.remove(i5);
                                    arrayList7.remove(i5);
                                    width = i55;
                                }
                            } else {
                                i27 = width;
                                if (i30 == 3) {
                                    ArrayList arrayList8 = new ArrayList();
                                    ArrayList arrayList9 = new ArrayList();
                                    ArrayList arrayList10 = new ArrayList();
                                    for (int i57 = 0; i57 < Game.religionManager.getReligionsSize(); i57++) {
                                        arrayList8.add(Integer.valueOf(i57));
                                        arrayList9.add(Float.valueOf(0.0f));
                                        arrayList10.add(Float.valueOf(0.0f));
                                    }
                                    for (int i58 = 0; i58 < Game.getProvincesSize(); i58++) {
                                        if (Game.getProvince(i58).getCivID() > 0) {
                                            arrayList9.set(Game.getProvince(i58).getReligion(), Float.valueOf(((Float) arrayList9.get(Game.getProvince(i58).getReligion())).floatValue() + Game.getProvince(i58).getEconomyWithBonuses()));
                                        }
                                    }
                                    for (int i59 = 0; i59 < arrayList8.size(); i59++) {
                                        arrayList10.set(i59, Float.valueOf((((Float) arrayList9.get(i59)).floatValue() / totalEconomy) * 100.0f));
                                    }
                                    while (arrayList8.size() > 0) {
                                        int i60 = iSortID;
                                        if (i60 == 0) {
                                            i4 = 0;
                                            for (int i61 = 1; i61 < arrayList8.size(); i61++) {
                                                if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList8.get(i4)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList8.get(i61)).intValue()).Name)) {
                                                    i4 = i61;
                                                }
                                            }
                                        } else {
                                            if (i60 == 1) {
                                                i4 = 0;
                                                for (int i62 = 1; i62 < arrayList8.size(); i62++) {
                                                    if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList8.get(i62)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList8.get(i4)).intValue()).Name)) {
                                                        i4 = i62;
                                                    }
                                                }
                                            } else {
                                                if (i60 == 2) {
                                                    i3 = 0;
                                                    for (int i63 = 1; i63 < arrayList8.size(); i63++) {
                                                        if (((Float) arrayList9.get(i3)).floatValue() < ((Float) arrayList9.get(i63)).floatValue()) {
                                                            i3 = i63;
                                                        }
                                                    }
                                                } else if (i60 == 3) {
                                                    i3 = 0;
                                                    for (int i64 = 1; i64 < arrayList8.size(); i64++) {
                                                        if (((Float) arrayList9.get(i3)).floatValue() > ((Float) arrayList9.get(i64)).floatValue()) {
                                                            i3 = i64;
                                                        }
                                                    }
                                                } else if (i60 == 4) {
                                                    int i65 = 0;
                                                    for (int i66 = 1; i66 < arrayList8.size(); i66++) {
                                                        if (((Float) arrayList10.get(i65)).floatValue() < ((Float) arrayList10.get(i66)).floatValue()) {
                                                            i65 = i66;
                                                        }
                                                    }
                                                    i2 = i65;
                                                } else if (i60 == 5) {
                                                    i2 = 0;
                                                    for (int i67 = 1; i67 < arrayList8.size(); i67++) {
                                                        if (((Float) arrayList10.get(i2)).floatValue() > ((Float) arrayList10.get(i67)).floatValue()) {
                                                            i2 = i67;
                                                        }
                                                    }
                                                } else {
                                                    i2 = 0;
                                                }
                                                i2 = i3;
                                            }
                                            int i68 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                            arrayList.add(new AnonymousClass12(Game.religionManager.getReligion(((Integer) arrayList8.get(i2)).intValue()).Name, ((Integer) arrayList8.get(i2)).intValue(), i68, height4, i21, i14, ImageManager.getImage(Images.religion).getWidth(), 0));
                                            int width7 = i68 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                            arrayList.add(new Text_StaticBG(CFG.getNumberWithSpaces("" + CFG.getPrecision2(((Float) arrayList9.get(i2)).floatValue(), 1)), CFG.FONT_REGULAR_SMALL, -1, width7, height4, i22, i14));
                                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList10.get(i2)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i23, i14));
                                            arrayList.get(arrayList.size() - 1).getWidth();
                                            int i69 = CFG.PADDING;
                                            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                            arrayList8.remove(i2);
                                            arrayList9.remove(i2);
                                            arrayList10.remove(i2);
                                        }
                                        i2 = i4;
                                        int i610 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                        arrayList.add(new AnonymousClass12(Game.religionManager.getReligion(((Integer) arrayList8.get(i2)).intValue()).Name, ((Integer) arrayList8.get(i2)).intValue(), i610, height4, i21, i14, ImageManager.getImage(Images.religion).getWidth(), 0));
                                        int width8 = i610 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                        arrayList.add(new Text_StaticBG(CFG.getNumberWithSpaces("" + CFG.getPrecision2(((Float) arrayList9.get(i2)).floatValue(), 1)), CFG.FONT_REGULAR_SMALL, -1, width8, height4, i22, i14));
                                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList10.get(i2)).floatValue(), 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i23, i14));
                                        arrayList.get(arrayList.size() - 1).getWidth();
                                        int i611 = CFG.PADDING;
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
                        int i70 = i27;
                        arrayList.add(new Empty(0, 0, i70, Math.max(posY, iMin)));
                        initMenu(new AnonymousClass13(Game.lang.get("Economy"), Game.lang.get("Total") + ": " + CFG.getNumberWithSpaces("" + CFG.getPrecision2(totalEconomy, 1)), false, false, Images.title600), i11, height, i70, iMin, arrayList, false, true);
                        this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
                    }
                    ArrayList arrayList11 = new ArrayList();
                    ArrayList arrayList12 = new ArrayList();
                    ArrayList arrayList13 = new ArrayList();
                    for (int i71 = 0; i71 < Game.getProvincesSize(); i71++) {
                        if (Game.getProvince(i71).getCivID() > 0) {
                            arrayList11.add(Integer.valueOf(i71));
                            arrayList12.add(Float.valueOf(Game.getProvince(i71).getEconomyWithBonuses()));
                            arrayList13.add(Integer.valueOf(Game.getProvince(i71).getInfrastructure()));
                        }
                    }
                    int i72 = Graph.ANIMATION_TIME;
                    while (arrayList11.size() > 0) {
                        int i73 = i72 - 1;
                        if (i72 <= 0) {
                            break;
                        }
                        int i74 = iSortID;
                        if (i74 == 0) {
                            i6 = 0;
                            for (int i75 = 1; i75 < arrayList11.size(); i75++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList11.get(i6)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList11.get(i75)).intValue()).getProvinceName())) {
                                    i6 = i75;
                                }
                            }
                        } else if (i74 == 1) {
                            i6 = 0;
                            for (int i76 = 1; i76 < arrayList11.size(); i76++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList11.get(i76)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList11.get(i6)).intValue()).getProvinceName())) {
                                    i6 = i76;
                                }
                            }
                        } else if (i74 == 2) {
                            i6 = 0;
                            for (int i77 = 1; i77 < arrayList11.size(); i77++) {
                                if (((Float) arrayList12.get(i6)).floatValue() < ((Float) arrayList12.get(i77)).floatValue()) {
                                    i6 = i77;
                                }
                            }
                        } else if (i74 == 3) {
                            i6 = 0;
                            for (int i78 = 1; i78 < arrayList11.size(); i78++) {
                                if (((Float) arrayList12.get(i6)).floatValue() > ((Float) arrayList12.get(i78)).floatValue()) {
                                    i6 = i78;
                                }
                            }
                        } else if (i74 == 4) {
                            i6 = 0;
                            for (int i79 = 1; i79 < arrayList11.size(); i79++) {
                                if (((Integer) arrayList13.get(i6)).intValue() < ((Integer) arrayList13.get(i79)).intValue()) {
                                    i6 = i79;
                                }
                            }
                        } else {
                            i6 = 0;
                            if (i74 == 5) {
                                for (int i80 = 1; i80 < arrayList11.size(); i80++) {
                                    if (((Integer) arrayList13.get(i6)).intValue() > ((Integer) arrayList13.get(i80)).intValue()) {
                                        i6 = i80;
                                    }
                                }
                            }
                        }
                        int i81 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        arrayList.add(new AnonymousClass10(Game.getProvince(((Integer) arrayList11.get(i6)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i81, height4, i21, i14, ((Integer) arrayList11.get(i6)).intValue()));
                        int width9 = i81 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList12.get(i6)).floatValue(), 10), CFG.FONT_REGULAR_SMALL, -1, width9, height4, i22, i14));
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Integer) arrayList13.get(i6)).intValue(), 1) + " / " + Game.getProvince(((Integer) arrayList11.get(i6)).intValue()).iInfrastructureMax, CFG.FONT_REGULAR_SMALL, -1, width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i23, i14));
                        arrayList.get(arrayList.size() - 1).getWidth();
                        int i82 = CFG.PADDING;
                        height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList11.remove(i6);
                        arrayList12.remove(i6);
                        arrayList13.remove(i6);
                        i72 = i73;
                    }
                }
                i27 = width;
            } catch (Exception e2) {
                exc = e2;
                i27 = width;
                CFG.exceptionStack(exc);
            }
        } catch (Exception e3) {
            e = e3;
            i27 = width;
        }
        size = arrayList.size();
        posY = 0;
        while (i < size) {
            if (posY < arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING;
            }
        }
        int iMin2 = Math.min(posY, (CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
        int i710 = i27;
        arrayList.add(new Empty(0, 0, i710, Math.max(posY, iMin2)));
        initMenu(new AnonymousClass13(Game.lang.get("Economy"), Game.lang.get("Total") + ": " + CFG.getNumberWithSpaces("" + CFG.getPrecision2(totalEconomy, 1)), false, false, Images.title600), i11, height, i710, iMin2, arrayList, false, true);
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
