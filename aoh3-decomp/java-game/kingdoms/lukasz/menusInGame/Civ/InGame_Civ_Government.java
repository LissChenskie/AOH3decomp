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
import aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology2;
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
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ_Government extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iGovID = -1;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Government$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonIdeology2 {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_MapModes.actionGovernment();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIdeology2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Government$2, reason: invalid class name */
    class AnonymousClass2 extends Graph_Vertical {
        AnonymousClass2(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Government$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Government.iSortID == 0) {
                InGame_Civ_Government.iSortID = 1;
            } else {
                InGame_Civ_Government.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Civ_Government();
            InGame_Civ_Government.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(nEtnPpUF.ntwOi) + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Name"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Government$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Government.iSortID == 2) {
                InGame_Civ_Government.iSortID = 3;
            } else {
                InGame_Civ_Government.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_Civ_Government();
            InGame_Civ_Government.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Government$5, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(getCurrent(), Game.ideologiesManager.getIdeology(Game.getCiv(getCurrent()).getIdeologyID()).Name));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Government$6, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Government$7, reason: invalid class name */
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
            return InGame_Civ_Government.lTime2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0236 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:0x026e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:107:0x0295 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x02bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x03be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x0159  */
    /* JADX WARN: Code duplicated, block: B:25:0x015c  */
    /* JADX WARN: Code duplicated, block: B:29:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:31:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:32:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:36:0x01da  */
    /* JADX WARN: Code duplicated, block: B:38:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:42:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:45:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:47:0x0203  */
    /* JADX WARN: Code duplicated, block: B:50:0x020b  */
    /* JADX WARN: Code duplicated, block: B:52:0x0235  */
    /* JADX WARN: Code duplicated, block: B:54:0x0239 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x023b  */
    /* JADX WARN: Code duplicated, block: B:58:0x0243  */
    /* JADX WARN: Code duplicated, block: B:60:0x026d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0271  */
    /* JADX WARN: Code duplicated, block: B:64:0x0274  */
    /* JADX WARN: Code duplicated, block: B:67:0x027c  */
    /* JADX WARN: Code duplicated, block: B:69:0x0294  */
    /* JADX WARN: Code duplicated, block: B:71:0x0298 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x029a  */
    /* JADX WARN: Code duplicated, block: B:75:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:77:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:79:0x02be  */
    /* JADX WARN: Code duplicated, block: B:81:0x034f  */
    /* JADX WARN: Code duplicated, block: B:84:0x038c  */
    /* JADX WARN: Code duplicated, block: B:86:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:95:0x01ee A[SYNTHETIC] */
    public InGame_Civ_Government() {
        int i;
        boolean z;
        boolean z2;
        int height;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i2;
        int size;
        int size2;
        int i3;
        int posY;
        int height2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        ArrayList arrayList3 = new ArrayList();
        int i10 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height3 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i11 = CFG.PADDING;
        int i12 = CFG.PADDING;
        int i13 = Images.boxTitleBORDERWIDTH;
        int i14 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i15 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.6f);
        int i16 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.4f);
        int i17 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 3)) * 0.6f);
        int i18 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 3)) * 0.4f);
        int i19 = CFG.BUTTON_HEIGHT;
        int i20 = CFG.PADDING;
        int i21 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        arrayList3.add(new AnonymousClass1(iGovID, i21, i20, width - (i21 * 2), i19));
        int height4 = i20 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        arrayList3.add(new AnonymousClass2(Graph_Vertical_Data_Type.GOVERNMENTS_CIVS, Game.lang.get("Civilizations"), Game.lang.get("Civilizations"), i10, height4, width - (i10 * 2), CFG.BUTTON_HEIGHT * 3, true));
        int height5 = height4 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        int i22 = Images.boxTitleBORDERWIDTH;
        int i23 = iSortID;
        arrayList3.add(new AnonymousClass3(i23 == 0 || i23 == 1, i23 == 1, Game.lang.get("Name"), -1, i22, height5, i15, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i22 + arrayList3.get(arrayList3.size() - 1).getWidth();
        int i24 = iSortID;
        if (i24 != 2) {
            i = 3;
            if (i24 != 3) {
                z = false;
            }
            if (i24 == i) {
                z2 = true;
            } else {
                z2 = false;
            }
            arrayList3.add(new AnonymousClass4(z, z2, Game.lang.get("Population"), -1, width2, height5, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            height = height5 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
            arrayList = new ArrayList();
            arrayList2 = new ArrayList();
            for (i2 = 0; i2 < Game.getCivsSize(); i2++) {
                arrayList.add(Integer.valueOf(i2));
                if (Game.getCiv(i2).getIdeologyID() == iGovID) {
                    arrayList2.add(Long.valueOf(Game.getCiv(i2).getPopulationTotal()));
                } else {
                    arrayList2.add(0L);
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
                    i4 = iSortID;
                    if (i4 == 0) {
                        i5 = 0;
                        for (i9 = 1; i9 < arrayList.size(); i9++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i5)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i9)).intValue()).getCivName())) {
                                i5 = i9;
                            }
                        }
                    } else if (i4 == 1) {
                        i5 = 0;
                        for (i8 = 1; i8 < arrayList.size(); i8++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i8)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i5)).intValue()).getCivName())) {
                                i5 = i8;
                            }
                        }
                    } else if (i4 == 2) {
                        i5 = 0;
                        for (i7 = 1; i7 < arrayList.size(); i7++) {
                            if (((Long) arrayList2.get(i5)).longValue() < ((Long) arrayList2.get(i7)).longValue()) {
                                i5 = i7;
                            }
                        }
                    } else if (i4 == i) {
                        i5 = 0;
                        for (i6 = 1; i6 < arrayList.size(); i6++) {
                            if (((Long) arrayList2.get(i5)).longValue() > ((Long) arrayList2.get(i6)).longValue()) {
                                i5 = i6;
                            }
                        }
                    } else {
                        i5 = 0;
                    }
                    int i25 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                    int i26 = height2;
                    int i27 = i14;
                    arrayList3.add(new AnonymousClass5(Game.getCiv(((Integer) arrayList.get(i5)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i25, i26, i17, i27, ((Integer) arrayList.get(i5)).intValue()));
                    arrayList3.add(new AnonymousClass6(CFG.getNumberWithSpaces("" + arrayList2.get(i5)), CFG.FONT_REGULAR_SMALL, -1, i25 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, i26, i18, i27));
                    height2 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.remove(i5);
                    arrayList2.remove(i5);
                }
            } else {
                arrayList3.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, Images.boxTitleBORDERWIDTH + CFG.PADDING, height, width - (Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2)), CFG.BUTTON_HEIGHT2));
                arrayList3.get(arrayList3.size() - 1).getHeight();
                int i28 = CFG.PADDING;
            }
            size2 = arrayList3.size();
            posY = 0;
            for (i3 = 0; i3 < size2; i3++) {
                if (posY < arrayList3.get(i3).getPosY() + arrayList3.get(i3).getHeight() + CFG.PADDING) {
                    posY = arrayList3.get(i3).getPosY() + arrayList3.get(i3).getHeight() + CFG.PADDING;
                }
            }
            int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height3) - (CFG.PADDING * i));
            arrayList3.add(new Empty(0, 0, width, Math.max(posY, iMin)));
            initMenu(new AnonymousClass7(Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Game.lang.get("Government"), false, false, Images.title500), otherMenuPosX_2, height3, width, iMin, arrayList3, false, true);
        }
        i = 3;
        z = true;
        if (i24 == i) {
            z2 = true;
        } else {
            z2 = false;
        }
        arrayList3.add(new AnonymousClass4(z, z2, Game.lang.get("Population"), -1, width2, height5, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        height = height5 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        arrayList = new ArrayList();
        arrayList2 = new ArrayList();
        while (i2 < Game.getCivsSize()) {
            arrayList.add(Integer.valueOf(i2));
            if (Game.getCiv(i2).getIdeologyID() == iGovID) {
                arrayList2.add(Long.valueOf(Game.getCiv(i2).getPopulationTotal()));
            } else {
                arrayList2.add(0L);
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
                i4 = iSortID;
                if (i4 == 0) {
                    i5 = 0;
                    while (i9 < arrayList.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i5)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i9)).intValue()).getCivName())) {
                            i5 = i9;
                        }
                    }
                } else if (i4 == 1) {
                    i5 = 0;
                    while (i8 < arrayList.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i8)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i5)).intValue()).getCivName())) {
                            i5 = i8;
                        }
                    }
                } else if (i4 == 2) {
                    i5 = 0;
                    while (i7 < arrayList.size()) {
                        if (((Long) arrayList2.get(i5)).longValue() < ((Long) arrayList2.get(i7)).longValue()) {
                            i5 = i7;
                        }
                    }
                } else if (i4 == i) {
                    i5 = 0;
                    while (i6 < arrayList.size()) {
                        if (((Long) arrayList2.get(i5)).longValue() > ((Long) arrayList2.get(i6)).longValue()) {
                            i5 = i6;
                        }
                    }
                } else {
                    i5 = 0;
                }
                int i29 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                int i210 = height2;
                int i211 = i14;
                arrayList3.add(new AnonymousClass5(Game.getCiv(((Integer) arrayList.get(i5)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i29, i210, i17, i211, ((Integer) arrayList.get(i5)).intValue()));
                arrayList3.add(new AnonymousClass6(CFG.getNumberWithSpaces("" + arrayList2.get(i5)), CFG.FONT_REGULAR_SMALL, -1, i29 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, i210, i18, i211));
                height2 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                arrayList.remove(i5);
                arrayList2.remove(i5);
            }
        } else {
            arrayList3.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, Images.boxTitleBORDERWIDTH + CFG.PADDING, height, width - (Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2)), CFG.BUTTON_HEIGHT2));
            arrayList3.get(arrayList3.size() - 1).getHeight();
            int i212 = CFG.PADDING;
        }
        size2 = arrayList3.size();
        posY = 0;
        while (i3 < size2) {
            if (posY < arrayList3.get(i3).getPosY() + arrayList3.get(i3).getHeight() + CFG.PADDING) {
                posY = arrayList3.get(i3).getPosY() + arrayList3.get(i3).getHeight() + CFG.PADDING;
            }
        }
        int iMin2 = Math.min(posY, (CFG.GAME_HEIGHT - height3) - (CFG.PADDING * i));
        arrayList3.add(new Empty(0, 0, width, Math.max(posY, iMin2)));
        initMenu(new AnonymousClass7(Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Game.lang.get("Government"), false, false, Images.title500), otherMenuPosX_2, height3, width, iMin2, arrayList3, false, true);
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
