package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Compare;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_AllianceList extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static int iSortID = 6;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_AllianceList$1, reason: invalid class name */
    class AnonymousClass1 extends Text_TitleBlueSort {
        AnonymousClass1(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_AllianceList.iSortID == 6) {
                InGame_AllianceList.iSortID = 7;
            } else {
                InGame_AllianceList.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_AllianceList_SavePos();
            InGame_RivalsList.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Ranking"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_AllianceList$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID_Special {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_AllianceList$11, reason: invalid class name */
    class AnonymousClass11 extends MenuTitleIMG {
        AnonymousClass11(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_AllianceList.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_AllianceList$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlueSort {
        AnonymousClass2(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_AllianceList.iSortID == 0) {
                InGame_AllianceList.iSortID = 1;
            } else {
                InGame_AllianceList.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_AllianceList_SavePos();
            InGame_RivalsList.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_AllianceList$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_AllianceList.iSortID == 2) {
                InGame_AllianceList.iSortID = 3;
            } else {
                InGame_AllianceList.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_AllianceList_SavePos();
            InGame_RivalsList.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Opinion"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_AllianceList$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_AllianceList.iSortID == 4) {
                InGame_AllianceList.iSortID = 5;
            } else {
                InGame_AllianceList.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_AllianceList_SavePos();
            InGame_RivalsList.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(qIuEvFbUtcea.MSArcCXZDIrPGj), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_AllianceList$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.getColorNegative(false, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_AllianceList$6, reason: invalid class name */
    class AnonymousClass6 extends Text_StaticBG {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.HOVER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_AllianceList$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRectIMG_Rank {
        int id;

        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
            this.id = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Compare.civLeft_Rank <= 0) {
                InGame_Civ_Compare.civLeft_Rank = this.id;
                return;
            }
            int i = InGame_Civ_Compare.civLeft;
            int i2 = this.id;
            if (i == i2) {
                Game.menuManager.addToast_Error(Game.lang.get("Compare") + ": " + Game.getCiv(InGame_Civ_Compare.civLeft).getCivName() + " == " + Game.getCiv(this.id).getCivName());
                return;
            }
            InGame_Civ_Compare.civRight_Rank = i2;
            InGame_Civ_Compare.civLeft = InGame_Civ_Compare.civLeft_Rank;
            InGame_Civ_Compare.civRight = InGame_Civ_Compare.civRight_Rank;
            Game.menuManager.setVisibleInGame_PopUp(false);
            Game.menuManager.rebuildInGame_Civ_Compare();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CompareCivilizations"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.compare, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (InGame_Civ_Compare.civLeft_Rank > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get("Compare") + ": ", Game.getCiv(InGame_Civ_Compare.civLeft_Rank).getCivName(), InGame_Civ_Compare.civLeft_Rank, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get("Compare") + ": ", "--", 0, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get("Compare") + ": ", "--", 0, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get("Compare") + ": ", "--", 0, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CivilizationRank") + ": ", getText(), this.imageID, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            super.drawButtonBG(spriteBatch, i, i2, z);
            if (this.id == InGame_Civ_Compare.civLeft_Rank) {
                spriteBatch.setColor(Colors.COLOR_NOTIFICATION_OVER_GREEN);
                Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
                spriteBatch.setColor(Color.WHITE);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_AllianceList$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 18 && InGame_Alliance.iCivID == getCurrent()) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_Alliance(getCurrent());
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_AllianceList$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID_Special {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }
    }

    public InGame_AllianceList() {
        char c;
        char c2;
        char c3;
        char c4;
        int i;
        int i2;
        int height;
        int i3;
        ArrayList arrayList = new ArrayList();
        int i4 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        int height2 = ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int height3 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        List<Integer> listBuildList = buildList(Game.player.iCivID, GameValues.rivals.NUM_OF_RIVALS_TO_CHOOSE_FROM);
        int size = listBuildList.size();
        int i5 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.4f);
        int i6 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i7 = Images.boxTitleBORDERWIDTH;
        int i8 = iSortID;
        arrayList.add(new AnonymousClass1(i8 == 6 || i8 == 7, i8 == 6, Game.lang.get("Ranking"), -1, i7, 0, i6, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i7 + arrayList.get(arrayList.size() - 1).getWidth();
        int i9 = iSortID;
        arrayList.add(new AnonymousClass2(i9 == 0 || i9 == 1, i9 == 1, Game.lang.get("Name"), -1, width2, 0, i5, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i10 = iSortID;
        arrayList.add(new AnonymousClass3(i10 == 2 || i10 == 3, i10 == 3, Game.lang.get("Opinion"), -1, width3, 0, i6, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i11 = iSortID;
        arrayList.add(new AnonymousClass4(i11 == 4 || i11 == 5, i11 == 5, Game.lang.get(PxHJ.TTzYcFBEHWjGo), -1, width4, 0, i6, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
        int i12 = width - (i4 * 2);
        int i13 = (int) ((i12 - (CFG.PADDING * 3)) * 0.4f);
        int i14 = (int) ((i12 - (CFG.PADDING * 3)) * 0.2f);
        int i15 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT4 : CFG.BUTTON_HEIGHT2;
        if (listBuildList.isEmpty()) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i4, height4, i12, CFG.BUTTON_HEIGHT2));
            int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            if (Game.getCiv(Game.player.iCivID).diplomacy.alliance.size() >= DiplomacyManager.getMaxNumberOfAlliances(Game.player.iCivID)) {
                arrayList.add(new AnonymousClass5(Game.getCiv(Game.player.iCivID).getCivName() + ", " + Game.lang.get("MaxNumOfAlliances") + ": ", "" + Game.getCiv(Game.player.iCivID).diplomacy.alliance.size() + " / " + DiplomacyManager.getMaxNumberOfAlliances(Game.player.iCivID), Images.alliance, i4, height5, i12, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.alliance).getWidth(), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL));
                height = arrayList.get(arrayList.size() - 1).getHeight();
                i3 = CFG.PADDING;
            } else {
                arrayList.add(new AnonymousClass6(Game.lang.get("Tip") + ": " + Game.lang.get("ImproveRelations"), CFG.FONT_REGULAR, -1, i4, height5, i12, CFG.BUTTON_HEIGHT2));
                height = arrayList.get(arrayList.size() - 1).getHeight();
                i3 = CFG.PADDING;
            }
            height4 = height5 + height + i3;
        } else {
            size = size;
        }
        int height6 = height4;
        while (listBuildList.size() > 0) {
            int i16 = iSortID;
            if (i16 == 6) {
                int i17 = 0;
                for (int i18 = 1; i18 < listBuildList.size(); i18++) {
                    if (Game.getCiv(listBuildList.get(i17).intValue()).iCivRankPosition > Game.getCiv(listBuildList.get(i18).intValue()).iCivRankPosition) {
                        i17 = i18;
                    }
                }
                i = i17;
                c4 = 5;
                c3 = 4;
                c2 = 3;
                c = 7;
            } else {
                c = 7;
                if (i16 == 7) {
                    i2 = 0;
                    for (int i19 = 1; i19 < listBuildList.size(); i19++) {
                        if (Game.getCiv(listBuildList.get(i2).intValue()).iCivRankPosition < Game.getCiv(listBuildList.get(i19).intValue()).iCivRankPosition) {
                            i2 = i19;
                        }
                    }
                } else if (i16 == 0) {
                    i2 = 0;
                    for (int i20 = 1; i20 < listBuildList.size(); i20++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(listBuildList.get(i2).intValue()).getCivName(), Game.getCiv(listBuildList.get(i20).intValue()).getCivName())) {
                            i2 = i20;
                        }
                    }
                } else if (i16 == 1) {
                    i2 = 0;
                    for (int i21 = 1; i21 < listBuildList.size(); i21++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(listBuildList.get(i21).intValue()).getCivName(), Game.getCiv(listBuildList.get(i2).intValue()).getCivName())) {
                            i2 = i21;
                        }
                    }
                } else if (i16 == 2) {
                    i2 = 0;
                    for (int i22 = 1; i22 < listBuildList.size(); i22++) {
                        if (Game.getCiv(listBuildList.get(i2).intValue()).diplomacy.getRelation(Game.player.iCivID) < Game.getCiv(listBuildList.get(i22).intValue()).diplomacy.getRelation(Game.player.iCivID)) {
                            i2 = i22;
                        }
                    }
                } else {
                    c2 = 3;
                    if (i16 == 3) {
                        int i23 = 0;
                        for (int i24 = 1; i24 < listBuildList.size(); i24++) {
                            if (Game.getCiv(listBuildList.get(i23).intValue()).diplomacy.getRelation(Game.player.iCivID) > Game.getCiv(listBuildList.get(i24).intValue()).diplomacy.getRelation(Game.player.iCivID)) {
                                i23 = i24;
                            }
                        }
                        i = i23;
                        c4 = 5;
                        c3 = 4;
                    } else {
                        c3 = 4;
                        if (i16 == 4) {
                            int i25 = 0;
                            for (int i26 = 1; i26 < listBuildList.size(); i26++) {
                                if (Game.getCiv(listBuildList.get(i25).intValue()).iRegimentsLimit < Game.getCiv(listBuildList.get(i26).intValue()).iRegimentsLimit) {
                                    i25 = i26;
                                }
                            }
                            i = i25;
                            c4 = 5;
                        } else {
                            c4 = 5;
                            if (i16 == 5) {
                                int i27 = 0;
                                for (int i28 = 1; i28 < listBuildList.size(); i28++) {
                                    if (Game.getCiv(listBuildList.get(i27).intValue()).iRegimentsLimit > Game.getCiv(listBuildList.get(i28).intValue()).iRegimentsLimit) {
                                        i27 = i28;
                                    }
                                }
                                i = i27;
                            } else {
                                i = 0;
                            }
                        }
                    }
                }
                i = i2;
                c4 = 5;
                c3 = 4;
                c2 = 3;
            }
            int i29 = height3;
            int i30 = height2;
            int i31 = i;
            arrayList.add(new AnonymousClass7("" + Game.getCiv(listBuildList.get(i).intValue()).iCivRankPosition, CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(listBuildList.get(i).intValue()), i4, height6, i14, i15, ImageManager.getImage(Images.rankGold).getWidth()));
            arrayList.get(arrayList.size() - 1).setCurrent(listBuildList.get(i31).intValue());
            int width5 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i4;
            arrayList.add(new AnonymousClass8("" + Game.getCiv(listBuildList.get(i31).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width5, height6, i13, i15, listBuildList.get(i31).intValue()));
            int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass9("" + CFG.getPrecision2((int) Game.getCiv(listBuildList.get(i31).intValue()).diplomacy.getRelation(Game.player.iCivID), 1), CFG.FONT_REGULAR_SMALL, -1, width6, height6, i14, i15, listBuildList.get(i31).intValue()));
            int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            float f = ((Game.getCiv(listBuildList.get(i31).intValue()).iRegimentsLimit / Game.getCiv(Game.player.iCivID).iRegimentsLimit) - 1.0f) * 100.0f;
            arrayList.add(new AnonymousClass10((f > 0.0f ? "+" : "") + CFG.getPrecision2(f, 1) + "%", CFG.FONT_REGULAR_SMALL, -1, width7, height6, i14, i15, listBuildList.get(i31).intValue()));
            height6 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            listBuildList.remove(i31);
            height2 = i30;
            height3 = i29;
        }
        int i32 = height3;
        int iMin = Math.min(height6, (CFG.GAME_HEIGHT - height2) - i32);
        arrayList.add(new Empty(0, 0, width, Math.max(height6, height6)));
        initMenu(new AnonymousClass11(Game.lang.get("OfferAlliance") + " [" + size + "]", true, false, Images.title600), (CFG.GAME_WIDTH / 2) - (width / 2), i32, width, iMin, arrayList, false, true);
    }

    public static final List<Integer> buildList(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 1; i3 < Game.getCivsSize(); i3++) {
            if (Game.getCiv(i3).getNumOfProvinces() > 0 && i3 != i && !Game.getCiv(i).diplomacy.haveAlliance(i3) && Game.getCiv(i3).getPuppetOfCivID() != i && Game.getCiv(i).getPuppetOfCivID() != i3 && DiplomacyManager.getAlliance_Score(i, i3) > 0) {
                arrayList.add(Integer.valueOf(i3));
                arrayList2.add(Float.valueOf(Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i3).getCapitalProvinceID())));
            }
        }
        if (arrayList.size() <= i2) {
            return arrayList;
        }
        ArrayList arrayList3 = new ArrayList();
        while (arrayList3.size() <= i2) {
            int size = arrayList.size();
            int i4 = 0;
            for (int i5 = 1; i5 < size; i5++) {
                if (((Float) arrayList2.get(i5)).floatValue() < ((Float) arrayList2.get(i4)).floatValue()) {
                    i4 = i5;
                }
            }
            arrayList3.add((Integer) arrayList.get(i4));
            arrayList.remove(i4);
            arrayList2.remove(i4);
        }
        return arrayList3;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - ((CFG.BUTTON_HEIGHT * 3) / 5)) + ((int) (((CFG.BUTTON_HEIGHT * 3) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop600, Images.insideBot600);
        ImageManager.getImage(Images.outlinerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.outlinerOver).getWidth() / 2)) + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.outlinerOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
