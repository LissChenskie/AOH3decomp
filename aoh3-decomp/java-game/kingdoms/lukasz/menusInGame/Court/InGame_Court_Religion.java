package aoc.kingdoms.lukasz.menusInGame.Court;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Value;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Religion;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusReligion;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_Religion extends Menu {
    public static int iSortID;
    public int iNumOfProvinces = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonReligion2 {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = Game.religionManager.getHoverReligion(this.religionID, Game.player.iCivID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsRectIMG_Religion {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$10$1, reason: invalid class name */
        class AnonymousClass1 extends Game.SimpleTask {
            AnonymousClass1(String str) {
                super(str);
            }

            @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
            public void update() {
                Game.menuManager.rebuildInGame_ReligionSavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }

        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Religion, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            super.drawButtonBG(spriteBatch, i, i2, z);
            if (Game.getProvince(this.id).getReligion() != this.imageID) {
                Game.addSimpleTask(new AnonymousClass1("rebuildConvertReligion"));
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG_ID {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID && Game.getProvince(getCurrent()).religionConversion == null) {
                if (!Game.getProvince(getCurrent()).addReligionConversion()) {
                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.religionManager.getReligionConversionCost(getCurrent()), 100), Images.gold);
                } else {
                    MenuManager menuManager = Game.menuManager;
                    MenuManager.addClickAnimation(new ClickAnimation(getPosX() + (getWidth() / 2) + InGame_Court_Religion.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_Religion.this.getMenuPosY(), getWidth(), getHeight()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverReligion(getCurrent(), false, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG_Active_Value {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID && Game.getProvince(getCurrent()).religionConversion == null) {
                if (!Game.getProvince(getCurrent()).addReligionConversion()) {
                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.religionManager.getReligionConversionCost(getCurrent()), 100), Images.gold);
                } else {
                    MenuManager menuManager = Game.menuManager;
                    MenuManager.addClickAnimation(new ClickAnimation(getPosX() + (getWidth() / 2) + InGame_Court_Religion.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_Religion.this.getMenuPosY(), getWidth(), getHeight()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverReligion(getCurrent(), false, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.religionManager.getReligionConversionCost(this.id)) {
                setText("" + CFG.getPrecision2(Game.religionManager.getReligionConversionCost(this.id), 100));
                this.lastValue = Game.religionManager.getReligionConversionCost(this.id);
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusReligion(Game.lang.get("Religion") + ": ", Game.religionManager.getReligion(Game.getCiv(Game.player.iCivID).getReligionID()).Name, Game.getCiv(Game.player.iCivID).getReligionID(), CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusReligion(getText(), "", Game.getCiv(Game.player.iCivID).getReligionID(), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.setDialogType(Dialog.DialogType.CONVERT_RELIGION_ALL_PROVINCES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float religionConversionCost = 0.0f;
            int i = 0;
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i2++) {
                if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).isOccupied() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).religionConversion == null && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).getReligion() != Game.getCiv(Game.player.iCivID).getReligionID()) {
                    i++;
                    religionConversionCost += Game.religionManager.getReligionConversionCost(Game.getCiv(Game.player.iCivID).getProvinceID(i2));
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ConvertReligion") + ": " + Game.lang.get("AllProvinces"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Provinces") + ": ", CFG.FONT_REGULAR_SMALL));
            String str = ALZmnpZHj.ughMvOMND;
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str + i, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(str + CFG.getPrecision2(religionConversionCost, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return InGame_Court_Religion.this.iNumOfProvinces > 0;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.setDialogType(Dialog.DialogType.CONVERT_RELIGION_ALL_PROVINCES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float religionConversionCost = 0.0f;
            int i = 0;
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i2++) {
                if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).isOccupied() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).religionConversion == null && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).getReligion() != Game.getCiv(Game.player.iCivID).getReligionID()) {
                    i++;
                    religionConversionCost += Game.religionManager.getReligionConversionCost(Game.getCiv(Game.player.iCivID).getProvinceID(i2));
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ConvertReligion") + ": " + Game.lang.get("AllProvinces"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(aBEBOpwLZcQFCZ.mstBXUpMYulR) + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(religionConversionCost, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return InGame_Court_Religion.this.iNumOfProvinces > 0;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Religion.iSortID == 0) {
                InGame_Court_Religion.iSortID = 1;
            } else {
                InGame_Court_Religion.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Religion();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Religion.iSortID == 2) {
                InGame_Court_Religion.iSortID = 3;
            } else {
                InGame_Court_Religion.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_Religion();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Religion.iSortID == 4) {
                InGame_Court_Religion.iSortID = 5;
            } else {
                InGame_Court_Religion.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_Religion();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ReligionConversionTime"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Religion.iSortID == 6) {
                InGame_Court_Religion.iSortID = 7;
            } else {
                InGame_Court_Religion.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_Religion();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion$9, reason: invalid class name */
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
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulation(getCurrent(), false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:154:0x07e0  */
    /* JADX WARN: Code duplicated, block: B:155:0x07e9  */
    public InGame_Court_Religion() {
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
        int i8 = CFG.PADDING;
        int i9 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i10 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
        int i11 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i14++) {
            if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i14)).isOccupied()) {
                i13 = Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i14)).getReligion() == Game.getCiv(Game.player.iCivID).getReligionID() ? i13 + 1 : i13;
                i12++;
            }
        }
        int i15 = width - (i5 * 2);
        arrayList2.add(new AnonymousClass1(Game.getCiv(Game.player.iCivID).getReligionID(), i5, i8, (int) ((i15 - CFG.PADDING) * 0.35f), CFG.BUTTON_HEIGHT));
        arrayList2.add(new AnonymousClass2(Game.lang.get("Provinces") + ": " + i13 + " / " + i12, CFG.FONT_REGULAR, -1, CFG.PADDING + i5 + ((int) ((i15 - CFG.PADDING) * 0.35f)), i8, (int) ((i15 - CFG.PADDING) * 0.65f), CFG.BUTTON_HEIGHT));
        int height2 = i8 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new AnonymousClass3(Game.lang.get("ConvertReligion") + ": " + Game.lang.get("AllProvinces"), CFG.FONT_REGULAR, -1, i5, height2, ((i15 - CFG.PADDING) * 7) / 10, true));
        float religionConversionCost = 0.0f;
        for (int i16 = 0; i16 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i16++) {
            if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i16)).isOccupied() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i16)).religionConversion == null && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i16)).getReligion() != Game.getCiv(Game.player.iCivID).getReligionID()) {
                religionConversionCost += Game.religionManager.getReligionConversionCost(Game.getCiv(Game.player.iCivID).getProvinceID(i16));
            }
        }
        String str = "";
        arrayList2.add(new AnonymousClass4("" + CFG.getNumberWithSpaces(CFG.getPrecision2((int) Math.ceil(religionConversionCost), 1)), Images.gold, CFG.PADDING + i5 + (((i15 - CFG.PADDING) * 7) / 10), height2, ((i15 - CFG.PADDING) * 3) / 10, CFG.BUTTON_HEIGHT2, ImageManager.getImage(Images.gold).getWidth(), 0));
        int height3 = height2 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i17 = iSortID;
        arrayList2.add(new AnonymousClass5(i17 == 0 || i17 == 1, i17 == 1, Game.lang.get("Name"), -1, i7, height3, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i7 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i18 = iSortID;
        int i19 = 6;
        arrayList2.add(new AnonymousClass6(i18 == 2 || i18 == 3, i18 == 3, Game.lang.get("Religion"), -1, width2, height3, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i20 = iSortID;
        arrayList2.add(new AnonymousClass7(i20 == 4 || i20 == 5, i20 == 5, Game.lang.get("ReligionConversionTime"), -1, width3, height3, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i21 = iSortID;
        arrayList2.add(new AnonymousClass8(i21 == 6 || i21 == 7, i21 == 7, Game.lang.get("Cost"), -1, width4, height3, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = height3 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i22 = 5;
        int i23 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
        int i24 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
        ArrayList arrayList3 = new ArrayList();
        for (int i25 = 0; i25 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i25++) {
            if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i25)).isOccupied() && Game.getCiv(Game.player.iCivID).getReligionID() != Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i25)).getReligion()) {
                arrayList3.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i25)));
            }
        }
        if (arrayList3.size() == 0) {
            arrayList2.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i5, height4, i15, CFG.BUTTON_HEIGHT2));
            height4 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        } else {
            while (arrayList3.size() > 0) {
                int i26 = iSortID;
                if (i26 == 0) {
                    i3 = 0;
                    for (int i27 = 1; i27 < arrayList3.size(); i27++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList3.get(i3)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList3.get(i27)).intValue()).getProvinceName())) {
                            i3 = i27;
                        }
                    }
                } else if (i26 == 1) {
                    i3 = 0;
                    for (int i28 = 1; i28 < arrayList3.size(); i28++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList3.get(i28)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList3.get(i3)).intValue()).getProvinceName())) {
                            i3 = i28;
                        }
                    }
                } else {
                    if (i26 == 2) {
                        i3 = 0;
                        for (int i29 = 1; i29 < arrayList3.size(); i29++) {
                            if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(Game.getProvince(((Integer) arrayList3.get(i3)).intValue()).getReligion()).Name, Game.religionManager.getReligion(Game.getProvince(((Integer) arrayList3.get(i29)).intValue()).getReligion()).Name)) {
                                i3 = i29;
                            }
                        }
                    } else {
                        c = 3;
                        if (i26 == 3) {
                            int i30 = 0;
                            for (int i31 = 1; i31 < arrayList3.size(); i31++) {
                                if (CFG.compareAlphabetic_TwoString(Game.religionManager.getReligion(Game.getProvince(((Integer) arrayList3.get(i31)).intValue()).getReligion()).Name, Game.religionManager.getReligion(Game.getProvince(((Integer) arrayList3.get(i30)).intValue()).getReligion()).Name)) {
                                    i30 = i31;
                                }
                            }
                            i = i30;
                            c3 = 7;
                            c2 = 4;
                        } else {
                            c2 = 4;
                            if (i26 == 4) {
                                i2 = 0;
                                for (int i32 = 1; i32 < arrayList3.size(); i32++) {
                                    if (Game.religionManager.getReligionConversionTime(((Integer) arrayList3.get(i2)).intValue()) > Game.religionManager.getReligionConversionTime(((Integer) arrayList3.get(i32)).intValue())) {
                                        i2 = i32;
                                    }
                                }
                            } else if (i26 == i22) {
                                i2 = 0;
                                for (int i33 = 1; i33 < arrayList3.size(); i33++) {
                                    if (Game.religionManager.getReligionConversionTime(((Integer) arrayList3.get(i33)).intValue()) > Game.religionManager.getReligionConversionTime(((Integer) arrayList3.get(i2)).intValue())) {
                                        i2 = i33;
                                    }
                                }
                            } else if (i26 == i19) {
                                i2 = 0;
                                for (int i34 = 1; i34 < arrayList3.size(); i34++) {
                                    if (Game.religionManager.getReligionConversionCost(((Integer) arrayList3.get(i2)).intValue()) > Game.religionManager.getReligionConversionCost(((Integer) arrayList3.get(i34)).intValue())) {
                                        i2 = i34;
                                    }
                                }
                            } else {
                                c3 = 7;
                                if (i26 == 7) {
                                    int i35 = 0;
                                    for (int i36 = 1; i36 < arrayList3.size(); i36++) {
                                        if (Game.religionManager.getReligionConversionCost(((Integer) arrayList3.get(i35)).intValue()) < Game.religionManager.getReligionConversionCost(((Integer) arrayList3.get(i36)).intValue())) {
                                            i35 = i36;
                                        }
                                    }
                                    i = i35;
                                } else {
                                    i = 0;
                                }
                            }
                            i = i2;
                            c3 = 7;
                        }
                    }
                    i4 = i;
                    int i37 = width;
                    arrayList = arrayList3;
                    int i38 = i24;
                    arrayList2.add(new AnonymousClass9(Game.getProvince(((Integer) arrayList3.get(i)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i5, height4, i23, i9, ((Integer) arrayList3.get(i)).intValue()));
                    int width5 = i5 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    String str2 = str;
                    int i39 = i23;
                    int i40 = height4;
                    arrayList2.add(new AnonymousClass10(str2 + Game.religionManager.getReligion(Game.getProvince(((Integer) arrayList.get(i4)).intValue()).getReligion()).Name, Game.getProvince(((Integer) arrayList.get(i4)).intValue()).getReligion(), width5, height4, i23, i9, ImageManager.getImage(Images.religion).getWidth(), ((Integer) arrayList.get(i4)).intValue()));
                    int width6 = width5 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    arrayList2.add(new AnonymousClass11(str2 + CFG.getPrecision2(Game.religionManager.getReligionConversionTime(((Integer) arrayList.get(i4)).intValue()), 10), CFG.FONT_REGULAR_SMALL, -1, width6, i40, i38, i9, ((Integer) arrayList.get(i4)).intValue()));
                    arrayList2.add(new AnonymousClass12(str2 + CFG.getPrecision2(Game.religionManager.getReligionConversionCost(((Integer) arrayList.get(i4)).intValue()), 100), Images.gold, width6 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, i40, i38, i9, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList.get(i4)).intValue()));
                    height4 = i40 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    if (Game.getProvince(((Integer) arrayList.get(i4)).intValue()).religionConversion == null) {
                        this.iNumOfProvinces++;
                    }
                    arrayList.remove(i4);
                    str = str2;
                    arrayList3 = arrayList;
                    width = i37;
                    i24 = i38;
                    i23 = i39;
                    i22 = 5;
                    i19 = 6;
                }
                i = i3;
                c3 = 7;
                c2 = 4;
                c = 3;
                i4 = i;
                int i310 = width;
                arrayList = arrayList3;
                int i311 = i24;
                arrayList2.add(new AnonymousClass9(Game.getProvince(((Integer) arrayList3.get(i)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i5, height4, i23, i9, ((Integer) arrayList3.get(i)).intValue()));
                int width7 = i5 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                String str3 = str;
                int i312 = i23;
                int i41 = height4;
                arrayList2.add(new AnonymousClass10(str3 + Game.religionManager.getReligion(Game.getProvince(((Integer) arrayList.get(i4)).intValue()).getReligion()).Name, Game.getProvince(((Integer) arrayList.get(i4)).intValue()).getReligion(), width7, height4, i23, i9, ImageManager.getImage(Images.religion).getWidth(), ((Integer) arrayList.get(i4)).intValue()));
                int width8 = width7 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                arrayList2.add(new AnonymousClass11(str3 + CFG.getPrecision2(Game.religionManager.getReligionConversionTime(((Integer) arrayList.get(i4)).intValue()), 10), CFG.FONT_REGULAR_SMALL, -1, width8, i41, i311, i9, ((Integer) arrayList.get(i4)).intValue()));
                arrayList2.add(new AnonymousClass12(str3 + CFG.getPrecision2(Game.religionManager.getReligionConversionCost(((Integer) arrayList.get(i4)).intValue()), 100), Images.gold, width8 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, i41, i311, i9, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList.get(i4)).intValue()));
                height4 = i41 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                if (Game.getProvince(((Integer) arrayList.get(i4)).intValue()).religionConversion == null) {
                    this.iNumOfProvinces++;
                }
                arrayList.remove(i4);
                str = str3;
                arrayList3 = arrayList;
                width = i310;
                i24 = i311;
                i23 = i312;
                i22 = 5;
                i19 = 6;
            }
        }
        int i42 = width;
        int i43 = height + InGame_CourtOptions.menuH;
        int iMin = Math.min(height4, (CFG.GAME_HEIGHT - i43) - (CFG.PADDING * 3));
        arrayList2.add(new Empty(0, 0, i42, Math.max(height4, iMin)));
        initMenu(null, otherMenuPosX, i43, i42, iMin, arrayList2, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("ConvertReligion"));
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
