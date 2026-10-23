package aoc.kingdoms.lukasz.menusInGame.Court;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Value;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Infrastructure;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_DevelopInfrastructure extends Menu {
    public static int iSortID = 2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_DevelopInfrastructure$1, reason: invalid class name */
    class AnonymousClass1 extends Text_TitleBlueSort {
        AnonymousClass1(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_DevelopInfrastructure.iSortID == 0) {
                InGame_Court_DevelopInfrastructure.iSortID = 1;
            } else {
                InGame_Court_DevelopInfrastructure.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_DevelopInfrastructure();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_DevelopInfrastructure$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlueSort {
        AnonymousClass2(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_DevelopInfrastructure.iSortID == 2) {
                InGame_Court_DevelopInfrastructure.iSortID = 3;
            } else {
                InGame_Court_DevelopInfrastructure.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_DevelopInfrastructure();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_DevelopInfrastructure$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_DevelopInfrastructure.iSortID == 4) {
                InGame_Court_DevelopInfrastructure.iSortID = 5;
            } else {
                InGame_Court_DevelopInfrastructure.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_DevelopInfrastructure();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Cost") + ": " + Game.lang.get("LegacyPoints"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_DevelopInfrastructure$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_DevelopInfrastructure.iSortID == 6) {
                InGame_Court_DevelopInfrastructure.iSortID = 7;
            } else {
                InGame_Court_DevelopInfrastructure.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_DevelopInfrastructure();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_DevelopInfrastructure$5, reason: invalid class name */
    class AnonymousClass5 extends Text_StaticBG_ID {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_DevelopInfrastructure$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Active_Value {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_DevelopInfrastructure$6$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_LEFT;
            }
        }

        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID && Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID && InGame_ProvinceInfo.addDevelopInfrastructureCost(getCurrent())) {
                ProvinceDraw.addProvinceDot_Infrastructure(getCurrent());
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_DevelopInfrastructure.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_DevelopInfrastructure.this.getMenuPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverInfrastructure(getCurrent(), false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getDevelopInfrastructureCostLegacy(this.id)) {
                setText("" + CFG.getPrecision2(Game.getDevelopInfrastructureCostLegacy(this.id), 10));
                this.lastValue = Game.getDevelopInfrastructureCostLegacy(this.id);
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_DevelopInfrastructure$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRectIMG_Active_Value {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_DevelopInfrastructure$7$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_LEFT;
            }
        }

        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID && InGame_ProvinceInfo.addDevelopInfrastructureCost(getCurrent())) {
                ProvinceDraw.addProvinceDot_Infrastructure(getCurrent());
                MenuManager menuManager = Game.menuManager;
                MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_DevelopInfrastructure.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_DevelopInfrastructure.this.getMenuPosY(), getWidth(), getHeight()));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverInfrastructure(getCurrent(), false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getDevelopInfrastructureCost(this.id)) {
                setText("" + CFG.getPrecision2(Game.getDevelopInfrastructureCost(this.id), 10));
                this.lastValue = Game.getDevelopInfrastructureCost(this.id);
            }
            return this.sText;
        }
    }

    public InGame_Court_DevelopInfrastructure() {
        int i;
        int i2;
        int i3;
        char c;
        int i4;
        int i5;
        int i6;
        ArrayList arrayList = new ArrayList();
        int i7 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i8 = CFG.PADDING;
        int i9 = Images.boxTitleBORDERWIDTH;
        int i10 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i11 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
        int i12 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i13 = iSortID;
        arrayList.add(new AnonymousClass1(i13 == 0 || i13 == 1, i13 == 1, Game.lang.get(CaiJWNfqszJNZ.iCuCeIqJm), -1, i9, 0, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int i14 = 1;
        int width2 = i9 + arrayList.get(arrayList.size() - 1).getWidth();
        int i15 = iSortID;
        int i16 = 2;
        arrayList.add(new AnonymousClass2(i15 == 2 || i15 == 3, i15 == 3, Game.lang.get("Infrastructure"), -1, width2, 0, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i17 = iSortID;
        arrayList.add(new AnonymousClass3(i17 == 4 || i17 == 5, i17 == 5, Game.lang.get("Cost") + ": " + Game.lang.get("LegacyPoints"), -1, width3, 0, i12, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i18 = iSortID;
        arrayList.add(new AnonymousClass4(i18 == 6 || i18 == 7, i18 == 7, Game.lang.get("Cost"), -1, width4, 0, i12, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
        int i19 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
        int i20 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
        ArrayList arrayList2 = new ArrayList();
        for (int i21 = 0; i21 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i21++) {
            if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i21)).isOccupied() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i21)).iInfrastructureMax > Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i21)).getInfrastructure() + Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i21)).iProvinceDevelopInfrastructureSize) {
                arrayList2.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i21)));
            }
        }
        if (arrayList2.size() > 0) {
            while (arrayList2.size() > 0) {
                int i22 = iSortID;
                if (i22 == 0) {
                    i6 = 0;
                    for (int i23 = i14; i23 < arrayList2.size(); i23++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i23)).intValue()).getProvinceName())) {
                            i6 = i23;
                        }
                    }
                } else if (i22 == i14) {
                    i6 = 0;
                    for (int i24 = i14; i24 < arrayList2.size(); i24++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i24)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getProvinceName())) {
                            i6 = i24;
                        }
                    }
                } else if (i22 == i16) {
                    i6 = 0;
                    for (int i25 = i14; i25 < arrayList2.size(); i25++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getInfrastructure() < Game.getProvince(((Integer) arrayList2.get(i25)).intValue()).getInfrastructure() || (Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getInfrastructure() == Game.getProvince(((Integer) arrayList2.get(i25)).intValue()).getInfrastructure() && Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).iInfrastructureMax < Game.getProvince(((Integer) arrayList2.get(i25)).intValue()).iInfrastructureMax)) {
                            i6 = i25;
                        }
                    }
                } else if (i22 == 3) {
                    i6 = 0;
                    for (int i26 = i14; i26 < arrayList2.size(); i26++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getInfrastructure() > Game.getProvince(((Integer) arrayList2.get(i26)).intValue()).getInfrastructure() || (Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).getInfrastructure() == Game.getProvince(((Integer) arrayList2.get(i26)).intValue()).getInfrastructure() && Game.getProvince(((Integer) arrayList2.get(i6)).intValue()).iInfrastructureMax > Game.getProvince(((Integer) arrayList2.get(i26)).intValue()).iInfrastructureMax)) {
                            i6 = i26;
                        }
                    }
                } else if (i22 == 4) {
                    i6 = 0;
                    for (int i27 = i14; i27 < arrayList2.size(); i27++) {
                        if (Game.getDevelopInfrastructureCostLegacy(((Integer) arrayList2.get(i6)).intValue()) < Game.getDevelopInfrastructureCostLegacy(((Integer) arrayList2.get(i27)).intValue())) {
                            i6 = i27;
                        }
                    }
                } else {
                    if (i22 == 5) {
                        i6 = 0;
                        for (int i28 = i14; i28 < arrayList2.size(); i28++) {
                            if (Game.getDevelopInfrastructureCostLegacy(((Integer) arrayList2.get(i6)).intValue()) > Game.getDevelopInfrastructureCostLegacy(((Integer) arrayList2.get(i28)).intValue())) {
                                i6 = i28;
                            }
                        }
                    } else {
                        c = 6;
                        if (i22 == 6) {
                            i5 = 0;
                            for (int i29 = i14; i29 < arrayList2.size(); i29++) {
                                if (Game.getDevelopInfrastructureCost(((Integer) arrayList2.get(i5)).intValue()) < Game.getDevelopInfrastructureCost(((Integer) arrayList2.get(i29)).intValue())) {
                                    i5 = i29;
                                }
                            }
                        } else if (i22 == 7) {
                            i5 = 0;
                            for (int i30 = i14; i30 < arrayList2.size(); i30++) {
                                if (Game.getDevelopInfrastructureCost(((Integer) arrayList2.get(i5)).intValue()) > Game.getDevelopInfrastructureCost(((Integer) arrayList2.get(i30)).intValue())) {
                                    i5 = i30;
                                }
                            }
                        } else {
                            i4 = 0;
                        }
                        i4 = i5;
                    }
                    int i31 = otherMenuPosX;
                    ArrayList arrayList3 = arrayList2;
                    int i32 = i20;
                    int i33 = i19;
                    int i34 = height;
                    int i35 = i4;
                    arrayList.add(new AnonymousClass5(Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i7, height2, i33, i10, ((Integer) arrayList2.get(i4)).intValue()));
                    int width5 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i7;
                    String str = "" + Game.getProvince(((Integer) arrayList3.get(i35)).intValue()).getInfrastructure() + " / " + Game.getProvince(((Integer) arrayList3.get(i35)).intValue()).iInfrastructureMax;
                    int i36 = CFG.FONT_REGULAR_SMALL;
                    int iIntValue = ((Integer) arrayList3.get(i35)).intValue();
                    int i37 = height2;
                    int i38 = i10;
                    arrayList.add(new Text_StaticBG_ID_Infrastructure(str, i36, -1, width5, i37, i33, i38, iIntValue));
                    int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    int i39 = i10;
                    arrayList.add(new AnonymousClass6("" + Game.getDevelopInfrastructureCostLegacy(((Integer) arrayList3.get(i35)).intValue()), Images.legacy, width6, i37, i32, i38, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList3.get(i35)).intValue()));
                    arrayList.add(new AnonymousClass7("" + Game.getDevelopInfrastructureCost(((Integer) arrayList3.get(i35)).intValue()), Images.gold, width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i37, i32, i39, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList3.get(i35)).intValue()));
                    height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList3.remove(i35);
                    arrayList2 = arrayList3;
                    height = i34;
                    i16 = i16;
                    i7 = i7;
                    otherMenuPosX = i31;
                    i20 = i32;
                    i19 = i33;
                    width = width;
                    i14 = i14;
                    i10 = i39;
                }
                i4 = i6;
                c = 6;
                int i310 = otherMenuPosX;
                ArrayList arrayList4 = arrayList2;
                int i311 = i20;
                int i312 = i19;
                int i313 = height;
                int i314 = i4;
                arrayList.add(new AnonymousClass5(Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i7, height2, i312, i10, ((Integer) arrayList2.get(i4)).intValue()));
                int width7 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i7;
                String str2 = "" + Game.getProvince(((Integer) arrayList4.get(i314)).intValue()).getInfrastructure() + " / " + Game.getProvince(((Integer) arrayList4.get(i314)).intValue()).iInfrastructureMax;
                int i315 = CFG.FONT_REGULAR_SMALL;
                int iIntValue2 = ((Integer) arrayList4.get(i314)).intValue();
                int i316 = height2;
                int i317 = i10;
                arrayList.add(new Text_StaticBG_ID_Infrastructure(str2, i315, -1, width7, i316, i312, i317, iIntValue2));
                int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                int i318 = i10;
                arrayList.add(new AnonymousClass6("" + Game.getDevelopInfrastructureCostLegacy(((Integer) arrayList4.get(i314)).intValue()), Images.legacy, width8, i316, i311, i317, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList4.get(i314)).intValue()));
                arrayList.add(new AnonymousClass7("" + Game.getDevelopInfrastructureCost(((Integer) arrayList4.get(i314)).intValue()), Images.gold, width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i316, i311, i318, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList4.get(i314)).intValue()));
                height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList4.remove(i314);
                arrayList2 = arrayList4;
                height = i313;
                i16 = i16;
                i7 = i7;
                otherMenuPosX = i310;
                i20 = i311;
                i19 = i312;
                width = width;
                i14 = i14;
                i10 = i318;
            }
            i = height;
            i2 = otherMenuPosX;
            i3 = width;
        } else {
            i = height;
            i2 = otherMenuPosX;
            i3 = width;
            arrayList.add(new Text_StaticBG(Game.lang.get("MaximumInfrastructureLevel"), CFG.FONT_REGULAR, -1, i7, height2, i3 - (i7 * 2), CFG.BUTTON_HEIGHT2));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i40 = i + InGame_CourtOptions.menuH;
        int iMin = Math.min(height2, (CFG.GAME_HEIGHT - i40) - (CFG.PADDING * 3));
        int i41 = i3;
        arrayList.add(new Empty(0, 0, i41, Math.max(height2, iMin)));
        initMenu(null, i2, i40, i41, iMin, arrayList, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("DevelopInfrastructure"));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - InGame_CourtOptions.menuH) + i2, getWidth(), getHeight() + InGame_CourtOptions.menuH + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civOptionsOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civOptionsOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civOptionsOver).getHeight()));
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
