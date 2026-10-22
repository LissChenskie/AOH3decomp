package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.RivalsManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.diplomacy.Diplomacy;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2_HorizontalSplit;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_Religion;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Compare;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RivalsList extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static int iSortID = 6;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_RivalsList$1, reason: invalid class name */
    class AnonymousClass1 extends Text_TitleBlueSort {
        AnonymousClass1(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RivalsList.iSortID == 6) {
                InGame_RivalsList.iSortID = 7;
            } else {
                InGame_RivalsList.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_RivalsList_SavePos();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_RivalsList$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlueSort {
        AnonymousClass2(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RivalsList.iSortID == 0) {
                InGame_RivalsList.iSortID = 1;
            } else {
                InGame_RivalsList.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RivalsList_SavePos();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_RivalsList$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RivalsList.iSortID == 2) {
                InGame_RivalsList.iSortID = 3;
            } else {
                InGame_RivalsList.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RivalsList_SavePos();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_RivalsList$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RivalsList.iSortID == 4) {
                InGame_RivalsList.iSortID = 5;
            } else {
                InGame_RivalsList.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_RivalsList_SavePos();
            InGame_RivalsList.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("RegimentsLimit"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_RivalsList$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Rank {
        int id;

        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(uNBYrZVGzy.gWM), CFG.FONT_BOLD, Colors.HOVER_GOLD));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_RivalsList$6, reason: invalid class name */
    class AnonymousClass6 extends Text_StaticBG_ID_FlagCiv_Religion {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Rivals.rivalCivID = getCurrent();
            InGame_Rivals.backToRivalsList = true;
            Game.menuManager.rebuildInGame_Rivals();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_Religion
        public void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            drawTextCiv(spriteBatch, i, i2, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_RivalsList$7, reason: invalid class name */
    class AnonymousClass7 extends Text_StaticBG_ID_Special {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_RivalsList$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_ID_Special {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_RivalsList$9, reason: invalid class name */
    class AnonymousClass9 extends MenuTitleIMG {
        AnonymousClass9(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_RivalsList.lTime;
        }
    }

    /* JADX WARN: Code duplicated, block: B:150:0x0635  */
    /* JADX WARN: Code duplicated, block: B:151:0x0638  */
    /* JADX WARN: Multi-variable type inference failed */
    public InGame_RivalsList() {
        int i;
        int i2;
        int iMax;
        int i3;
        char c;
        char c2;
        char c3;
        int i4;
        int i5;
        float f;
        String str;
        ArrayList arrayList = new ArrayList();
        int i6 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int height = ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int height2 = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        List<Integer> listBuildRivals = RivalsManager.buildRivals(Game.player.iCivID, GameValues.rivals.NUM_OF_RIVALS_TO_CHOOSE_FROM);
        int size = listBuildRivals.size();
        int i7 = Game.player.iCivID;
        int i8 = width - (i6 * 2);
        int buttonWidth = (i8 - (ButtonFlag_Diplomacy.getButtonWidth() * 4)) - (CFG.PADDING * 4);
        int height3 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (CFG.PADDING * 2);
        int width2 = ImageManager.getImage(Images.relations).getWidth() + (CFG.PADDING * 2);
        try {
            if (Game.getCiv(i7).diplomacy.rivals.size() > 0) {
                int i9 = i6 + buttonWidth;
                int width3 = CFG.PADDING + i9;
                int i10 = 0;
                int i11 = 0;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i7).diplomacy.rivals.values()) {
                    try {
                        if (width3 + ButtonFlag_Diplomacy.getButtonWidth() > width) {
                            width3 = CFG.PADDING + i9;
                            i11 += height3;
                            i10++;
                        }
                        arrayList.add(new ButtonFlag_Diplomacy(diplomacyData.iCivID, width3, i11 + CFG.PADDING, true));
                        width3 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    } catch (Exception e) {
                        e = e;
                        i = 1;
                        i2 = size;
                    }
                }
                i = 1;
                i2 = size;
                try {
                    arrayList.add(new TextIcon2_HorizontalSplit(Game.lang.get("Rivals"), Images.rivals, i6, i11 - (height3 * i10), buttonWidth, height3 * (i10 + 1), width2, i8));
                    iMax = Math.max(i11 + height3, arrayList.get(arrayList.size() - 1).getPosY() + arrayList.get(arrayList.size() - 1).getHeight());
                } catch (Exception e2) {
                    e = e2;
                    iMax = i11;
                    CFG.exceptionStack(e);
                }
            } else {
                i = 1;
                i2 = size;
                iMax = 0;
            }
        } catch (Exception e3) {
            e = e3;
            i = 1;
            i2 = size;
            iMax = 0;
        }
        int i12 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.4f);
        int i13 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i14 = Images.boxTitleBORDERWIDTH;
        int i15 = iSortID;
        arrayList.add(new AnonymousClass1((i15 == 6 || i15 == 7) ? i : 0, i15 == 6 ? i : 0, Game.lang.get("Ranking"), -1, i14, iMax, i13, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = i14 + arrayList.get(arrayList.size() - i).getWidth();
        int i16 = iSortID;
        arrayList.add(new AnonymousClass2((i16 == 0 || i16 == i) ? i : 0, i16 == i ? i : 0, Game.lang.get("Name"), -1, width4, iMax, i12, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = width4 + arrayList.get(arrayList.size() - i).getWidth();
        int i17 = iSortID;
        arrayList.add(new AnonymousClass3((i17 == 2 || i17 == 3) ? i : 0, i17 == 3 ? i : 0, Game.lang.get("Opinion"), -1, width5, iMax, i13, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width6 = width5 + arrayList.get(arrayList.size() - i).getWidth();
        int i18 = iSortID;
        arrayList.add(new AnonymousClass4((i18 == 4 || i18 == 5) ? i : 0, i18 == 5 ? i : 0, Game.lang.get("RegimentsLimit"), -1, width6, iMax, i13, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = arrayList.get(arrayList.size() - i).getHeight() + CFG.PADDING + iMax;
        int i19 = (int) ((i8 - (CFG.PADDING * 3)) * 0.4f);
        int i20 = (int) ((i8 - (CFG.PADDING * 3)) * 0.2f);
        int i21 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT4 : CFG.BUTTON_HEIGHT2;
        if (listBuildRivals.isEmpty()) {
            i3 = 7;
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i6, height4, i8, CFG.BUTTON_HEIGHT2));
            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            i3 = 7;
        }
        while (listBuildRivals.size() > 0) {
            int i22 = iSortID;
            if (i22 == 6) {
                i5 = 0;
                for (int i23 = 1; i23 < listBuildRivals.size(); i23++) {
                    if (Game.getCiv(listBuildRivals.get(i5).intValue()).iCivRankPosition > Game.getCiv(listBuildRivals.get(i23).intValue()).iCivRankPosition) {
                        i5 = i23;
                    }
                }
            } else if (i22 == i3) {
                i5 = 0;
                for (int i24 = 1; i24 < listBuildRivals.size(); i24++) {
                    if (Game.getCiv(listBuildRivals.get(i5).intValue()).iCivRankPosition < Game.getCiv(listBuildRivals.get(i24).intValue()).iCivRankPosition) {
                        i5 = i24;
                    }
                }
            } else if (i22 == 0) {
                i5 = 0;
                for (int i25 = 1; i25 < listBuildRivals.size(); i25++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getCiv(listBuildRivals.get(i5).intValue()).getCivName(), Game.getCiv(listBuildRivals.get(i25).intValue()).getCivName())) {
                        i5 = i25;
                    }
                }
            } else if (i22 == 1) {
                i5 = 0;
                for (int i26 = 1; i26 < listBuildRivals.size(); i26++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getCiv(listBuildRivals.get(i26).intValue()).getCivName(), Game.getCiv(listBuildRivals.get(i5).intValue()).getCivName())) {
                        i5 = i26;
                    }
                }
            } else {
                if (i22 == 2) {
                    i5 = 0;
                    for (int i27 = 1; i27 < listBuildRivals.size(); i27++) {
                        if (Game.getCiv(listBuildRivals.get(i5).intValue()).diplomacy.getRelation(Game.player.iCivID) < Game.getCiv(listBuildRivals.get(i27).intValue()).diplomacy.getRelation(Game.player.iCivID)) {
                            i5 = i27;
                        }
                    }
                } else {
                    c = 3;
                    if (i22 == 3) {
                        int i28 = 0;
                        for (int i29 = 1; i29 < listBuildRivals.size(); i29++) {
                            if (Game.getCiv(listBuildRivals.get(i28).intValue()).diplomacy.getRelation(Game.player.iCivID) > Game.getCiv(listBuildRivals.get(i29).intValue()).diplomacy.getRelation(Game.player.iCivID)) {
                                i28 = i29;
                            }
                        }
                        i4 = i28;
                        c3 = 5;
                        c2 = 4;
                    } else {
                        c2 = 4;
                        if (i22 == 4) {
                            int i30 = 0;
                            for (int i31 = 1; i31 < listBuildRivals.size(); i31++) {
                                if (Game.getCiv(listBuildRivals.get(i30).intValue()).iRegimentsLimit < Game.getCiv(listBuildRivals.get(i31).intValue()).iRegimentsLimit) {
                                    i30 = i31;
                                }
                            }
                            i4 = i30;
                            c3 = 5;
                        } else {
                            c3 = 5;
                            if (i22 == 5) {
                                int i32 = 0;
                                for (int i33 = 1; i33 < listBuildRivals.size(); i33++) {
                                    if (Game.getCiv(listBuildRivals.get(i32).intValue()).iRegimentsLimit > Game.getCiv(listBuildRivals.get(i33).intValue()).iRegimentsLimit) {
                                        i32 = i33;
                                    }
                                }
                                i4 = i32;
                            } else {
                                i4 = 0;
                            }
                        }
                    }
                }
                int i34 = height2;
                arrayList.add(new AnonymousClass5("" + Game.getCiv(listBuildRivals.get(i4).intValue()).iCivRankPosition, CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(listBuildRivals.get(i4).intValue()), i6, height4, i20, i21, ImageManager.getImage(Images.rankGold).getWidth()));
                arrayList.get(arrayList.size() - 1).setCurrent(listBuildRivals.get(i4).intValue());
                int width7 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i6;
                int i35 = height4;
                arrayList.add(new AnonymousClass6("" + Game.getCiv(listBuildRivals.get(i4).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width7, i35, i19, i21, listBuildRivals.get(i4).intValue()));
                int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass7("" + CFG.getPrecision2((int) Game.getCiv(listBuildRivals.get(i4).intValue()).diplomacy.getRelation(Game.player.iCivID), 1), CFG.FONT_REGULAR_SMALL, -1, width8, i35, i20, i21, listBuildRivals.get(i4).intValue()));
                int width9 = width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                f = ((Game.getCiv(listBuildRivals.get(i4).intValue()).iRegimentsLimit / Game.getCiv(Game.player.iCivID).iRegimentsLimit) - 1.0f) * 100.0f;
                StringBuilder sb = new StringBuilder();
                if (f > 0.0f) {
                    str = "+";
                } else {
                    str = "";
                }
                arrayList.add(new AnonymousClass8(sb.append(str).append(CFG.getPrecision2(f, 1)).append("%").toString(), CFG.FONT_REGULAR_SMALL, -1, width9, height4, i20, i21, listBuildRivals.get(i4).intValue()));
                height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                listBuildRivals.remove(i4);
                height2 = i34;
                i3 = 7;
            }
            i4 = i5;
            c3 = 5;
            c2 = 4;
            c = 3;
            int i36 = height2;
            arrayList.add(new AnonymousClass5("" + Game.getCiv(listBuildRivals.get(i4).intValue()).iCivRankPosition, CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(listBuildRivals.get(i4).intValue()), i6, height4, i20, i21, ImageManager.getImage(Images.rankGold).getWidth()));
            arrayList.get(arrayList.size() - 1).setCurrent(listBuildRivals.get(i4).intValue());
            int width10 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i6;
            int i37 = height4;
            arrayList.add(new AnonymousClass6("" + Game.getCiv(listBuildRivals.get(i4).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width10, i37, i19, i21, listBuildRivals.get(i4).intValue()));
            int width11 = width10 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass7("" + CFG.getPrecision2((int) Game.getCiv(listBuildRivals.get(i4).intValue()).diplomacy.getRelation(Game.player.iCivID), 1), CFG.FONT_REGULAR_SMALL, -1, width11, i37, i20, i21, listBuildRivals.get(i4).intValue()));
            int width12 = width11 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            f = ((Game.getCiv(listBuildRivals.get(i4).intValue()).iRegimentsLimit / Game.getCiv(Game.player.iCivID).iRegimentsLimit) - 1.0f) * 100.0f;
            StringBuilder sb2 = new StringBuilder();
            if (f > 0.0f) {
                str = "+";
            } else {
                str = "";
            }
            arrayList.add(new AnonymousClass8(sb2.append(str).append(CFG.getPrecision2(f, 1)).append("%").toString(), CFG.FONT_REGULAR_SMALL, -1, width12, height4, i20, i21, listBuildRivals.get(i4).intValue()));
            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            listBuildRivals.remove(i4);
            height2 = i36;
            i3 = 7;
        }
        int iMin = Math.min(height4, (CFG.GAME_HEIGHT - height) - height2);
        arrayList.add(new Empty(0, 0, width, Math.max(height4, height4)));
        initMenu(new AnonymousClass9(Game.lang.get("ChooseYourRivals") + ": " + Game.getCiv(Game.player.iCivID).diplomacy.rivals.size() + " / " + GameValues.rivals.RIVALS_LIMIT + " [" + i2 + "]", true, false, Images.title600), (CFG.GAME_WIDTH / 2) - (width / 2), height2, width, iMin, arrayList, false, true);
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
