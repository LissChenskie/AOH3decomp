package aoc.kingdoms.lukasz.menusInGame.Court.World;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_WorldCivs extends Menu {
    public static int iSortID = 2;
    public static String sSearch = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonReligion2 {
        AnonymousClass10(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$11, reason: invalid class name */
    class AnonymousClass11 extends TextIcon2 {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", getText(), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$12, reason: invalid class name */
    class AnonymousClass12 extends TextIcon2 {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", getText(), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$13, reason: invalid class name */
    class AnonymousClass13 extends TextIcon2 {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnlockedTechnologies") + ": ", getText(), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_Write {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SEARCH_COURT_ALL_CIVS, InGame_Court_WorldCivs.sSearch);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return InGame_Court_WorldCivs.sSearch + Keyboard.getKeyboardVerticalLine();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldCivs.iSortID == 0) {
                InGame_Court_WorldCivs.iSortID = 1;
            } else {
                InGame_Court_WorldCivs.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_CourtSearchCivs();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldCivs.iSortID == 2) {
                InGame_Court_WorldCivs.iSortID = 3;
            } else {
                InGame_Court_WorldCivs.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_CourtSearchCivs();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(ALZmnpZHj.iWVHqTqkSbpa) + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldCivs.iSortID == 4) {
                InGame_Court_WorldCivs.iSortID = 5;
            } else {
                InGame_Court_WorldCivs.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_CourtSearchCivs();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldCivs.iSortID == 6) {
                InGame_Court_WorldCivs.iSortID = 7;
            } else {
                InGame_Court_WorldCivs.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_CourtSearchCivs();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_WorldCivs.iSortID == 8) {
                InGame_Court_WorldCivs.iSortID = 9;
            } else {
                InGame_Court_WorldCivs.iSortID = 8;
            }
            Game.menuManager.rebuildInGame_CourtSearchCivs();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Technologies"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_ID_FlagCiv_SpecialCiv {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str2) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getCivID() != getCurrent()) {
                return;
            }
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() != getCurrent()) {
                Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                Game.setActiveProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            } else {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.menuManager.rebuildInGame_Civ();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.getProvince(Game.getCiv(this.id).getCapitalProvinceID()).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(this.id).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getCiv(this.id).getEconomyTotal(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Civilization") + " ID: ", "" + this.id, Images.world, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialCiv
        public Color getColor2(boolean z) {
            return Colors.getColorPopulation(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonIdeology2 {
        AnonymousClass9(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }
    }

    public InGame_Court_WorldCivs() {
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
        int i14 = (i11 - (CFG.PADDING * 6)) / 7;
        int i15 = CFG.BUTTON_HEIGHT;
        int i16 = CFG.PADDING + i13 + i15;
        int i17 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) / 5.0f);
        int i18 = Images.boxTitleBORDERWIDTH;
        int i19 = iSortID;
        arrayList.add(new AnonymousClass3(i19 == 0 || i19 == 1, i19 == 1, Game.lang.get("Name"), -1, i18, height4, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i18 + arrayList.get(arrayList.size() - 1).getWidth();
        int i20 = iSortID;
        arrayList.add(new AnonymousClass4(i20 == 2 || i20 == 3, i20 == 3, Game.lang.get("Population"), -1, width2, height4, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i21 = iSortID;
        arrayList.add(new AnonymousClass5(i21 == 4 || i21 == 5, i21 == 5, Game.lang.get("Provinces"), -1, width3, height4, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i22 = iSortID;
        arrayList.add(new AnonymousClass6(i22 == 6 || i22 == 7, i22 == 7, Game.lang.get("Economy"), -1, width4, height4, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = width4 + arrayList.get(arrayList.size() - 1).getWidth();
        int i23 = iSortID;
        arrayList.add(new AnonymousClass7(i23 == 8 || i23 == 9, i23 == 9, Game.lang.get("Technologies"), -1, width5, height4, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        if (sSearch.length() > 0) {
            try {
                i = Integer.parseInt(sSearch);
            } catch (Exception unused) {
                i = -1;
            }
            int i24 = i;
            if (i24 < 0 || i24 >= Game.getCivsSize()) {
                String lowerCase = sSearch.toLowerCase();
                for (int i25 = 0; i25 < Game.getProvincesSize(); i25++) {
                    if (Game.getCiv(i25).getCivName().toLowerCase().indexOf(lowerCase) >= 0) {
                        arrayList2.add(Integer.valueOf(i25));
                        arrayList3.add(Long.valueOf(Game.getCiv(i25).getPopulationTotal()));
                        arrayList4.add(Float.valueOf(Game.getCiv(i25).getEconomyTotal()));
                        arrayList5.add(Integer.valueOf(Game.getCiv(i25).getResearchedTechnologies()));
                    }
                }
            } else {
                arrayList2.add(Integer.valueOf(i24));
                arrayList3.add(Long.valueOf(Game.getCiv(i24).getPopulationTotal()));
                arrayList4.add(Float.valueOf(Game.getCiv(i24).getEconomyTotal()));
                arrayList5.add(Integer.valueOf(Game.getCiv(i24).getResearchedTechnologies()));
            }
        } else {
            for (int i26 = 1; i26 < Game.getCivsSize(); i26++) {
                arrayList2.add(Integer.valueOf(i26));
                arrayList3.add(Long.valueOf(Game.getCiv(i26).getPopulationTotal()));
                arrayList4.add(Float.valueOf(Game.getCiv(i26).getEconomyTotal()));
                arrayList5.add(Integer.valueOf(Game.getCiv(i26).getResearchedTechnologies()));
            }
        }
        if (arrayList2.size() > 0) {
            int i27 = GameValues.inGame.COURT_PROVINCES_LIMIT * 2;
            height = height5;
            int i28 = 0;
            while (arrayList2.size() > 0) {
                int i29 = i28 + 1;
                if (i28 >= i27) {
                    break;
                }
                int i30 = iSortID;
                if (i30 == 0) {
                    i5 = 0;
                    for (int i31 = i12; i31 < arrayList2.size(); i31++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i5)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i31)).intValue()).getCivName())) {
                            i5 = i31;
                        }
                    }
                } else if (i30 == i12) {
                    i5 = 0;
                    for (int i32 = 1; i32 < arrayList2.size(); i32++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i32)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i5)).intValue()).getCivName())) {
                            i5 = i32;
                        }
                    }
                } else if (i30 == 2) {
                    i5 = 0;
                    for (int i33 = 1; i33 < arrayList2.size(); i33++) {
                        if (((Long) arrayList3.get(i33)).longValue() > ((Long) arrayList3.get(i5)).longValue()) {
                            i5 = i33;
                        }
                    }
                } else if (i30 == 3) {
                    i5 = 0;
                    for (int i34 = 1; i34 < arrayList2.size(); i34++) {
                        if (((Long) arrayList3.get(i34)).longValue() < ((Long) arrayList3.get(i5)).longValue()) {
                            i5 = i34;
                        }
                    }
                } else if (i30 == 4) {
                    i5 = 0;
                    for (int i35 = 1; i35 < arrayList2.size(); i35++) {
                        if (Game.getCiv(((Integer) arrayList2.get(i35)).intValue()).getNumOfProvinces() > Game.getCiv(((Integer) arrayList2.get(i5)).intValue()).getNumOfProvinces()) {
                            i5 = i35;
                        }
                    }
                } else if (i30 == 5) {
                    i5 = 0;
                    for (int i36 = 1; i36 < arrayList2.size(); i36++) {
                        if (Game.getCiv(((Integer) arrayList2.get(i36)).intValue()).getNumOfProvinces() < Game.getCiv(((Integer) arrayList2.get(i5)).intValue()).getNumOfProvinces()) {
                            i5 = i36;
                        }
                    }
                } else if (i30 == 6) {
                    i5 = 0;
                    for (int i37 = 1; i37 < arrayList2.size(); i37++) {
                        if (((Float) arrayList4.get(i37)).floatValue() > ((Float) arrayList4.get(i5)).floatValue()) {
                            i5 = i37;
                        }
                    }
                } else {
                    if (i30 == 7) {
                        i6 = 0;
                        for (int i38 = 1; i38 < arrayList2.size(); i38++) {
                            if (((Float) arrayList4.get(i38)).floatValue() < ((Float) arrayList4.get(i6)).floatValue()) {
                                i6 = i38;
                            }
                        }
                    } else {
                        if (i30 == 8) {
                            i6 = 0;
                            for (int i39 = 1; i39 < arrayList2.size(); i39++) {
                                if (((Integer) arrayList5.get(i39)).intValue() > ((Integer) arrayList5.get(i6)).intValue()) {
                                    i6 = i39;
                                }
                            }
                        } else if (i30 == 9) {
                            i5 = 0;
                            for (int i40 = 1; i40 < arrayList2.size(); i40++) {
                                if (((Integer) arrayList5.get(i40)).intValue() < ((Integer) arrayList5.get(i5)).intValue()) {
                                    i5 = i40;
                                }
                            }
                        } else {
                            i4 = 0;
                        }
                        int iIntValue = ((Integer) arrayList2.get(i4)).intValue();
                        ArrayList arrayList6 = arrayList5;
                        ArrayList arrayList7 = arrayList4;
                        int i41 = width;
                        int i42 = i8;
                        ArrayList arrayList8 = arrayList3;
                        ArrayList arrayList9 = arrayList2;
                        int i43 = i16;
                        int i44 = i27;
                        arrayList.add(new AnonymousClass8(Game.getCiv(iIntValue).getCivName(), CFG.FONT_REGULAR, CFG.PADDING * 2, i7, height, i11, i13, iIntValue, Images.population, CFG.getNumberWithSpaces("" + arrayList3.get(i4))));
                        int height6 = height + arrayList.get(arrayList.size() - 1).getHeight();
                        int i45 = i14 * 2;
                        arrayList.add(new AnonymousClass9(Game.getCiv(iIntValue).getIdeologyID(), i7, height6, i45 + CFG.PADDING, i15));
                        int width6 = i7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        arrayList.add(new AnonymousClass10(Game.getCiv(iIntValue).getReligionID(), width6, height6, i45 + CFG.PADDING, i15));
                        int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        arrayList.add(new AnonymousClass11("" + CFG.getNumberWithSpaces("" + Game.getCiv(iIntValue).getNumOfProvinces()), Images.provinces, width7, height6, i14, i15));
                        int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        arrayList.add(new AnonymousClass12("" + CFG.getPrecision2(((Float) arrayList7.get(i4)).floatValue(), 1), Game_Calendar.IMG_ECONOMY, width8, height6, i14, i15));
                        arrayList.add(new AnonymousClass13("" + arrayList6.get(i4), Game_Calendar.IMG_TECHNOLOGY, width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height6, i14, i15));
                        arrayList.get(arrayList.size() - 1).getWidth();
                        int i46 = CFG.PADDING;
                        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i42, height7 - i43, i41 - (i42 * 2), i43));
                        height = height7 + CFG.PADDING;
                        arrayList9.remove(i4);
                        arrayList8.remove(i4);
                        arrayList7.remove(i4);
                        arrayList6.remove(i4);
                        arrayList2 = arrayList9;
                        arrayList3 = arrayList8;
                        i16 = i43;
                        i8 = i42;
                        i28 = i29;
                        i27 = i44;
                        i12 = 1;
                        arrayList4 = arrayList7;
                        arrayList5 = arrayList6;
                        height2 = height2;
                        width = i41;
                    }
                    i4 = i6;
                    int iIntValue2 = ((Integer) arrayList2.get(i4)).intValue();
                    ArrayList arrayList10 = arrayList5;
                    ArrayList arrayList11 = arrayList4;
                    int i47 = width;
                    int i48 = i8;
                    ArrayList arrayList12 = arrayList3;
                    ArrayList arrayList13 = arrayList2;
                    int i49 = i16;
                    int i410 = i27;
                    arrayList.add(new AnonymousClass8(Game.getCiv(iIntValue2).getCivName(), CFG.FONT_REGULAR, CFG.PADDING * 2, i7, height, i11, i13, iIntValue2, Images.population, CFG.getNumberWithSpaces("" + arrayList3.get(i4))));
                    int height8 = height + arrayList.get(arrayList.size() - 1).getHeight();
                    int i411 = i14 * 2;
                    arrayList.add(new AnonymousClass9(Game.getCiv(iIntValue2).getIdeologyID(), i7, height8, i411 + CFG.PADDING, i15));
                    int width9 = i7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    arrayList.add(new AnonymousClass10(Game.getCiv(iIntValue2).getReligionID(), width9, height8, i411 + CFG.PADDING, i15));
                    int width10 = width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    arrayList.add(new AnonymousClass11("" + CFG.getNumberWithSpaces("" + Game.getCiv(iIntValue2).getNumOfProvinces()), Images.provinces, width10, height8, i14, i15));
                    int width11 = width10 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    arrayList.add(new AnonymousClass12("" + CFG.getPrecision2(((Float) arrayList11.get(i4)).floatValue(), 1), Game_Calendar.IMG_ECONOMY, width11, height8, i14, i15));
                    arrayList.add(new AnonymousClass13("" + arrayList10.get(i4), Game_Calendar.IMG_TECHNOLOGY, width11 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height8, i14, i15));
                    arrayList.get(arrayList.size() - 1).getWidth();
                    int i412 = CFG.PADDING;
                    int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i48, height9 - i49, i47 - (i48 * 2), i49));
                    height = height9 + CFG.PADDING;
                    arrayList13.remove(i4);
                    arrayList12.remove(i4);
                    arrayList11.remove(i4);
                    arrayList10.remove(i4);
                    arrayList2 = arrayList13;
                    arrayList3 = arrayList12;
                    i16 = i49;
                    i8 = i48;
                    i28 = i29;
                    i27 = i410;
                    i12 = 1;
                    arrayList4 = arrayList11;
                    arrayList5 = arrayList10;
                    height2 = height2;
                    width = i47;
                }
                i4 = i5;
                int iIntValue3 = ((Integer) arrayList2.get(i4)).intValue();
                ArrayList arrayList14 = arrayList5;
                ArrayList arrayList15 = arrayList4;
                int i413 = width;
                int i414 = i8;
                ArrayList arrayList16 = arrayList3;
                ArrayList arrayList17 = arrayList2;
                int i415 = i16;
                int i416 = i27;
                arrayList.add(new AnonymousClass8(Game.getCiv(iIntValue3).getCivName(), CFG.FONT_REGULAR, CFG.PADDING * 2, i7, height, i11, i13, iIntValue3, Images.population, CFG.getNumberWithSpaces("" + arrayList3.get(i4))));
                int height10 = height + arrayList.get(arrayList.size() - 1).getHeight();
                int i417 = i14 * 2;
                arrayList.add(new AnonymousClass9(Game.getCiv(iIntValue3).getIdeologyID(), i7, height10, i417 + CFG.PADDING, i15));
                int width12 = i7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass10(Game.getCiv(iIntValue3).getReligionID(), width12, height10, i417 + CFG.PADDING, i15));
                int width13 = width12 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass11("" + CFG.getNumberWithSpaces("" + Game.getCiv(iIntValue3).getNumOfProvinces()), Images.provinces, width13, height10, i14, i15));
                int width14 = width13 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass12("" + CFG.getPrecision2(((Float) arrayList15.get(i4)).floatValue(), 1), Game_Calendar.IMG_ECONOMY, width14, height10, i14, i15));
                arrayList.add(new AnonymousClass13("" + arrayList14.get(i4), Game_Calendar.IMG_TECHNOLOGY, width14 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height10, i14, i15));
                arrayList.get(arrayList.size() - 1).getWidth();
                int i418 = CFG.PADDING;
                int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i414, height11 - i415, i413 - (i414 * 2), i415));
                height = height11 + CFG.PADDING;
                arrayList17.remove(i4);
                arrayList16.remove(i4);
                arrayList15.remove(i4);
                arrayList14.remove(i4);
                arrayList2 = arrayList17;
                arrayList3 = arrayList16;
                i16 = i415;
                i8 = i414;
                i28 = i29;
                i27 = i416;
                i12 = 1;
                arrayList4 = arrayList15;
                arrayList5 = arrayList14;
                height2 = height2;
                width = i413;
            }
            i2 = width;
            i3 = height2;
        } else {
            i2 = width;
            i3 = height2;
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i7, height5, i11, CFG.BUTTON_HEIGHT2));
            height = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i50 = height;
        int i51 = i3 + InGame_CourtOptions.menuH;
        int iMin = Math.min(i50, (CFG.GAME_HEIGHT - i51) - (CFG.PADDING * 3));
        int i52 = i2;
        arrayList.add(new Empty(0, 0, i52, Math.max(i50, iMin)));
        initMenu(null, menuWidth, i51, i52, iMin, arrayList, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Civilizations"));
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
