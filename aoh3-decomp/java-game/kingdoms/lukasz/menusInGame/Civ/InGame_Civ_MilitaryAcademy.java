package aoc.kingdoms.lukasz.menusInGame.Civ;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ_MilitaryAcademy extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID = 4;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_MilitaryAcademy$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass1(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Civilizations") + ": ", this.sText2, Images.council, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_MilitaryAcademy$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlueSort {
        AnonymousClass2(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_MilitaryAcademy.iSortID == 0) {
                InGame_Civ_MilitaryAcademy.iSortID = 1;
            } else {
                InGame_Civ_MilitaryAcademy.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Civ_MilitaryAcademy();
            InGame_Civ_MilitaryAcademy.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_MilitaryAcademy$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_MilitaryAcademy.iSortID == 2) {
                InGame_Civ_MilitaryAcademy.iSortID = 3;
            } else {
                InGame_Civ_MilitaryAcademy.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_Civ_MilitaryAcademy();
            InGame_Civ_MilitaryAcademy.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MilitaryAcademy"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_MilitaryAcademy$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_MilitaryAcademy.iSortID == 4) {
                InGame_Civ_MilitaryAcademy.iSortID = 5;
            } else {
                InGame_Civ_MilitaryAcademy.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_Civ_MilitaryAcademy();
            InGame_Civ_MilitaryAcademy.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MilitaryAcademyForGenerals"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_MilitaryAcademy$5, reason: invalid class name */
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
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_MilitaryAcademy$6, reason: invalid class name */
    class AnonymousClass6 extends Text_StaticBG_ID {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.id).getCivName(), "", this.id, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HjHDSSkYG.hgnDqjpYB) + ": ", Game.lang.get("Level") + ": " + getText(), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_MilitaryAcademy$7, reason: invalid class name */
    class AnonymousClass7 extends Text_StaticBG_ID {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.id).getCivName(), "", this.id, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MilitaryAcademyForGenerals") + ": ", Game.lang.get("Level") + ": " + getText(), Images.general, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_MilitaryAcademy$8, reason: invalid class name */
    class AnonymousClass8 extends MenuTitleIMG_DoubleText {
        AnonymousClass8(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Civ_MilitaryAcademy.lTime2;
        }
    }

    public InGame_Civ_MilitaryAcademy() {
        ArrayList arrayList;
        int i;
        int i2;
        int i3;
        ArrayList arrayList2 = new ArrayList();
        int i4 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i5 = CFG.PADDING * 2;
        int i6 = CFG.PADDING;
        int i7 = Images.boxTitleBORDERWIDTH;
        int i8 = CFG.BUTTON_HEIGHT3;
        if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
            InGame_Civ.iActiveCivID = Game.getProvince(Game.iActiveProvince).getCivID();
        } else if (InGame_Civ.iActiveCivID <= 0) {
            InGame_Civ.iActiveCivID = Game.player.iCivID;
        }
        int i9 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.4f);
        int i10 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
        int i11 = i4 + CFG.PADDING;
        ArrayList arrayList3 = new ArrayList();
        for (int i12 = 0; i12 < Game.getCivsSize(); i12++) {
            if (Game.getCiv(i12).getNumOfProvinces() > 0) {
                arrayList3.add(Integer.valueOf(i12));
            }
        }
        String str = "";
        int i13 = 0;
        ArrayList arrayList4 = arrayList3;
        arrayList2.add(new AnonymousClass1(Game.lang.get("Civilizations") + ": ", "" + arrayList3.size(), Images.council, i11, i5, width - (i4 * 2), i8, ImageManager.getImage(Images.battleWidth).getWidth()));
        int i14 = 1;
        int height2 = i5 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i15 = Images.boxTitleBORDERWIDTH;
        int i16 = iSortID;
        arrayList2.add(new AnonymousClass2(i16 == 0 || i16 == 1, i16 == 1, Game.lang.get("Name"), -1, i15, height2, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i15 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i17 = iSortID;
        int i18 = 3;
        String str2 = "MilitaryAcademy";
        arrayList2.add(new AnonymousClass3(i17 == 2 || i17 == 3, i17 == 3, Game.lang.get("MilitaryAcademy"), -1, width2, height2, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i19 = iSortID;
        String str3 = "MilitaryAcademyForGenerals";
        arrayList2.add(new AnonymousClass4(i19 == 4 || i19 == 5, i19 == 5, Game.lang.get("MilitaryAcademyForGenerals"), -1, width3, height2, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height3 = height2 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i20 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.4f);
        int i21 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
        while (!arrayList4.isEmpty()) {
            int i22 = iSortID;
            if (i22 == 0) {
                i2 = i13;
                int i23 = i14;
                while (i23 < arrayList4.size()) {
                    ArrayList arrayList5 = arrayList4;
                    if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList5.get(i2)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList5.get(i23)).intValue()).getCivName())) {
                        i2 = i23;
                    }
                    i23++;
                    arrayList4 = arrayList5;
                }
                arrayList = arrayList4;
            } else {
                arrayList = arrayList4;
                if (i22 == i14) {
                    i3 = 0;
                    for (int i24 = i14; i24 < arrayList.size(); i24++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i24)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i3)).intValue()).getCivName())) {
                            i3 = i24;
                        }
                    }
                } else if (i22 == 2) {
                    i3 = 0;
                    for (int i25 = i14; i25 < arrayList.size(); i25++) {
                        if (Game.getCiv(((Integer) arrayList.get(i3)).intValue()).getMilitaryAcademyLevel() < Game.getCiv(((Integer) arrayList.get(i25)).intValue()).getMilitaryAcademyLevel()) {
                            i3 = i25;
                        }
                    }
                } else if (i22 == i18) {
                    i3 = 0;
                    for (int i26 = i14; i26 < arrayList.size(); i26++) {
                        if (Game.getCiv(((Integer) arrayList.get(i3)).intValue()).getMilitaryAcademyLevel() > Game.getCiv(((Integer) arrayList.get(i26)).intValue()).getMilitaryAcademyLevel()) {
                            i3 = i26;
                        }
                    }
                } else {
                    if (i22 == 4) {
                        i3 = 0;
                        for (int i27 = i14; i27 < arrayList.size(); i27++) {
                            if (Game.getCiv(((Integer) arrayList.get(i3)).intValue()).getMilitaryAcademyForGeneralsLevel() < Game.getCiv(((Integer) arrayList.get(i27)).intValue()).getMilitaryAcademyForGeneralsLevel()) {
                                i3 = i27;
                            }
                        }
                    } else if (i22 == 5) {
                        i2 = 0;
                        for (int i28 = i14; i28 < arrayList.size(); i28++) {
                            if (Game.getCiv(((Integer) arrayList.get(i2)).intValue()).getMilitaryAcademyForGeneralsLevel() > Game.getCiv(((Integer) arrayList.get(i28)).intValue()).getMilitaryAcademyForGeneralsLevel()) {
                                i2 = i28;
                            }
                        }
                    } else {
                        i = 0;
                    }
                    int i29 = i21;
                    int i30 = width;
                    int i31 = height;
                    int i32 = i;
                    int i33 = i18;
                    int i34 = i14;
                    arrayList2.add(new AnonymousClass5(Game.getCiv(((Integer) arrayList.get(i)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i4, height3, i20, i8, ((Integer) arrayList.get(i)).intValue()));
                    int width4 = arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING + i4;
                    String str4 = str;
                    int i35 = height3;
                    arrayList2.add(new AnonymousClass6(str4 + Game.getCiv(((Integer) arrayList.get(i32)).intValue()).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(((Integer) arrayList.get(i32)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width4, i35, i29, i8, ((Integer) arrayList.get(i32)).intValue()));
                    arrayList2.add(new AnonymousClass7(str4 + Game.getCiv(((Integer) arrayList.get(i32)).intValue()).getMilitaryAcademyForGeneralsLevel() + " / " + Game.getMilitaryAcademyForGenerals_MaxLvl(((Integer) arrayList.get(i32)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width4 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, i35, i29, i8, ((Integer) arrayList.get(i32)).intValue()));
                    height3 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.remove(i32);
                    arrayList4 = arrayList;
                    str = str4;
                    width = i30;
                    height = i31;
                    i21 = i29;
                    i18 = i33;
                    i14 = i34;
                    str3 = str3;
                    str2 = str2;
                    i13 = 0;
                }
                i = i3;
                int i210 = i21;
                int i36 = width;
                int i37 = height;
                int i38 = i;
                int i39 = i18;
                int i310 = i14;
                arrayList2.add(new AnonymousClass5(Game.getCiv(((Integer) arrayList.get(i)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i4, height3, i20, i8, ((Integer) arrayList.get(i)).intValue()));
                int width5 = arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING + i4;
                String str5 = str;
                int i311 = height3;
                arrayList2.add(new AnonymousClass6(str5 + Game.getCiv(((Integer) arrayList.get(i38)).intValue()).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(((Integer) arrayList.get(i38)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width5, i311, i210, i8, ((Integer) arrayList.get(i38)).intValue()));
                arrayList2.add(new AnonymousClass7(str5 + Game.getCiv(((Integer) arrayList.get(i38)).intValue()).getMilitaryAcademyForGeneralsLevel() + " / " + Game.getMilitaryAcademyForGenerals_MaxLvl(((Integer) arrayList.get(i38)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width5 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, i311, i210, i8, ((Integer) arrayList.get(i38)).intValue()));
                height3 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                arrayList.remove(i38);
                arrayList4 = arrayList;
                str = str5;
                width = i36;
                height = i37;
                i21 = i210;
                i18 = i39;
                i14 = i310;
                str3 = str3;
                str2 = str2;
                i13 = 0;
            }
            i = i2;
            int i211 = i21;
            int i312 = width;
            int i313 = height;
            int i314 = i;
            int i315 = i18;
            int i316 = i14;
            arrayList2.add(new AnonymousClass5(Game.getCiv(((Integer) arrayList.get(i)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i4, height3, i20, i8, ((Integer) arrayList.get(i)).intValue()));
            int width6 = arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING + i4;
            String str6 = str;
            int i317 = height3;
            arrayList2.add(new AnonymousClass6(str6 + Game.getCiv(((Integer) arrayList.get(i314)).intValue()).getMilitaryAcademyLevel() + " / " + Game.getMilitaryAcademy_MaxLvl(((Integer) arrayList.get(i314)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width6, i317, i211, i8, ((Integer) arrayList.get(i314)).intValue()));
            arrayList2.add(new AnonymousClass7(str6 + Game.getCiv(((Integer) arrayList.get(i314)).intValue()).getMilitaryAcademyForGeneralsLevel() + " / " + Game.getMilitaryAcademyForGenerals_MaxLvl(((Integer) arrayList.get(i314)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width6 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, i317, i211, i8, ((Integer) arrayList.get(i314)).intValue()));
            height3 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
            arrayList.remove(i314);
            arrayList4 = arrayList;
            str = str6;
            width = i312;
            height = i313;
            i21 = i211;
            i18 = i315;
            i14 = i316;
            str3 = str3;
            str2 = str2;
            i13 = 0;
        }
        int i40 = height;
        int iMin = Math.min(height3, (CFG.GAME_HEIGHT - i40) - (CFG.PADDING * 3));
        arrayList2.add(new Empty(0, 0, width, Math.max(height3, iMin)));
        initMenu(new AnonymousClass8(Game.lang.get(str2), Game.lang.get(str3), false, false, Images.title500), otherMenuPosX_2, i40, width, iMin, arrayList2, false, true);
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
