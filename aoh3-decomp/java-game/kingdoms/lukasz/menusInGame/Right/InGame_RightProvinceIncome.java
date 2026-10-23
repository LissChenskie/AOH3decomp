package aoc.kingdoms.lukasz.menusInGame.Right;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Religion;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRect_Active;
import aoc.kingdoms.lukasz.menu_element.graph.Graph;
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
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RightProvinceIncome extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iModeID = 0;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;
    public static float totalIncome;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRect_Active {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightProvinceIncome.iModeID != 0) {
                InGame_RightProvinceIncome.iModeID = 0;
                Game.menuManager.rebuildInGame_RightProvinceIncome();
                InGame_RightProvinceIncome.lTime = 0L;
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
            return InGame_RightProvinceIncome.iModeID == 0 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            float provinceIncome = 0.0f;
            float provinceIncome2 = 0.0f;
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).getContinent() == getCurrent()) {
                    provinceIncome += Game.getProvince(i).getProvinceIncome();
                    provinceIncome2 += Game.getProvince(i).getProvinceIncome() + Game.getProvince(i).fProvinceMaintenance;
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(MQYGMkZOAcS.eaJhjavPPFvaDA) + ": ", CFG.getPrecision2(provinceIncome, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Balance") + ": ", CFG.getPrecision2(provinceIncome2, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("World") + ": ", CFG.getPrecision2((provinceIncome / InGame_RightProvinceIncome.totalIncome) * 100.0f, 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsRectIMG_Religion {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            float provinceIncome = 0.0f;
            float provinceIncome2 = 0.0f;
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).getReligion() == this.imageID) {
                    provinceIncome += Game.getProvince(i).getProvinceIncome();
                    provinceIncome2 += Game.getProvince(i).getProvinceIncome() + Game.getProvince(i).fProvinceMaintenance;
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Income") + ": ", CFG.getPrecision2(provinceIncome, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Balance") + ": ", CFG.getPrecision2(provinceIncome2, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("World") + ": ", CFG.getPrecision2((provinceIncome / InGame_RightProvinceIncome.totalIncome) * 100.0f, 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome$12, reason: invalid class name */
    class AnonymousClass12 extends MenuTitleIMG_DoubleText {
        AnonymousClass12(String str, String str2, boolean z, boolean z2, int i) {
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
            return InGame_RightProvinceIncome.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRect_Active {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightProvinceIncome.iModeID != 1) {
                InGame_RightProvinceIncome.iModeID = 1;
                Game.menuManager.rebuildInGame_RightProvinceIncome();
                InGame_RightProvinceIncome.lTime = 0L;
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
            return InGame_RightProvinceIncome.iModeID == 1 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRect_Active {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightProvinceIncome.iModeID != 2) {
                InGame_RightProvinceIncome.iModeID = 2;
                Game.menuManager.rebuildInGame_RightProvinceIncome();
                InGame_RightProvinceIncome.lTime = 0L;
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
            return InGame_RightProvinceIncome.iModeID == 2 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRect_Active {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightProvinceIncome.iModeID != 3) {
                InGame_RightProvinceIncome.iModeID = 3;
                Game.menuManager.rebuildInGame_RightProvinceIncome();
                InGame_RightProvinceIncome.lTime = 0L;
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
            return InGame_RightProvinceIncome.iModeID == 3 ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightProvinceIncome.iSortID == 0) {
                InGame_RightProvinceIncome.iSortID = 1;
            } else {
                InGame_RightProvinceIncome.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RightProvinceIncome();
            InGame_RightProvinceIncome.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightProvinceIncome.iSortID == 2) {
                InGame_RightProvinceIncome.iSortID = 3;
            } else {
                InGame_RightProvinceIncome.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RightProvinceIncome();
            InGame_RightProvinceIncome.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightProvinceIncome.iSortID == 4) {
                InGame_RightProvinceIncome.iSortID = 5;
            } else {
                InGame_RightProvinceIncome.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_RightProvinceIncome();
            InGame_RightProvinceIncome.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Balance"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_ID_FlagCiv {
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
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(getCurrent(), Game.lang.get("Provinces") + ": " + CFG.getNumberWithSpaces("" + Game.getCiv(getCurrent()).getNumOfProvinces())));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceIncome") + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(Game.getCiv(getCurrent()).getTotalProvinceIncome(), 1)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Balance") + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(Game.getCiv(getCurrent()).getTotalIncome(), 1)), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("World") + ": ", CFG.getPrecision2((Game.getCiv(getCurrent()).getTotalIncome() / InGame_RightProvinceIncome.totalIncome) * 100.0f, 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID_Flag {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceIncome") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getProvinceIncome(), 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Balance") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getProvinceIncome() - Game.getProvince(getCurrent()).fProvinceMaintenance, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:363:0x0cdb  */
    /* JADX WARN: Code duplicated, block: B:365:0x0cf5  */
    /* JADX WARN: Code duplicated, block: B:403:0x0d0d A[SYNTHETIC] */
    public InGame_RightProvinceIncome() {
        Exception exc;
        int size;
        int posY;
        int i;
        char c;
        char c2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        ArrayList arrayList = new ArrayList();
        int i12 = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i13 = Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.title1Red).getWidth();
        int i14 = CFG.GAME_WIDTH - width;
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i15 = CFG.PADDING;
        int i16 = Images.boxTitleBORDERWIDTH + i12;
        int i17 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i18 = (int) ((((width - (i12 * 2)) - CFG.PADDING) - Images.boxTitleBORDERWIDTH) / 2.0f);
        totalIncome = 0.0f;
        for (int i19 = 0; i19 < Game.getProvincesSize(); i19++) {
            if (Game.getProvince(i19).getCivID() > 0) {
                totalIncome += Game.getProvince(i19).getProvinceIncome();
            }
        }
        arrayList.add(new AnonymousClass1(Game.lang.get("Civilizations"), i16, i15, i18, i17, iModeID == 0 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int i20 = 1;
        arrayList.add(new AnonymousClass2(Game.lang.get("Provinces"), CFG.PADDING + i16 + i18, i15, i18, i17, iModeID == 1 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int height2 = i15 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass3(Game.lang.get("Continents"), i16, height2, i18, i17, iModeID == 2 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int i21 = 3;
        arrayList.add(new AnonymousClass4(Game.lang.get("Religion"), i16 + CFG.PADDING + i18, height2, i18, i17, iModeID == 3 ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i22 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.5f);
        int i23 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i24 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i25 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.5f);
        int i26 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.25f);
        int i27 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.25f);
        int i28 = Images.boxTitleBORDERWIDTH;
        int i29 = iSortID;
        arrayList.add(new AnonymousClass5(i29 == 0 || i29 == 1, i29 == 1, Game.lang.get("Name"), -1, i28, height3, i22, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i28 + arrayList.get(arrayList.size() - 1).getWidth();
        int i30 = iSortID;
        arrayList.add(new AnonymousClass6(i30 == 2 || i30 == 3, i30 == 3, Game.lang.get("Income"), -1, width2, height3, i23, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i31 = iSortID;
        int i32 = -1;
        arrayList.add(new AnonymousClass7(i31 == 4 || i31 == 5, i31 == 5, Game.lang.get("Balance"), -1, width3, height3, i24, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        try {
            int i33 = iModeID;
            try {
                if (i33 == 0) {
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    for (int i34 = 1; i34 < Game.getCivsSize(); i34++) {
                        if (Game.getCiv(i34).getNumOfProvinces() > 0) {
                            arrayList2.add(Integer.valueOf(i34));
                            arrayList3.add(Float.valueOf(Game.getCiv(i34).fTotalIncomePerMonth + Game.getCiv(i34).civBonuses.MonthlyIncome));
                            arrayList4.add(Float.valueOf(Game.getCiv(i34).getBalance()));
                        }
                    }
                    while (arrayList2.size() > 0) {
                        int i35 = iSortID;
                        if (i35 == 0) {
                            i11 = 0;
                            for (int i36 = 1; i36 < arrayList2.size(); i36++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i11)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i36)).intValue()).getCivName())) {
                                    i11 = i36;
                                }
                            }
                        } else if (i35 == 1) {
                            i11 = 0;
                            for (int i37 = 1; i37 < arrayList2.size(); i37++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i37)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i11)).intValue()).getCivName())) {
                                    i11 = i37;
                                }
                            }
                        } else if (i35 == 2) {
                            i11 = 0;
                            for (int i38 = 1; i38 < arrayList2.size(); i38++) {
                                if (((Float) arrayList3.get(i11)).floatValue() < ((Float) arrayList3.get(i38)).floatValue()) {
                                    i11 = i38;
                                }
                            }
                        } else {
                            if (i35 == i21) {
                                i11 = 0;
                                for (int i39 = 1; i39 < arrayList2.size(); i39++) {
                                    if (((Float) arrayList3.get(i11)).floatValue() > ((Float) arrayList3.get(i39)).floatValue()) {
                                        i11 = i39;
                                    }
                                }
                            } else {
                                if (i35 == 4) {
                                    i10 = 0;
                                    for (int i40 = 1; i40 < arrayList2.size(); i40++) {
                                        if (((Float) arrayList4.get(i10)).floatValue() < ((Float) arrayList4.get(i40)).floatValue()) {
                                            i10 = i40;
                                        }
                                    }
                                } else if (i35 == 5) {
                                    i10 = 0;
                                    for (int i41 = 1; i41 < arrayList2.size(); i41++) {
                                        if (((Float) arrayList4.get(i10)).floatValue() > ((Float) arrayList4.get(i41)).floatValue()) {
                                            i10 = i41;
                                        }
                                    }
                                } else {
                                    i9 = 0;
                                }
                                i9 = i10;
                            }
                            int i42 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                            int i43 = i9;
                            ArrayList arrayList5 = arrayList4;
                            int i44 = i27;
                            int i45 = i26;
                            arrayList.add(new AnonymousClass8(Game.getCiv(((Integer) arrayList2.get(i9)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i42, height4, i25, i17, ((Integer) arrayList2.get(i9)).intValue()));
                            int width4 = i42 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList3.get(i43)).floatValue(), 10), CFG.FONT_REGULAR_SMALL, -1, width4, height4, i45, i17));
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList5.get(i43)).floatValue(), 10), CFG.FONT_REGULAR_SMALL, -1, width4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i44, i17));
                            arrayList.get(arrayList.size() - 1).getWidth();
                            int i46 = CFG.PADDING;
                            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                            arrayList2.remove(i43);
                            arrayList3.remove(i43);
                            arrayList5.remove(i43);
                            arrayList4 = arrayList5;
                            i26 = i45;
                            i27 = i44;
                            i21 = 3;
                        }
                        i9 = i11;
                        int i47 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        int i48 = i9;
                        ArrayList arrayList6 = arrayList4;
                        int i49 = i27;
                        int i410 = i26;
                        arrayList.add(new AnonymousClass8(Game.getCiv(((Integer) arrayList2.get(i9)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i47, height4, i25, i17, ((Integer) arrayList2.get(i9)).intValue()));
                        int width5 = i47 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList3.get(i48)).floatValue(), 10), CFG.FONT_REGULAR_SMALL, -1, width5, height4, i410, i17));
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList6.get(i48)).floatValue(), 10), CFG.FONT_REGULAR_SMALL, -1, width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i49, i17));
                        arrayList.get(arrayList.size() - 1).getWidth();
                        int i411 = CFG.PADDING;
                        height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList2.remove(i48);
                        arrayList3.remove(i48);
                        arrayList6.remove(i48);
                        arrayList4 = arrayList6;
                        i26 = i410;
                        i27 = i49;
                        i21 = 3;
                    }
                } else {
                    if (i33 != 1) {
                        try {
                            if (i33 == 2) {
                                ArrayList arrayList7 = new ArrayList();
                                ArrayList arrayList8 = new ArrayList();
                                ArrayList arrayList9 = new ArrayList();
                                for (int i50 = 0; i50 < Game.continents.iContinentsSize; i50++) {
                                    arrayList7.add(Integer.valueOf(i50));
                                    arrayList8.add(Float.valueOf(0.0f));
                                    arrayList9.add(Float.valueOf(0.0f));
                                }
                                for (int i51 = 0; i51 < Game.getProvincesSize(); i51++) {
                                    if (Game.getProvince(i51).getCivID() > 0) {
                                        arrayList8.set(Game.getProvince(i51).getContinent(), Float.valueOf(((Float) arrayList8.get(Game.getProvince(i51).getContinent())).floatValue() + Game.getProvince(i51).getProvinceIncome()));
                                        arrayList9.set(Game.getProvince(i51).getContinent(), Float.valueOf(((Float) arrayList9.get(Game.getProvince(i51).getContinent())).floatValue() + Game.getProvince(i51).getProvinceIncome() + Game.getProvince(i51).fProvinceMaintenance));
                                    }
                                }
                                arrayList7.remove(0);
                                arrayList8.remove(0);
                                arrayList9.remove(0);
                                while (arrayList7.size() > 0) {
                                    int i52 = iSortID;
                                    if (i52 == 0) {
                                        i6 = 0;
                                        for (int i53 = i20; i53 < arrayList7.size(); i53++) {
                                            if (CFG.compareAlphabetic_TwoString(Game.continents.lContinents.get(((Integer) arrayList7.get(i6)).intValue()).sName, Game.continents.lContinents.get(((Integer) arrayList7.get(i53)).intValue()).sName)) {
                                                i6 = i53;
                                            }
                                        }
                                    } else if (i52 == i20) {
                                        i6 = 0;
                                        for (int i54 = i20; i54 < arrayList7.size(); i54++) {
                                            if (CFG.compareAlphabetic_TwoString(Game.continents.lContinents.get(((Integer) arrayList7.get(i54)).intValue()).sName, Game.continents.lContinents.get(((Integer) arrayList7.get(i6)).intValue()).sName)) {
                                                i6 = i54;
                                            }
                                        }
                                    } else if (i52 == 2) {
                                        i6 = 0;
                                        for (int i55 = i20; i55 < arrayList7.size(); i55++) {
                                            if (((Float) arrayList8.get(i6)).floatValue() < ((Float) arrayList8.get(i55)).floatValue()) {
                                                i6 = i55;
                                            }
                                        }
                                    } else {
                                        if (i52 == 3) {
                                            i6 = 0;
                                            for (int i56 = i20; i56 < arrayList7.size(); i56++) {
                                                if (((Float) arrayList8.get(i6)).floatValue() > ((Float) arrayList8.get(i56)).floatValue()) {
                                                    i6 = i56;
                                                }
                                            }
                                        } else if (i52 == 4) {
                                            int i57 = 0;
                                            for (int i58 = i20; i58 < arrayList7.size(); i58++) {
                                                if (((Float) arrayList9.get(i57)).floatValue() < ((Float) arrayList9.get(i58)).floatValue()) {
                                                    i57 = i58;
                                                }
                                            }
                                            i5 = i57;
                                        } else if (i52 == 5) {
                                            int i59 = 0;
                                            for (int i60 = i20; i60 < arrayList7.size(); i60++) {
                                                if (((Float) arrayList9.get(i59)).floatValue() > ((Float) arrayList9.get(i60)).floatValue()) {
                                                    i59 = i60;
                                                }
                                            }
                                            i5 = i59;
                                        } else {
                                            i5 = 0;
                                        }
                                        int i61 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                        int i62 = width;
                                        int i63 = i5;
                                        arrayList.add(new AnonymousClass10(Game.continents.lContinents.get(((Integer) arrayList7.get(i5)).intValue()).sName, CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i61, height4, i25, i17, ((Integer) arrayList7.get(i5)).intValue()));
                                        int width6 = i61 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList8.get(i63)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width6, height4, i26, i17));
                                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList9.get(i63)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i27, i17));
                                        arrayList.get(arrayList.size() - 1).getWidth();
                                        int i64 = CFG.PADDING;
                                        height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                        arrayList7.remove(i63);
                                        arrayList8.remove(i63);
                                        arrayList9.remove(i63);
                                        width = i62;
                                        i20 = 1;
                                    }
                                    i5 = i6;
                                    int i65 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                    int i66 = width;
                                    int i67 = i5;
                                    arrayList.add(new AnonymousClass10(Game.continents.lContinents.get(((Integer) arrayList7.get(i5)).intValue()).sName, CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i65, height4, i25, i17, ((Integer) arrayList7.get(i5)).intValue()));
                                    int width7 = i65 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                    arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList8.get(i67)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width7, height4, i26, i17));
                                    arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList9.get(i67)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i27, i17));
                                    arrayList.get(arrayList.size() - 1).getWidth();
                                    int i68 = CFG.PADDING;
                                    height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                    arrayList7.remove(i67);
                                    arrayList8.remove(i67);
                                    arrayList9.remove(i67);
                                    width = i66;
                                    i20 = 1;
                                }
                            } else {
                                i32 = width;
                                if (i33 == 3) {
                                    ArrayList arrayList10 = new ArrayList();
                                    ArrayList arrayList11 = new ArrayList();
                                    ArrayList arrayList12 = new ArrayList();
                                    for (int i69 = 0; i69 < Game.religionManager.getReligionsSize(); i69++) {
                                        arrayList10.add(Integer.valueOf(i69));
                                        arrayList11.add(Float.valueOf(0.0f));
                                        arrayList12.add(Float.valueOf(0.0f));
                                    }
                                    for (int i70 = 0; i70 < Game.getProvincesSize(); i70++) {
                                        if (Game.getProvince(i70).getCivID() > 0) {
                                            arrayList11.set(Game.getProvince(i70).getReligion(), Float.valueOf(((Float) arrayList11.get(Game.getProvince(i70).getReligion())).floatValue() + Game.getProvince(i70).getProvinceIncome()));
                                            arrayList12.set(Game.getProvince(i70).getReligion(), Float.valueOf(((Float) arrayList12.get(Game.getProvince(i70).getReligion())).floatValue() + Game.getProvince(i70).getProvinceIncome() + Game.getProvince(i70).fProvinceMaintenance));
                                        }
                                    }
                                    while (arrayList10.size() > 0) {
                                        int i71 = iSortID;
                                        if (i71 == 0) {
                                            i4 = 0;
                                            for (int i72 = 1; i72 < arrayList10.size(); i72++) {
                                                if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList10.get(i4)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList10.get(i72)).intValue()).Name)) {
                                                    i4 = i72;
                                                }
                                            }
                                        } else {
                                            if (i71 == 1) {
                                                i4 = 0;
                                                for (int i73 = 1; i73 < arrayList10.size(); i73++) {
                                                    if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(((Integer) arrayList10.get(i73)).intValue()).Name, Game.religionManager.getReligion(((Integer) arrayList10.get(i4)).intValue()).Name)) {
                                                        i4 = i73;
                                                    }
                                                }
                                            } else {
                                                if (i71 == 2) {
                                                    i3 = 0;
                                                    for (int i74 = 1; i74 < arrayList10.size(); i74++) {
                                                        if (((Float) arrayList11.get(i3)).floatValue() < ((Float) arrayList11.get(i74)).floatValue()) {
                                                            i3 = i74;
                                                        }
                                                    }
                                                } else if (i71 == 3) {
                                                    i3 = 0;
                                                    for (int i75 = 1; i75 < arrayList10.size(); i75++) {
                                                        if (((Float) arrayList11.get(i3)).floatValue() > ((Float) arrayList11.get(i75)).floatValue()) {
                                                            i3 = i75;
                                                        }
                                                    }
                                                } else {
                                                    c = 4;
                                                    if (i71 == 4) {
                                                        int i76 = 0;
                                                        for (int i77 = 1; i77 < arrayList10.size(); i77++) {
                                                            if (((Float) arrayList12.get(i76)).floatValue() < ((Float) arrayList12.get(i77)).floatValue()) {
                                                                i76 = i77;
                                                            }
                                                        }
                                                        i2 = i76;
                                                        c2 = 5;
                                                    } else {
                                                        c2 = 5;
                                                        if (i71 == 5) {
                                                            i2 = 0;
                                                            for (int i78 = 1; i78 < arrayList10.size(); i78++) {
                                                                if (((Float) arrayList12.get(i2)).floatValue() > ((Float) arrayList12.get(i78)).floatValue()) {
                                                                    i2 = i78;
                                                                }
                                                            }
                                                        } else {
                                                            i2 = 0;
                                                        }
                                                    }
                                                }
                                                i2 = i3;
                                                c2 = 5;
                                                c = 4;
                                            }
                                            int i79 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                            arrayList.add(new AnonymousClass11(Game.religionManager.getReligion(((Integer) arrayList10.get(i2)).intValue()).Name, ((Integer) arrayList10.get(i2)).intValue(), i79, height4, i25, i17, ImageManager.getImage(Images.religion).getWidth(), 0));
                                            int width8 = i79 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList11.get(i2)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width8, height4, i26, i17));
                                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList12.get(i2)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i27, i17));
                                            arrayList.get(arrayList.size() - 1).getWidth();
                                            int i80 = CFG.PADDING;
                                            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                            arrayList10.remove(i2);
                                            arrayList11.remove(i2);
                                            arrayList12.remove(i2);
                                        }
                                        i2 = i4;
                                        c2 = 5;
                                        c = 4;
                                        int i710 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                                        arrayList.add(new AnonymousClass11(Game.religionManager.getReligion(((Integer) arrayList10.get(i2)).intValue()).Name, ((Integer) arrayList10.get(i2)).intValue(), i710, height4, i25, i17, ImageManager.getImage(Images.religion).getWidth(), 0));
                                        int width9 = i710 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList11.get(i2)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width9, height4, i26, i17));
                                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList12.get(i2)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i27, i17));
                                        arrayList.get(arrayList.size() - 1).getWidth();
                                        int i81 = CFG.PADDING;
                                        height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                        arrayList10.remove(i2);
                                        arrayList11.remove(i2);
                                        arrayList12.remove(i2);
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
                        int i82 = i32;
                        arrayList.add(new Empty(0, 0, i82, Math.max(posY, iMin)));
                        initMenu(new AnonymousClass12(Game.lang.get("ProvinceIncome"), Game.lang.get("Total") + ": " + CFG.getNumberWithSpaces("" + CFG.getPrecision2(totalIncome, 1)), false, false, Images.title600), i14, height, i82, iMin, arrayList, false, true);
                        this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
                    }
                    ArrayList arrayList13 = new ArrayList();
                    ArrayList arrayList14 = new ArrayList();
                    ArrayList arrayList15 = new ArrayList();
                    for (int i83 = 0; i83 < Game.getProvincesSize(); i83++) {
                        if (Game.getProvince(i83).getCivID() > 0) {
                            arrayList13.add(Integer.valueOf(i83));
                            arrayList14.add(Float.valueOf(Game.getProvince(i83).getProvinceIncome()));
                            arrayList15.add(Float.valueOf(Game.getProvince(i83).getProvinceIncome() - Game.getProvince(i83).fProvinceMaintenance));
                        }
                    }
                    int i84 = Graph.ANIMATION_TIME;
                    while (arrayList13.size() > 0) {
                        int i85 = i84 - 1;
                        if (i84 <= 0) {
                            break;
                        }
                        int i86 = iSortID;
                        if (i86 == 0) {
                            i8 = 0;
                            for (int i87 = 1; i87 < arrayList13.size(); i87++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList13.get(i8)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList13.get(i87)).intValue()).getProvinceName())) {
                                    i8 = i87;
                                }
                            }
                        } else if (i86 == 1) {
                            i8 = 0;
                            for (int i88 = 1; i88 < arrayList13.size(); i88++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList13.get(i88)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList13.get(i8)).intValue()).getProvinceName())) {
                                    i8 = i88;
                                }
                            }
                        } else if (i86 == 2) {
                            i8 = 0;
                            for (int i89 = 1; i89 < arrayList13.size(); i89++) {
                                if (((Float) arrayList14.get(i8)).floatValue() < ((Float) arrayList14.get(i89)).floatValue()) {
                                    i8 = i89;
                                }
                            }
                        } else {
                            if (i86 == 3) {
                                i8 = 0;
                                for (int i90 = 1; i90 < arrayList13.size(); i90++) {
                                    if (((Float) arrayList14.get(i8)).floatValue() > ((Float) arrayList14.get(i90)).floatValue()) {
                                        i8 = i90;
                                    }
                                }
                            } else if (i86 == 4) {
                                int i91 = 0;
                                for (int i92 = 1; i92 < arrayList13.size(); i92++) {
                                    if (((Float) arrayList15.get(i91)).floatValue() < ((Float) arrayList15.get(i92)).floatValue()) {
                                        i91 = i92;
                                    }
                                }
                                i7 = i91;
                            } else if (i86 == 5) {
                                int i93 = 0;
                                for (int i94 = 1; i94 < arrayList13.size(); i94++) {
                                    if (((Float) arrayList15.get(i93)).floatValue() > ((Float) arrayList15.get(i94)).floatValue()) {
                                        i93 = i94;
                                    }
                                }
                                i7 = i93;
                            } else {
                                i7 = 0;
                            }
                            int i95 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                            int i96 = i7;
                            ArrayList arrayList16 = arrayList15;
                            arrayList.add(new AnonymousClass9(Game.getProvince(((Integer) arrayList13.get(i7)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i95, height4, i25, i17, ((Integer) arrayList13.get(i7)).intValue()));
                            int width10 = i95 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList14.get(i96)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width10, height4, i26, i17));
                            arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList16.get(i96)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width10 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i27, i17));
                            arrayList.get(arrayList.size() - 1).getWidth();
                            int i97 = CFG.PADDING;
                            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                            arrayList13.remove(i96);
                            arrayList14.remove(i96);
                            arrayList16.remove(i96);
                            arrayList15 = arrayList16;
                            i84 = i85;
                        }
                        i7 = i8;
                        int i98 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        int i99 = i7;
                        ArrayList arrayList17 = arrayList15;
                        arrayList.add(new AnonymousClass9(Game.getProvince(((Integer) arrayList13.get(i7)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i98, height4, i25, i17, ((Integer) arrayList13.get(i7)).intValue()));
                        int width11 = i98 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList14.get(i99)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width11, height4, i26, i17));
                        arrayList.add(new Text_StaticBG(CFG.getPrecision2(((Float) arrayList17.get(i99)).floatValue(), 100), CFG.FONT_REGULAR_SMALL, -1, width11 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, i27, i17));
                        arrayList.get(arrayList.size() - 1).getWidth();
                        int i910 = CFG.PADDING;
                        height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList13.remove(i99);
                        arrayList14.remove(i99);
                        arrayList17.remove(i99);
                        arrayList15 = arrayList17;
                        i84 = i85;
                    }
                }
                i32 = width;
            } catch (Exception e2) {
                exc = e2;
                i32 = width;
                CFG.exceptionStack(exc);
            }
        } catch (Exception e3) {
            e = e3;
            i32 = width;
        }
        size = arrayList.size();
        posY = 0;
        while (i < size) {
            if (posY < arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i).getPosY() + arrayList.get(i).getHeight() + CFG.PADDING;
            }
        }
        int iMin2 = Math.min(posY, (CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
        int i810 = i32;
        arrayList.add(new Empty(0, 0, i810, Math.max(posY, iMin2)));
        initMenu(new AnonymousClass12(Game.lang.get("ProvinceIncome"), Game.lang.get("Total") + ": " + CFG.getNumberWithSpaces("" + CFG.getPrecision2(totalIncome, 1)), false, false, Images.title600), i14, height, i810, iMin2, arrayList, false, true);
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
