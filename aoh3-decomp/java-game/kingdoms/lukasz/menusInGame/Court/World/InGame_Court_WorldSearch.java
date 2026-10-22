package aoc.kingdoms.lukasz.menusInGame.Court.World;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Economy;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_GrowthRate;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Infrastructure;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Manpower;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_ProvinceIncome;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Tax;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Resource_Small;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_WorldSearch extends Menu {
    public static int iSortID = 2;
    public static String sSearch = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonCurrentSituation {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$10, reason: invalid class name */
    class AnonymousClass10 extends Text_TitleBlueSort {
        AnonymousClass10(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldSearch.iSortID == 14) {
                InGame_Court_WorldSearch.iSortID = 15;
            } else {
                InGame_Court_WorldSearch.iSortID = 14;
            }
            Game.menuManager.rebuildInGame_CourtSearch();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$11, reason: invalid class name */
    class AnonymousClass11 extends Text_TitleBlueSort {
        AnonymousClass11(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldSearch.iSortID == 16) {
                InGame_Court_WorldSearch.iSortID = 17;
            } else {
                InGame_Court_WorldSearch.iSortID = 16;
            }
            Game.menuManager.rebuildInGame_CourtSearch();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Resource"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$12, reason: invalid class name */
    class AnonymousClass12 extends Text_StaticBG_ID_FlagCiv_Special {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str2) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, str2);
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
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(this.id).getCivID(), Game.getProvince(this.id).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(this.id).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(this.id).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Income") + ": ", CFG.getPrecision2(Game.getProvince(this.id).getProvinceIncome() - Game.getProvince(this.id).fProvinceMaintenance, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Province") + " ID: ", "" + this.id, Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_Special
        public Color getColor2(boolean z) {
            return Colors.getColorPopulation(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$13, reason: invalid class name */
    class AnonymousClass13 extends TextIcon2_ProvinceIncome {
        AnonymousClass13(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvinceIncome(this.iProvinceID, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$14, reason: invalid class name */
    class AnonymousClass14 extends TextIcon2_Tax {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$14$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_YELLOW;
            }
        }

        AnonymousClass14(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionTax(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_WorldSearch.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_WorldSearch.this.getMenuPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverTaxEfficiency(this.iProvinceID, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getCoin();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$15, reason: invalid class name */
    class AnonymousClass15 extends TextIcon2_GrowthRate {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$15$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_POPULATION;
            }
        }

        AnonymousClass15(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionGrowthRate(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_WorldSearch.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_WorldSearch.this.getMenuPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulationGrowth(this.iProvinceID, false, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            SoundsManager soundsManager = Game.soundsManager;
            return SoundsManager.getGrowthRate();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$16, reason: invalid class name */
    class AnonymousClass16 extends TextIcon2_Manpower {
        AnonymousClass16(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionManpower(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new ClickAnimation(getPosX() + (getWidth() / 2) + InGame_Court_WorldSearch.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_WorldSearch.this.getMenuPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverManpower(this.iProvinceID, false, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_Manpower
        public int getImageID() {
            return Game_Calendar.IMG_MANPOWER;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getClickIncreaseManpower();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$17, reason: invalid class name */
    class AnonymousClass17 extends TextIcon2_Infrastructure {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$17$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_LEFT;
            }
        }

        AnonymousClass17(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionInfrastructure(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_WorldSearch.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_WorldSearch.this.getMenuPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverInfrastructure(this.iProvinceID, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getInfrastructure();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$18, reason: invalid class name */
    class AnonymousClass18 extends TextIcon2_Economy {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$18$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_TEXT_ECONOMY;
            }
        }

        AnonymousClass18(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionEconomy(this.iProvinceID)) {
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_WorldSearch.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_WorldSearch.this.getMenuPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverEconomy(this.iProvinceID, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getEconomy();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$19, reason: invalid class name */
    class AnonymousClass19 extends TextIcon_Resource_Small {
        AnonymousClass19(int i, String str, int i2, int i3, int i4, int i5, int i6) {
            super(i, str, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Resource_Small, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverResource(this.iProvinceID, this.resourceID, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_Write {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SEARCH_COURT_ALL_PROVINCES, InGame_Court_WorldSearch.sSearch);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return InGame_Court_WorldSearch.sSearch + Keyboard.getKeyboardVerticalLine();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldSearch.iSortID == 0) {
                InGame_Court_WorldSearch.iSortID = 1;
            } else {
                InGame_Court_WorldSearch.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_CourtSearch();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldSearch.iSortID == 2) {
                InGame_Court_WorldSearch.iSortID = 3;
            } else {
                InGame_Court_WorldSearch.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_CourtSearch();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(PxHJ.ZVmHh) + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldSearch.iSortID == 4) {
                InGame_Court_WorldSearch.iSortID = 5;
            } else {
                InGame_Court_WorldSearch.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_CourtSearch();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldSearch.iSortID == 6) {
                InGame_Court_WorldSearch.iSortID = 7;
            } else {
                InGame_Court_WorldSearch.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_CourtSearch();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("TaxEfficiency"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldSearch.iSortID == 8) {
                InGame_Court_WorldSearch.iSortID = 9;
            } else {
                InGame_Court_WorldSearch.iSortID = 8;
            }
            Game.menuManager.rebuildInGame_CourtSearch();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldSearch.iSortID == 10) {
                InGame_Court_WorldSearch.iSortID = 11;
            } else {
                InGame_Court_WorldSearch.iSortID = 10;
            }
            Game.menuManager.rebuildInGame_CourtSearch();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + fiRhHJntP.YTlrq));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Manpower"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch$9, reason: invalid class name */
    class AnonymousClass9 extends Text_TitleBlueSort {
        AnonymousClass9(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldSearch.iSortID == 12) {
                InGame_Court_WorldSearch.iSortID = 13;
            } else {
                InGame_Court_WorldSearch.iSortID = 12;
            }
            Game.menuManager.rebuildInGame_CourtSearch();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
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

    public InGame_Court_WorldSearch() {
        int i;
        int i2;
        int i3;
        int height;
        int i4;
        int i5;
        int i6;
        ArrayList arrayList = new ArrayList();
        int i7 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int i8 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int menuWidth = (CFG.PADDING * 2) + InGame_CourtOptions2.getMenuWidth();
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i9 = CFG.PADDING;
        int i10 = CFG.PADDING;
        int i11 = width - (i7 * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get(GameValues.court.COUNCIL_NAME), Images.council, i7, i10, i11, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        int height3 = i10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i12 = 1;
        arrayList.add(new AnonymousClass2(Game.lang.get("Search") + ": ", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i7, height3, i11, CFG.BUTTON_HEIGHT2));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i13 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i14 = 6;
        int i15 = (i11 - (CFG.PADDING * 6)) / 7;
        int i16 = CFG.BUTTON_HEIGHT;
        int i17 = CFG.PADDING + i13 + i16;
        int i18 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) / 4.0f);
        int i19 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) / 5.0f);
        int i20 = Images.boxTitleBORDERWIDTH;
        int i21 = iSortID;
        arrayList.add(new AnonymousClass3(i21 == 0 || i21 == 1, i21 == 1, Game.lang.get("Name"), -1, i20, height4, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i20 + arrayList.get(arrayList.size() - 1).getWidth();
        int i22 = iSortID;
        arrayList.add(new AnonymousClass4(i22 == 2 || i22 == 3, i22 == 3, Game.lang.get("Population"), -1, width2, height4, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i23 = iSortID;
        int i24 = 4;
        arrayList.add(new AnonymousClass5(i23 == 4 || i23 == 5, i23 == 5, Game.lang.get("Income"), -1, width3, height4, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i25 = iSortID;
        arrayList.add(new AnonymousClass6(i25 == 6 || i25 == 7, i25 == 7, Game.lang.get("TaxEfficiency"), -1, width4, height4, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int i26 = Images.boxTitleBORDERWIDTH;
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight();
        int i27 = iSortID;
        arrayList.add(new AnonymousClass7(i27 == 8 || i27 == 9, i27 == 9, Game.lang.get("GrowthRate"), -1, i26, height5, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = i26 + arrayList.get(arrayList.size() - 1).getWidth();
        int i28 = iSortID;
        arrayList.add(new AnonymousClass8(i28 == 10 || i28 == 11, i28 == 11, Game.lang.get("Manpower"), -1, width5, height5, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth();
        int i29 = iSortID;
        arrayList.add(new AnonymousClass9(i29 == 12 || i29 == 13, i29 == 13, Game.lang.get("Infrastructure"), -1, width6, height5, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth();
        int i30 = iSortID;
        int i31 = 14;
        arrayList.add(new AnonymousClass10(i30 == 14 || i30 == 15, i30 == 15, Game.lang.get("Economy"), -1, width7, height5, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth();
        int i32 = iSortID;
        arrayList.add(new AnonymousClass11(i32 == 16 || i32 == 17, i32 == 17, Game.lang.get("Resource"), -1, width8, height5, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        arrayList.get(arrayList.size() - 1).getWidth();
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        ArrayList arrayList2 = new ArrayList();
        if (sSearch.length() > 0) {
            try {
                i = Integer.parseInt(sSearch);
            } catch (Exception unused) {
                i = -1;
            }
            if (i < 0 || i >= Game.getProvincesSize()) {
                String lowerCase = sSearch.toLowerCase();
                for (int i33 = 0; i33 < Game.getProvincesSize(); i33++) {
                    if (Game.getProvince(i33).getProvinceName().toLowerCase().indexOf(lowerCase) >= 0) {
                        arrayList2.add(Integer.valueOf(i33));
                    }
                }
            } else {
                arrayList2.add(Integer.valueOf(i));
            }
        } else {
            for (int i34 = 0; i34 < Game.getProvincesSize(); i34++) {
                arrayList2.add(Integer.valueOf(i34));
            }
        }
        if (arrayList2.size() > 0) {
            height = height6;
            int i35 = 0;
            while (arrayList2.size() > 0) {
                int i36 = i35 + 1;
                if (i35 >= GameValues.inGame.COURT_PROVINCES_LIMIT) {
                    break;
                }
                int i37 = iSortID;
                if (i37 == 0) {
                    i6 = 0;
                    for (int i38 = i12; i38 < arrayList2.size(); i38++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i38)).intValue()).getProvinceName())) {
                            i6 = i38;
                        }
                    }
                } else if (i37 == i12) {
                    i6 = 0;
                    for (int i39 = i12; i39 < arrayList2.size(); i39++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i39)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getProvinceName())) {
                            i6 = i39;
                        }
                    }
                } else if (i37 == 2) {
                    i6 = 0;
                    for (int i40 = i12; i40 < arrayList2.size(); i40++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i40)).intValue()).getPopulationTotal() > Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getPopulationTotal()) {
                            i6 = i40;
                        }
                    }
                } else if (i37 == 3) {
                    i6 = 0;
                    for (int i41 = i12; i41 < arrayList2.size(); i41++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i41)).intValue()).getPopulationTotal() < Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getPopulationTotal()) {
                            i6 = i41;
                        }
                    }
                } else if (i37 == i24) {
                    i6 = 0;
                    for (int i42 = i12; i42 < arrayList2.size(); i42++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i42)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList2.get(i42)).intValue()).fProvinceMaintenance > Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).fProvinceMaintenance) {
                            i6 = i42;
                        }
                    }
                } else if (i37 == 5) {
                    i6 = 0;
                    for (int i43 = i12; i43 < arrayList2.size(); i43++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i43)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList2.get(i43)).intValue()).fProvinceMaintenance < Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).fProvinceMaintenance) {
                            i6 = i43;
                        }
                    }
                } else {
                    if (i37 == i14) {
                        i6 = 0;
                        for (int i44 = i12; i44 < arrayList2.size(); i44++) {
                            if (Game.getProvince(((Integer) arrayList2.get(i44)).intValue()).getTaxEfficiencyWithBonuses() > Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getTaxEfficiencyWithBonuses()) {
                                i6 = i44;
                            }
                        }
                    } else {
                        if (i37 == 7) {
                            i5 = 0;
                            for (int i45 = i12; i45 < arrayList2.size(); i45++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i45)).intValue()).getTaxEfficiencyWithBonuses() < Game.getProvince(((Integer) arrayList2.get(i5)).intValue()).getTaxEfficiencyWithBonuses()) {
                                    i5 = i45;
                                }
                            }
                        } else if (i37 == 8) {
                            i5 = 0;
                            for (int i46 = i12; i46 < arrayList2.size(); i46++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i46)).intValue()).getGrowthRateWithBonuses() > Game.getProvince(((Integer) arrayList2.get(i5)).intValue()).getGrowthRateWithBonuses()) {
                                    i5 = i46;
                                }
                            }
                        } else if (i37 == 9) {
                            i5 = 0;
                            for (int i47 = i12; i47 < arrayList2.size(); i47++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i47)).intValue()).getGrowthRateWithBonuses() < Game.getProvince(((Integer) arrayList2.get(i5)).intValue()).getGrowthRateWithBonuses()) {
                                    i5 = i47;
                                }
                            }
                        } else if (i37 == 10) {
                            i5 = 0;
                            for (int i48 = i12; i48 < arrayList2.size(); i48++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i48)).intValue()).getManpower() > Game.getProvince(((Integer) arrayList2.get(i5)).intValue()).getManpower()) {
                                    i5 = i48;
                                }
                            }
                        } else if (i37 == 11) {
                            i5 = 0;
                            for (int i49 = i12; i49 < arrayList2.size(); i49++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i49)).intValue()).getManpower() < Game.getProvince(((Integer) arrayList2.get(i5)).intValue()).getManpower()) {
                                    i5 = i49;
                                }
                            }
                        } else if (i37 == 12) {
                            i5 = 0;
                            for (int i50 = i12; i50 < arrayList2.size(); i50++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i50)).intValue()).getInfrastructure() > Game.getProvince(((Integer) arrayList2.get(i5)).intValue()).getInfrastructure()) {
                                    i5 = i50;
                                }
                            }
                        } else if (i37 == 13) {
                            i5 = 0;
                            for (int i51 = i12; i51 < arrayList2.size(); i51++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i51)).intValue()).getInfrastructure() < Game.getProvince(((Integer) arrayList2.get(i5)).intValue()).getInfrastructure()) {
                                    i5 = i51;
                                }
                            }
                        } else if (i37 == i31) {
                            i5 = 0;
                            for (int i52 = i12; i52 < arrayList2.size(); i52++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i52)).intValue()).getEconomyWithBonuses() > Game.getProvince(((Integer) arrayList2.get(i5)).intValue()).getEconomyWithBonuses()) {
                                    i5 = i52;
                                }
                            }
                        } else if (i37 == 15) {
                            i5 = 0;
                            for (int i53 = i12; i53 < arrayList2.size(); i53++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i53)).intValue()).getEconomyWithBonuses() < Game.getProvince(((Integer) arrayList2.get(i5)).intValue()).getEconomyWithBonuses()) {
                                    i5 = i53;
                                }
                            }
                        } else if (i37 == 16) {
                            i5 = 0;
                            for (int i54 = i12; i54 < arrayList2.size(); i54++) {
                                if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList2.get(i5)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList2.get(i54)).intValue()).getResourceID()))) {
                                    i5 = i54;
                                }
                            }
                        } else if (i37 == 17) {
                            i5 = 0;
                            for (int i55 = i12; i55 < arrayList2.size(); i55++) {
                                if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList2.get(i55)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList2.get(i5)).intValue()).getResourceID()))) {
                                    i5 = i55;
                                }
                            }
                        } else {
                            i4 = 0;
                        }
                        i4 = i5;
                    }
                    int iIntValue = ((Integer) arrayList2.get(i4)).intValue();
                    int i56 = height2;
                    ArrayList arrayList3 = arrayList2;
                    int i57 = width;
                    int i58 = i17;
                    int i59 = i8;
                    arrayList.add(new AnonymousClass12(Game.getProvince(iIntValue).getProvinceName(), CFG.FONT_REGULAR, CFG.PADDING * 2, i7, height, i11, i13, iIntValue, Images.population, CFG.getNumberWithSpaces("" + Game.getProvince(iIntValue).getPopulationTotal())));
                    int height7 = height + arrayList.get(arrayList.size() - 1).getHeight();
                    arrayList.add(new AnonymousClass13(iIntValue, "" + CFG.getPrecision2(Game.getProvince(iIntValue).getProvinceIncome() - Game.getProvince(iIntValue).fProvinceMaintenance, 100), Images.gold, i7, height7, i15, i16));
                    int width9 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i7;
                    StringBuilder sbAppend = new StringBuilder("").append(CFG.getPrecision2(Game.getProvince(iIntValue).getTaxEfficiencyWithBonuses(), 10));
                    String str = aBEBOpwLZcQFCZ.EvHYP;
                    arrayList.add(new AnonymousClass14(iIntValue, sbAppend.append(str).toString(), Images.tax, width9, height7, i15, i16));
                    int width10 = width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    arrayList.add(new AnonymousClass15(iIntValue, "" + CFG.getPrecision2(Game.getProvince(iIntValue).getGrowthRateWithBonuses(), 10) + str, Images.populationGrowth, width10, height7, i15, i16));
                    int width11 = width10 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    arrayList.add(new AnonymousClass16(iIntValue, "1", Game_Calendar.IMG_MANPOWER, width11, height7, i15, i16));
                    int width12 = width11 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    arrayList.add(new AnonymousClass17(iIntValue, "", Images.infrastructure, width12, height7, i15, i16));
                    int width13 = width12 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    arrayList.add(new AnonymousClass18(iIntValue, "" + CFG.getPrecision2(Game.getProvince(iIntValue).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, width13, height7, i15, i16));
                    arrayList.add(new AnonymousClass19(iIntValue, ResourcesManager.getResourceName(Game.getProvince(iIntValue).getResourceID()), Game.getProvince(iIntValue).getResourceID(), width13 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height7, i15, i16));
                    arrayList.get(arrayList.size() - 1).getWidth();
                    int i60 = CFG.PADDING;
                    int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i59, height8 - i58, i57 - (i59 * 2), i58));
                    height = height8 + CFG.PADDING;
                    arrayList3.remove(i4);
                    arrayList2 = arrayList3;
                    i17 = i58;
                    i8 = i59;
                    i35 = i36;
                    i31 = i31;
                    height2 = i56;
                    i24 = 4;
                    width = i57;
                    i14 = i14;
                    i12 = 1;
                }
                i4 = i6;
                int iIntValue2 = ((Integer) arrayList2.get(i4)).intValue();
                int i510 = height2;
                ArrayList arrayList4 = arrayList2;
                int i511 = width;
                int i512 = i17;
                int i513 = i8;
                arrayList.add(new AnonymousClass12(Game.getProvince(iIntValue2).getProvinceName(), CFG.FONT_REGULAR, CFG.PADDING * 2, i7, height, i11, i13, iIntValue2, Images.population, CFG.getNumberWithSpaces("" + Game.getProvince(iIntValue2).getPopulationTotal())));
                int height9 = height + arrayList.get(arrayList.size() - 1).getHeight();
                arrayList.add(new AnonymousClass13(iIntValue2, "" + CFG.getPrecision2(Game.getProvince(iIntValue2).getProvinceIncome() - Game.getProvince(iIntValue2).fProvinceMaintenance, 100), Images.gold, i7, height9, i15, i16));
                int width14 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i7;
                StringBuilder sbAppend2 = new StringBuilder("").append(CFG.getPrecision2(Game.getProvince(iIntValue2).getTaxEfficiencyWithBonuses(), 10));
                String str2 = aBEBOpwLZcQFCZ.EvHYP;
                arrayList.add(new AnonymousClass14(iIntValue2, sbAppend2.append(str2).toString(), Images.tax, width14, height9, i15, i16));
                int width15 = width14 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass15(iIntValue2, "" + CFG.getPrecision2(Game.getProvince(iIntValue2).getGrowthRateWithBonuses(), 10) + str2, Images.populationGrowth, width15, height9, i15, i16));
                int width16 = width15 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass16(iIntValue2, "1", Game_Calendar.IMG_MANPOWER, width16, height9, i15, i16));
                int width17 = width16 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass17(iIntValue2, "", Images.infrastructure, width17, height9, i15, i16));
                int width18 = width17 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass18(iIntValue2, "" + CFG.getPrecision2(Game.getProvince(iIntValue2).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, width18, height9, i15, i16));
                arrayList.add(new AnonymousClass19(iIntValue2, ResourcesManager.getResourceName(Game.getProvince(iIntValue2).getResourceID()), Game.getProvince(iIntValue2).getResourceID(), width18 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height9, i15, i16));
                arrayList.get(arrayList.size() - 1).getWidth();
                int i61 = CFG.PADDING;
                int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i513, height10 - i512, i511 - (i513 * 2), i512));
                height = height10 + CFG.PADDING;
                arrayList4.remove(i4);
                arrayList2 = arrayList4;
                i17 = i512;
                i8 = i513;
                i35 = i36;
                i31 = i31;
                height2 = i510;
                i24 = 4;
                width = i511;
                i14 = i14;
                i12 = 1;
            }
            i2 = width;
            i3 = height2;
        } else {
            i2 = width;
            i3 = height2;
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i7, height6, i11, CFG.BUTTON_HEIGHT2));
            height = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i62 = height;
        int i63 = i3 + InGame_CourtOptions.menuH;
        int iMin = Math.min(i62, (CFG.GAME_HEIGHT - i63) - (CFG.PADDING * 3));
        int i64 = i2;
        arrayList.add(new Empty(0, 0, i64, Math.max(i62, iMin)));
        initMenu(null, menuWidth, i63, i64, iMin, arrayList, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Search"));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.keyboard.hideKeyboard();
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
        if (z) {
            return;
        }
        Game.keyboard.hideKeyboard();
    }
}
