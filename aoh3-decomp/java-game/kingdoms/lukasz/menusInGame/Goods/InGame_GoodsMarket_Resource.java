package aoc.kingdoms.lukasz.menusInGame.Goods;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_GoodsMarket_Resource extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iActiveCivID;
    public static int iResourceID;
    public static int iSortID;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket_Resource$1, reason: invalid class name */
    class AnonymousClass1 extends Text_TitleBlueSort {
        AnonymousClass1(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_GoodsMarket_Resource.iSortID == 0) {
                InGame_GoodsMarket_Resource.iSortID = 1;
            } else {
                InGame_GoodsMarket_Resource.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_GoodsMarketResource();
            InGame_GoodsMarket_Resource.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket_Resource$10, reason: invalid class name */
    class AnonymousClass10 extends MenuTitleIMG_FlagCenter {
        AnonymousClass10(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_GoodsMarket_Resource.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_GoodsMarket_Resource.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket_Resource$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlueSort {
        AnonymousClass2(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_GoodsMarket_Resource.iSortID == 2) {
                InGame_GoodsMarket_Resource.iSortID = 3;
            } else {
                InGame_GoodsMarket_Resource.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_GoodsMarketResource();
            InGame_GoodsMarket_Resource.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ProductionEfficiency"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket_Resource$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_GoodsMarket_Resource.iSortID == 4) {
                InGame_GoodsMarket_Resource.iSortID = 5;
            } else {
                InGame_GoodsMarket_Resource.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_GoodsMarketResource();
            InGame_GoodsMarket_Resource.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + IwYCCQBuFGwl.UabYSOpdLGoU));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Production"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket_Resource$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_GoodsMarket_Resource.iSortID == 6) {
                InGame_GoodsMarket_Resource.iSortID = 7;
            } else {
                InGame_GoodsMarket_Resource.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_GoodsMarketResource();
            InGame_GoodsMarket_Resource.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket_Resource$5, reason: invalid class name */
    class AnonymousClass5 extends Text_StaticBG_ID {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince != getCurrent()) {
                Game.mapCoords.centerToProvinceID(getCurrent());
                Game.setActiveProvinceID(getCurrent());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            } else {
                Game.menuManager.setVisibleInGame_GoodsMarket(false);
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket_Resource$6, reason: invalid class name */
    class AnonymousClass6 extends Text_StaticBG_ID {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_GoodsMarket();
            InGame_GoodsMarket.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProductionEfficiency") + ": ", getText(), Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Back"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket_Resource$7, reason: invalid class name */
    class AnonymousClass7 extends Text_StaticBG_ID {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_GoodsMarket();
            InGame_GoodsMarket.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProducedGoods") + ": ", getText(), Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Back"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket_Resource$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsBudget_Right2 {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_GoodsMarket();
            InGame_GoodsMarket.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeProduction") + ": ", getText(), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Back"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket_Resource$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_GoodsMarket();
            InGame_GoodsMarket.lTime = 0L;
        }
    }

    /* JADX WARN: Code duplicated, block: B:129:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:130:0x03d6  */
    /* JADX WARN: Code duplicated, block: B:133:0x04f4  */
    /* JADX WARN: Code duplicated, block: B:134:0x04f7  */
    public InGame_GoodsMarket_Resource() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        float monthlyIncome;
        String str;
        ArrayList arrayList = new ArrayList();
        int i7 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.title500).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i8 = CFG.PADDING;
        int i9 = Images.boxTitleBORDERWIDTH;
        int i10 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.4f);
        int i11 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i12 = iSortID;
        arrayList.add(new AnonymousClass1(i12 == 0 || i12 == 1, i12 == 1, Game.lang.get("Name"), -1, i9, 0, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int i13 = 1;
        int width2 = i9 + arrayList.get(arrayList.size() - 1).getWidth();
        int i14 = iSortID;
        char c = 3;
        int i15 = 2;
        arrayList.add(new AnonymousClass2(i14 == 2 || i14 == 3, i14 == 3, Game.lang.get("ProductionEfficiency"), -1, width2, 0, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i16 = iSortID;
        arrayList.add(new AnonymousClass3(i16 == 4 || i16 == 5, i16 == 5, Game.lang.get("Production"), -1, width3, 0, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i17 = iSortID;
        arrayList.add(new AnonymousClass4(i17 == 6 || i17 == 7, i17 == 7, Game.lang.get("Income"), -1, width4, 0, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
        int i18 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i19 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.4f);
        int i20 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
        ArrayList arrayList2 = new ArrayList();
        for (int i21 = 0; i21 < Game.getCiv(iActiveCivID).getNumOfProvinces(); i21++) {
            if (Game.getProvince(Game.getCiv(iActiveCivID).getProvinceID(i21)).getResourceID() == iResourceID) {
                arrayList2.add(Integer.valueOf(Game.getCiv(iActiveCivID).getProvinceID(i21)));
            }
        }
        if (arrayList2.size() > 0) {
            int i22 = 1;
            while (arrayList2.size() > 0) {
                int i23 = iSortID;
                if (i23 == 0) {
                    int i24 = i13;
                    i5 = 0;
                    while (i24 < arrayList2.size()) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i5)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i24)).intValue()).getProvinceName())) {
                            i5 = i24;
                        }
                        i24++;
                        c = 3;
                    }
                } else {
                    if (i23 == i13) {
                        i4 = 0;
                        for (int i25 = i13; i25 < arrayList2.size(); i25++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i25)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getProvinceName())) {
                                i4 = i25;
                            }
                        }
                    } else {
                        if (i23 == i15) {
                            i4 = 0;
                            for (int i26 = i13; i26 < arrayList2.size(); i26++) {
                                if (ResourcesManager.getProductionEfficiency(((Integer) arrayList2.get(i26)).intValue()) > ResourcesManager.getProductionEfficiency(((Integer) arrayList2.get(i4)).intValue())) {
                                    i4 = i26;
                                }
                            }
                        } else {
                            c = 3;
                            if (i23 == 3) {
                                i4 = 0;
                                for (int i27 = i13; i27 < arrayList2.size(); i27++) {
                                    if (ResourcesManager.getProductionEfficiency(((Integer) arrayList2.get(i27)).intValue()) < ResourcesManager.getProductionEfficiency(((Integer) arrayList2.get(i4)).intValue())) {
                                        i4 = i27;
                                    }
                                }
                            } else if (i23 == 4) {
                                i5 = 0;
                                for (int i28 = i13; i28 < arrayList2.size(); i28++) {
                                    if (ResourcesManager.getProducedGoods(((Integer) arrayList2.get(i28)).intValue()) > ResourcesManager.getProducedGoods(((Integer) arrayList2.get(i5)).intValue())) {
                                        i5 = i28;
                                    }
                                }
                            } else if (i23 == 5) {
                                i4 = 0;
                                for (int i29 = i13; i29 < arrayList2.size(); i29++) {
                                    if (ResourcesManager.getProducedGoods(((Integer) arrayList2.get(i29)).intValue()) < ResourcesManager.getProducedGoods(((Integer) arrayList2.get(i4)).intValue())) {
                                        i4 = i29;
                                    }
                                }
                            } else if (i23 == 6) {
                                i5 = 0;
                                for (int i30 = i13; i30 < arrayList2.size(); i30++) {
                                    if (ResourcesManager.getMonthlyIncome(((Integer) arrayList2.get(i30)).intValue()) > ResourcesManager.getMonthlyIncome(((Integer) arrayList2.get(i5)).intValue())) {
                                        i5 = i30;
                                    }
                                }
                            } else if (i23 == 7) {
                                i4 = 0;
                                for (int i31 = i13; i31 < arrayList2.size(); i31++) {
                                    if (ResourcesManager.getMonthlyIncome(((Integer) arrayList2.get(i31)).intValue()) < ResourcesManager.getMonthlyIncome(((Integer) arrayList2.get(i4)).intValue())) {
                                        i4 = i31;
                                    }
                                }
                            } else {
                                i4 = 0;
                            }
                        }
                        int i32 = i22 + 1;
                        String str2 = "" + i22 + ". " + Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getProvinceName();
                        if (Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).isCapital) {
                            i6 = CFG.FONT_BOLD_SMALL;
                        } else {
                            i6 = CFG.FONT_REGULAR_SMALL;
                        }
                        int i33 = i20;
                        int i34 = i19;
                        int i35 = otherMenuPosX_2;
                        int i36 = i6;
                        int i37 = i4;
                        int i38 = height;
                        int i39 = width;
                        char c2 = c;
                        int i40 = i13;
                        arrayList.add(new AnonymousClass5(str2, i36, CFG.PADDING * 2, i7, height2, i34, i18, ((Integer) arrayList2.get(i4)).intValue()));
                        int width5 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i7;
                        int i41 = height2;
                        arrayList.add(new AnonymousClass6("" + CFG.getPrecision2(ResourcesManager.getProductionEfficiency(((Integer) arrayList2.get(i37)).intValue()) * 100.0f, 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width5, i41, i33, i18, ((Integer) arrayList2.get(i37)).intValue()));
                        int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        arrayList.add(new AnonymousClass7("" + CFG.getPrecision2(ResourcesManager.getProducedGoods(((Integer) arrayList2.get(i37)).intValue()), 10), CFG.FONT_REGULAR_SMALL, -1, width6, i41, i33, i18, ((Integer) arrayList2.get(i37)).intValue()));
                        int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        monthlyIncome = ResourcesManager.getMonthlyIncome(((Integer) arrayList2.get(i37)).intValue());
                        StringBuilder sb = new StringBuilder();
                        if (monthlyIncome > 0.0f) {
                            str = "+";
                        } else {
                            str = "";
                        }
                        arrayList.add(new AnonymousClass8(sb.append(str).append(CFG.getPrecision2(monthlyIncome, 100)).toString(), width7, height2, i33, i18, ((Integer) arrayList2.get(i37)).intValue()));
                        height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList2.remove(i37);
                        i22 = i32;
                        i20 = i33;
                        i19 = i34;
                        height = i38;
                        otherMenuPosX_2 = i35;
                        width = i39;
                        i15 = 2;
                        c = c2;
                        i13 = i40;
                    }
                    c = 3;
                    int i310 = i22 + 1;
                    String str3 = "" + i22 + ". " + Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getProvinceName();
                    if (Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).isCapital) {
                        i6 = CFG.FONT_BOLD_SMALL;
                    } else {
                        i6 = CFG.FONT_REGULAR_SMALL;
                    }
                    int i311 = i20;
                    int i312 = i19;
                    int i313 = otherMenuPosX_2;
                    int i314 = i6;
                    int i315 = i4;
                    int i316 = height;
                    int i317 = width;
                    char c3 = c;
                    int i42 = i13;
                    arrayList.add(new AnonymousClass5(str3, i314, CFG.PADDING * 2, i7, height2, i312, i18, ((Integer) arrayList2.get(i4)).intValue()));
                    int width8 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i7;
                    int i43 = height2;
                    arrayList.add(new AnonymousClass6("" + CFG.getPrecision2(ResourcesManager.getProductionEfficiency(((Integer) arrayList2.get(i315)).intValue()) * 100.0f, 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width8, i43, i311, i18, ((Integer) arrayList2.get(i315)).intValue()));
                    int width9 = width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    arrayList.add(new AnonymousClass7("" + CFG.getPrecision2(ResourcesManager.getProducedGoods(((Integer) arrayList2.get(i315)).intValue()), 10), CFG.FONT_REGULAR_SMALL, -1, width9, i43, i311, i18, ((Integer) arrayList2.get(i315)).intValue()));
                    int width10 = width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    monthlyIncome = ResourcesManager.getMonthlyIncome(((Integer) arrayList2.get(i315)).intValue());
                    StringBuilder sb2 = new StringBuilder();
                    if (monthlyIncome > 0.0f) {
                        str = "+";
                    } else {
                        str = "";
                    }
                    arrayList.add(new AnonymousClass8(sb2.append(str).append(CFG.getPrecision2(monthlyIncome, 100)).toString(), width10, height2, i311, i18, ((Integer) arrayList2.get(i315)).intValue()));
                    height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.remove(i315);
                    i22 = i310;
                    i20 = i311;
                    i19 = i312;
                    height = i316;
                    otherMenuPosX_2 = i313;
                    width = i317;
                    i15 = 2;
                    c = c3;
                    i13 = i42;
                }
                i4 = i5;
                int i318 = i22 + 1;
                String str4 = "" + i22 + ". " + Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getProvinceName();
                if (Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).isCapital) {
                    i6 = CFG.FONT_BOLD_SMALL;
                } else {
                    i6 = CFG.FONT_REGULAR_SMALL;
                }
                int i319 = i20;
                int i3110 = i19;
                int i3111 = otherMenuPosX_2;
                int i3112 = i6;
                int i3113 = i4;
                int i3114 = height;
                int i3115 = width;
                char c4 = c;
                int i44 = i13;
                arrayList.add(new AnonymousClass5(str4, i3112, CFG.PADDING * 2, i7, height2, i3110, i18, ((Integer) arrayList2.get(i4)).intValue()));
                int width11 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i7;
                int i45 = height2;
                arrayList.add(new AnonymousClass6("" + CFG.getPrecision2(ResourcesManager.getProductionEfficiency(((Integer) arrayList2.get(i3113)).intValue()) * 100.0f, 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width11, i45, i319, i18, ((Integer) arrayList2.get(i3113)).intValue()));
                int width12 = width11 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass7("" + CFG.getPrecision2(ResourcesManager.getProducedGoods(((Integer) arrayList2.get(i3113)).intValue()), 10), CFG.FONT_REGULAR_SMALL, -1, width12, i45, i319, i18, ((Integer) arrayList2.get(i3113)).intValue()));
                int width13 = width12 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                monthlyIncome = ResourcesManager.getMonthlyIncome(((Integer) arrayList2.get(i3113)).intValue());
                StringBuilder sb3 = new StringBuilder();
                if (monthlyIncome > 0.0f) {
                    str = "+";
                } else {
                    str = "";
                }
                arrayList.add(new AnonymousClass8(sb3.append(str).append(CFG.getPrecision2(monthlyIncome, 100)).toString(), width13, height2, i319, i18, ((Integer) arrayList2.get(i3113)).intValue()));
                height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList2.remove(i3113);
                i22 = i318;
                i20 = i319;
                i19 = i3110;
                height = i3114;
                otherMenuPosX_2 = i3111;
                width = i3115;
                i15 = 2;
                c = c4;
                i13 = i44;
            }
            i = otherMenuPosX_2;
            i2 = height;
            i3 = width;
        } else {
            i = otherMenuPosX_2;
            i2 = height;
            i3 = width;
            arrayList.add(new AnonymousClass9(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i7, height2, i3 - (i7 * 2), CFG.BUTTON_HEIGHT2));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int iMin = Math.min(height2, (CFG.GAME_HEIGHT - i2) - (CFG.PADDING * 3));
        int i46 = i3;
        arrayList.add(new Empty(0, 0, i46, Math.max(height2, iMin)));
        initMenu(new AnonymousClass10(ResourcesManager.getResourceName(iResourceID), Game.getCiv(iActiveCivID).getCivName(), false, false, Images.title500), i, i2, i46, iMin, arrayList, false, true);
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
