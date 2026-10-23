package aoc.kingdoms.lukasz.menusInGame.Civ;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical_Data_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.InGame_MapModes;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ_Religion extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iReligionID = -1;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Religion$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonReligion2 {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionReligion();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonReligion2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(LBhZogys.xDwNlR), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Religion$2, reason: invalid class name */
    class AnonymousClass2 extends Graph_Vertical {
        AnonymousClass2(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Religion$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Religion.iSortID == 0) {
                InGame_Civ_Religion.iSortID = 1;
            } else {
                InGame_Civ_Religion.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Civ_Religion();
            InGame_Civ_Religion.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Religion$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Religion.iSortID == 2) {
                InGame_Civ_Religion.iSortID = 3;
            } else {
                InGame_Civ_Religion.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_Civ_Religion();
            InGame_Civ_Religion.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Religion$5, reason: invalid class name */
    class AnonymousClass5 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(getCurrent(), Game.religionManager.getReligion(Game.getCiv(getCurrent()).getReligionID()).Name));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Religion$6, reason: invalid class name */
    class AnonymousClass6 extends Text_StaticBG {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Religion$7, reason: invalid class name */
    class AnonymousClass7 extends MenuTitleIMG_FlagCenter {
        AnonymousClass7(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_Civ.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Civ_Religion.lTime2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0220 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:110:0x0268 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x02a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x02c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x02ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x03f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x0158  */
    /* JADX WARN: Code duplicated, block: B:25:0x015b  */
    /* JADX WARN: Code duplicated, block: B:29:0x01a5 A[LOOP:0: B:27:0x019d->B:29:0x01a5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:33:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:41:0x020a  */
    /* JADX WARN: Code duplicated, block: B:43:0x021a  */
    /* JADX WARN: Code duplicated, block: B:47:0x0229  */
    /* JADX WARN: Code duplicated, block: B:50:0x0231  */
    /* JADX WARN: Code duplicated, block: B:52:0x0235  */
    /* JADX WARN: Code duplicated, block: B:55:0x023d  */
    /* JADX WARN: Code duplicated, block: B:57:0x0267  */
    /* JADX WARN: Code duplicated, block: B:59:0x026b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x026d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0275  */
    /* JADX WARN: Code duplicated, block: B:65:0x029f  */
    /* JADX WARN: Code duplicated, block: B:67:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:69:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:72:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:74:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:76:0x02ca A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:80:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:82:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:84:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:86:0x0381  */
    /* JADX WARN: Code duplicated, block: B:89:0x03be  */
    /* JADX WARN: Code duplicated, block: B:91:0x03d8  */
    public InGame_Civ_Religion() {
        int i;
        boolean z;
        boolean z2;
        int height;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i2;
        int i3;
        int size;
        int size2;
        int i4;
        int posY;
        int height2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        ArrayList arrayList3 = new ArrayList();
        int i11 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height3 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i12 = CFG.PADDING;
        int i13 = CFG.PADDING;
        int i14 = Images.boxTitleBORDERWIDTH;
        int i15 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i16 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.6f);
        int i17 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.4f);
        int i18 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 3)) * 0.6f);
        int i19 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 3)) * 0.4f);
        int i20 = CFG.BUTTON_HEIGHT;
        int i21 = CFG.PADDING;
        int i22 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        arrayList3.add(new AnonymousClass1(iReligionID, i22, i21, width - (i22 * 2), i20));
        int height4 = i21 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        arrayList3.add(new AnonymousClass2(Graph_Vertical_Data_Type.RELIGION_CIVS, Game.lang.get("Civilizations"), Game.lang.get("Civilizations"), i11, height4, width - (i11 * 2), CFG.BUTTON_HEIGHT * 3, true));
        int height5 = height4 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        int i23 = Images.boxTitleBORDERWIDTH;
        int i24 = iSortID;
        arrayList3.add(new AnonymousClass3(i24 == 0 || i24 == 1, i24 == 1, Game.lang.get("Name"), -1, i23, height5, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i23 + arrayList3.get(arrayList3.size() - 1).getWidth();
        int i25 = iSortID;
        if (i25 != 2) {
            i = 3;
            if (i25 != 3) {
                z = false;
            }
            if (i25 == i) {
                z2 = true;
            } else {
                z2 = false;
            }
            arrayList3.add(new AnonymousClass4(z, z2, Game.lang.get("Population"), -1, width2, height5, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            height = height5 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
            arrayList = new ArrayList();
            arrayList2 = new ArrayList();
            for (i2 = 0; i2 < Game.getCivsSize(); i2++) {
                arrayList.add(Integer.valueOf(i2));
                arrayList2.add(0L);
            }
            for (i3 = 0; i3 < Game.getProvincesSize(); i3++) {
                if (Game.getProvince(i3).getCivID() <= 0 && Game.getProvince(i3).getReligion() == iReligionID) {
                    arrayList2.set(Game.getProvince(i3).getCivID(), Long.valueOf(((Long) arrayList2.get(Game.getProvince(i3).getCivID())).longValue() + ((long) Game.getProvince(i3).getPopulationTotal())));
                }
            }
            for (size = arrayList.size() - 1; size >= 0; size--) {
                if (((Long) arrayList2.get(size)).longValue() <= 0) {
                    arrayList.remove(size);
                    arrayList2.remove(size);
                }
            }
            if (arrayList.size() > 0) {
                height2 = height;
                while (arrayList.size() > 0) {
                    i5 = iSortID;
                    if (i5 == 0) {
                        i6 = 0;
                        for (i10 = 1; i10 < arrayList.size(); i10++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i6)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i10)).intValue()).getCivName())) {
                                i6 = i10;
                            }
                        }
                    } else if (i5 == 1) {
                        i6 = 0;
                        for (i9 = 1; i9 < arrayList.size(); i9++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i9)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i6)).intValue()).getCivName())) {
                                i6 = i9;
                            }
                        }
                    } else if (i5 == 2) {
                        i6 = 0;
                        for (i8 = 1; i8 < arrayList.size(); i8++) {
                            if (((Long) arrayList2.get(i6)).longValue() < ((Long) arrayList2.get(i8)).longValue()) {
                                i6 = i8;
                            }
                        }
                    } else if (i5 == i) {
                        i6 = 0;
                        for (i7 = 1; i7 < arrayList.size(); i7++) {
                            if (((Long) arrayList2.get(i6)).longValue() > ((Long) arrayList2.get(i7)).longValue()) {
                                i6 = i7;
                            }
                        }
                    } else {
                        i6 = 0;
                    }
                    int i26 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                    int i27 = height2;
                    int i28 = i15;
                    arrayList3.add(new AnonymousClass5(Game.getCiv(((Integer) arrayList.get(i6)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i26, i27, i18, i28, ((Integer) arrayList.get(i6)).intValue()));
                    arrayList3.add(new AnonymousClass6(CFG.getNumberWithSpaces("" + arrayList2.get(i6)), CFG.FONT_REGULAR_SMALL, -1, i26 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, i27, i19, i28));
                    height2 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.remove(i6);
                    arrayList2.remove(i6);
                }
            } else {
                arrayList3.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, Images.boxTitleBORDERWIDTH + CFG.PADDING, height, width - (Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2)), CFG.BUTTON_HEIGHT2));
                arrayList3.get(arrayList3.size() - 1).getHeight();
                int i29 = CFG.PADDING;
            }
            size2 = arrayList3.size();
            posY = 0;
            for (i4 = 0; i4 < size2; i4++) {
                if (posY < arrayList3.get(i4).getPosY() + arrayList3.get(i4).getHeight() + CFG.PADDING) {
                    posY = arrayList3.get(i4).getPosY() + arrayList3.get(i4).getHeight() + CFG.PADDING;
                }
            }
            int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height3) - (CFG.PADDING * i));
            arrayList3.add(new Empty(0, 0, width, Math.max(posY, iMin)));
            initMenu(new AnonymousClass7(Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Game.lang.get("Religion"), false, false, Images.title500), otherMenuPosX_2, height3, width, iMin, arrayList3, false, true);
        }
        i = 3;
        z = true;
        if (i25 == i) {
            z2 = true;
        } else {
            z2 = false;
        }
        arrayList3.add(new AnonymousClass4(z, z2, Game.lang.get("Population"), -1, width2, height5, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        height = height5 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        arrayList = new ArrayList();
        arrayList2 = new ArrayList();
        while (i2 < Game.getCivsSize()) {
            arrayList.add(Integer.valueOf(i2));
            arrayList2.add(0L);
        }
        while (i3 < Game.getProvincesSize()) {
            if (Game.getProvince(i3).getCivID() <= 0) {
            }
        }
        while (size >= 0) {
            if (((Long) arrayList2.get(size)).longValue() <= 0) {
                arrayList.remove(size);
                arrayList2.remove(size);
            }
        }
        if (arrayList.size() > 0) {
            height2 = height;
            while (arrayList.size() > 0) {
                i5 = iSortID;
                if (i5 == 0) {
                    i6 = 0;
                    while (i10 < arrayList.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i6)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i10)).intValue()).getCivName())) {
                            i6 = i10;
                        }
                    }
                } else if (i5 == 1) {
                    i6 = 0;
                    while (i9 < arrayList.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i9)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i6)).intValue()).getCivName())) {
                            i6 = i9;
                        }
                    }
                } else if (i5 == 2) {
                    i6 = 0;
                    while (i8 < arrayList.size()) {
                        if (((Long) arrayList2.get(i6)).longValue() < ((Long) arrayList2.get(i8)).longValue()) {
                            i6 = i8;
                        }
                    }
                } else if (i5 == i) {
                    i6 = 0;
                    while (i7 < arrayList.size()) {
                        if (((Long) arrayList2.get(i6)).longValue() > ((Long) arrayList2.get(i7)).longValue()) {
                            i6 = i7;
                        }
                    }
                } else {
                    i6 = 0;
                }
                int i210 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                int i211 = height2;
                int i212 = i15;
                arrayList3.add(new AnonymousClass5(Game.getCiv(((Integer) arrayList.get(i6)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i210, i211, i18, i212, ((Integer) arrayList.get(i6)).intValue()));
                arrayList3.add(new AnonymousClass6(CFG.getNumberWithSpaces("" + arrayList2.get(i6)), CFG.FONT_REGULAR_SMALL, -1, i210 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, i211, i19, i212));
                height2 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                arrayList.remove(i6);
                arrayList2.remove(i6);
            }
        } else {
            arrayList3.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, Images.boxTitleBORDERWIDTH + CFG.PADDING, height, width - (Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2)), CFG.BUTTON_HEIGHT2));
            arrayList3.get(arrayList3.size() - 1).getHeight();
            int i213 = CFG.PADDING;
        }
        size2 = arrayList3.size();
        posY = 0;
        while (i4 < size2) {
            if (posY < arrayList3.get(i4).getPosY() + arrayList3.get(i4).getHeight() + CFG.PADDING) {
                posY = arrayList3.get(i4).getPosY() + arrayList3.get(i4).getHeight() + CFG.PADDING;
            }
        }
        int iMin2 = Math.min(posY, (CFG.GAME_HEIGHT - height3) - (CFG.PADDING * i));
        arrayList3.add(new Empty(0, 0, width, Math.max(posY, iMin2)));
        initMenu(new AnonymousClass7(Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Game.lang.get("Religion"), false, false, Images.title500), otherMenuPosX_2, height3, width, iMin2, arrayList3, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        InGame_Civ.actionOnClose();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civInfoOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
    }
}
