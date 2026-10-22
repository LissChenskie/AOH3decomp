package aoc.kingdoms.lukasz.menusInGame.Civ;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Resource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsResources;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.InGame_Ranking;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ_Economy extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static boolean goBackToRank = false;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$1, reason: invalid class name */
    class AnonymousClass1 extends PieChart_Data {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data
        public float getPieChartValue_ColorB(int i) {
            return ResourcesManager.lResources.get(getPieChartValue(i).getDataID()).Color[2];
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data
        public float getPieChartValue_ColorG(int i) {
            return ResourcesManager.lResources.get(getPieChartValue(i).getDataID()).Color[1];
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data
        public float getPieChartValue_ColorR(int i) {
            return ResourcesManager.lResources.get(getPieChartValue(i).getDataID()).Color[0];
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$10, reason: invalid class name */
    class AnonymousClass10 extends Text_TitleBlueSort {
        AnonymousClass10(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Economy.iSortID == 8) {
                InGame_Civ_Economy.iSortID = 9;
            } else {
                InGame_Civ_Economy.iSortID = 8;
            }
            Game.menuManager.rebuildInGame_Civ_Economy();
            InGame_Civ_Economy.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("IncomeProduction"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG_ID {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvince(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$12, reason: invalid class name */
    class AnonymousClass12 extends Text_StaticBG_ID {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverEconomy(getCurrent(), false, false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$13, reason: invalid class name */
    class AnonymousClass13 extends Text_StaticBG_ID {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverEconomy(getCurrent(), false, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
            }
            return getIsHovered() ? Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER : Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonStatsRectIMG_Resource {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverResource(getCurrent(), getValue1(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$15, reason: invalid class name */
    class AnonymousClass15 extends Text_StaticBG_ID {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverResource(getCurrent(), Game.getProvince(getCurrent()).getResourceID(), false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
            }
            return getIsHovered() ? Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER : Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$16, reason: invalid class name */
    class AnonymousClass16 extends MenuTitleIMG_FlagCenter {
        AnonymousClass16(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_Civ.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Civ_Economy.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$2, reason: invalid class name */
    class AnonymousClass2 extends PieChart_WithStatsResources {
        AnonymousClass2(int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, MenuElement_Hover menuElement_Hover) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(InGame_Civ.iActiveCivID).getCivName() + ": ", Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("ProducedGoods"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            for (int i = 0; i < this.pieChartData.getPieChartValuesSize() && i < 10; i++) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(ResourcesManager.getResourceName(this.pieChartData.getCivID(i)) + ": ", CFG.getPrecision2(this.pieChartData.getPieChartValue(i).getPercentage(), 10) + "%", this.pieChartData.getCivID(i), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsResources, aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStats, aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
        protected void drawPieChart(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7) {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, (getPosX() - CFG.PADDING) + i, (getPosY() - CFG.PADDING) + i2, (CFG.PADDING * 2) + getWidth(), (CFG.PADDING * 2) + getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
            super.drawPieChart(spriteBatch, i, i2, z, z2, i3, i4, i5, i6, i7);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!InGame_Civ_Economy.goBackToRank) {
                Game.menuManager.rebuildInGame_Civ();
            } else {
                InGame_Ranking.sSearch = "";
                Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (InGame_Civ_Economy.goBackToRank) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Ranking"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.rank, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(cIUGJCqyPXfp.imGadda), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces()), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).getEconomyTotal(), 100), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_ECONOMY;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!InGame_Civ_Economy.goBackToRank) {
                Game.menuManager.rebuildInGame_Civ();
            } else {
                InGame_Ranking.sSearch = "";
                Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (InGame_Civ_Economy.goBackToRank) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Ranking"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.rank, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces()), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncomeEconomy") + ": ", CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).getTotalIncomeFromEconomy(), 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!InGame_Civ_Economy.goBackToRank) {
                Game.menuManager.rebuildInGame_Civ();
            } else {
                InGame_Ranking.sSearch = "";
                Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (InGame_Civ_Economy.goBackToRank) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Ranking"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.rank, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OpenTheDiplomacyView"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.diplomacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeProduction") + ": ", CFG.getPrecision2(Game.getCiv(InGame_Civ.iActiveCivID).getTotalIncomeFromProduction(), 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Economy.iSortID == 0) {
                InGame_Civ_Economy.iSortID = 1;
            } else {
                InGame_Civ_Economy.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Civ_Economy();
            InGame_Civ_Economy.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Economy.iSortID == 2) {
                InGame_Civ_Economy.iSortID = 3;
            } else {
                InGame_Civ_Economy.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_Civ_Economy();
            InGame_Civ_Economy.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(nEtnPpUF.nghbYQvRQ) + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Economy"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Economy.iSortID == 4) {
                InGame_Civ_Economy.iSortID = 5;
            } else {
                InGame_Civ_Economy.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_Civ_Economy();
            InGame_Civ_Economy.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MonthlyIncomeEconomy"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy$9, reason: invalid class name */
    class AnonymousClass9 extends Text_TitleBlueSort {
        AnonymousClass9(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_Economy.iSortID == 6) {
                InGame_Civ_Economy.iSortID = 7;
            } else {
                InGame_Civ_Economy.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_Civ_Economy();
            InGame_Civ_Economy.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Resource"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:206:0x07bf  */
    /* JADX WARN: Code duplicated, block: B:207:0x07c2  */
    /* JADX WARN: Code duplicated, block: B:209:0x07c6  */
    /* JADX WARN: Code duplicated, block: B:210:0x07c9  */
    /* JADX WARN: Code duplicated, block: B:213:0x0822  */
    /* JADX WARN: Code duplicated, block: B:214:0x0825  */
    /* JADX WARN: Code duplicated, block: B:216:0x0829  */
    /* JADX WARN: Code duplicated, block: B:217:0x082c  */
    /* JADX WARN: Code duplicated, block: B:220:0x0880  */
    /* JADX WARN: Code duplicated, block: B:221:0x08d0  */
    /* JADX WARN: Code duplicated, block: B:224:0x091a  */
    /* JADX WARN: Code duplicated, block: B:225:0x091d  */
    /* JADX WARN: Code duplicated, block: B:227:0x0921  */
    /* JADX WARN: Code duplicated, block: B:228:0x0924  */
    public InGame_Civ_Economy() {
        char c;
        int i;
        int i2;
        int i3;
        ArrayList arrayList;
        int i4;
        int i5;
        float economyWithBonuses;
        int i6;
        float incomeFromEconomy;
        int i7;
        int width;
        float monthlyIncome;
        int i8;
        ArrayList arrayList2 = new ArrayList();
        int i9 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width2 = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i10 = CFG.PADDING * 2;
        int i11 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int i12 = CFG.BUTTON_HEIGHT3;
        if (goBackToRank) {
            if (InGame_Civ.iActiveCivID <= 0) {
                InGame_Civ.iActiveCivID = Game.player.iCivID;
            }
        } else if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
            InGame_Civ.iActiveCivID = Game.getProvince(Game.iActiveProvince).getCivID();
        } else if (InGame_Civ.iActiveCivID <= 0) {
            InGame_Civ.iActiveCivID = Game.player.iCivID;
        }
        int i13 = (int) ((width2 - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i14 = (int) ((width2 - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i15 = Images.boxTitleBORDERWIDTH;
        int i16 = CFG.PADDING;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        int i17 = 0;
        while (true) {
            boolean z = true;
            if (i17 >= Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces()) {
                break;
            }
            if (Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i17)).getResourceID() >= 0) {
                int size = arrayList3.size() - 1;
                while (true) {
                    if (size < 0) {
                        z = false;
                        break;
                    } else {
                        if (((Integer) arrayList3.get(size)).intValue() == Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i17)).getResourceID()) {
                            arrayList4.set(size, Float.valueOf(((Float) arrayList4.get(size)).floatValue() + ResourcesManager.getProducedGoods(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i17))));
                            break;
                        }
                        size--;
                    }
                }
                if (!z) {
                    arrayList3.add(Integer.valueOf(Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i17)).getResourceID()));
                    arrayList4.add(Float.valueOf(ResourcesManager.getProducedGoods(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i17))));
                }
            }
            i17++;
        }
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            if (((Float) arrayList4.get(size2)).floatValue() > 0.001f) {
                anonymousClass1.addPieChartValues(new PieChart_Value(((Integer) arrayList3.get(size2)).intValue(), ((Float) arrayList4.get(size2)).floatValue()));
            }
        }
        int i18 = (CFG.BUTTON_HEIGHT3 * 3) + (CFG.PADDING * 2);
        arrayList2.add(new AnonymousClass2(i11, i10 + CFG.PADDING, i18 - (CFG.PADDING * 2), i18 - (CFG.PADDING * 2), anonymousClass1, null));
        int posX = arrayList2.get(arrayList2.size() - 1).getPosX() + arrayList2.get(arrayList2.size() - 1).getWidth() + (CFG.PADDING * 2);
        int i19 = (width2 - i9) - posX;
        int height2 = i10 + arrayList2.get(arrayList2.size() - 1).getHeight() + (CFG.PADDING * 3);
        float economyTotal = Game.getCiv(InGame_Civ.iActiveCivID).getEconomyTotal();
        int i20 = 3;
        arrayList2.add(new AnonymousClass3(Game.lang.get("Economy") + ": ", "" + CFG.getPrecision2(economyTotal, economyTotal < 10.0f ? 100 : economyTotal < 100.0f ? 10 : 1), Game_Calendar.IMG_ECONOMY, posX, i10, i19, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Game_Calendar.IMG_ECONOMY).getWidth() + (CFG.PADDING * 2)));
        int height3 = i10 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        float totalIncomeFromEconomy = Game.getCiv(InGame_Civ.iActiveCivID).getTotalIncomeFromEconomy();
        arrayList2.add(new AnonymousClass4("" + CFG.getPrecision2(totalIncomeFromEconomy, totalIncomeFromEconomy < 10.0f ? 100 : totalIncomeFromEconomy < 100.0f ? 10 : 1), Images.gold, posX, height3, i19, i12, ImageManager.getImage(Images.gold).getWidth(), 0));
        int height4 = height3 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        float totalIncomeFromProduction = Game.getCiv(InGame_Civ.iActiveCivID).getTotalIncomeFromProduction();
        arrayList2.add(new AnonymousClass5("" + CFG.getPrecision2(totalIncomeFromProduction, totalIncomeFromProduction < 10.0f ? 100 : totalIncomeFromProduction < 100.0f ? 10 : 1), Images.goods, posX, height4, i19, i12, ImageManager.getImage(Images.goods).getWidth(), 0));
        int i21 = Images.boxTitleBORDERWIDTH;
        int i22 = iSortID;
        char c2 = 6;
        arrayList2.add(new AnonymousClass6(i22 == 0 || i22 == 1, i22 == 1, Game.lang.get("Name"), -1, i21, height2, i13, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = i21 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i23 = iSortID;
        String str = "Economy";
        arrayList2.add(new AnonymousClass7(i23 == 2 || i23 == 3, i23 == 3, Game.lang.get(str), -1, width3, height2, i13, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i24 = iSortID;
        int i25 = 4;
        int i26 = 5;
        arrayList2.add(new AnonymousClass8(i24 == 4 || i24 == 5, i24 == 5, Game.lang.get("Income"), -1, width4, height2, i14, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = width4 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i27 = iSortID;
        arrayList2.add(new AnonymousClass9(i27 == 6 || i27 == 7, i27 == 7, Game.lang.get("Resource"), -1, width5, height2, i14, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width6 = width5 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i28 = iSortID;
        arrayList2.add(new AnonymousClass10(i28 == 8 || i28 == 9, i28 == 9, Game.lang.get("IncomeProduction"), -1, width6, height2, i14, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height5 = height2 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i29 = (int) (((width2 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.2f);
        int i30 = (int) (((width2 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.2f);
        ArrayList arrayList5 = new ArrayList();
        for (int i31 = 0; i31 < Game.getCiv(InGame_Civ.iActiveCivID).getNumOfProvinces(); i31++) {
            if (!Game.getProvince(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i31)).isOccupied()) {
                arrayList5.add(Integer.valueOf(Game.getCiv(InGame_Civ.iActiveCivID).getProvinceID(i31)));
            }
        }
        int height6 = height5;
        while (arrayList5.size() > 0) {
            int i32 = iSortID;
            if (i32 == 0) {
                int i33 = 1;
                i2 = 0;
                while (i33 < arrayList5.size()) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList5.get(i2)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList5.get(i33)).intValue()).getProvinceName())) {
                        i2 = i33;
                    }
                    i33++;
                    c2 = 6;
                }
            } else {
                if (i32 == 1) {
                    i3 = 0;
                    for (int i34 = 1; i34 < arrayList5.size(); i34++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList5.get(i34)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList5.get(i3)).intValue()).getProvinceName())) {
                            i3 = i34;
                        }
                    }
                } else if (i32 == 2) {
                    i3 = 0;
                    for (int i35 = 1; i35 < arrayList5.size(); i35++) {
                        if (Game.getProvince(((Integer) arrayList5.get(i3)).intValue()).getEconomyWithBonuses() < Game.getProvince(((Integer) arrayList5.get(i35)).intValue()).getEconomyWithBonuses()) {
                            i3 = i35;
                        }
                    }
                } else if (i32 == i20) {
                    i3 = 0;
                    for (int i36 = 1; i36 < arrayList5.size(); i36++) {
                        if (Game.getProvince(((Integer) arrayList5.get(i3)).intValue()).getEconomyWithBonuses() > Game.getProvince(((Integer) arrayList5.get(i36)).intValue()).getEconomyWithBonuses()) {
                            i3 = i36;
                        }
                    }
                } else if (i32 == i25) {
                    i3 = 0;
                    for (int i37 = 1; i37 < arrayList5.size(); i37++) {
                        if (Game.getIncomeFromEconomy(((Integer) arrayList5.get(i3)).intValue()) < Game.getIncomeFromEconomy(((Integer) arrayList5.get(i37)).intValue())) {
                            i3 = i37;
                        }
                    }
                } else {
                    if (i32 == i26) {
                        i3 = 0;
                        for (int i38 = 1; i38 < arrayList5.size(); i38++) {
                            if (Game.getIncomeFromEconomy(((Integer) arrayList5.get(i3)).intValue()) > Game.getIncomeFromEconomy(((Integer) arrayList5.get(i38)).intValue())) {
                                i3 = i38;
                            }
                        }
                    } else {
                        c2 = 6;
                        if (i32 == 6) {
                            i2 = 0;
                            for (int i39 = 1; i39 < arrayList5.size(); i39++) {
                                if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList5.get(i2)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList5.get(i39)).intValue()).getResourceID()))) {
                                    i2 = i39;
                                }
                            }
                        } else if (i32 == 7) {
                            i2 = 0;
                            for (int i40 = 1; i40 < arrayList5.size(); i40++) {
                                if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList5.get(i40)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList5.get(i2)).intValue()).getResourceID()))) {
                                    i2 = i40;
                                }
                            }
                        } else if (i32 == 8) {
                            int i41 = 0;
                            for (int i42 = 1; i42 < arrayList5.size(); i42++) {
                                if (ResourcesManager.getMonthlyIncome(((Integer) arrayList5.get(i41)).intValue()) < ResourcesManager.getMonthlyIncome(((Integer) arrayList5.get(i42)).intValue())) {
                                    i41 = i42;
                                }
                            }
                            i = i41;
                            c = '\t';
                        } else {
                            c = '\t';
                            if (i32 == 9) {
                                i = 0;
                                for (int i43 = 1; i43 < arrayList5.size(); i43++) {
                                    if (ResourcesManager.getMonthlyIncome(((Integer) arrayList5.get(i)).intValue()) > ResourcesManager.getMonthlyIncome(((Integer) arrayList5.get(i43)).intValue())) {
                                        i = i43;
                                    }
                                }
                            } else {
                                i = 0;
                            }
                        }
                    }
                    arrayList = arrayList5;
                    i4 = height6;
                    int i44 = width2;
                    int i45 = i30;
                    i5 = i;
                    int i46 = i25;
                    String str2 = str;
                    char c3 = c2;
                    arrayList2.add(new AnonymousClass11(Game.getProvince(((Integer) arrayList5.get(i)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i9, i4, i29, i12, ((Integer) arrayList5.get(i)).intValue()));
                    int width7 = arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING + i9;
                    economyWithBonuses = Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getEconomyWithBonuses();
                    StringBuilder sb = new StringBuilder("");
                    if (economyWithBonuses < 10.0f) {
                        i6 = 100;
                    } else if (economyWithBonuses < 100.0f) {
                        i6 = 10;
                    } else {
                        i6 = 1;
                    }
                    arrayList2.add(new AnonymousClass12(sb.append(CFG.getPrecision2(economyWithBonuses, i6)).toString(), CFG.FONT_REGULAR_SMALL, -1, width7, i4, i29, i12, ((Integer) arrayList.get(i5)).intValue()));
                    int width8 = width7 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    incomeFromEconomy = Game.getIncomeFromEconomy(((Integer) arrayList.get(i5)).intValue());
                    StringBuilder sb2 = new StringBuilder("");
                    if (incomeFromEconomy < 10.0f) {
                        i7 = 100;
                    } else if (incomeFromEconomy < 100.0f) {
                        i7 = 10;
                    } else {
                        i7 = 1;
                    }
                    arrayList2.add(new AnonymousClass13(sb2.append(CFG.getPrecision2(incomeFromEconomy, i7)).toString(), CFG.FONT_BOLD_SMALL, -1, width8, i4, i45, i12, ((Integer) arrayList.get(i5)).intValue()));
                    width = width8 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    if (Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getResourceID() >= 0) {
                        arrayList2.add(new AnonymousClass14(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getResourceID(), width, i4, i29, i12, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList.get(i5)).intValue()));
                    } else {
                        arrayList2.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR_SMALL, -1, width, i4, i29, i12));
                    }
                    int width9 = width + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    monthlyIncome = ResourcesManager.getMonthlyIncome(((Integer) arrayList.get(i5)).intValue());
                    StringBuilder sb3 = new StringBuilder("");
                    if (monthlyIncome < 10.0f) {
                        i8 = 100;
                    } else if (monthlyIncome < 100.0f) {
                        i8 = 10;
                    } else {
                        i8 = 1;
                    }
                    arrayList2.add(new AnonymousClass15(sb3.append(CFG.getPrecision2(monthlyIncome, i8)).toString(), CFG.FONT_BOLD_SMALL, -1, width9, i4, i45, i12, ((Integer) arrayList.get(i5)).intValue()));
                    height6 = i4 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.remove(i5);
                    arrayList5 = arrayList;
                    i30 = i45;
                    i26 = 5;
                    width2 = i44;
                    i25 = i46;
                    c2 = c3;
                    str = str2;
                    i20 = 3;
                }
                i = i3;
                c = '\t';
                c2 = 6;
                arrayList = arrayList5;
                i4 = height6;
                int i47 = width2;
                int i48 = i30;
                i5 = i;
                int i49 = i25;
                String str3 = str;
                char c4 = c2;
                arrayList2.add(new AnonymousClass11(Game.getProvince(((Integer) arrayList5.get(i)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i9, i4, i29, i12, ((Integer) arrayList5.get(i)).intValue()));
                int width10 = arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING + i9;
                economyWithBonuses = Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getEconomyWithBonuses();
                StringBuilder sb4 = new StringBuilder("");
                if (economyWithBonuses < 10.0f) {
                    i6 = 100;
                } else if (economyWithBonuses < 100.0f) {
                    i6 = 10;
                } else {
                    i6 = 1;
                }
                arrayList2.add(new AnonymousClass12(sb4.append(CFG.getPrecision2(economyWithBonuses, i6)).toString(), CFG.FONT_REGULAR_SMALL, -1, width10, i4, i29, i12, ((Integer) arrayList.get(i5)).intValue()));
                int width11 = width10 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                incomeFromEconomy = Game.getIncomeFromEconomy(((Integer) arrayList.get(i5)).intValue());
                StringBuilder sb5 = new StringBuilder("");
                if (incomeFromEconomy < 10.0f) {
                    i7 = 100;
                } else if (incomeFromEconomy < 100.0f) {
                    i7 = 10;
                } else {
                    i7 = 1;
                }
                arrayList2.add(new AnonymousClass13(sb5.append(CFG.getPrecision2(incomeFromEconomy, i7)).toString(), CFG.FONT_BOLD_SMALL, -1, width11, i4, i48, i12, ((Integer) arrayList.get(i5)).intValue()));
                width = width11 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                if (Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getResourceID() >= 0) {
                    arrayList2.add(new AnonymousClass14(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getResourceID(), width, i4, i29, i12, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList.get(i5)).intValue()));
                } else {
                    arrayList2.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR_SMALL, -1, width, i4, i29, i12));
                }
                int width12 = width + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                monthlyIncome = ResourcesManager.getMonthlyIncome(((Integer) arrayList.get(i5)).intValue());
                StringBuilder sb6 = new StringBuilder("");
                if (monthlyIncome < 10.0f) {
                    i8 = 100;
                } else if (monthlyIncome < 100.0f) {
                    i8 = 10;
                } else {
                    i8 = 1;
                }
                arrayList2.add(new AnonymousClass15(sb6.append(CFG.getPrecision2(monthlyIncome, i8)).toString(), CFG.FONT_BOLD_SMALL, -1, width12, i4, i48, i12, ((Integer) arrayList.get(i5)).intValue()));
                height6 = i4 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                arrayList.remove(i5);
                arrayList5 = arrayList;
                i30 = i48;
                i26 = 5;
                width2 = i47;
                i25 = i49;
                c2 = c4;
                str = str3;
                i20 = 3;
            }
            i = i2;
            c = '\t';
            arrayList = arrayList5;
            i4 = height6;
            int i410 = width2;
            int i411 = i30;
            i5 = i;
            int i412 = i25;
            String str4 = str;
            char c5 = c2;
            arrayList2.add(new AnonymousClass11(Game.getProvince(((Integer) arrayList5.get(i)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i9, i4, i29, i12, ((Integer) arrayList5.get(i)).intValue()));
            int width13 = arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING + i9;
            economyWithBonuses = Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getEconomyWithBonuses();
            StringBuilder sb7 = new StringBuilder("");
            if (economyWithBonuses < 10.0f) {
                i6 = 100;
            } else if (economyWithBonuses < 100.0f) {
                i6 = 10;
            } else {
                i6 = 1;
            }
            arrayList2.add(new AnonymousClass12(sb7.append(CFG.getPrecision2(economyWithBonuses, i6)).toString(), CFG.FONT_REGULAR_SMALL, -1, width13, i4, i29, i12, ((Integer) arrayList.get(i5)).intValue()));
            int width14 = width13 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
            incomeFromEconomy = Game.getIncomeFromEconomy(((Integer) arrayList.get(i5)).intValue());
            StringBuilder sb8 = new StringBuilder("");
            if (incomeFromEconomy < 10.0f) {
                i7 = 100;
            } else if (incomeFromEconomy < 100.0f) {
                i7 = 10;
            } else {
                i7 = 1;
            }
            arrayList2.add(new AnonymousClass13(sb8.append(CFG.getPrecision2(incomeFromEconomy, i7)).toString(), CFG.FONT_BOLD_SMALL, -1, width14, i4, i411, i12, ((Integer) arrayList.get(i5)).intValue()));
            width = width14 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
            if (Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getResourceID() >= 0) {
                arrayList2.add(new AnonymousClass14(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getResourceID(), width, i4, i29, i12, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList.get(i5)).intValue()));
            } else {
                arrayList2.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR_SMALL, -1, width, i4, i29, i12));
            }
            int width15 = width + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
            monthlyIncome = ResourcesManager.getMonthlyIncome(((Integer) arrayList.get(i5)).intValue());
            StringBuilder sb9 = new StringBuilder("");
            if (monthlyIncome < 10.0f) {
                i8 = 100;
            } else if (monthlyIncome < 100.0f) {
                i8 = 10;
            } else {
                i8 = 1;
            }
            arrayList2.add(new AnonymousClass15(sb9.append(CFG.getPrecision2(monthlyIncome, i8)).toString(), CFG.FONT_BOLD_SMALL, -1, width15, i4, i411, i12, ((Integer) arrayList.get(i5)).intValue()));
            height6 = i4 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
            arrayList.remove(i5);
            arrayList5 = arrayList;
            i30 = i411;
            i26 = 5;
            width2 = i410;
            i25 = i412;
            c2 = c5;
            str = str4;
            i20 = 3;
        }
        int i50 = height6;
        int iMin = Math.min(i50, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList2.add(new Empty(0, 0, width2, Math.max(i50, iMin)));
        initMenu(new AnonymousClass16(Game.getCiv(InGame_Civ.iActiveCivID).getCivName(), Game.lang.get(str), false, false, Images.title500), otherMenuPosX_2, height, width2, iMin, arrayList2, false, true);
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
