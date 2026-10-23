package aoc.kingdoms.lukasz.menusInGame.Civ;

import androidx.arch.core.ht.qIuEvFbUtcea;
import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonResource2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Rank_Ranking;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical_Data_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsFlags;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_Religion;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ_List extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;
    public static long lTime2;
    public static List<Integer> civsList = new ArrayList();
    public static String civsListTitle = "";
    public static String civsListTitle2 = "";
    public static int iSortID = 0;
    public static int modeID = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List$1, reason: invalid class name */
    class AnonymousClass1 extends PieChart_WithStatsFlags {
        AnonymousClass1(int i, int i2, int i3, int i4, PieChart_Data pieChart_Data, MenuElement_Hover menuElement_Hover) {
            super(i, i2, i3, i4, pieChart_Data, menuElement_Hover);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Civ_List.modeID++;
            if (InGame_Civ_List.modeID > 5) {
                InGame_Civ_List.modeID = 0;
            }
            Game.menuManager.rebuildInGame_Civ_List();
            InGame_Civ_List.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.pieChart.PieChart
        protected float animationPerc() {
            return Math.min(1.0f, (CFG.currentTimeMillis - InGame_ProvinceInfo.lTime) / 150.0f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            if (InGame_Civ_List.modeID == 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Population"), Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                while (i < this.pieChartData.getPieChartValuesSize() && i < 10) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.pieChartData.getCivID(i)).getCivName() + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(this.pieChartData.getPieChartValue(i).getValue(), 1)), this.pieChartData.getCivID(i), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    i++;
                }
            } else {
                if (InGame_Civ_List.modeID == 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Economy"), Colors.HOVER_GOLD));
                } else if (InGame_Civ_List.modeID == 2) {
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Provinces"), Colors.HOVER_GOLD));
                } else if (InGame_Civ_List.modeID == 3) {
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("MaximumManpower"), Colors.HOVER_GOLD));
                } else if (InGame_Civ_List.modeID == 4) {
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("RegimentsLimit"), Colors.HOVER_GOLD));
                } else if (InGame_Civ_List.modeID == 5) {
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Prestige"), Colors.HOVER_GOLD));
                }
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                while (i < this.pieChartData.getPieChartValuesSize() && i < 10) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.pieChartData.getCivID(i)).getCivName() + ": ", CFG.getNumberWithSpaces("" + CFG.getPrecision2(this.pieChartData.getPieChartValue(i).getValue(), 1)), this.pieChartData.getCivID(i), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    i++;
                }
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID_FlagCiv_Religion {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonResource2 {
        int id;

        AnonymousClass11(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_Civ(false);
            InGame_GoodsMarket.iActiveCivID = this.id;
            Game.menuManager.rebuildInGame_GoodsMarket();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonResource2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.id, Game.lang.get("ProducedGoods")));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            ArrayList arrayList3 = new ArrayList();
            for (int i = 0; i < ResourcesManager.iResourcesSize; i++) {
                arrayList3.add(Float.valueOf(0.0f));
            }
            int resourceID = -1;
            for (int i2 = 0; i2 < Game.getCiv(this.id).getNumOfProvinces(); i2++) {
                if (Game.getProvince(Game.getCiv(this.id).getProvinceID(i2)).getResourceID() >= 0) {
                    arrayList3.set(Game.getProvince(Game.getCiv(this.id).getProvinceID(i2)).getResourceID(), Float.valueOf(((Float) arrayList3.get(Game.getProvince(Game.getCiv(this.id).getProvinceID(i2)).getResourceID())).floatValue() + ResourcesManager.getProducedGoods(Game.getCiv(this.id).getProvinceID(i2))));
                    resourceID = Game.getProvince(Game.getCiv(this.id).getProvinceID(i2)).getResourceID();
                }
            }
            if (resourceID >= 0) {
                int i3 = 0;
                while (true) {
                    int i4 = i3 + 1;
                    if (i3 >= 6) {
                        break;
                    }
                    for (int i5 = 0; i5 < ResourcesManager.iResourcesSize; i5++) {
                        if (((Float) arrayList3.get(resourceID)).floatValue() < ((Float) arrayList3.get(i5)).floatValue()) {
                            resourceID = i5;
                        }
                    }
                    if (((Float) arrayList3.get(resourceID)).floatValue() <= 0.0f) {
                        break;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(ResourcesManager.getResourceName(resourceID) + ": ", CFG.getPrecision2(((Float) arrayList3.get(resourceID)).floatValue(), 10), resourceID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList3.set(resourceID, Float.valueOf(0.0f));
                    i3 = i4;
                }
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("None"), "", Images.resourceNone, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList3.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List$12, reason: invalid class name */
    class AnonymousClass12 extends MenuTitleIMG_DoubleText {
        AnonymousClass12(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Civ_List.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List$2, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(TGqtTWl.THCvT) + ": ", this.sText2, Images.council, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List$3, reason: invalid class name */
    class AnonymousClass3 extends Graph_Vertical {
        AnonymousClass3(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_List.iSortID == 0) {
                InGame_Civ_List.iSortID = 1;
            } else {
                InGame_Civ_List.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Civ_List();
            InGame_Civ_List.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_List.iSortID == 2) {
                InGame_Civ_List.iSortID = 3;
            } else {
                InGame_Civ_List.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_Civ_List();
            InGame_Civ_List.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_List.iSortID == 4) {
                InGame_Civ_List.iSortID = 5;
            } else {
                InGame_Civ_List.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_Civ_List();
            InGame_Civ_List.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Civ_List.iSortID == 6) {
                InGame_Civ_List.iSortID = 7;
            } else {
                InGame_Civ_List.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_Civ_List();
            InGame_Civ_List.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonStatsRectIMG_Rank_Ranking {
        int id;

        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6) {
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
            String str = qIuEvFbUtcea.oNxeGnTavofeh;
            if (i > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get("Compare") + str, Game.getCiv(InGame_Civ_Compare.civLeft_Rank).getCivName(), InGame_Civ_Compare.civLeft_Rank, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get("Compare") + str, "--", 0, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get("Compare") + str, "--", 0, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.lang.get("Compare") + str, "--", 0, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CivilizationRank") + str, getText(), this.imageID, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
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

    /* JADX WARN: Code duplicated, block: B:100:0x0446  */
    /* JADX WARN: Code duplicated, block: B:101:0x0449  */
    /* JADX WARN: Code duplicated, block: B:104:0x0484 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:107:0x048a  */
    /* JADX WARN: Code duplicated, block: B:109:0x048e  */
    /* JADX WARN: Code duplicated, block: B:110:0x0491  */
    /* JADX WARN: Code duplicated, block: B:113:0x04d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:116:0x04d6  */
    /* JADX WARN: Code duplicated, block: B:118:0x04da  */
    /* JADX WARN: Code duplicated, block: B:119:0x04dd  */
    /* JADX WARN: Code duplicated, block: B:122:0x0546 A[LOOP:2: B:121:0x0544->B:122:0x0546, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:125:0x0576  */
    /* JADX WARN: Code duplicated, block: B:127:0x057a  */
    /* JADX WARN: Code duplicated, block: B:130:0x0582  */
    /* JADX WARN: Code duplicated, block: B:132:0x05a4  */
    /* JADX WARN: Code duplicated, block: B:134:0x05a8  */
    /* JADX WARN: Code duplicated, block: B:136:0x05ab  */
    /* JADX WARN: Code duplicated, block: B:139:0x05b3  */
    /* JADX WARN: Code duplicated, block: B:141:0x05d5  */
    /* JADX WARN: Code duplicated, block: B:143:0x05da  */
    /* JADX WARN: Code duplicated, block: B:146:0x05e0  */
    /* JADX WARN: Code duplicated, block: B:149:0x05e7  */
    /* JADX WARN: Code duplicated, block: B:151:0x0611  */
    /* JADX WARN: Code duplicated, block: B:154:0x0618  */
    /* JADX WARN: Code duplicated, block: B:156:0x061b  */
    /* JADX WARN: Code duplicated, block: B:159:0x0622  */
    /* JADX WARN: Code duplicated, block: B:161:0x064c  */
    /* JADX WARN: Code duplicated, block: B:163:0x0651  */
    /* JADX WARN: Code duplicated, block: B:165:0x0654  */
    /* JADX WARN: Code duplicated, block: B:168:0x065b  */
    /* JADX WARN: Code duplicated, block: B:170:0x0671  */
    /* JADX WARN: Code duplicated, block: B:172:0x0676  */
    /* JADX WARN: Code duplicated, block: B:174:0x0679  */
    /* JADX WARN: Code duplicated, block: B:177:0x0680  */
    /* JADX WARN: Code duplicated, block: B:179:0x0696  */
    /* JADX WARN: Code duplicated, block: B:181:0x069b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:182:0x069d  */
    /* JADX WARN: Code duplicated, block: B:185:0x06a4  */
    /* JADX WARN: Code duplicated, block: B:187:0x06ca  */
    /* JADX WARN: Code duplicated, block: B:189:0x06ce A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:190:0x06d0  */
    /* JADX WARN: Code duplicated, block: B:193:0x06d7  */
    /* JADX WARN: Code duplicated, block: B:195:0x06fd  */
    /* JADX WARN: Code duplicated, block: B:199:0x071c  */
    /* JADX WARN: Code duplicated, block: B:200:0x0721  */
    /* JADX WARN: Code duplicated, block: B:212:0x05a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x0612 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:218:0x064d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x0672 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:0x0697 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x06cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:230:0x06fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:233:0x05d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:90:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:93:0x043a  */
    /* JADX WARN: Code duplicated, block: B:96:0x043e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0441  */
    public InGame_Civ_List() {
        int i;
        LanguageManager languageManager;
        String str;
        String str2;
        int i2;
        boolean z;
        boolean z2;
        int i3;
        int i4;
        boolean z3;
        boolean z4;
        int i5;
        int i6;
        boolean z5;
        boolean z6;
        int i7;
        boolean z7;
        boolean z8;
        int height;
        int i8;
        int i9;
        ArrayList arrayList;
        ArrayList arrayList2;
        int size;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int civsSize;
        int i21;
        int i22;
        ArrayList arrayList3 = new ArrayList();
        int i23 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height2 = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i24 = CFG.PADDING;
        int i25 = CFG.BUTTON_HEIGHT3 + CFG.TEXT_HEIGHT + (CFG.PADDING * 3);
        int i26 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.4f);
        int i27 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.15f);
        InGame_Civ_Compare.civLeft_Rank = -1;
        InGame_Civ_Compare.civRight_Rank = -1;
        int i28 = i24 + CFG.PADDING + i25;
        int i29 = CFG.PADDING + i23;
        PieChart_Data pieChart_Data = new PieChart_Data();
        int i30 = modeID;
        if (i30 == 0) {
            int size2 = civsList.size() - 1;
            while (size2 >= 0) {
                pieChart_Data.addPieChartValues(new PieChart_Value(civsList.get(size2).intValue(), (int) Game.getCiv(civsList.get(size2).intValue()).getPopulationTotal()));
                size2--;
                i29 = i29;
            }
            i = i29;
        } else {
            i = i29;
            if (i30 == 1) {
                for (int size3 = civsList.size() - 1; size3 >= 0; size3--) {
                    pieChart_Data.addPieChartValues(new PieChart_Value(civsList.get(size3).intValue(), (int) Game.getCiv(civsList.get(size3).intValue()).getEconomyTotal()));
                }
            } else if (i30 == 2) {
                for (int size4 = civsList.size() - 1; size4 >= 0; size4--) {
                    pieChart_Data.addPieChartValues(new PieChart_Value(civsList.get(size4).intValue(), Game.getCiv(civsList.get(size4).intValue()).getNumOfProvinces()));
                }
            } else if (i30 == 3) {
                for (int size5 = civsList.size() - 1; size5 >= 0; size5--) {
                    pieChart_Data.addPieChartValues(new PieChart_Value(civsList.get(size5).intValue(), (int) Game.getCiv(civsList.get(size5).intValue()).fManpowerMax));
                }
            } else if (i30 == 4) {
                for (int size6 = civsList.size() - 1; size6 >= 0; size6--) {
                    pieChart_Data.addPieChartValues(new PieChart_Value(civsList.get(size6).intValue(), Game.getCiv(civsList.get(size6).intValue()).iRegimentsLimit));
                }
            } else if (i30 == 5) {
                for (int size7 = civsList.size() - 1; size7 >= 0; size7--) {
                    pieChart_Data.addPieChartValues(new PieChart_Value(civsList.get(size7).intValue(), (int) Game.getCiv(civsList.get(size7).intValue()).iCivRankScore));
                }
            }
        }
        int i31 = (CFG.BUTTON_HEIGHT3 * 3) + (CFG.PADDING * 2);
        arrayList3.add(new AnonymousClass1(i, i28 + CFG.PADDING, i31 - (CFG.PADDING * 2), i31 - (CFG.PADDING * 2), pieChart_Data, null));
        int width2 = arrayList3.get(arrayList3.size() - 1).getWidth() + (CFG.PADDING * 2);
        int i32 = modeID;
        if (i32 == 0) {
            str2 = Game.lang.get("Population");
        } else {
            if (i32 == 1) {
                languageManager = Game.lang;
                str = "Economy";
            } else if (i32 == 2) {
                str2 = Game.lang.get("Provinces");
            } else if (i32 == 3) {
                languageManager = Game.lang;
                str = "MaximumManpower";
            } else if (i32 == 4) {
                languageManager = Game.lang;
                str = "RegimentsLimit";
            } else {
                languageManager = Game.lang;
                str = "Prestige";
            }
            str2 = languageManager.get(str);
        }
        int i33 = modeID;
        arrayList3.add(new ButtonStatsRectIMG(str2, i33 == 0 ? Images.population : i33 == 1 ? Game_Calendar.IMG_ECONOMY : i33 == 2 ? Images.provinces : i33 == 3 ? Game_Calendar.IMG_MANPOWER : i33 == 4 ? Images.regimentsLimit : Images.rankGold, i - CFG.PADDING, ((i28 - CFG.PADDING) - i25) + CFG.BUTTON_HEIGHT3 + CFG.PADDING, width2, CFG.TEXT_HEIGHT + (CFG.PADDING * 2), ImageManager.getImage(Images.battleWidth).getWidth()));
        String str3 = "";
        arrayList3.add(new AnonymousClass2(Game.lang.get("Civilizations") + ": ", "" + civsList.size(), Images.council, i - CFG.PADDING, (i28 - CFG.PADDING) - i25, width2, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
        int width3 = i + arrayList3.get(arrayList3.size() - 1).getWidth() + (CFG.PADDING * 2);
        Graph_Vertical.graphCivs.clear();
        int i34 = 0;
        for (int i35 = 0; i35 < civsList.size(); i35++) {
            Graph_Vertical.graphCivs.add(civsList.get(i35));
        }
        arrayList3.add(new AnonymousClass3(Graph_Vertical_Data_Type.CIVS_LIST_PROVINCES, Game.lang.get("Civilizations"), Game.lang.get("Civilizations"), width3 - (CFG.PADDING * 2), (i28 - CFG.PADDING) - i25, (width - i23) - (width3 - (CFG.PADDING * 2)), i31 + (CFG.PADDING * 3) + i25, true));
        int height3 = i28 + (arrayList3.get(arrayList3.size() - 1).getHeight() - i25);
        int i36 = CFG.BUTTON_HEIGHT3;
        int i37 = Images.boxTitleBORDERWIDTH;
        int i38 = iSortID;
        int i39 = 6;
        arrayList3.add(new AnonymousClass4(i38 == 0 || i38 == 1, i38 == 1, Game.lang.get("Ranking"), -1, i37, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = i37 + arrayList3.get(arrayList3.size() - 1).getWidth();
        int i40 = iSortID;
        if (i40 != 2) {
            i2 = 3;
            if (i40 != 3) {
                z = false;
            }
            if (i40 == i2) {
                z2 = true;
            } else {
                z2 = false;
            }
            arrayList3.add(new AnonymousClass5(z, z2, Game.lang.get(jkEBdieJhbh.pKtJtzs), -1, width4, height3, i26, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width5 = width4 + arrayList3.get(arrayList3.size() - 1).getWidth();
            i3 = iSortID;
            if (i3 != 4) {
                i4 = 5;
                if (i3 == 5) {
                    z3 = false;
                }
                if (i3 == i4) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                arrayList3.add(new AnonymousClass6(z3, z4, Game.lang.get("Population"), -1, width5, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                int width6 = width5 + arrayList3.get(arrayList3.size() - 1).getWidth();
                i5 = iSortID;
                i6 = 7;
                if (i5 != 6 || i5 == 7) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (i5 == 7) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                arrayList3.add(new AnonymousClass7(z5, z6, Game.lang.get("Provinces"), -1, width6, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                int width7 = width6 + arrayList3.get(arrayList3.size() - 1).getWidth();
                i7 = iSortID;
                if (i7 != 8 || i7 == 9) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (i7 == 9) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                arrayList3.add(new AnonymousClass8(z7, z8, Game.lang.get("Goods"), -1, width7, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
                height = height3 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                i8 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.4f);
                i9 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.15f);
                arrayList = new ArrayList();
                arrayList2 = new ArrayList();
                size = civsList.size();
                for (i10 = 0; i10 < size; i10++) {
                    arrayList.add(civsList.get(i10));
                    arrayList2.add(Integer.valueOf((int) Game.getCiv(civsList.get(i10).intValue()).getPopulationTotal()));
                }
                while (arrayList.size() > 0) {
                    i11 = iSortID;
                    if (i11 == 0) {
                        i12 = i34;
                        for (i22 = 1; i22 < arrayList.size(); i22++) {
                            if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).iCivRankPosition > Game.getCiv(((Integer) arrayList.get(i22)).intValue()).iCivRankPosition) {
                                i12 = i22;
                            }
                        }
                    } else if (i11 == 1) {
                        i12 = i34;
                        for (i13 = 1; i13 < arrayList.size(); i13++) {
                            if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).iCivRankPosition < Game.getCiv(((Integer) arrayList.get(i13)).intValue()).iCivRankPosition) {
                                i12 = i13;
                            }
                        }
                    } else {
                        i12 = i34;
                    }
                    i14 = iSortID;
                    if (i14 == 2) {
                        for (i21 = 1; i21 < arrayList.size(); i21++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i21)).intValue()).getCivName())) {
                                i12 = i21;
                            }
                        }
                    } else if (i14 == 3) {
                        for (i19 = 1; i19 < arrayList.size(); i19++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i19)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getCivName())) {
                                i12 = i19;
                            }
                        }
                    } else if (i14 == 4) {
                        for (i18 = 1; i18 < arrayList.size(); i18++) {
                            if (((Integer) arrayList2.get(i12)).intValue() < ((Integer) arrayList2.get(i18)).intValue()) {
                                i12 = i18;
                            }
                        }
                    } else if (i14 == 5) {
                        for (i17 = 1; i17 < arrayList.size(); i17++) {
                            if (((Integer) arrayList2.get(i17)).intValue() < ((Integer) arrayList2.get(i12)).intValue()) {
                                i12 = i17;
                            }
                        }
                    } else if (i14 == i39) {
                        for (i16 = 1; i16 < arrayList.size(); i16++) {
                            if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getNumOfProvinces() < Game.getCiv(((Integer) arrayList.get(i16)).intValue()).getNumOfProvinces()) {
                                i12 = i16;
                            }
                        }
                    } else if (i14 == i6) {
                        for (i15 = 1; i15 < arrayList.size(); i15++) {
                            if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getNumOfProvinces() > Game.getCiv(((Integer) arrayList.get(i15)).intValue()).getNumOfProvinces()) {
                                i12 = i15;
                            }
                        }
                    }
                    i20 = i12;
                    String str4 = str3;
                    StringBuilder sb = new StringBuilder(str4);
                    if (Game.getCiv(((Integer) arrayList.get(i20)).intValue()).iCivRankPosition < 0) {
                        civsSize = Game.getCivsSize();
                    } else {
                        civsSize = Game.getCiv(((Integer) arrayList.get(i20)).intValue()).iCivRankPosition;
                    }
                    int i41 = width;
                    int i42 = i8;
                    str3 = str4;
                    ArrayList arrayList4 = arrayList;
                    int i43 = height;
                    arrayList3.add(new AnonymousClass9(sb.append(civsSize).toString(), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(((Integer) arrayList.get(i20)).intValue()), i23, height, i9, i36, ImageManager.getImage(Images.rankGold).getWidth()));
                    arrayList3.get(arrayList3.size() - 1).setCurrent(((Integer) arrayList4.get(i20)).intValue());
                    int width8 = arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING + i23;
                    arrayList3.add(new AnonymousClass10(str3 + Game.getCiv(((Integer) arrayList4.get(i20)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width8, i43, i42, i36, ((Integer) arrayList4.get(i20)).intValue()));
                    int width9 = width8 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                    arrayList2 = arrayList2;
                    arrayList3.add(new Text_StaticBG_ID(str3 + CFG.getShortNumber(((Integer) arrayList2.get(i20)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width9, i43, i9, i36, ((Integer) arrayList4.get(i20)).intValue()));
                    int width10 = width9 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                    arrayList3.add(new Text_StaticBG_ID(str3 + CFG.getNumberWithSpaces(str3 + Game.getCiv(((Integer) arrayList4.get(i20)).intValue()).getNumOfProvinces()), CFG.FONT_REGULAR_SMALL, -1, width10, i43, i9, i36, ((Integer) arrayList4.get(i20)).intValue()));
                    arrayList3.add(new AnonymousClass11(ResourcesManager.getLargestGoodsProducedByCiv(((Integer) arrayList4.get(i20)).intValue()), width10 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, i43, i9, i36));
                    arrayList3.get(arrayList3.size() - 1).setCurrent(((Integer) arrayList4.get(i20)).intValue());
                    int height4 = i43 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                    arrayList4.remove(i20);
                    arrayList2.remove(i20);
                    height = height4;
                    arrayList = arrayList4;
                    width = i41;
                    i8 = i42;
                    i6 = 7;
                    i39 = i39;
                    i34 = 0;
                }
                int i44 = height;
                int iMin = Math.min(i44, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 3));
                arrayList3.add(new Empty(0, 0, width, Math.max(i44, iMin)));
                initMenu(new AnonymousClass12(civsListTitle, civsListTitle2, false, false, Images.title600), otherMenuPosX_2, height2, width, iMin, arrayList3, false, true);
            }
            i4 = 5;
            z3 = true;
            if (i3 == i4) {
                z4 = true;
            } else {
                z4 = false;
            }
            arrayList3.add(new AnonymousClass6(z3, z4, Game.lang.get("Population"), -1, width5, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width11 = width5 + arrayList3.get(arrayList3.size() - 1).getWidth();
            i5 = iSortID;
            i6 = 7;
            if (i5 != 6) {
                z5 = true;
            } else {
                z5 = true;
            }
            if (i5 == 7) {
                z6 = true;
            } else {
                z6 = false;
            }
            arrayList3.add(new AnonymousClass7(z5, z6, Game.lang.get("Provinces"), -1, width11, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width12 = width11 + arrayList3.get(arrayList3.size() - 1).getWidth();
            i7 = iSortID;
            if (i7 != 8) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (i7 == 9) {
                z8 = true;
            } else {
                z8 = false;
            }
            arrayList3.add(new AnonymousClass8(z7, z8, Game.lang.get("Goods"), -1, width12, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            height = height3 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
            i8 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.4f);
            i9 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.15f);
            arrayList = new ArrayList();
            arrayList2 = new ArrayList();
            size = civsList.size();
            while (i10 < size) {
                arrayList.add(civsList.get(i10));
                arrayList2.add(Integer.valueOf((int) Game.getCiv(civsList.get(i10).intValue()).getPopulationTotal()));
            }
            while (arrayList.size() > 0) {
                i11 = iSortID;
                if (i11 == 0) {
                    i12 = i34;
                    while (i22 < arrayList.size()) {
                        if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).iCivRankPosition > Game.getCiv(((Integer) arrayList.get(i22)).intValue()).iCivRankPosition) {
                            i12 = i22;
                        }
                    }
                } else if (i11 == 1) {
                    i12 = i34;
                    while (i13 < arrayList.size()) {
                        if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).iCivRankPosition < Game.getCiv(((Integer) arrayList.get(i13)).intValue()).iCivRankPosition) {
                            i12 = i13;
                        }
                    }
                } else {
                    i12 = i34;
                }
                i14 = iSortID;
                if (i14 == 2) {
                    while (i21 < arrayList.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i21)).intValue()).getCivName())) {
                            i12 = i21;
                        }
                    }
                } else if (i14 == 3) {
                    while (i19 < arrayList.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i19)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getCivName())) {
                            i12 = i19;
                        }
                    }
                } else if (i14 == 4) {
                    while (i18 < arrayList.size()) {
                        if (((Integer) arrayList2.get(i12)).intValue() < ((Integer) arrayList2.get(i18)).intValue()) {
                            i12 = i18;
                        }
                    }
                } else if (i14 == 5) {
                    while (i17 < arrayList.size()) {
                        if (((Integer) arrayList2.get(i17)).intValue() < ((Integer) arrayList2.get(i12)).intValue()) {
                            i12 = i17;
                        }
                    }
                } else if (i14 == i39) {
                    while (i16 < arrayList.size()) {
                        if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getNumOfProvinces() < Game.getCiv(((Integer) arrayList.get(i16)).intValue()).getNumOfProvinces()) {
                            i12 = i16;
                        }
                    }
                } else if (i14 == i6) {
                    while (i15 < arrayList.size()) {
                        if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getNumOfProvinces() > Game.getCiv(((Integer) arrayList.get(i15)).intValue()).getNumOfProvinces()) {
                            i12 = i15;
                        }
                    }
                }
                i20 = i12;
                String str5 = str3;
                StringBuilder sb2 = new StringBuilder(str5);
                if (Game.getCiv(((Integer) arrayList.get(i20)).intValue()).iCivRankPosition < 0) {
                    civsSize = Game.getCivsSize();
                } else {
                    civsSize = Game.getCiv(((Integer) arrayList.get(i20)).intValue()).iCivRankPosition;
                }
                int i45 = width;
                int i46 = i8;
                str3 = str5;
                ArrayList arrayList5 = arrayList;
                int i47 = height;
                arrayList3.add(new AnonymousClass9(sb2.append(civsSize).toString(), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(((Integer) arrayList.get(i20)).intValue()), i23, height, i9, i36, ImageManager.getImage(Images.rankGold).getWidth()));
                arrayList3.get(arrayList3.size() - 1).setCurrent(((Integer) arrayList5.get(i20)).intValue());
                int width13 = arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING + i23;
                arrayList3.add(new AnonymousClass10(str3 + Game.getCiv(((Integer) arrayList5.get(i20)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width13, i47, i46, i36, ((Integer) arrayList5.get(i20)).intValue()));
                int width14 = width13 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                arrayList2 = arrayList2;
                arrayList3.add(new Text_StaticBG_ID(str3 + CFG.getShortNumber(((Integer) arrayList2.get(i20)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width14, i47, i9, i36, ((Integer) arrayList5.get(i20)).intValue()));
                int width15 = width14 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                arrayList3.add(new Text_StaticBG_ID(str3 + CFG.getNumberWithSpaces(str3 + Game.getCiv(((Integer) arrayList5.get(i20)).intValue()).getNumOfProvinces()), CFG.FONT_REGULAR_SMALL, -1, width15, i47, i9, i36, ((Integer) arrayList5.get(i20)).intValue()));
                arrayList3.add(new AnonymousClass11(ResourcesManager.getLargestGoodsProducedByCiv(((Integer) arrayList5.get(i20)).intValue()), width15 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, i47, i9, i36));
                arrayList3.get(arrayList3.size() - 1).setCurrent(((Integer) arrayList5.get(i20)).intValue());
                int height5 = i47 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                arrayList5.remove(i20);
                arrayList2.remove(i20);
                height = height5;
                arrayList = arrayList5;
                width = i45;
                i8 = i46;
                i6 = 7;
                i39 = i39;
                i34 = 0;
            }
            int i48 = height;
            int iMin2 = Math.min(i48, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 3));
            arrayList3.add(new Empty(0, 0, width, Math.max(i48, iMin2)));
            initMenu(new AnonymousClass12(civsListTitle, civsListTitle2, false, false, Images.title600), otherMenuPosX_2, height2, width, iMin2, arrayList3, false, true);
        }
        i2 = 3;
        z = true;
        if (i40 == i2) {
            z2 = true;
        } else {
            z2 = false;
        }
        arrayList3.add(new AnonymousClass5(z, z2, Game.lang.get(jkEBdieJhbh.pKtJtzs), -1, width4, height3, i26, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width16 = width4 + arrayList3.get(arrayList3.size() - 1).getWidth();
        i3 = iSortID;
        if (i3 != 4) {
            i4 = 5;
            if (i3 == 5) {
                z3 = false;
            }
            if (i3 == i4) {
                z4 = true;
            } else {
                z4 = false;
            }
            arrayList3.add(new AnonymousClass6(z3, z4, Game.lang.get("Population"), -1, width16, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width17 = width16 + arrayList3.get(arrayList3.size() - 1).getWidth();
            i5 = iSortID;
            i6 = 7;
            if (i5 != 6) {
                z5 = true;
            } else {
                z5 = true;
            }
            if (i5 == 7) {
                z6 = true;
            } else {
                z6 = false;
            }
            arrayList3.add(new AnonymousClass7(z5, z6, Game.lang.get("Provinces"), -1, width17, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width18 = width17 + arrayList3.get(arrayList3.size() - 1).getWidth();
            i7 = iSortID;
            if (i7 != 8) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (i7 == 9) {
                z8 = true;
            } else {
                z8 = false;
            }
            arrayList3.add(new AnonymousClass8(z7, z8, Game.lang.get("Goods"), -1, width18, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            height = height3 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
            i8 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.4f);
            i9 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.15f);
            arrayList = new ArrayList();
            arrayList2 = new ArrayList();
            size = civsList.size();
            while (i10 < size) {
                arrayList.add(civsList.get(i10));
                arrayList2.add(Integer.valueOf((int) Game.getCiv(civsList.get(i10).intValue()).getPopulationTotal()));
            }
            while (arrayList.size() > 0) {
                i11 = iSortID;
                if (i11 == 0) {
                    i12 = i34;
                    while (i22 < arrayList.size()) {
                        if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).iCivRankPosition > Game.getCiv(((Integer) arrayList.get(i22)).intValue()).iCivRankPosition) {
                            i12 = i22;
                        }
                    }
                } else if (i11 == 1) {
                    i12 = i34;
                    while (i13 < arrayList.size()) {
                        if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).iCivRankPosition < Game.getCiv(((Integer) arrayList.get(i13)).intValue()).iCivRankPosition) {
                            i12 = i13;
                        }
                    }
                } else {
                    i12 = i34;
                }
                i14 = iSortID;
                if (i14 == 2) {
                    while (i21 < arrayList.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i21)).intValue()).getCivName())) {
                            i12 = i21;
                        }
                    }
                } else if (i14 == 3) {
                    while (i19 < arrayList.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i19)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getCivName())) {
                            i12 = i19;
                        }
                    }
                } else if (i14 == 4) {
                    while (i18 < arrayList.size()) {
                        if (((Integer) arrayList2.get(i12)).intValue() < ((Integer) arrayList2.get(i18)).intValue()) {
                            i12 = i18;
                        }
                    }
                } else if (i14 == 5) {
                    while (i17 < arrayList.size()) {
                        if (((Integer) arrayList2.get(i17)).intValue() < ((Integer) arrayList2.get(i12)).intValue()) {
                            i12 = i17;
                        }
                    }
                } else if (i14 == i39) {
                    while (i16 < arrayList.size()) {
                        if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getNumOfProvinces() < Game.getCiv(((Integer) arrayList.get(i16)).intValue()).getNumOfProvinces()) {
                            i12 = i16;
                        }
                    }
                } else if (i14 == i6) {
                    while (i15 < arrayList.size()) {
                        if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getNumOfProvinces() > Game.getCiv(((Integer) arrayList.get(i15)).intValue()).getNumOfProvinces()) {
                            i12 = i15;
                        }
                    }
                }
                i20 = i12;
                String str6 = str3;
                StringBuilder sb3 = new StringBuilder(str6);
                if (Game.getCiv(((Integer) arrayList.get(i20)).intValue()).iCivRankPosition < 0) {
                    civsSize = Game.getCivsSize();
                } else {
                    civsSize = Game.getCiv(((Integer) arrayList.get(i20)).intValue()).iCivRankPosition;
                }
                int i49 = width;
                int i410 = i8;
                str3 = str6;
                ArrayList arrayList6 = arrayList;
                int i411 = height;
                arrayList3.add(new AnonymousClass9(sb3.append(civsSize).toString(), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(((Integer) arrayList.get(i20)).intValue()), i23, height, i9, i36, ImageManager.getImage(Images.rankGold).getWidth()));
                arrayList3.get(arrayList3.size() - 1).setCurrent(((Integer) arrayList6.get(i20)).intValue());
                int width19 = arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING + i23;
                arrayList3.add(new AnonymousClass10(str3 + Game.getCiv(((Integer) arrayList6.get(i20)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width19, i411, i410, i36, ((Integer) arrayList6.get(i20)).intValue()));
                int width110 = width19 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                arrayList2 = arrayList2;
                arrayList3.add(new Text_StaticBG_ID(str3 + CFG.getShortNumber(((Integer) arrayList2.get(i20)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width110, i411, i9, i36, ((Integer) arrayList6.get(i20)).intValue()));
                int width111 = width110 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                arrayList3.add(new Text_StaticBG_ID(str3 + CFG.getNumberWithSpaces(str3 + Game.getCiv(((Integer) arrayList6.get(i20)).intValue()).getNumOfProvinces()), CFG.FONT_REGULAR_SMALL, -1, width111, i411, i9, i36, ((Integer) arrayList6.get(i20)).intValue()));
                arrayList3.add(new AnonymousClass11(ResourcesManager.getLargestGoodsProducedByCiv(((Integer) arrayList6.get(i20)).intValue()), width111 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, i411, i9, i36));
                arrayList3.get(arrayList3.size() - 1).setCurrent(((Integer) arrayList6.get(i20)).intValue());
                int height6 = i411 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                arrayList6.remove(i20);
                arrayList2.remove(i20);
                height = height6;
                arrayList = arrayList6;
                width = i49;
                i8 = i410;
                i6 = 7;
                i39 = i39;
                i34 = 0;
            }
            int i412 = height;
            int iMin3 = Math.min(i412, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 3));
            arrayList3.add(new Empty(0, 0, width, Math.max(i412, iMin3)));
            initMenu(new AnonymousClass12(civsListTitle, civsListTitle2, false, false, Images.title600), otherMenuPosX_2, height2, width, iMin3, arrayList3, false, true);
        }
        i4 = 5;
        z3 = true;
        if (i3 == i4) {
            z4 = true;
        } else {
            z4 = false;
        }
        arrayList3.add(new AnonymousClass6(z3, z4, Game.lang.get("Population"), -1, width16, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width112 = width16 + arrayList3.get(arrayList3.size() - 1).getWidth();
        i5 = iSortID;
        i6 = 7;
        if (i5 != 6) {
            z5 = true;
        } else {
            z5 = true;
        }
        if (i5 == 7) {
            z6 = true;
        } else {
            z6 = false;
        }
        arrayList3.add(new AnonymousClass7(z5, z6, Game.lang.get("Provinces"), -1, width112, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width113 = width112 + arrayList3.get(arrayList3.size() - 1).getWidth();
        i7 = iSortID;
        if (i7 != 8) {
            z7 = true;
        } else {
            z7 = true;
        }
        if (i7 == 9) {
            z8 = true;
        } else {
            z8 = false;
        }
        arrayList3.add(new AnonymousClass8(z7, z8, Game.lang.get("Goods"), -1, width113, height3, i27, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        height = height3 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        i8 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.4f);
        i9 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 6)) * 0.15f);
        arrayList = new ArrayList();
        arrayList2 = new ArrayList();
        size = civsList.size();
        while (i10 < size) {
            arrayList.add(civsList.get(i10));
            arrayList2.add(Integer.valueOf((int) Game.getCiv(civsList.get(i10).intValue()).getPopulationTotal()));
        }
        while (arrayList.size() > 0) {
            i11 = iSortID;
            if (i11 == 0) {
                i12 = i34;
                while (i22 < arrayList.size()) {
                    if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).iCivRankPosition > Game.getCiv(((Integer) arrayList.get(i22)).intValue()).iCivRankPosition) {
                        i12 = i22;
                    }
                }
            } else if (i11 == 1) {
                i12 = i34;
                while (i13 < arrayList.size()) {
                    if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).iCivRankPosition < Game.getCiv(((Integer) arrayList.get(i13)).intValue()).iCivRankPosition) {
                        i12 = i13;
                    }
                }
            } else {
                i12 = i34;
            }
            i14 = iSortID;
            if (i14 == 2) {
                while (i21 < arrayList.size()) {
                    if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i21)).intValue()).getCivName())) {
                        i12 = i21;
                    }
                }
            } else if (i14 == 3) {
                while (i19 < arrayList.size()) {
                    if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList.get(i19)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getCivName())) {
                        i12 = i19;
                    }
                }
            } else if (i14 == 4) {
                while (i18 < arrayList.size()) {
                    if (((Integer) arrayList2.get(i12)).intValue() < ((Integer) arrayList2.get(i18)).intValue()) {
                        i12 = i18;
                    }
                }
            } else if (i14 == 5) {
                while (i17 < arrayList.size()) {
                    if (((Integer) arrayList2.get(i17)).intValue() < ((Integer) arrayList2.get(i12)).intValue()) {
                        i12 = i17;
                    }
                }
            } else if (i14 == i39) {
                while (i16 < arrayList.size()) {
                    if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getNumOfProvinces() < Game.getCiv(((Integer) arrayList.get(i16)).intValue()).getNumOfProvinces()) {
                        i12 = i16;
                    }
                }
            } else if (i14 == i6) {
                while (i15 < arrayList.size()) {
                    if (Game.getCiv(((Integer) arrayList.get(i12)).intValue()).getNumOfProvinces() > Game.getCiv(((Integer) arrayList.get(i15)).intValue()).getNumOfProvinces()) {
                        i12 = i15;
                    }
                }
            }
            i20 = i12;
            String str7 = str3;
            StringBuilder sb4 = new StringBuilder(str7);
            if (Game.getCiv(((Integer) arrayList.get(i20)).intValue()).iCivRankPosition < 0) {
                civsSize = Game.getCivsSize();
            } else {
                civsSize = Game.getCiv(((Integer) arrayList.get(i20)).intValue()).iCivRankPosition;
            }
            int i413 = width;
            int i414 = i8;
            str3 = str7;
            ArrayList arrayList7 = arrayList;
            int i415 = height;
            arrayList3.add(new AnonymousClass9(sb4.append(civsSize).toString(), CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(((Integer) arrayList.get(i20)).intValue()), i23, height, i9, i36, ImageManager.getImage(Images.rankGold).getWidth()));
            arrayList3.get(arrayList3.size() - 1).setCurrent(((Integer) arrayList7.get(i20)).intValue());
            int width114 = arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING + i23;
            arrayList3.add(new AnonymousClass10(str3 + Game.getCiv(((Integer) arrayList7.get(i20)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, width114, i415, i414, i36, ((Integer) arrayList7.get(i20)).intValue()));
            int width115 = width114 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
            arrayList2 = arrayList2;
            arrayList3.add(new Text_StaticBG_ID(str3 + CFG.getShortNumber(((Integer) arrayList2.get(i20)).intValue()), CFG.FONT_REGULAR_SMALL, -1, width115, i415, i9, i36, ((Integer) arrayList7.get(i20)).intValue()));
            int width116 = width115 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
            arrayList3.add(new Text_StaticBG_ID(str3 + CFG.getNumberWithSpaces(str3 + Game.getCiv(((Integer) arrayList7.get(i20)).intValue()).getNumOfProvinces()), CFG.FONT_REGULAR_SMALL, -1, width116, i415, i9, i36, ((Integer) arrayList7.get(i20)).intValue()));
            arrayList3.add(new AnonymousClass11(ResourcesManager.getLargestGoodsProducedByCiv(((Integer) arrayList7.get(i20)).intValue()), width116 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, i415, i9, i36));
            arrayList3.get(arrayList3.size() - 1).setCurrent(((Integer) arrayList7.get(i20)).intValue());
            int height7 = i415 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
            arrayList7.remove(i20);
            arrayList2.remove(i20);
            height = height7;
            arrayList = arrayList7;
            width = i413;
            i8 = i414;
            i6 = 7;
            i39 = i39;
            i34 = 0;
        }
        int i416 = height;
        int iMin4 = Math.min(i416, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 3));
        arrayList3.add(new Empty(0, 0, width, Math.max(i416, iMin4)));
        initMenu(new AnonymousClass12(civsListTitle, civsListTitle2, false, false, Images.title600), otherMenuPosX_2, height2, width, iMin4, arrayList3, false, true);
    }

    public static final void addCiv(int i) {
        for (int size = civsList.size() - 1; size >= 0; size--) {
            if (civsList.get(size).intValue() == i) {
                return;
            }
        }
        civsList.add(Integer.valueOf(i));
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
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop600, Images.insideBot600);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
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
