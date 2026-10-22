package aoc.kingdoms.lukasz.menusInGame.Court;

import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Value;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc2_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Core;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_Core extends Menu {
    public static int iSortID;
    public int iNumOfProvinces = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Desc2_Special {
        AnonymousClass1(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc2_Special, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorButton(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsRectIMG_Active_Value {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core$10$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_POSITIVE;
            }
        }

        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID && Game.getProvince(getCurrent()).coreCreation == null) {
                if (!Game.getProvince(getCurrent()).addCoreCreation()) {
                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getCoreCreationCost(getCurrent()), 100), Images.gold);
                } else {
                    MenuManager menuManager = Game.menuManager;
                    MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_Core.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_Core.this.getMenuPosY(), getWidth(), getHeight()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverCores(getCurrent(), false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCoreCreationCost(this.id)) {
                setText("" + CFG.getPrecision2(Game.getCoreCreationCost(this.id), 100));
                this.lastValue = Game.getCoreCreationCost(this.id);
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.setDialogType(Dialog.DialogType.CORE_ALL_PROVINCES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float coreCreationCost = 0.0f;
            int i = 0;
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i2++) {
                if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).isOccupied() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).coreCreation == null && !Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).haveACore(Game.player.iCivID)) {
                    i++;
                    coreCreationCost += Game.getCoreCreationCost(Game.getCiv(Game.player.iCivID).getProvinceID(i2));
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AddCore") + ": " + Game.lang.get("AllProvinces"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.core, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Provinces") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(coreCreationCost, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return InGame_Court_Core.this.iNumOfProvinces > 0;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.setDialogType(Dialog.DialogType.CORE_ALL_PROVINCES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float coreCreationCost = 0.0f;
            int i = 0;
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i2++) {
                if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).isOccupied() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).coreCreation == null && !Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).haveACore(Game.player.iCivID)) {
                    i++;
                    coreCreationCost += Game.getCoreCreationCost(Game.getCiv(Game.player.iCivID).getProvinceID(i2));
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AddCore") + ": " + Game.lang.get("AllProvinces"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.core, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Provinces") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(IlLkpaQxs.iizTxRJf) + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(coreCreationCost, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return InGame_Court_Core.this.iNumOfProvinces > 0;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Core.iSortID == 0) {
                InGame_Court_Core.iSortID = 1;
            } else {
                InGame_Court_Core.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Core();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Core.iSortID == 2) {
                InGame_Court_Core.iSortID = 3;
            } else {
                InGame_Court_Core.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_Core();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(uiwPYaNhJS.Ormr), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Core.iSortID == 4) {
                InGame_Court_Core.iSortID = 5;
            } else {
                InGame_Court_Core.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_Core();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ConstructionTime"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Core.iSortID == 6) {
                InGame_Court_Core.iSortID = 7;
            } else {
                InGame_Court_Core.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_Core();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Cost"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_ID {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulation(getCurrent(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_Core {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core$9$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_POSITIVE;
            }
        }

        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID && Game.getProvince(getCurrent()).coreCreation == null) {
                if (!Game.getProvince(getCurrent()).addCoreCreation()) {
                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getCoreCreationCost(getCurrent()), 100), Images.gold);
                } else {
                    MenuManager menuManager = Game.menuManager;
                    MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_Core.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_Core.this.getMenuPosY(), getWidth(), getHeight()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverCores(getCurrent(), false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:147:0x06ba  */
    /* JADX WARN: Code duplicated, block: B:148:0x06c3  */
    public InGame_Court_Core() {
        char c;
        char c2;
        char c3;
        int i;
        int i2;
        int i3;
        int i4;
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        int i5 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i6 = CFG.PADDING;
        int i7 = Images.boxTitleBORDERWIDTH;
        int height2 = CFG.PADDING;
        int i8 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i9 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.25f);
        int i10 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.25f);
        if (Game.settingsManager.COUNCIL_TIPS) {
            arrayList2.add(new AnonymousClass1(Game.lang.get("CoreIsALegitimatePartOfCivilization"), i5, height2, width - (i5 * 2)));
            height2 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        }
        int i11 = height2;
        int i12 = width - (i5 * 2);
        arrayList2.add(new AnonymousClass2(Game.lang.get("AddCore") + ": " + Game.lang.get("AllProvinces"), CFG.FONT_REGULAR, -1, i5, i11, ((i12 - CFG.PADDING) * 7) / 10, true));
        float coreCreationCost = 0.0f;
        for (int i13 = 0; i13 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i13++) {
            if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i13)).isOccupied() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i13)).coreCreation == null && !Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i13)).haveACore(Game.player.iCivID)) {
                coreCreationCost += Game.getCoreCreationCost(Game.getCiv(Game.player.iCivID).getProvinceID(i13));
            }
        }
        arrayList2.add(new AnonymousClass3("" + CFG.getNumberWithSpaces(CFG.getPrecision2((int) Math.ceil(coreCreationCost), 1)), Images.gold, CFG.PADDING + i5 + (((i12 - CFG.PADDING) * 7) / 10), i11, ((i12 - CFG.PADDING) * 3) / 10, CFG.BUTTON_HEIGHT2, ImageManager.getImage(Images.gold).getWidth(), 0));
        int height3 = i11 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i14 = iSortID;
        arrayList2.add(new AnonymousClass4(i14 == 0 || i14 == 1, i14 == 1, Game.lang.get("Name"), -1, i7, height3, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i7 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i15 = iSortID;
        int i16 = 6;
        arrayList2.add(new AnonymousClass5(i15 == 2 || i15 == 3, i15 == 3, Game.lang.get("Economy"), -1, width2, height3, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i17 = iSortID;
        arrayList2.add(new AnonymousClass6(i17 == 4 || i17 == 5, i17 == 5, Game.lang.get("ConstructionTime"), -1, width3, height3, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i18 = iSortID;
        arrayList2.add(new AnonymousClass7(i18 == 6 || i18 == 7, i18 == 7, Game.lang.get("Cost"), -1, width4, height3, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = height3 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i19 = 5;
        int i20 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.25f);
        int i21 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.25f);
        ArrayList arrayList3 = new ArrayList();
        for (int i22 = 0; i22 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i22++) {
            if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i22)).isOccupied() && !Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i22)).haveACore(Game.player.iCivID)) {
                arrayList3.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i22)));
            }
        }
        if (arrayList3.size() == 0) {
            arrayList2.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i5, height4, i12, CFG.BUTTON_HEIGHT2));
            height4 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        } else {
            while (arrayList3.size() > 0) {
                int i23 = iSortID;
                if (i23 == 0) {
                    i3 = 0;
                    for (int i24 = 1; i24 < arrayList3.size(); i24++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList3.get(i3)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList3.get(i24)).intValue()).getProvinceName())) {
                            i3 = i24;
                        }
                    }
                } else if (i23 == 1) {
                    i3 = 0;
                    for (int i25 = 1; i25 < arrayList3.size(); i25++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList3.get(i25)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList3.get(i3)).intValue()).getProvinceName())) {
                            i3 = i25;
                        }
                    }
                } else {
                    if (i23 == 2) {
                        i3 = 0;
                        for (int i26 = 1; i26 < arrayList3.size(); i26++) {
                            if (Game.getProvince(((Integer) arrayList3.get(i26)).intValue()).getEconomyWithBonuses() > Game.getProvince(((Integer) arrayList3.get(i3)).intValue()).getEconomyWithBonuses()) {
                                i3 = i26;
                            }
                        }
                    } else {
                        c = 3;
                        if (i23 == 3) {
                            int i27 = 0;
                            for (int i28 = 1; i28 < arrayList3.size(); i28++) {
                                if (Game.getProvince(((Integer) arrayList3.get(i28)).intValue()).getEconomyWithBonuses() < Game.getProvince(((Integer) arrayList3.get(i27)).intValue()).getEconomyWithBonuses()) {
                                    i27 = i28;
                                }
                            }
                            i = i27;
                            c3 = 7;
                            c2 = 4;
                        } else {
                            c2 = 4;
                            if (i23 == 4) {
                                i2 = 0;
                                for (int i29 = 1; i29 < arrayList3.size(); i29++) {
                                    if (Game.getCoreCreationTime(((Integer) arrayList3.get(i2)).intValue()) > Game.getCoreCreationTime(((Integer) arrayList3.get(i29)).intValue())) {
                                        i2 = i29;
                                    }
                                }
                            } else if (i23 == i19) {
                                i2 = 0;
                                for (int i30 = 1; i30 < arrayList3.size(); i30++) {
                                    if (Game.getCoreCreationTime(((Integer) arrayList3.get(i30)).intValue()) > Game.getCoreCreationTime(((Integer) arrayList3.get(i2)).intValue())) {
                                        i2 = i30;
                                    }
                                }
                            } else if (i23 == i16) {
                                i2 = 0;
                                for (int i31 = 1; i31 < arrayList3.size(); i31++) {
                                    if (Game.getCoreCreationCost(((Integer) arrayList3.get(i2)).intValue()) > Game.getCoreCreationCost(((Integer) arrayList3.get(i31)).intValue())) {
                                        i2 = i31;
                                    }
                                }
                            } else {
                                c3 = 7;
                                if (i23 == 7) {
                                    int i32 = 0;
                                    for (int i33 = 1; i33 < arrayList3.size(); i33++) {
                                        if (Game.getCoreCreationCost(((Integer) arrayList3.get(i32)).intValue()) < Game.getCoreCreationCost(((Integer) arrayList3.get(i33)).intValue())) {
                                            i32 = i33;
                                        }
                                    }
                                    i = i32;
                                } else {
                                    i = 0;
                                }
                            }
                            i = i2;
                            c3 = 7;
                        }
                    }
                    i4 = i;
                    int i34 = height4;
                    int i35 = width;
                    arrayList = arrayList3;
                    int i36 = i21;
                    arrayList2.add(new AnonymousClass8(Game.getProvince(((Integer) arrayList3.get(i)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i5, i34, i20, i8, ((Integer) arrayList3.get(i)).intValue()));
                    int width5 = i5 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    arrayList2.add(new Text_StaticBG("" + CFG.getPrecision2(Game.getProvince(((Integer) arrayList.get(i4)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width5, height4, i20, i8));
                    int width6 = width5 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    int i37 = i20;
                    arrayList2.add(new AnonymousClass9("" + CFG.getPrecision2(Game.getCoreCreationTime(((Integer) arrayList.get(i4)).intValue()), 10), CFG.FONT_REGULAR_SMALL, -1, width6, i34, i36, i8, ((Integer) arrayList.get(i4)).intValue()));
                    arrayList2.add(new AnonymousClass10("" + CFG.getPrecision2(Game.getCoreCreationCost(((Integer) arrayList.get(i4)).intValue()), 100), Images.gold, width6 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height4, i36, i8, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList.get(i4)).intValue()));
                    height4 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    if (Game.getProvince(((Integer) arrayList.get(i4)).intValue()).coreCreation == null) {
                        this.iNumOfProvinces++;
                    }
                    arrayList.remove(i4);
                    arrayList3 = arrayList;
                    i20 = i37;
                    width = i35;
                    i21 = i36;
                    i19 = 5;
                    i16 = 6;
                }
                i = i3;
                c3 = 7;
                c2 = 4;
                c = 3;
                i4 = i;
                int i38 = height4;
                int i39 = width;
                arrayList = arrayList3;
                int i310 = i21;
                arrayList2.add(new AnonymousClass8(Game.getProvince(((Integer) arrayList3.get(i)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i5, i38, i20, i8, ((Integer) arrayList3.get(i)).intValue()));
                int width7 = i5 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                arrayList2.add(new Text_StaticBG("" + CFG.getPrecision2(Game.getProvince(((Integer) arrayList.get(i4)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width7, height4, i20, i8));
                int width8 = width7 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                int i311 = i20;
                arrayList2.add(new AnonymousClass9("" + CFG.getPrecision2(Game.getCoreCreationTime(((Integer) arrayList.get(i4)).intValue()), 10), CFG.FONT_REGULAR_SMALL, -1, width8, i38, i310, i8, ((Integer) arrayList.get(i4)).intValue()));
                arrayList2.add(new AnonymousClass10("" + CFG.getPrecision2(Game.getCoreCreationCost(((Integer) arrayList.get(i4)).intValue()), 100), Images.gold, width8 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, height4, i310, i8, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList.get(i4)).intValue()));
                height4 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                if (Game.getProvince(((Integer) arrayList.get(i4)).intValue()).coreCreation == null) {
                    this.iNumOfProvinces++;
                }
                arrayList.remove(i4);
                arrayList3 = arrayList;
                i20 = i311;
                width = i39;
                i21 = i310;
                i19 = 5;
                i16 = 6;
            }
        }
        int i40 = width;
        int i41 = height + InGame_CourtOptions.menuH;
        int iMin = Math.min(height4, (CFG.GAME_HEIGHT - i41) - (CFG.PADDING * 3));
        arrayList2.add(new Empty(0, 0, i40, Math.max(height4, iMin)));
        initMenu(null, otherMenuPosX, i41, i40, iMin, arrayList2, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("CoreConstruction"));
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
    }
}
