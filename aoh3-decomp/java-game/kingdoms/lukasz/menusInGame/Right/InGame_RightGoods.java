package aoc.kingdoms.lukasz.menusInGame.Right;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Resource2;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Data;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Value;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_WithStatsResources;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RightGoods extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iActiveResID = -1;
    public static int iSortID;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
            }
            return getIsHovered() ? Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER : Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods$11, reason: invalid class name */
    class AnonymousClass11 extends MenuTitleIMG {
        AnonymousClass11(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            ImageManager.getImage(this.imageID).draw2(spriteBatch, i, i2 - getHeight(), i3, getHeight());
            drawGradient(spriteBatch, i, i2, i3, status);
            drawText(spriteBatch, i + (Images.boxTitleBORDERWIDTH / 2), i2, i3, status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_RightGoods.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods$2, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Resources") + ": ", Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Provinces") + " %", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods$3, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("Production2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Bonuses_Style {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Goods();
            Game.menuManager.setVisibleInGame_Goods(true);
            InGame_Goods.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightGoods.iSortID == 0) {
                InGame_RightGoods.iSortID = 1;
            } else {
                InGame_RightGoods.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RightGoods();
            InGame_RightGoods.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightGoods.iSortID == 2) {
                InGame_RightGoods.iSortID = 3;
            } else {
                InGame_RightGoods.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RightGoods();
            InGame_RightGoods.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightGoods.iSortID == 4) {
                InGame_RightGoods.iSortID = 5;
            } else {
                InGame_RightGoods.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_RightGoods();
            InGame_RightGoods.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Price"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsRectIMG_Resource2 {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_RightGoods.iActiveResID = getCurrent();
            Game.menuManager.rebuildInGame_RightGoodsProvinces();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(qIuEvFbUtcea.DPrdcyviJXgBWm) + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(ResourcesManager.lResources.get(getCurrent()).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", getText(), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:150:0x0620  */
    /* JADX WARN: Code duplicated, block: B:152:0x063a  */
    /* JADX WARN: Code duplicated, block: B:183:0x0652 A[SYNTHETIC] */
    public InGame_RightGoods() {
        int i;
        int size;
        int posY;
        int i2;
        ArrayList arrayList;
        ArrayList arrayList2;
        char c;
        char c2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        ArrayList arrayList3 = new ArrayList();
        int i7 = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i8 = Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.title1Red).getWidth();
        int i9 = CFG.GAME_WIDTH - width;
        int height = ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i10 = CFG.PADDING;
        int i11 = CFG.PADDING;
        int i12 = i7 + Images.boxTitleBORDERWIDTH;
        int i13 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i14 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.5f);
        int i15 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i16 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i17 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.5f);
        int i18 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.25f);
        int i19 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.25f);
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        int size2 = ResourcesManager.resourceImages.size();
        int width2 = 0;
        for (int i20 = 0; i20 < size2; i20++) {
            if (width2 < ResourcesManager.resourceImages.get(i20).getWidth()) {
                width2 = ResourcesManager.resourceImages.get(i20).getWidth();
            }
        }
        for (int i21 = 0; i21 < ResourcesManager.iResourcesSize; i21++) {
            arrayList4.add(Integer.valueOf(i21));
            arrayList5.add(0);
        }
        for (int i22 = 0; i22 < Game.getProvincesSize(); i22++) {
            if (Game.getProvince(i22).getWasteland() < 0 && Game.getProvince(i22).getResourceID() >= 0) {
                arrayList5.set(Game.getProvince(i22).getResourceID(), Integer.valueOf(((Integer) arrayList5.get(Game.getProvince(i22).getResourceID())).intValue() + 1));
            }
        }
        int size3 = arrayList4.size() - 1;
        while (size3 >= 0) {
            if (ResourcesManager.lResources.get(((Integer) arrayList4.get(size3)).intValue()).RequiredTechID >= 0) {
                int i23 = 1;
                while (true) {
                    if (i23 >= Game.getCivsSize()) {
                        i5 = i19;
                        i6 = i18;
                        z = true;
                        break;
                    }
                    i5 = i19;
                    i6 = i18;
                    if (Game.getCiv(i23).getTechResearched(ResourcesManager.lResources.get(((Integer) arrayList4.get(size3)).intValue()).RequiredTechID)) {
                        z = false;
                        break;
                    } else {
                        i23++;
                        i19 = i5;
                        i18 = i6;
                    }
                }
                if (z) {
                    arrayList4.remove(size3);
                    arrayList5.remove(size3);
                }
            } else {
                i5 = i19;
                i6 = i18;
            }
            size3--;
            i19 = i5;
            i18 = i6;
        }
        int i24 = i19;
        int i25 = i18;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            if (((Integer) arrayList4.get(size4)).intValue() > 0.001f) {
                anonymousClass1.addPieChartValues(new PieChart_Value(((Integer) arrayList4.get(size4)).intValue(), ((Integer) arrayList5.get(size4)).intValue()));
            }
        }
        int i26 = (CFG.BUTTON_HEIGHT3 * 2) + CFG.PADDING;
        ArrayList arrayList6 = arrayList5;
        ArrayList arrayList7 = arrayList4;
        arrayList3.add(new AnonymousClass2(i12, i11 + CFG.PADDING, i26 - (CFG.PADDING * 2), i26 - (CFG.PADDING * 2), anonymousClass1, null));
        int posX = arrayList3.get(arrayList3.size() - 1).getPosX() + arrayList3.get(arrayList3.size() - 1).getWidth() + (CFG.PADDING * 2);
        int i27 = (width - i7) - posX;
        int height2 = i11 + arrayList3.get(arrayList3.size() - 1).getHeight() + (CFG.PADDING * 3);
        int i28 = width2;
        arrayList3.add(new AnonymousClass3(Game.lang.get("LargestGoodsProducers"), Images.goods, posX, i11, i27, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.goods).getWidth(), 0, true));
        arrayList3.add(new AnonymousClass4(Game.lang.get("Resources") + ": ", "" + ResourcesManager.iResourcesSize, Images.goods, posX, i11 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING, i27, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.battleWidth).getWidth()));
        int i29 = Images.boxTitleBORDERWIDTH;
        int i30 = iSortID;
        arrayList3.add(new AnonymousClass5(i30 == 0 || i30 == 1, i30 == 1, Game.lang.get("Name"), -1, i29, height2, i14, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = i29 + arrayList3.get(arrayList3.size() - 1).getWidth();
        int i31 = iSortID;
        int i32 = 2;
        arrayList3.add(new AnonymousClass6(i31 == 2 || i31 == 3, i31 == 3, Game.lang.get("Provinces"), -1, width3, height2, i15, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList3.get(arrayList3.size() - 1).getWidth();
        int i33 = iSortID;
        arrayList3.add(new AnonymousClass7(i33 == 4 || i33 == 5, i33 == 5, Game.lang.get("Price"), -1, width4, height2, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height3 = height2 + arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
        while (arrayList7.size() > 0) {
            try {
                int i34 = iSortID;
                try {
                    if (i34 == 0) {
                        i4 = 0;
                        int i35 = 1;
                        while (i35 < arrayList7.size()) {
                            ArrayList arrayList8 = arrayList7;
                            if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(((Integer) arrayList8.get(i4)).intValue()), ResourcesManager.getResourceName(((Integer) arrayList8.get(i35)).intValue()))) {
                                i4 = i35;
                            }
                            i35++;
                            arrayList7 = arrayList8;
                        }
                        arrayList = arrayList7;
                    } else {
                        arrayList = arrayList7;
                        if (i34 == 1) {
                            i4 = 0;
                            for (int i36 = 1; i36 < arrayList.size(); i36++) {
                                if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(((Integer) arrayList.get(i36)).intValue()), ResourcesManager.getResourceName(((Integer) arrayList.get(i4)).intValue()))) {
                                    i4 = i36;
                                }
                            }
                        } else if (i34 == i32) {
                            int i37 = 0;
                            int i38 = 1;
                            while (i38 < arrayList.size()) {
                                ArrayList arrayList9 = arrayList6;
                                if (((Integer) arrayList9.get(i37)).intValue() < ((Integer) arrayList9.get(i38)).intValue()) {
                                    i37 = i38;
                                }
                                i38++;
                                arrayList6 = arrayList9;
                            }
                            arrayList2 = arrayList6;
                            i3 = i37;
                            c2 = 5;
                            c = 4;
                        } else {
                            arrayList2 = arrayList6;
                            if (i34 == 3) {
                                int i39 = 0;
                                for (int i40 = 1; i40 < arrayList.size(); i40++) {
                                    if (((Integer) arrayList2.get(i39)).intValue() > ((Integer) arrayList2.get(i40)).intValue()) {
                                        i39 = i40;
                                    }
                                }
                                i3 = i39;
                                c2 = 5;
                                c = 4;
                            } else {
                                c = 4;
                                if (i34 == 4) {
                                    int i41 = 0;
                                    for (int i42 = 1; i42 < arrayList.size(); i42++) {
                                        if (ResourcesManager.getPrice(((Integer) arrayList.get(i41)).intValue()) < ResourcesManager.getPrice(((Integer) arrayList.get(i42)).intValue())) {
                                            i41 = i42;
                                        }
                                    }
                                    i3 = i41;
                                    c2 = 5;
                                } else {
                                    c2 = 5;
                                    if (i34 == 5) {
                                        int i43 = 0;
                                        for (int i44 = 1; i44 < arrayList.size(); i44++) {
                                            if (ResourcesManager.getPrice(((Integer) arrayList.get(i43)).intValue()) > ResourcesManager.getPrice(((Integer) arrayList.get(i44)).intValue())) {
                                                i43 = i44;
                                            }
                                        }
                                        i3 = i43;
                                    } else {
                                        i3 = 0;
                                    }
                                }
                            }
                        }
                        int i45 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        int i46 = i3;
                        i = width;
                        ArrayList arrayList10 = arrayList2;
                        arrayList3.add(new AnonymousClass8(ResourcesManager.getResourceName(((Integer) arrayList.get(i3)).intValue()), ((Integer) arrayList.get(i3)).intValue(), i45, height3, i17, i13, i28, ((Integer) arrayList.get(i3)).intValue()));
                        int width5 = i45 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                        arrayList3.add(new AnonymousClass9("" + CFG.getNumberWithSpaces("" + arrayList10.get(i46)), CFG.FONT_REGULAR_SMALL, -1, width5, height3, i25, i13));
                        arrayList3.add(new AnonymousClass10(CFG.getPrecision2(ResourcesManager.getPrice(((Integer) arrayList.get(i46)).intValue()), 100), CFG.FONT_BOLD_SMALL, -1, width5 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, height3, i24, i13));
                        arrayList3.get(arrayList3.size() - 1).getWidth();
                        int i47 = CFG.PADDING;
                        height3 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                        arrayList.remove(i46);
                        arrayList10.remove(i46);
                        arrayList7 = arrayList;
                        i32 = 2;
                        arrayList6 = arrayList10;
                        width = i;
                    }
                    arrayList3.add(new AnonymousClass8(ResourcesManager.getResourceName(((Integer) arrayList.get(i3)).intValue()), ((Integer) arrayList.get(i3)).intValue(), i45, height3, i17, i13, i28, ((Integer) arrayList.get(i3)).intValue()));
                    int width6 = i45 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                    arrayList3.add(new AnonymousClass9("" + CFG.getNumberWithSpaces("" + arrayList10.get(i46)), CFG.FONT_REGULAR_SMALL, -1, width6, height3, i25, i13));
                    arrayList3.add(new AnonymousClass10(CFG.getPrecision2(ResourcesManager.getPrice(((Integer) arrayList.get(i46)).intValue()), 100), CFG.FONT_BOLD_SMALL, -1, width6 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING, height3, i24, i13));
                    arrayList3.get(arrayList3.size() - 1).getWidth();
                    int i48 = CFG.PADDING;
                    height3 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.remove(i46);
                    arrayList10.remove(i46);
                    arrayList7 = arrayList;
                    i32 = 2;
                    arrayList6 = arrayList10;
                    width = i;
                } catch (Exception e) {
                    e = e;
                    CFG.exceptionStack(e);
                    size = arrayList3.size();
                    posY = 0;
                    for (i2 = 0; i2 < size; i2++) {
                        if (posY < arrayList3.get(i2).getPosY() + arrayList3.get(i2).getHeight() + CFG.PADDING) {
                            posY = arrayList3.get(i2).getPosY() + arrayList3.get(i2).getHeight() + CFG.PADDING;
                        }
                    }
                    int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
                    int i49 = i;
                    arrayList3.add(new Empty(0, 0, i49, Math.max(posY, iMin)));
                    initMenu(new AnonymousClass11(Game.lang.get("Resources"), false, false, Images.title600), i9, height, i49, iMin, arrayList3, false, true);
                    this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
                }
                i3 = i4;
                arrayList2 = arrayList6;
                c2 = 5;
                c = 4;
                int i410 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                int i411 = i3;
                i = width;
                ArrayList arrayList11 = arrayList2;
            } catch (Exception e2) {
                e = e2;
                i = width;
            }
        }
        i = width;
        size = arrayList3.size();
        posY = 0;
        while (i2 < size) {
            if (posY < arrayList3.get(i2).getPosY() + arrayList3.get(i2).getHeight() + CFG.PADDING) {
                posY = arrayList3.get(i2).getPosY() + arrayList3.get(i2).getHeight() + CFG.PADDING;
            }
        }
        int iMin2 = Math.min(posY, (CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
        int i412 = i;
        arrayList3.add(new Empty(0, 0, i412, Math.max(posY, iMin2)));
        initMenu(new AnonymousClass11(Game.lang.get("Resources"), false, false, Images.title600), i9, height, i412, iMin2, arrayList3, false, true);
        this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (CFG.BUTTON_WIDTH + i) - ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop600, Images.insideBot600);
        spriteBatch.setColor(Colors.COLOR_GRADIENT);
        Images.gradientXY.draw(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && !Game.menuManager.getVisibleInGame_CivBonuses();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
    }
}
