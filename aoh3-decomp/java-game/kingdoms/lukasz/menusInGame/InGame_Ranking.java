package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank_Ranking;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_EconomyRanking;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_Religion;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Compare;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Ranking extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID = 0;
    public static long lTime = 0;
    public static long lTime2 = 0;
    public static String sSearch = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Ranking$1, reason: invalid class name */
    class AnonymousClass1 extends Text_StaticBG_Write {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SEARCH_RANKING, InGame_Ranking.sSearch);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return InGame_Ranking.sSearch + Keyboard.getKeyboardVerticalLine();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Ranking$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_EconomyRanking {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.iActiveCivID = this.id;
            InGame_Civ_Economy.goBackToRank = true;
            Game.menuManager.rebuildInGame_Civ_Economy();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_GraphPopulation.activeModeID = 1;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Ranking$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG_ID {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ.iActiveCivID = this.id;
            InGame_Civ_Population.goBackToRank = true;
            Game.menuManager.rebuildInGame_Civ_Population();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            InGame_GraphPopulation.activeModeID = 0;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(this.id).getCivName() + ": " + Game.lang.get("Population"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(this.id).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Ranking") + ": ", "#" + InGame_Civ.getRankPopulation(this.id) + " / " + InGame_Civ.getRankCivsWithProvinces(this.id), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(this.id), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GrowthRate") + ", " + Game.lang.get("Average") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getCiv(this.id).getAverageGrowthRate(), 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.COLOR_POPULATION;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Ranking$12, reason: invalid class name */
    class AnonymousClass12 extends MenuTitleIMG {
        AnonymousClass12(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Ranking.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Ranking$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlueSort {
        AnonymousClass2(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Ranking.iSortID == 0) {
                InGame_Ranking.iSortID = 1;
            } else {
                InGame_Ranking.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            InGame_Ranking.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Ranking$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Ranking.iSortID == 2) {
                InGame_Ranking.iSortID = 3;
            } else {
                InGame_Ranking.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            InGame_Ranking.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(TGqtTWl.bgMayyYaxVhH) + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Name"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Ranking$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Ranking.iSortID == 4) {
                InGame_Ranking.iSortID = 5;
            } else {
                InGame_Ranking.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            InGame_Ranking.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(aBEBOpwLZcQFCZ.hHSXNJFLI), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Ranking$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Ranking.iSortID == 6) {
                InGame_Ranking.iSortID = 7;
            } else {
                InGame_Ranking.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            InGame_Ranking.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Ranking$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Ranking.iSortID == 8) {
                InGame_Ranking.iSortID = 9;
            } else {
                InGame_Ranking.iSortID = 8;
            }
            Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            InGame_Ranking.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(MQYGMkZOAcS.LRmx), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Ranking$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRectIMG_Rank_Ranking {
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
            int i = InGame_Civ_Compare.civLeft_Rank;
            String str = HjHDSSkYG.psWKALn;
            if (i > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get(str) + ": ", Game.getCiv(InGame_Civ_Compare.civLeft_Rank).getCivName(), InGame_Civ_Compare.civLeft_Rank, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get(str) + ": ", "--", 0, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get(str) + ": ", "--", 0, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get(str) + ": ", cIUGJCqyPXfp.ubrlHplpCtTaPXS, 0, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
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

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank_Ranking, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank, aoc.kingdoms.lukasz.menu_element.button.Button
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Ranking$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_ID_FlagCiv_Religion {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Ranking$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID_Special {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GraphPopulation.activeModeID = 6;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = CivilizationRanking.getHover_CivilizationRanking(getCurrent(), false, false);
        }
    }

    public InGame_Ranking() {
        int i;
        int i2;
        int i3;
        int i4;
        ArrayList arrayList = new ArrayList();
        int i5 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.title600).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i6 = CFG.PADDING;
        int i7 = Images.boxTitleBORDERWIDTH;
        int i8 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.15f);
        int i9 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.4f);
        int i10 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.15f);
        int i11 = Images.boxTitleBORDERWIDTH;
        int i12 = CFG.PADDING;
        int i13 = CFG.BUTTON_HEIGHT3;
        int i14 = ((width - (i5 * 2)) - CFG.PADDING) / 2;
        arrayList.add(new AnonymousClass1(Game.lang.get("Search") + ": ", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i5, i6, i14, i13));
        int i15 = 0;
        for (int i16 = 0; i16 < Game.getCivsSize(); i16++) {
            if (Game.getCiv(i16).getNumOfProvinces() > 0) {
                i15++;
            }
        }
        arrayList.add(new ButtonStatsRectIMG_Bonuses_Style(Game.lang.get("Civilizations") + ": ", "" + i15, Images.council, i5 + i14 + CFG.PADDING, i6, i14, i13, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height2 = i6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i17 = Images.boxTitleBORDERWIDTH;
        int i18 = iSortID;
        arrayList.add(new AnonymousClass2(i18 == 0 || i18 == 1, i18 == 1, Game.lang.get("Ranking"), -1, i17, height2, i8, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i17 + arrayList.get(arrayList.size() - 1).getWidth();
        int i19 = iSortID;
        arrayList.add(new AnonymousClass3(i19 == 2 || i19 == 3, i19 == 3, Game.lang.get("Name"), -1, width2, height2, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i20 = iSortID;
        arrayList.add(new AnonymousClass4(i20 == 4 || i20 == 5, i20 == 5, Game.lang.get("Prestige"), -1, width3, height2, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i21 = iSortID;
        arrayList.add(new AnonymousClass5(i21 == 6 || i21 == 7, i21 == 7, Game.lang.get("Economy"), -1, width4, height2, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = width4 + arrayList.get(arrayList.size() - 1).getWidth();
        int i22 = iSortID;
        arrayList.add(new AnonymousClass6(i22 == 8 || i22 == 9, i22 == 9, Game.lang.get("Population"), -1, width5, height2, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i23 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.15f);
        int i24 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.4f);
        int i25 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.15f);
        int i26 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        if (sSearch.length() > 0) {
            String lowerCase = sSearch.toLowerCase();
            for (int i27 = 1; i27 < Game.getCivsSize(); i27++) {
                if (Game.getCiv(i27).getNumOfProvinces() > 0 && Game.getCiv(i27).iCivRankPosition >= 0 && Game.getCiv(i27).getCivName().toLowerCase().indexOf(lowerCase) != -1) {
                    arrayList2.add(Integer.valueOf(i27));
                    arrayList3.add(Float.valueOf(Game.getCiv(i27).getEconomyTotal()));
                    arrayList4.add(Long.valueOf(Game.getCiv(i27).getPopulationTotal()));
                }
            }
        } else {
            for (int i28 = 1; i28 < Game.getCivsSize(); i28++) {
                if (Game.getCiv(i28).getNumOfProvinces() > 0 && Game.getCiv(i28).iCivRankPosition >= 0) {
                    arrayList2.add(Integer.valueOf(i28));
                    arrayList3.add(Float.valueOf(Game.getCiv(i28).getEconomyTotal()));
                    arrayList4.add(Long.valueOf(Game.getCiv(i28).getPopulationTotal()));
                }
            }
        }
        while (arrayList2.size() > 0) {
            int i29 = iSortID;
            if (i29 == 0) {
                i4 = 0;
                for (int i30 = 1; i30 < arrayList2.size(); i30++) {
                    if (Game.getCiv(((Integer) arrayList2.get(i4)).intValue()).iCivRankPosition > Game.getCiv(((Integer) arrayList2.get(i30)).intValue()).iCivRankPosition) {
                        i4 = i30;
                    }
                }
            } else if (i29 == 1) {
                i4 = 0;
                for (int i31 = 1; i31 < arrayList2.size(); i31++) {
                    if (Game.getCiv(((Integer) arrayList2.get(i4)).intValue()).iCivRankPosition < Game.getCiv(((Integer) arrayList2.get(i31)).intValue()).iCivRankPosition) {
                        i4 = i31;
                    }
                }
            } else if (i29 == 2) {
                i4 = 0;
                for (int i32 = 1; i32 < arrayList2.size(); i32++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i4)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i32)).intValue()).getCivName())) {
                        i4 = i32;
                    }
                }
            } else {
                if (i29 == 3) {
                    i4 = 0;
                    for (int i33 = 1; i33 < arrayList2.size(); i33++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList2.get(i33)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList2.get(i4)).intValue()).getCivName())) {
                            i4 = i33;
                        }
                    }
                } else {
                    if (i29 == 4) {
                        i3 = 0;
                        for (int i34 = 1; i34 < arrayList2.size(); i34++) {
                            if (Game.getCiv(((Integer) arrayList2.get(i3)).intValue()).iCivRankScore < Game.getCiv(((Integer) arrayList2.get(i34)).intValue()).iCivRankScore) {
                                i3 = i34;
                            }
                        }
                    } else if (i29 == 5) {
                        i3 = 0;
                        for (int i35 = 1; i35 < arrayList2.size(); i35++) {
                            if (Game.getCiv(((Integer) arrayList2.get(i3)).intValue()).iCivRankScore > Game.getCiv(((Integer) arrayList2.get(i35)).intValue()).iCivRankScore) {
                                i3 = i35;
                            }
                        }
                    } else if (i29 == 6) {
                        int i36 = 0;
                        for (int i37 = 1; i37 < arrayList2.size(); i37++) {
                            if (((Float) arrayList3.get(i36)).floatValue() < ((Float) arrayList3.get(i37)).floatValue()) {
                                i36 = i37;
                            }
                        }
                        i = i36;
                    } else {
                        if (i29 == 7) {
                            i2 = 0;
                            for (int i38 = 1; i38 < arrayList2.size(); i38++) {
                                if (((Float) arrayList3.get(i2)).floatValue() > ((Float) arrayList3.get(i38)).floatValue()) {
                                    i2 = i38;
                                }
                            }
                        } else if (i29 == 8) {
                            i2 = 0;
                            for (int i39 = 1; i39 < arrayList2.size(); i39++) {
                                if (((Long) arrayList4.get(i2)).longValue() < ((Long) arrayList4.get(i39)).longValue()) {
                                    i2 = i39;
                                }
                            }
                        } else if (i29 == 9) {
                            i2 = 0;
                            for (int i40 = 1; i40 < arrayList2.size(); i40++) {
                                if (((Long) arrayList4.get(i2)).longValue() > ((Long) arrayList4.get(i40)).longValue()) {
                                    i2 = i40;
                                }
                            }
                        } else {
                            i = 0;
                        }
                        i = i2;
                    }
                    i = i3;
                }
                int i41 = i25;
                int i42 = i24;
                int i43 = width;
                ArrayList arrayList5 = arrayList2;
                int i44 = height;
                int i45 = height3;
                int i46 = height3;
                int i47 = i;
                int i48 = i23;
                int i49 = i23;
                ArrayList arrayList6 = arrayList4;
                arrayList.add(new AnonymousClass7("" + Game.getCiv(((Integer) arrayList2.get(i)).intValue()).iCivRankPosition, CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(((Integer) arrayList2.get(i)).intValue()), i5, i45, i48, i26, ImageManager.getImage(Images.rankGold).getWidth()));
                arrayList.get(arrayList.size() - 1).setCurrent(((Integer) arrayList5.get(i47)).intValue());
                int width6 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i5;
                arrayList.add(new AnonymousClass8("" + Game.getCiv(((Integer) arrayList5.get(i47)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width6, i46, i42, i26, ((Integer) arrayList5.get(i47)).intValue()));
                int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass9("" + CFG.getPrecision2(Game.getCiv(((Integer) arrayList5.get(i47)).intValue()).iCivRankScore, 1), CFG.FONT_REGULAR_SMALL, -1, width7, i46, i41, i26, ((Integer) arrayList5.get(i47)).intValue()));
                int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList3 = arrayList3;
                arrayList.add(new AnonymousClass10("" + CFG.getNumberWithSpaces("" + CFG.getPrecision2(((Float) arrayList3.get(i47)).floatValue(), 1)), CFG.FONT_REGULAR_SMALL, -1, width8, i46, i41, i26, ((Integer) arrayList5.get(i47)).intValue()));
                arrayList.add(new AnonymousClass11("" + CFG.getShortNumber(((Long) arrayList6.get(i47)).longValue()), CFG.FONT_REGULAR_SMALL, -1, width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i46, i41, i26, ((Integer) arrayList5.get(i47)).intValue()));
                arrayList.get(arrayList.size() - 1).getWidth();
                int i50 = CFG.PADDING;
                int height4 = i46 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList5.remove(i47);
                arrayList3.remove(i47);
                arrayList6.remove(i47);
                height3 = height4;
                arrayList2 = arrayList5;
                arrayList4 = arrayList6;
                i25 = i41;
                i24 = i42;
                width = i43;
                height = i44;
                i23 = i49;
            }
            i = i4;
            int i410 = i25;
            int i411 = i24;
            int i412 = width;
            ArrayList arrayList7 = arrayList2;
            int i413 = height;
            int i414 = height3;
            int i415 = height3;
            int i416 = i;
            int i417 = i23;
            int i418 = i23;
            ArrayList arrayList8 = arrayList4;
            arrayList.add(new AnonymousClass7("" + Game.getCiv(((Integer) arrayList2.get(i)).intValue()).iCivRankPosition, CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(((Integer) arrayList2.get(i)).intValue()), i5, i414, i417, i26, ImageManager.getImage(Images.rankGold).getWidth()));
            arrayList.get(arrayList.size() - 1).setCurrent(((Integer) arrayList7.get(i416)).intValue());
            int width9 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i5;
            arrayList.add(new AnonymousClass8("" + Game.getCiv(((Integer) arrayList7.get(i416)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width9, i415, i411, i26, ((Integer) arrayList7.get(i416)).intValue()));
            int width10 = width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass9("" + CFG.getPrecision2(Game.getCiv(((Integer) arrayList7.get(i416)).intValue()).iCivRankScore, 1), CFG.FONT_REGULAR_SMALL, -1, width10, i415, i410, i26, ((Integer) arrayList7.get(i416)).intValue()));
            int width11 = width10 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList3 = arrayList3;
            arrayList.add(new AnonymousClass10("" + CFG.getNumberWithSpaces("" + CFG.getPrecision2(((Float) arrayList3.get(i416)).floatValue(), 1)), CFG.FONT_REGULAR_SMALL, -1, width11, i415, i410, i26, ((Integer) arrayList7.get(i416)).intValue()));
            arrayList.add(new AnonymousClass11("" + CFG.getShortNumber(((Long) arrayList8.get(i416)).longValue()), CFG.FONT_REGULAR_SMALL, -1, width11 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i415, i410, i26, ((Integer) arrayList7.get(i416)).intValue()));
            arrayList.get(arrayList.size() - 1).getWidth();
            int i51 = CFG.PADDING;
            int height5 = i415 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList7.remove(i416);
            arrayList3.remove(i416);
            arrayList8.remove(i416);
            height3 = height5;
            arrayList2 = arrayList7;
            arrayList4 = arrayList8;
            i25 = i410;
            i24 = i411;
            width = i412;
            height = i413;
            i23 = i418;
        }
        int i52 = height;
        int i53 = width;
        int size = arrayList.size();
        int posY = 0;
        for (int i54 = 0; i54 < size; i54++) {
            if (posY < arrayList.get(i54).getPosY() + arrayList.get(i54).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i54).getPosY() + arrayList.get(i54).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - i52) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, i53, Math.max(posY, iMin)));
        initMenu(new AnonymousClass12(Game.lang.get(SwmJtrccN.qgsGYSmeQc), false, false, Images.title600), otherMenuPosX_2, i52, i53, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop600, Images.insideBot600);
        ImageManager.getImage(Images.goodsOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.goodsOver).getWidth() / 2)) + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.goodsOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
    }
}
