package aoc.kingdoms.lukasz.menusInGame.Civ;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTechnology;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical_Data_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ_UnlockedTechnologies extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_UnlockedTechnologies$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UnlockedTechnologies") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + Game.getCiv(InGame_Civ.iActiveCivID).getResearchedTechnologies()), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_UnlockedTechnologies$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ResearchPerMonth") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).fResearchPerMonth, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_UnlockedTechnologies$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Civ_UnlockedAdvantages();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(InGame_Civ.iActiveCivID).getCivName() + ": " + Game.lang.get("CivilizationAdvantages"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.advantages, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_UnlockedTechnologies$4, reason: invalid class name */
    class AnonymousClass4 extends Graph_Vertical {
        AnonymousClass4(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_UnlockedTechnologies$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_UnlockedTechnologies.iSortID == 0) {
                InGame_Civ_UnlockedTechnologies.iSortID = 1;
            } else {
                InGame_Civ_UnlockedTechnologies.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Civ_UnlockedTechnologies();
            InGame_Civ_UnlockedTechnologies.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_UnlockedTechnologies$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlue {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_UnlockedTechnologies$7, reason: invalid class name */
    class AnonymousClass7 extends TextIcon2 {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ResearchCost") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.COLOR_TEXT_RESEARCH));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2
        public int getTextH() {
            return CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_UnlockedTechnologies$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonTechnology {
        AnonymousClass8(int i, int i2, int i3, int i4, boolean z, int i5) {
            super(i, i2, i3, i4, z, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonTechnology, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_UnlockedTechnologies$9, reason: invalid class name */
    class AnonymousClass9 extends MenuTitleIMG_FlagCenter {
        AnonymousClass9(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_Civ.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Civ_UnlockedTechnologies.lTime2;
        }
    }

    public InGame_Civ_UnlockedTechnologies() {
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i3 = CFG.PADDING * 2;
        int i4 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int i5 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
            InGame_Civ.iActiveCivID = Game.getProvince(Game.iActiveProvince).getCivID();
        } else if (InGame_Civ.iActiveCivID <= 0) {
            InGame_Civ.iActiveCivID = Game.player.iCivID;
        }
        int i6 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 4)) / 3.0f);
        arrayList.add(new AnonymousClass1(CFG.getNumberWithSpaces("" + Game.getCiv(InGame_Civ.iActiveCivID).getResearchedTechnologies()), Game_Calendar.IMG_TECHNOLOGY, i4, i3, i6, i5, ImageManager.getImage(Game_Calendar.IMG_TECHNOLOGY).getWidth(), 0));
        int width2 = i4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        float f = Game.getCiv(InGame_Civ.iActiveCivID).fResearchPerMonth;
        int i7 = i5;
        arrayList.add(new AnonymousClass2("" + CFG.getPrecision2(f, f < 10.0f ? 100 : f < 100.0f ? 10 : 1), Game_Calendar.IMG_TECHNOLOGY, width2, i3, i6, i7, ImageManager.getImage(Game_Calendar.IMG_TECHNOLOGY).getWidth(), 0));
        arrayList.add(new AnonymousClass3("" + Game.getCiv(InGame_Civ.iActiveCivID).iAdvantagesSize, Images.advantages, width2 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i3, i6, i7, ImageManager.getImage(Game_Calendar.IMG_TECHNOLOGY).getWidth(), 0));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + i3;
        int i8 = width - (i2 * 2);
        arrayList.add(new AnonymousClass4(Graph_Vertical_Data_Type.CIVS_UNLOCKED_TECHS, Game.lang.get("Civilizations"), Game.lang.get("Civilizations"), i2, height2, i8, CFG.BUTTON_HEIGHT * 3, true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i9 = Images.boxTitleBORDERWIDTH;
        int width3 = (i8 - CFG.PADDING) - ImageManager.getImage(Images.techGray).getWidth();
        int width4 = ((width - (Images.boxTitleBORDERWIDTH * 2)) - CFG.PADDING) - ImageManager.getImage(Images.techGray).getWidth();
        int i10 = iSortID;
        arrayList.add(new AnonymousClass5(i10 == 0 || i10 == 1, i10 == 1, Game.lang.get("ResearchCost"), -1, i9, height3, width4, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        arrayList.add(new AnonymousClass6(Game.lang.get("UnlockedTechnologies"), -1, i9 + arrayList.get(arrayList.size() - 1).getWidth(), height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - width4, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + height3;
        ArrayList arrayList2 = new ArrayList();
        try {
            int i11 = TechnologyTree.iTechnologySize;
            for (int i12 = 0; i12 < i11; i12++) {
                if (Game.getCiv(InGame_Civ.iActiveCivID).getTechResearched(i12)) {
                    arrayList2.add(Integer.valueOf(i12));
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        if (arrayList2.isEmpty()) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i2, height4, i8, CFG.BUTTON_HEIGHT2));
            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            while (arrayList2.size() > 0) {
                int i13 = iSortID;
                if (i13 == 0) {
                    i = 0;
                    for (int i14 = 1; i14 < arrayList2.size(); i14++) {
                        if (TechnologyTree.lTechnology.get(((Integer) arrayList2.get(i)).intValue()).getResearchCost() < TechnologyTree.lTechnology.get(((Integer) arrayList2.get(i14)).intValue()).getResearchCost()) {
                            i = i14;
                        }
                    }
                } else if (i13 == 1) {
                    i = 0;
                    for (int i15 = 1; i15 < arrayList2.size(); i15++) {
                        if (TechnologyTree.lTechnology.get(((Integer) arrayList2.get(i)).intValue()).getResearchCost() > TechnologyTree.lTechnology.get(((Integer) arrayList2.get(i15)).intValue()).getResearchCost()) {
                            i = i15;
                        }
                    }
                } else {
                    i = 0;
                }
                ArrayList arrayList3 = arrayList2;
                arrayList.add(new AnonymousClass7("" + CFG.getPrecision2(TechnologyTree.getResearchCost(((Integer) arrayList2.get(i)).intValue(), Game.player.iCivID), 10), Game_Calendar.IMG_TECHNOLOGY, i2, height4, width3, ImageManager.getImage(Images.techGray).getHeight()));
                arrayList.add(new AnonymousClass8(Images.techResearched, ((Integer) arrayList3.get(i)).intValue(), i2 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height4, false, Game.player.playerData.techQueue.getTechIsInQueue(((Integer) arrayList3.get(i)).intValue())));
                height4 += arrayList.get(arrayList.size() - 1).getHeight() + i3;
                arrayList3.remove(i);
                arrayList2 = arrayList3;
            }
        }
        int iMin = Math.min(height4, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height4, iMin)));
        initMenu(new AnonymousClass9(Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Game.lang.get("UnlockedTechnologies"), false, false, Images.title500), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
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
