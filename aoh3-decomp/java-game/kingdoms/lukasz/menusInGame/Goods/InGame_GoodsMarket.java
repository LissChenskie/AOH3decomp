package aoc.kingdoms.lukasz.menusInGame.Goods;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsResources;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Resource2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_LargestProducer;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticGoods;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticGoods_ProgressBar;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_GoodsMarket extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iActiveCivID = 0;
    public static int iSortID = 4;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$10, reason: invalid class name */
    class AnonymousClass10 extends Text_TitleBlueSort {
        AnonymousClass10(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_GoodsMarket.iSortID == 8) {
                InGame_GoodsMarket.iSortID = 9;
            } else {
                InGame_GoodsMarket.iSortID = 8;
            }
            Game.menuManager.rebuildInGame_GoodsMarket();
            InGame_GoodsMarket.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ShareInWorldProduction"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                InGame_Goods.iCivID = Game.player.iCivID;
            } else {
                InGame_Goods.iCivID = Game.getProvince(Game.iActiveProvince).getCivID();
            }
            InGame_Goods.sortBy = 0;
            Game.menuManager.rebuildInGame_Goods();
            Game.menuManager.setVisibleInGame_Goods(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LargestGoodsProducers") + ": ", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$12, reason: invalid class name */
    class AnonymousClass12 extends Text_StaticGoods {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GoodsMarket_Resource.iResourceID = getCurrent();
            InGame_GoodsMarket_Resource.iActiveCivID = InGame_GoodsMarket.iActiveCivID;
            Game.menuManager.rebuildInGame_GoodsMarketResource();
            InGame_GoodsMarket_Resource.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Resource"));
            String str = TGqtTWl.IzTCpR;
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(sbAppend.append(str).toString(), ResourcesManager.getResourceName(getCurrent()), getCurrent(), CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + str, getText(), Images.provinces, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(InGame_GoodsMarket.iActiveCivID).getCivName() + str));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(ResourcesManager.getResourceName(getCurrent()), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$13, reason: invalid class name */
    class AnonymousClass13 extends Text_StaticGoods {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Goods_Provinces.RESOURCE_ID = getCurrent();
            InGame_Goods_Provinces.lTime = 0L;
            InGame_GoodsMarket.lTime = 0L;
            Game.menuManager.rebuildInGame_Goods_Provinces();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(Game.lang.get("Resource") + ": ", ResourcesManager.getResourceName(getCurrent()), getCurrent(), CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int i = 0;
            for (int i2 = 0; i2 < Game.getCiv(InGame_GoodsMarket.iActiveCivID).getNumOfProvinces(); i2++) {
                if (Game.getProvince(Game.getCiv(InGame_GoodsMarket.iActiveCivID).getProvinceID(i2)).getResourceID() == getCurrent()) {
                    i++;
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Provinces") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Provinces") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(ResourcesManager.getResourceName(getCurrent()), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$14, reason: invalid class name */
    class AnonymousClass14 extends Text_StaticGoods {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(Game.lang.get("Resource") + ": ", ResourcesManager.getResourceName(getCurrent()), getCurrent(), CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int i = 0;
            for (int i2 = 0; i2 < Game.getCiv(InGame_GoodsMarket.iActiveCivID).getNumOfProvinces(); i2++) {
                if (Game.getProvince(Game.getCiv(InGame_GoodsMarket.iActiveCivID).getProvinceID(i2)).getResourceID() == getCurrent()) {
                    i++;
                }
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Provinces") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticGoods, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
            }
            return getIsHovered() ? Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER : Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$15, reason: invalid class name */
    class AnonymousClass15 extends Text_StaticGoods_ProgressBar {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, int i6, float f, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, f, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Goods_LargestProducers.RESOURCE_ID = getCurrent();
            InGame_Goods_LargestProducers.lTime = 0L;
            InGame_GoodsMarket.lTime = 0L;
            Game.menuManager.rebuildInGame_Goods_LargestProducers();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = Text_StaticBG_LargestProducer.getHoverLargestProducers(getCurrent(), false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticGoods_ProgressBar, aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticGoods
        public void drawBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$16, reason: invalid class name */
    class AnonymousClass16 extends TextIcon_Resource2 {
        boolean numberOne;

        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
            this.numberOne = false;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_GoodsMarket_Resource.iResourceID = getCurrent();
            InGame_GoodsMarket_Resource.iActiveCivID = InGame_GoodsMarket.iActiveCivID;
            Game.menuManager.rebuildInGame_GoodsMarketResource();
            InGame_GoodsMarket_Resource.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return this.numberOne ? Colors.HOVER_GOLD : super.getColor(z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.numberOne = true;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$17, reason: invalid class name */
    class AnonymousClass17 extends MenuTitleIMG_FlagCenter {
        AnonymousClass17(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_GoodsMarket.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_GoodsMarket.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$2, reason: invalid class name */
    class AnonymousClass2 extends PieChart_WithStatsResources {
        AnonymousClass2(int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, MenuElement_Hover menuElement_Hover) {
            super(i, i2, i3, i4, pieChart_Data, menuElement_Hover);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Goods();
            Game.menuManager.setVisibleInGame_Goods(true);
            InGame_Goods.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
        protected float animationPerc() {
            return Math.min(1.0f, (CFG.currentTimeMillis - InGame_ProvinceInfo.lTime) / 150.0f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(InGame_GoodsMarket.iActiveCivID).getCivName() + ": ", Colors.HOVER_LEFT));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Goods();
            Game.menuManager.setVisibleInGame_Goods(true);
            InGame_Goods.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LargestGoodsProducers"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("Production0"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("Production1"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("Production2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
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
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Legacy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(Game.getLegacyPerUniqueResources(InGame_GoodsMarket.iActiveCivID), 100), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            StringBuilder sbAppend = new StringBuilder(" = ").append(CFG.getPrecision2(GameValues.legacy.LEGACY_PER_UNIQUE_RESOURCE, 100)).append(" * ").append(Game.lang.get("UniqueResources")).append(" * min(").append(CFG.getPrecision2(GameValues.legacy.LEGACY_PER_UNIQUE_RESOURCE_PER_TECHS_MAX, 100)).append(", ");
            LanguageManager languageManager = Game.lang;
            String str = ClXgFvsSKQc.DhcuBsfSYINBnq;
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(sbAppend.append(languageManager.get(str)).append(" * ").append(CFG.getPrecision2(GameValues.legacy.LEGACY_PER_UNIQUE_RESOURCE_PER_TECHS, 100)).append(")").toString(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UniqueResources") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(InGame_GoodsMarket.iActiveCivID).iUniqueResources, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(str) + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(InGame_GoodsMarket.iActiveCivID).getResearchedTechnologies(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_GoodsMarket.iSortID == 0) {
                InGame_GoodsMarket.iSortID = 1;
            } else {
                InGame_GoodsMarket.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_GoodsMarket();
            InGame_GoodsMarket.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(TGqtTWl.kwmTKmQtTWwP), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_GoodsMarket.iSortID == 2) {
                InGame_GoodsMarket.iSortID = 3;
            } else {
                InGame_GoodsMarket.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_GoodsMarket();
            InGame_GoodsMarket.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_GoodsMarket.iSortID == 4) {
                InGame_GoodsMarket.iSortID = 5;
            } else {
                InGame_GoodsMarket.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_GoodsMarket();
            InGame_GoodsMarket.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Production"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket$9, reason: invalid class name */
    class AnonymousClass9 extends Text_TitleBlueSort {
        AnonymousClass9(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_GoodsMarket.iSortID == 6) {
                InGame_GoodsMarket.iSortID = 7;
            } else {
                InGame_GoodsMarket.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_GoodsMarket();
            InGame_GoodsMarket.lTime = 0L;
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

    /* JADX WARN: Code duplicated, block: B:202:0x082a  */
    /* JADX WARN: Code duplicated, block: B:204:0x089c  */
    /* JADX WARN: Code duplicated, block: B:205:0x08c1  */
    /* JADX WARN: Code duplicated, block: B:208:0x092d  */
    /* JADX WARN: Code duplicated, block: B:209:0x0930  */
    /* JADX WARN: Code duplicated, block: B:212:0x0995  */
    /* JADX WARN: Code duplicated, block: B:213:0x0998  */
    /* JADX WARN: Code duplicated, block: B:217:0x09f3 A[LOOP:8: B:215:0x09ed->B:217:0x09f3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:221:0x0a00  */
    /* JADX WARN: Code duplicated, block: B:228:0x0a53  */
    /* JADX WARN: Code duplicated, block: B:233:0x0a62  */
    /* JADX WARN: Code duplicated, block: B:235:0x0a7a  */
    /* JADX WARN: Code duplicated, block: B:239:0x0ad7  */
    /* JADX WARN: Code duplicated, block: B:241:0x0aeb  */
    /* JADX WARN: Code duplicated, block: B:274:0x0a7c A[SYNTHETIC] */
    public InGame_GoodsMarket() {
        int i;
        int i2;
        int height;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        ArrayList arrayList3;
        ArrayList arrayList4;
        char c;
        String precision2;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        ArrayList arrayList5;
        ArrayList arrayList6;
        int i15;
        boolean z;
        ArrayList arrayList7 = new ArrayList();
        int i16 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height2 = ImageManager.getImage(Images.title500).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i17 = CFG.PADDING;
        int i18 = 0;
        int width2 = 0;
        int height3 = 0;
        for (int i19 = 0; i19 < ResourcesManager.iResourcesSize; i19++) {
            height3 = ResourcesManager.resourceImages.get(i19).getHeight() > height3 ? ResourcesManager.resourceImages.get(i19).getHeight() : height3;
            if (ResourcesManager.resourceImages.get(i19).getWidth() > width2) {
                width2 = ResourcesManager.resourceImages.get(i19).getWidth();
            }
        }
        int width3 = ImageManager.getImage(Images.goods).getWidth();
        int i20 = width - (i16 * 2);
        int i21 = (i20 - CFG.PADDING) / 2;
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        while (true) {
            i = height3;
            if (i18 >= Game.getCiv(iActiveCivID).getNumOfProvinces()) {
                break;
            }
            if (Game.getProvince(Game.getCiv(iActiveCivID).getProvinceID(i18)).getResourceID() >= 0) {
                int size = arrayList8.size() - 1;
                while (true) {
                    if (size < 0) {
                        i15 = width2;
                        z = false;
                        break;
                    }
                    i15 = width2;
                    if (((Integer) arrayList8.get(size)).intValue() == Game.getProvince(Game.getCiv(iActiveCivID).getProvinceID(i18)).getResourceID()) {
                        arrayList9.set(size, Float.valueOf(((Float) arrayList9.get(size)).floatValue() + ResourcesManager.getProducedGoods(Game.getCiv(iActiveCivID).getProvinceID(i18))));
                        arrayList10.set(size, Float.valueOf(((Float) arrayList10.get(size)).floatValue() + ResourcesManager.getMonthlyIncome(Game.getCiv(iActiveCivID).getProvinceID(i18))));
                        arrayList11.set(size, Float.valueOf(((Float) arrayList11.get(size)).floatValue() + ResourcesManager.getProductionEfficiency(Game.getCiv(iActiveCivID).getProvinceID(i18))));
                        arrayList12.set(size, Integer.valueOf(((Integer) arrayList12.get(size)).intValue() + 1));
                        z = true;
                        break;
                    }
                    size--;
                    width2 = i15;
                }
                if (!z) {
                    arrayList8.add(Integer.valueOf(Game.getProvince(Game.getCiv(iActiveCivID).getProvinceID(i18)).getResourceID()));
                    arrayList9.add(Float.valueOf(ResourcesManager.getProducedGoods(Game.getCiv(iActiveCivID).getProvinceID(i18))));
                    arrayList10.add(Float.valueOf(ResourcesManager.getMonthlyIncome(Game.getCiv(iActiveCivID).getProvinceID(i18))));
                    arrayList11.add(Float.valueOf(ResourcesManager.getProductionEfficiency(Game.getCiv(iActiveCivID).getProvinceID(i18))));
                    arrayList12.add(1);
                }
            } else {
                i15 = width2;
            }
            i18++;
            height3 = i;
            width2 = i15;
        }
        int i22 = width2;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        int size2 = arrayList8.size() - 1;
        while (size2 >= 0) {
            if (((Float) arrayList9.get(size2)).floatValue() > 0.001f) {
                anonymousClass1.addPieChartValues(new PieChart_Value(((Integer) arrayList8.get(size2)).intValue(), ((Float) arrayList9.get(size2)).floatValue()));
            }
            size2--;
            arrayList12 = arrayList12;
        }
        int i23 = (CFG.BUTTON_HEIGHT3 * 3) + (CFG.PADDING * 2);
        ArrayList arrayList13 = arrayList12;
        ArrayList arrayList14 = arrayList11;
        ArrayList arrayList15 = arrayList10;
        ArrayList arrayList16 = arrayList9;
        ArrayList arrayList17 = arrayList8;
        arrayList7.add(new AnonymousClass2(i16, i17 + CFG.PADDING, i23 - (CFG.PADDING * 2), i23 - (CFG.PADDING * 2), anonymousClass1, null));
        int posX = arrayList7.get(arrayList7.size() - 1).getPosX() + arrayList7.get(arrayList7.size() - 1).getWidth() + (CFG.PADDING * 2);
        int i24 = (width - i16) - posX;
        int height4 = i17 + arrayList7.get(arrayList7.size() - 1).getHeight() + (CFG.PADDING * 3);
        arrayList7.add(new AnonymousClass3(Game.lang.get("LargestGoodsProducers"), Images.goods, posX, i17, i24, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.goods).getWidth(), 0, true));
        int height5 = i17 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
        String str = "";
        arrayList7.add(new AnonymousClass4(Game.lang.get("UniqueResources") + ": ", "" + Game.getCiv(iActiveCivID).iUniqueResources, Images.goods, posX, height5, i24, CFG.BUTTON_HEIGHT3, width3 + (CFG.PADDING * 2)));
        arrayList7.add(new AnonymousClass5(Game.lang.get("Legacy") + ": ", (Game.getLegacyPerUniqueResources(iActiveCivID) > 0.0f ? LBhZogys.rQbRx : "") + CFG.getPrecision2(Game.getLegacyPerUniqueResources(iActiveCivID), 100), Images.legacy, posX, height5 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING, i24, CFG.BUTTON_HEIGHT3, width3 + (CFG.PADDING * 2)));
        int i25 = i + (CFG.PADDING * 2);
        int i26 = (CFG.PADDING * 5) + i22;
        int i27 = Images.boxTitleBORDERWIDTH;
        int i28 = i26 + (CFG.PADDING * 2);
        int i29 = ((width - (Images.boxTitleBORDERWIDTH * 2)) - i28) / 4;
        int i30 = iSortID;
        arrayList7.add(new AnonymousClass6(i30 == 0 || i30 == 1, i30 == 1, Game.lang.get("Name"), -1, i27, height4, i28, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = i27 + arrayList7.get(arrayList7.size() - 1).getWidth();
        int i31 = iSortID;
        arrayList7.add(new AnonymousClass7(i31 == 2 || i31 == 3, i31 == 3, Game.lang.get("Provinces"), -1, width4, height4, i29, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = width4 + arrayList7.get(arrayList7.size() - 1).getWidth();
        int i32 = iSortID;
        arrayList7.add(new AnonymousClass8(i32 == 4 || i32 == 5, i32 == 5, Game.lang.get("Production"), -1, width5, height4, i29, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width6 = width5 + arrayList7.get(arrayList7.size() - 1).getWidth();
        int i33 = iSortID;
        arrayList7.add(new AnonymousClass9(i33 == 6 || i33 == 7, i33 == 7, Game.lang.get("Income"), -1, width6, height4, i29, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width7 = width6 + arrayList7.get(arrayList7.size() - 1).getWidth();
        int i34 = iSortID;
        arrayList7.add(new AnonymousClass10(i34 == 8 || i34 == 9, i34 == 9, Game.lang.get("ShareInWorldProduction"), -1, width7, height4, i29, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height6 = height4 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
        if (arrayList17.size() == 0) {
            arrayList7.add(new AnonymousClass11(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i16, height6, i20, CFG.BUTTON_HEIGHT2));
            i2 = width;
            height = height6 + arrayList7.get(arrayList7.size() - 1).getHeight() + CFG.PADDING;
        } else {
            ArrayList arrayList18 = new ArrayList();
            for (int i35 = 0; i35 < Game.getCivsSize(); i35++) {
                arrayList18.add(0);
            }
            Integer num = 0;
            ArrayList arrayList19 = new ArrayList();
            int i36 = 0;
            for (int size3 = arrayList17.size(); i36 < size3; size3 = size3) {
                ArrayList arrayList20 = arrayList16;
                ArrayList arrayList21 = arrayList17;
                arrayList19.add(Float.valueOf(((((Float) arrayList20.get(i36)).floatValue() * 100.0f) / ResourcesManager.worldResourcesProduced.get(((Integer) arrayList21.get(i36)).intValue()).intValue()) * 100.0f));
                if (Game.getCiv(iActiveCivID).getTechResearched(ResourcesManager.lResources.get(i36).RequiredTechID)) {
                    arrayList5 = arrayList14;
                    arrayList6 = arrayList13;
                    arrayList5.set(i36, Float.valueOf(((Float) arrayList5.get(i36)).floatValue() / ((Integer) arrayList6.get(i36)).intValue()));
                } else {
                    arrayList5 = arrayList14;
                    arrayList5.set(i36, Float.valueOf(0.0f));
                    arrayList6 = arrayList13;
                }
                i36++;
                arrayList17 = arrayList21;
                arrayList16 = arrayList20;
                arrayList13 = arrayList6;
                arrayList14 = arrayList5;
            }
            ArrayList arrayList22 = arrayList13;
            ArrayList arrayList23 = arrayList14;
            ArrayList arrayList24 = arrayList16;
            ArrayList arrayList25 = arrayList17;
            int i37 = ((i20 - i26) - CFG.PADDING) / 4;
            int i38 = height6;
            while (arrayList25.size() > 0) {
                int i39 = iSortID;
                if (i39 == 0) {
                    i5 = 0;
                    for (int i40 = 1; i40 < arrayList25.size(); i40++) {
                        i5 = CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(((Integer) arrayList25.get(i5)).intValue()), ResourcesManager.getResourceName(((Integer) arrayList25.get(i40)).intValue())) ? i40 : i5;
                    }
                } else if (i39 == 1) {
                    i5 = 0;
                    for (int i41 = 1; i41 < arrayList25.size(); i41++) {
                        i5 = CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(((Integer) arrayList25.get(i41)).intValue()), ResourcesManager.getResourceName(((Integer) arrayList25.get(i5)).intValue())) ? i41 : i5;
                    }
                } else if (i39 == 2) {
                    i5 = 0;
                    for (int i42 = 1; i42 < arrayList25.size(); i42++) {
                        i5 = ((Integer) arrayList22.get(i42)).intValue() > ((Integer) arrayList22.get(i5)).intValue() ? i42 : i5;
                    }
                } else {
                    if (i39 == 3) {
                        i5 = 0;
                        for (int i43 = 1; i43 < arrayList25.size(); i43++) {
                            i5 = ((Integer) arrayList22.get(i43)).intValue() < ((Integer) arrayList22.get(i5)).intValue() ? i43 : i5;
                        }
                    } else {
                        if (i39 == 4) {
                            i4 = 0;
                            for (int i44 = 1; i44 < arrayList25.size(); i44++) {
                                if (((Float) arrayList24.get(i44)).floatValue() > ((Float) arrayList24.get(i4)).floatValue()) {
                                    i4 = i44;
                                }
                            }
                        } else if (i39 == 5) {
                            i4 = 0;
                            for (int i45 = 1; i45 < arrayList25.size(); i45++) {
                                if (((Float) arrayList24.get(i45)).floatValue() < ((Float) arrayList24.get(i4)).floatValue()) {
                                    i4 = i45;
                                }
                            }
                        } else if (i39 == 6) {
                            i4 = 0;
                            int i46 = 1;
                            while (i46 < arrayList25.size()) {
                                ArrayList arrayList26 = arrayList15;
                                if (((Float) arrayList26.get(i46)).floatValue() > ((Float) arrayList26.get(i4)).floatValue()) {
                                    i4 = i46;
                                }
                                i46++;
                                arrayList15 = arrayList26;
                            }
                        } else {
                            arrayList = arrayList15;
                            if (i39 == 7) {
                                arrayList2 = arrayList23;
                                i4 = 0;
                                for (int i47 = 1; i47 < arrayList25.size(); i47++) {
                                    if (((Float) arrayList.get(i47)).floatValue() < ((Float) arrayList.get(i4)).floatValue()) {
                                        i4 = i47;
                                    }
                                }
                            } else {
                                arrayList2 = arrayList23;
                                if (i39 == 8) {
                                    i4 = 0;
                                    for (int i48 = 1; i48 < arrayList25.size(); i48++) {
                                        if (((Float) arrayList19.get(i48)).floatValue() > ((Float) arrayList19.get(i4)).floatValue()) {
                                            i4 = i48;
                                        }
                                    }
                                } else if (i39 == 9) {
                                    i4 = 0;
                                    for (int i49 = 1; i49 > arrayList25.size(); i49++) {
                                        if (((Float) arrayList19.get(i49)).floatValue() < ((Float) arrayList19.get(i4)).floatValue()) {
                                            i4 = i49;
                                        }
                                    }
                                } else {
                                    i3 = 0;
                                }
                            }
                            i3 = i4;
                        }
                        arrayList = arrayList15;
                        arrayList2 = arrayList23;
                        i3 = i4;
                    }
                    i6 = i16 + i26 + CFG.PADDING;
                    if (((Float) arrayList24.get(i3)).floatValue() > 0.0f) {
                        i8 = i26;
                        i7 = i16;
                        arrayList7.add(new AnonymousClass12(str + CFG.getNumberWithSpaces(str + arrayList22.get(i3)), CFG.FONT_REGULAR_SMALL, -1, i6, i38, i37, i25, ((Integer) arrayList25.get(i3)).intValue()));
                        int width8 = i6 + arrayList7.get(arrayList7.size() - 1).getWidth();
                        StringBuilder sb = new StringBuilder(str);
                        if (((Float) arrayList24.get(i3)).floatValue() >= 1000.0f) {
                            precision2 = CFG.getNumberWithSpaces(str + CFG.getPrecision2(((Float) arrayList24.get(i3)).floatValue(), 1));
                        } else {
                            precision2 = CFG.getPrecision2(((Float) arrayList24.get(i3)).floatValue(), 10);
                        }
                        arrayList7.add(new AnonymousClass13(sb.append(precision2).toString(), CFG.FONT_REGULAR_SMALL, -1, width8, i38, i37, i25, ((Integer) arrayList25.get(i3)).intValue()));
                        int width9 = width8 + arrayList7.get(arrayList7.size() - 1).getWidth();
                        StringBuilder sb2 = new StringBuilder(str);
                        float fFloatValue = ((Float) arrayList.get(i3)).floatValue();
                        if (((Float) arrayList.get(i3)).floatValue() < 1.0f) {
                            i9 = 100;
                        } else {
                            i9 = 10;
                        }
                        arrayList7.add(new AnonymousClass14(sb2.append(CFG.getPrecision2(fFloatValue, i9)).toString(), CFG.FONT_BOLD_SMALL, -1, width9, i38, i37, i25, ((Integer) arrayList25.get(i3)).intValue()));
                        int width10 = width9 + arrayList7.get(arrayList7.size() - 1).getWidth();
                        StringBuilder sb3 = new StringBuilder(str);
                        float fMin = Math.min(100.0f, ((Float) arrayList19.get(i3)).floatValue());
                        if (((Float) arrayList19.get(i3)).floatValue() < 1.0f) {
                            i10 = 100;
                        } else {
                            i10 = 10;
                        }
                        arrayList7.add(new AnonymousClass15(sb3.append(CFG.getPrecision2(fMin, i10)).append("%").toString(), CFG.FONT_REGULAR_SMALL, -1, width10, i38, i37, i25, Math.min(1.0f, ((Float) arrayList19.get(i3)).floatValue() / 100.0f), ((Integer) arrayList25.get(i3)).intValue(), true));
                        arrayList7.get(arrayList7.size() - 1).getWidth();
                        for (i11 = 0; i11 < Game.getCivsSize(); i11++) {
                            arrayList18.set(i11, num);
                        }
                        for (i12 = 0; i12 < Game.getProvincesSize(); i12++) {
                            if (Game.getProvince(i12).getResourceID() != ((Integer) arrayList25.get(i3)).intValue() && !Game.getProvince(i12).getSeaProvince() && Game.getProvince(i12).getCivID() > 0) {
                                arrayList18.set(Game.getProvince(i12).getCivID(), Integer.valueOf(((Integer) arrayList18.get(Game.getProvince(i12).getCivID())).intValue() + ((int) (ResourcesManager.getProducedGoods(i12) * 100.0f))));
                            }
                        }
                        i13 = 1;
                        for (i14 = 0; i14 < Game.getCivsSize(); i14++) {
                            if (((Integer) arrayList18.get(iActiveCivID)).intValue() < ((Integer) arrayList18.get(i14)).intValue()) {
                                i13++;
                            }
                        }
                        c = 0;
                        arrayList3 = arrayList19;
                        arrayList4 = arrayList24;
                        arrayList7.add(new AnonymousClass16("#" + i13, ((Integer) arrayList25.get(i3)).intValue(), i7, i38, i8, i25, i20));
                        if (i13 == 1) {
                            arrayList7.get(arrayList7.size() - 1).setCurrent(1);
                        }
                        i38 += CFG.PADDING + i25;
                    } else {
                        i7 = i16;
                        i8 = i26;
                        arrayList3 = arrayList19;
                        arrayList4 = arrayList24;
                        c = 0;
                    }
                    arrayList25.remove(i3);
                    arrayList.remove(i3);
                    ArrayList arrayList27 = arrayList4;
                    arrayList27.remove(i3);
                    ArrayList arrayList28 = arrayList3;
                    arrayList28.remove(i3);
                    ArrayList arrayList29 = arrayList2;
                    arrayList29.remove(i3);
                    ArrayList arrayList30 = arrayList22;
                    arrayList30.remove(i3);
                    arrayList24 = arrayList27;
                    arrayList15 = arrayList;
                    arrayList23 = arrayList29;
                    arrayList22 = arrayList30;
                    arrayList18 = arrayList18;
                    num = num;
                    str = str;
                    width = width;
                    i26 = i8;
                    i16 = i7;
                    arrayList19 = arrayList28;
                }
                arrayList = arrayList15;
                arrayList2 = arrayList23;
                i3 = i5;
                i6 = i16 + i26 + CFG.PADDING;
                if (((Float) arrayList24.get(i3)).floatValue() > 0.0f) {
                    i8 = i26;
                    i7 = i16;
                    arrayList7.add(new AnonymousClass12(str + CFG.getNumberWithSpaces(str + arrayList22.get(i3)), CFG.FONT_REGULAR_SMALL, -1, i6, i38, i37, i25, ((Integer) arrayList25.get(i3)).intValue()));
                    int width11 = i6 + arrayList7.get(arrayList7.size() - 1).getWidth();
                    StringBuilder sb4 = new StringBuilder(str);
                    if (((Float) arrayList24.get(i3)).floatValue() >= 1000.0f) {
                        precision2 = CFG.getNumberWithSpaces(str + CFG.getPrecision2(((Float) arrayList24.get(i3)).floatValue(), 1));
                    } else {
                        precision2 = CFG.getPrecision2(((Float) arrayList24.get(i3)).floatValue(), 10);
                    }
                    arrayList7.add(new AnonymousClass13(sb4.append(precision2).toString(), CFG.FONT_REGULAR_SMALL, -1, width11, i38, i37, i25, ((Integer) arrayList25.get(i3)).intValue()));
                    int width12 = width11 + arrayList7.get(arrayList7.size() - 1).getWidth();
                    StringBuilder sb5 = new StringBuilder(str);
                    float fFloatValue2 = ((Float) arrayList.get(i3)).floatValue();
                    if (((Float) arrayList.get(i3)).floatValue() < 1.0f) {
                        i9 = 100;
                    } else {
                        i9 = 10;
                    }
                    arrayList7.add(new AnonymousClass14(sb5.append(CFG.getPrecision2(fFloatValue2, i9)).toString(), CFG.FONT_BOLD_SMALL, -1, width12, i38, i37, i25, ((Integer) arrayList25.get(i3)).intValue()));
                    int width13 = width12 + arrayList7.get(arrayList7.size() - 1).getWidth();
                    StringBuilder sb6 = new StringBuilder(str);
                    float fMin2 = Math.min(100.0f, ((Float) arrayList19.get(i3)).floatValue());
                    if (((Float) arrayList19.get(i3)).floatValue() < 1.0f) {
                        i10 = 100;
                    } else {
                        i10 = 10;
                    }
                    arrayList7.add(new AnonymousClass15(sb6.append(CFG.getPrecision2(fMin2, i10)).append("%").toString(), CFG.FONT_REGULAR_SMALL, -1, width13, i38, i37, i25, Math.min(1.0f, ((Float) arrayList19.get(i3)).floatValue() / 100.0f), ((Integer) arrayList25.get(i3)).intValue(), true));
                    arrayList7.get(arrayList7.size() - 1).getWidth();
                    while (i11 < Game.getCivsSize()) {
                        arrayList18.set(i11, num);
                    }
                    while (i12 < Game.getProvincesSize()) {
                        if (Game.getProvince(i12).getResourceID() != ((Integer) arrayList25.get(i3)).intValue()) {
                        }
                    }
                    i13 = 1;
                    while (i14 < Game.getCivsSize()) {
                        if (((Integer) arrayList18.get(iActiveCivID)).intValue() < ((Integer) arrayList18.get(i14)).intValue()) {
                            i13++;
                        }
                    }
                    c = 0;
                    arrayList3 = arrayList19;
                    arrayList4 = arrayList24;
                    arrayList7.add(new AnonymousClass16("#" + i13, ((Integer) arrayList25.get(i3)).intValue(), i7, i38, i8, i25, i20));
                    if (i13 == 1) {
                        arrayList7.get(arrayList7.size() - 1).setCurrent(1);
                    }
                    i38 += CFG.PADDING + i25;
                } else {
                    i7 = i16;
                    i8 = i26;
                    arrayList3 = arrayList19;
                    arrayList4 = arrayList24;
                    c = 0;
                }
                arrayList25.remove(i3);
                arrayList.remove(i3);
                ArrayList arrayList210 = arrayList4;
                arrayList210.remove(i3);
                ArrayList arrayList211 = arrayList3;
                arrayList211.remove(i3);
                ArrayList arrayList212 = arrayList2;
                arrayList212.remove(i3);
                ArrayList arrayList31 = arrayList22;
                arrayList31.remove(i3);
                arrayList24 = arrayList210;
                arrayList15 = arrayList;
                arrayList23 = arrayList212;
                arrayList22 = arrayList31;
                arrayList18 = arrayList18;
                num = num;
                str = str;
                width = width;
                i26 = i8;
                i16 = i7;
                arrayList19 = arrayList211;
            }
            i2 = width;
            arrayList18.clear();
            height = i38;
        }
        int iMin = Math.min(height, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 3));
        int i50 = i2;
        arrayList7.add(new Empty(0, 0, i50, Math.max(height, iMin)));
        initMenu(new AnonymousClass17(Game.lang.get("ProducedGoods"), Game.getCiv(iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height2, i50, iMin, arrayList7, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.goodsOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.goodsOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.goodsOver).getHeight()));
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
