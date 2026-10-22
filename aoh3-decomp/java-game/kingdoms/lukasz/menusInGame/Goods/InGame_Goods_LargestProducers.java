package aoc.kingdoms.lukasz.menusInGame.Goods;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag2;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical;
import aoc.kingdoms.lukasz.menu_element.graph.Graph_Vertical_Data_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Resource;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_LargestProducer;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Goods_LargestProducers extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int RESOURCE_ID;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$1, reason: invalid class name */
    class AnonymousClass1 extends Graph_Vertical {
        AnonymousClass1(Graph_Vertical_Data_Type graph_Vertical_Data_Type, String str, String str2, int i, int i2, int i3, int i4, boolean z) {
            super(graph_Vertical_Data_Type, str, str2, i, i2, i3, i4, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(CoLRpi.RPfDE) + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LargestGoodsProducers"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG_LargestProducer {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Goods();
            Game.menuManager.setVisibleInGame_Goods(true);
            InGame_Goods.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$12, reason: invalid class name */
    class AnonymousClass12 extends Text_StaticBG_LargestProducer {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Goods();
            Game.menuManager.setVisibleInGame_Goods(true);
            InGame_Goods.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonFlag2 {
        AnonymousClass13(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() >= 0) {
                if (!Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getDrawProvince()) {
                    Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                }
                Game.setActiveProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                Game.menuManager.setVisibleInGame_Goods(false);
                Game.menuManager.rebuildInGame_Civ();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$14, reason: invalid class name */
    class AnonymousClass14 extends MenuTitleIMG_DoubleText {
        AnonymousClass14(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Goods_LargestProducers.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlueSort {
        AnonymousClass2(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Average") + ": " + Game.lang.get("Economy"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Average") + ": " + Game.lang.get("ProductionEfficiency"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$7, reason: invalid class name */
    class AnonymousClass7 extends TextIcon_Resource {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Goods_Provinces.RESOURCE_ID = getCurrent();
            InGame_Goods_Provinces.lTime = 0L;
            InGame_Goods_LargestProducers.lTime = 0L;
            Game.menuManager.rebuildInGame_Goods_Provinces();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LargestGoodsProducers"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Average") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(QefTqRjwAJmEDy.WgrnPXLA), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    public InGame_Goods_LargestProducers() {
        ArrayList arrayList = new ArrayList();
        int i = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.title928).getWidth();
        InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i2 = CFG.PADDING * 2;
        int i3 = CFG.PADDING;
        int i4 = Images.boxTitleBORDERWIDTH;
        int i5 = (int) (CFG.BUTTON_WIDTH * 1.25f);
        int height2 = ImageManager.getImage(Images.flagOverDefault).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 3);
        int i6 = width - (i * 2);
        int i7 = i6 - i5;
        int width2 = (i7 - ImageManager.getImage(Images.flagOverDefault).getWidth()) - (CFG.PADDING * 6);
        int width3 = i7 - ImageManager.getImage(Images.flagOverDefault).getWidth();
        InGame_Goods.inGoods = false;
        int i8 = width2;
        arrayList.add(new AnonymousClass1(Graph_Vertical_Data_Type.RESOURCE_PRODUCTION, Game.lang.get("Civilizations"), Game.lang.get("Civilizations"), i, i3, i6, (int) (CFG.BUTTON_HEIGHT * 3.0f), true));
        int height3 = i3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass2(false, false, Game.lang.get("Name"), -1, i4, height3, i5 + (CFG.PADDING * 3), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int width4 = i4 + arrayList.get(arrayList.size() - 1).getWidth();
        float f = width3;
        arrayList.add(new AnonymousClass3(false, false, Game.lang.get("Provinces"), -1, width4, height3, (int) (f * 0.25f), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int width5 = width4 + arrayList.get(arrayList.size() - 1).getWidth();
        int i9 = (int) (f * 0.2f);
        arrayList.add(new AnonymousClass4(false, false, Game.lang.get("Economy"), -1, width5, height3, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth();
        arrayList.add(new AnonymousClass5(false, false, Game.lang.get("ProductionEfficiency"), -1, width6, height3, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth();
        arrayList.add(new AnonymousClass6(true, false, Game.lang.get("LargestProducer"), -1, width7, height3, (width - width7) - Images.boxTitleBORDERWIDTH, CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i2;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        for (int i10 = 0; i10 < Game.getCivsSize(); i10++) {
            arrayList3.add(0);
            arrayList2.add(Integer.valueOf(i10));
            arrayList4.add(0);
            arrayList5.add(Float.valueOf(0.0f));
            arrayList6.add(Float.valueOf(0.0f));
        }
        for (int i11 = 0; i11 < Game.getProvincesSize(); i11++) {
            if (Game.getProvince(i11).getResourceID() == RESOURCE_ID && !Game.getProvince(i11).getSeaProvince() && Game.getProvince(i11).getCivID() > 0) {
                arrayList3.set(Game.getProvince(i11).getCivID(), Integer.valueOf(((Integer) arrayList3.get(Game.getProvince(i11).getCivID())).intValue() + ((int) (ResourcesManager.getProducedGoods(i11) * 100.0f))));
                arrayList4.set(Game.getProvince(i11).getCivID(), Integer.valueOf(((Integer) arrayList4.get(Game.getProvince(i11).getCivID())).intValue() + 1));
                arrayList5.set(Game.getProvince(i11).getCivID(), Float.valueOf(((Float) arrayList5.get(Game.getProvince(i11).getCivID())).floatValue() + Game.getProvince(i11).getEconomyWithBonuses()));
                arrayList6.set(Game.getProvince(i11).getCivID(), Float.valueOf(((Float) arrayList6.get(Game.getProvince(i11).getCivID())).floatValue() + ResourcesManager.getProductionEfficiency(i11)));
            }
        }
        for (int size = arrayList3.size() - 1; size >= 0; size--) {
            if (((Integer) arrayList3.get(size)).intValue() == 0) {
                arrayList3.remove(size);
                arrayList2.remove(size);
                arrayList4.remove(size);
                arrayList5.remove(size);
                arrayList6.remove(size);
            }
        }
        int i12 = 1;
        while (arrayList3.size() > 0) {
            int i13 = 0;
            for (int size2 = arrayList3.size() - 1; size2 > 0; size2--) {
                if (((Integer) arrayList3.get(i13)).intValue() < ((Integer) arrayList3.get(size2)).intValue()) {
                    i13 = size2;
                }
            }
            int i14 = width;
            ArrayList arrayList7 = arrayList2;
            int i15 = i13;
            ArrayList arrayList8 = arrayList3;
            ArrayList arrayList9 = arrayList6;
            arrayList.add(new AnonymousClass7("#" + i12, RESOURCE_ID, i, height4, i5, height2));
            int width8 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i;
            int i16 = i8;
            float f2 = i16;
            int i17 = (int) (f2 * 0.25f);
            int i18 = height4;
            arrayList.add(new AnonymousClass8("" + arrayList4.get(i15), CFG.FONT_REGULAR, -1, width8, i18, i17, height2));
            int width9 = width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int i19 = (int) (f2 * 0.2f);
            arrayList.add(new AnonymousClass9("" + CFG.getPrecision2(((Float) arrayList5.get(i15)).floatValue() / ((Integer) arrayList4.get(i15)).intValue(), 10), CFG.FONT_REGULAR, -1, width9, i18, i19, height2));
            int width10 = width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int i20 = i;
            arrayList.add(new AnonymousClass10("" + CFG.getPrecision2((((Float) arrayList9.get(i15)).floatValue() * 100.0f) / ((Integer) arrayList4.get(i15)).intValue(), 10) + "%", CFG.FONT_REGULAR, -1, width10, i18, i19, height2));
            int width11 = width10 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int i21 = height4;
            arrayList.add(new AnonymousClass11("" + CFG.getPrecision2(((Integer) arrayList8.get(i15)).intValue() / 100.0f, 10) + " / " + CFG.getPrecision2(ResourcesManager.worldResourcesProduced.get(RESOURCE_ID).intValue() / 100.0f, 10), RESOURCE_ID, CFG.FONT_REGULAR, -1, width11, i21, i17, height2));
            int width12 = width11 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass12("" + CFG.getPrecision2((float) Math.min(100.0d, Math.floor((((Integer) arrayList8.get(i15)).intValue() / ResourcesManager.worldResourcesProduced.get(RESOURCE_ID).intValue()) * 100.0f)), 10) + "%", RESOURCE_ID, CFG.FONT_BOLD, -1, width12, i21, (int) (f2 * 0.1f), height2));
            int width13 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + width12;
            arrayList.add(new AnonymousClass13(((Integer) arrayList7.get(i15)).intValue(), width13, height4, true));
            arrayList.add(new Text_StaticBG(Game.getCiv(((Integer) arrayList7.get(i15)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, -1, width13, CFG.PADDING + ImageManager.getImage(Images.flagOverDefault).getHeight() + height4, ImageManager.getImage(Images.flagOverDefault).getWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
            height4 += height2 + i2;
            arrayList8.remove(i15);
            arrayList7.remove(i15);
            arrayList4.remove(i15);
            arrayList5.remove(i15);
            arrayList9.remove(i15);
            arrayList2 = arrayList7;
            arrayList6 = arrayList9;
            arrayList3 = arrayList8;
            i12++;
            width = i14;
            i8 = i16;
            i = i20;
        }
        int i22 = width;
        int size3 = arrayList.size();
        int posY = 0;
        for (int i23 = 0; i23 < size3; i23++) {
            if (posY < arrayList.get(i23).getPosY() + arrayList.get(i23).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i23).getPosY() + arrayList.get(i23).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, i22, Math.max(posY, iMin)));
        initMenu(new AnonymousClass14("", Game.lang.get("Year") + ": " + Game_Calendar.currentYear, false, false, Images.title928), (CFG.GAME_WIDTH / 2) - (i22 / 2), height, i22, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.menuManager.setVisibleInGame_Goods(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG.r, Colors.COLOR_GRADIENT_BG.g, Colors.COLOR_GRADIENT_BG.b, 0.2f));
        Images.pix.draw2(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG.r, Colors.COLOR_GRADIENT_BG.g, Colors.COLOR_GRADIENT_BG.b, 0.65f));
        Images.gradientFull.draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop928, Images.insideBot928);
        spriteBatch.setColor(Colors.COLOR_GRADIENT);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameGoods();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("LargestGoodsProducers") + ": " + ResourcesManager.lResources.get(RESOURCE_ID).Name);
    }
}
