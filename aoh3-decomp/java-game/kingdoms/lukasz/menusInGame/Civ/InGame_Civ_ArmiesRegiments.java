package aoc.kingdoms.lukasz.menusInGame.Civ;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
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
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsFlags;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ_ArmiesRegiments extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID = 6;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments$1, reason: invalid class name */
    class AnonymousClass1 extends PieChart_WithStatsFlags {
        AnonymousClass1(int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, MenuElement_Hover menuElement_Hover) {
            super(i, i2, i3, i4, pieChart_Data, menuElement_Hover);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
        protected float animationPerc() {
            return Math.min(1.0f, (CFG.currentTimeMillis - InGame_ProvinceInfo.lTime) / 150.0f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("MaximumManpower"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            for (int i = 0; i < this.pieChartData.getPieChartValuesSize() && i < 10; i++) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.pieChartData.getCivID(i)).getCivName() + ": ", "" + CFG.getPrecision2(this.pieChartData.getPieChartValue(i).getPercentage(), 5) + "%", this.pieChartData.getCivID(i), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsFlags, aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStats, aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
        protected void drawPieChart(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7) {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, (getPosX() - CFG.PADDING) + i, (getPosY() - CFG.PADDING) + i2, (CFG.PADDING * 2) + getWidth(), (CFG.PADDING * 2) + getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
            super.drawPieChart(spriteBatch, i, i2, z, z2, i3, i4, i5, i6, i7);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GraphPopulation.activeModeID = 7;
            Game.menuManager.rebuildInGame_GraphPopulation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.id).getCivName(), "", this.id, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RegimentsLimit") + ": ", getText(), Images.regimentsLimit, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG_ID {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.id).getCivName(), "", this.id, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", getText(), Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments$12, reason: invalid class name */
    class AnonymousClass12 extends MenuTitleIMG {
        AnonymousClass12(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Civ_ArmiesRegiments.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass2(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", this.sText2, Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_ArmiesRegiments.iSortID == 0) {
                InGame_Civ_ArmiesRegiments.iSortID = 1;
            } else {
                InGame_Civ_ArmiesRegiments.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Civ_Regiments();
            InGame_Civ_ArmiesRegiments.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_ArmiesRegiments.iSortID == 2) {
                InGame_Civ_ArmiesRegiments.iSortID = 3;
            } else {
                InGame_Civ_ArmiesRegiments.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_Civ_Regiments();
            InGame_Civ_ArmiesRegiments.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Discipline"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_ArmiesRegiments.iSortID == 4) {
                InGame_Civ_ArmiesRegiments.iSortID = 5;
            } else {
                InGame_Civ_ArmiesRegiments.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_Civ_Regiments();
            InGame_Civ_ArmiesRegiments.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_ArmiesRegiments.iSortID == 6) {
                InGame_Civ_ArmiesRegiments.iSortID = 7;
            } else {
                InGame_Civ_ArmiesRegiments.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_Civ_Regiments();
            InGame_Civ_ArmiesRegiments.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MaximumManpower"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_ID_FlagCiv {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.id).getCivName(), "", this.id, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Discipline") + ": ", getText(), Images.discipline, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public InGame_Civ_ArmiesRegiments() {
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
        int i9 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
        int i10 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i11 = Images.boxTitleBORDERWIDTH;
        int i12 = CFG.PADDING;
        int i13 = CFG.PADDING + i4;
        ArrayList arrayList3 = new ArrayList();
        PieChart_Data pieChart_Data = new PieChart_Data();
        double d = 0.0d;
        int i14 = 0;
        while (i14 < Game.getCivsSize()) {
            if (Game.getCiv(i14).getNumOfProvinces() > 0) {
                arrayList3.add(Integer.valueOf(i14));
                i2 = i10;
                i3 = i9;
                pieChart_Data.addPieChartValues(new PieChart_Value(i14, (int) Game.getCiv(i14).fManpowerMax));
                if (Game.getCiv(i14).fManpowerMax > d) {
                    d = Game.getCiv(i14).fManpowerMax;
                }
            } else {
                i2 = i10;
                i3 = i9;
            }
            i14++;
            i9 = i3;
            i10 = i2;
        }
        int i15 = i10;
        int i16 = i9;
        int i17 = (i8 * 2) + CFG.PADDING;
        arrayList2.add(new AnonymousClass1(i13, i5 + CFG.PADDING, i17 - (CFG.PADDING * 2), i17 - (CFG.PADDING * 2), pieChart_Data, null));
        int width2 = arrayList2.get(arrayList2.size() - 1).getWidth() + (CFG.PADDING * 2) + i13;
        int i18 = (width - i4) - width2;
        ArrayList arrayList4 = arrayList3;
        int i19 = 1;
        arrayList2.add(new AnonymousClass2(Game.lang.get("Civilizations") + ": ", "" + arrayList3.size(), Images.council, width2, i5, i18, i8, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height2 = i5 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        arrayList2.add(new AnonymousClass3(Game.lang.get("MaximumManpower") + ": ", "" + CFG.getNumberWithSpaces("" + ((int) d)), Game_Calendar.IMG_MANPOWER, width2, height2, i18, i8, ImageManager.getImage(Images.battleWidth).getWidth()));
        int height3 = height2 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i20 = Images.boxTitleBORDERWIDTH;
        int i21 = iSortID;
        int i22 = 6;
        arrayList2.add(new AnonymousClass4(i21 == 0 || i21 == 1, i21 == 1, Game.lang.get("Name"), -1, i20, height3, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = i20 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i23 = iSortID;
        int i24 = 3;
        arrayList2.add(new AnonymousClass5(i23 == 2 || i23 == 3, i23 == 3, Game.lang.get("Discipline"), -1, width3, height3, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i25 = iSortID;
        int i26 = 4;
        int i27 = 5;
        arrayList2.add(new AnonymousClass6(i25 == 4 || i25 == 5, i25 == 5, Game.lang.get("RegimentsLimit"), -1, width4, height3, i15, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = width4 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i28 = iSortID;
        int i29 = 7;
        arrayList2.add(new AnonymousClass7(i28 == 6 || i28 == 7, i28 == 7, Game.lang.get("MaximumManpower"), -1, width5, height3, i15, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = height3 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i30 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
        int i31 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
        while (!arrayList4.isEmpty()) {
            int i32 = iSortID;
            if (i32 == 0) {
                int i33 = i19;
                i = 0;
                while (true) {
                    arrayList = arrayList4;
                    if (i33 < arrayList4.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i33)).intValue()).getCivName())) {
                            i = i33;
                        }
                        i33++;
                        arrayList4 = arrayList;
                    }
                }
            } else {
                arrayList = arrayList4;
                if (i32 == i19) {
                    i = 0;
                    for (int i34 = i19; i34 < arrayList.size(); i34++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i34)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i)).intValue()).getCivName())) {
                            i = i34;
                        }
                    }
                } else if (i32 == 2) {
                    i = 0;
                    for (int i35 = i19; i35 < arrayList.size(); i35++) {
                        if (Game.getCiv(((Integer) arrayList.get(i)).intValue()).civBonuses.Discipline < Game.getCiv(((Integer) arrayList.get(i35)).intValue()).civBonuses.Discipline) {
                            i = i35;
                        }
                    }
                } else if (i32 == i24) {
                    i = 0;
                    for (int i36 = i19; i36 < arrayList.size(); i36++) {
                        if (Game.getCiv(((Integer) arrayList.get(i)).intValue()).civBonuses.Discipline > Game.getCiv(((Integer) arrayList.get(i36)).intValue()).civBonuses.Discipline) {
                            i = i36;
                        }
                    }
                } else if (i32 == i26) {
                    i = 0;
                    for (int i37 = i19; i37 < arrayList.size(); i37++) {
                        if (Game.getCiv(((Integer) arrayList.get(i)).intValue()).iRegimentsLimit < Game.getCiv(((Integer) arrayList.get(i37)).intValue()).iRegimentsLimit) {
                            i = i37;
                        }
                    }
                } else if (i32 == i27) {
                    i = 0;
                    for (int i38 = i19; i38 < arrayList.size(); i38++) {
                        if (Game.getCiv(((Integer) arrayList.get(i)).intValue()).iRegimentsLimit > Game.getCiv(((Integer) arrayList.get(i38)).intValue()).iRegimentsLimit) {
                            i = i38;
                        }
                    }
                } else if (i32 == i22) {
                    i = 0;
                    for (int i39 = i19; i39 < arrayList.size(); i39++) {
                        if (Game.getCiv(((Integer) arrayList.get(i)).intValue()).fManpowerMax < Game.getCiv(((Integer) arrayList.get(i39)).intValue()).fManpowerMax) {
                            i = i39;
                        }
                    }
                } else if (i32 == i29) {
                    int i40 = 0;
                    for (int i41 = i19; i41 < arrayList.size(); i41++) {
                        if (Game.getCiv(((Integer) arrayList.get(i40)).intValue()).fManpowerMax > Game.getCiv(((Integer) arrayList.get(i41)).intValue()).fManpowerMax) {
                            i40 = i41;
                        }
                    }
                    i = i40;
                } else {
                    i = 0;
                }
            }
            ArrayList arrayList5 = arrayList;
            arrayList2.add(new AnonymousClass8(Game.getCiv(((Integer) arrayList.get(i)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i4, height4, i30, i8, ((Integer) arrayList.get(i)).intValue()));
            int width6 = i4 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
            int i42 = height4;
            arrayList2.add(new AnonymousClass9("" + CFG.getPrecision2(Game.getCiv(((Integer) arrayList5.get(i)).intValue()).civBonuses.Discipline * 100.0f, 100) + "%", CFG.FONT_REGULAR_SMALL, -1, width6, i42, i30, i8, ((Integer) arrayList5.get(i)).intValue()));
            int width7 = width6 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
            arrayList2.add(new AnonymousClass10("" + CFG.getNumberWithSpaces("" + Game.getCiv(((Integer) arrayList5.get(i)).intValue()).iRegimentsLimit), CFG.FONT_REGULAR_SMALL, -1, width7, i42, i31, i8, ((Integer) arrayList5.get(i)).intValue()));
            arrayList2.add(new AnonymousClass11("" + CFG.getNumberWithSpaces("" + ((int) Game.getCiv(((Integer) arrayList5.get(i)).intValue()).fManpowerMax)), CFG.FONT_REGULAR_SMALL, -1, width7 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING, i42, i31, i8, ((Integer) arrayList5.get(i)).intValue()));
            height4 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
            arrayList5.remove(i);
            arrayList4 = arrayList5;
            i19 = 1;
            i26 = 4;
            i29 = i29;
            i27 = 5;
            i24 = 3;
            i22 = i22;
        }
        int iMin = Math.min(height4, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList2.add(new Empty(0, 0, width, Math.max(height4, iMin)));
        initMenu(new AnonymousClass12(Game.lang.get("Armies"), false, false, Images.title500), otherMenuPosX_2, height, width, iMin, arrayList2, false, true);
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
