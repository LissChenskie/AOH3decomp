package aoc.kingdoms.lukasz.menusInGame.Goods;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
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
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Goods_Provinces extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int RESOURCE_ID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_Provinces$1, reason: invalid class name */
    class AnonymousClass1 extends Text_TitleBlueSort {
        AnonymousClass1(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_Provinces$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LargestGoodsProducers"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
            }
            return getIsHovered() ? Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER : Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_Provinces$11, reason: invalid class name */
    class AnonymousClass11 extends MenuTitleIMG_DoubleText {
        AnonymousClass11(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Goods_Provinces.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_Provinces$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlueSort {
        AnonymousClass2(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_Provinces$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_Provinces$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_Provinces$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5) {
            super(z, z2, str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_Provinces$6, reason: invalid class name */
    class AnonymousClass6 extends Text_StaticBG_ID_Flag {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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
                Game.menuManager.setVisibleInGame_Goods(false);
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_Provinces$7, reason: invalid class name */
    class AnonymousClass7 extends Text_StaticBG_ID {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LargestGoodsProducers"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_Provinces$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_ID {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LargestGoodsProducers"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_Provinces$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
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
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LargestGoodsProducers"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    public InGame_Goods_Provinces() {
        ArrayList arrayList = new ArrayList();
        int i = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.title928).getWidth();
        InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i2 = CFG.PADDING * 2;
        int i3 = Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.flagOverDefault).getHeight();
        int i4 = CFG.TEXT_HEIGHT;
        int i5 = CFG.PADDING;
        int i6 = width - (i * 2);
        int i7 = i6 - (CFG.PADDING * 6);
        InGame_Goods.inGoods = false;
        float f = i6;
        int i8 = i7;
        arrayList.add(new AnonymousClass1(false, false, Game.lang.get("Name"), -1, i3, 0, (int) (f * 0.3f), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int width2 = i3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i9 = (int) (f * 0.175f);
        arrayList.add(new AnonymousClass2(false, false, Game.lang.get("Economy"), -1, width2, 0, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        arrayList.add(new AnonymousClass3(false, false, Game.lang.get("ProductionEfficiency"), -1, width3, 0, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        arrayList.add(new AnonymousClass4(true, false, Game.lang.get("Production"), -1, width4, 0, i9, CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int width5 = width4 + arrayList.get(arrayList.size() - 1).getWidth();
        arrayList.add(new AnonymousClass5(false, false, Game.lang.get("MonthlyIncome"), -1, width5, 0, (width - width5) - Images.boxTitleBORDERWIDTH, CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int i10 = 0;
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + i2 + 0;
        int i11 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i12 = 0; i12 < Game.getProvincesSize(); i12++) {
            if (Game.getProvince(i12).getResourceID() == RESOURCE_ID) {
                arrayList2.add(Integer.valueOf(i12));
                arrayList3.add(Float.valueOf(ResourcesManager.getProducedGoods(i12)));
            }
        }
        int i13 = 1;
        while (arrayList3.size() > 0) {
            int i14 = i10;
            for (int size = arrayList3.size() - 1; size > 0; size--) {
                if (((Float) arrayList3.get(i14)).floatValue() < ((Float) arrayList3.get(size)).floatValue()) {
                    i14 = size;
                }
            }
            int i15 = i13 + 1;
            int i16 = i8;
            float f2 = i16;
            int i17 = width;
            int i18 = height;
            int i19 = i14;
            ArrayList arrayList4 = arrayList3;
            ArrayList arrayList5 = arrayList2;
            arrayList.add(new AnonymousClass6("" + i13 + HjHDSSkYG.wRmKPHglR + Game.getProvince(((Integer) arrayList2.get(i14)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, height2, (int) (f2 * 0.3f), i11, ((Integer) arrayList2.get(i14)).intValue()));
            int width6 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i;
            int i20 = (int) (f2 * 0.175f);
            arrayList.add(new AnonymousClass7(CFG.getPrecision2(Game.getProvince(((Integer) arrayList5.get(i19)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width6, height2, i20, i11, ((Integer) arrayList5.get(i19)).intValue()));
            int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass8("" + CFG.getPrecision2(ResourcesManager.getProductionEfficiency(((Integer) arrayList5.get(i19)).intValue()) * 100.0f, 10) + "%", CFG.FONT_REGULAR_SMALL, -1, width7, height2, i20, i11, ((Integer) arrayList5.get(i19)).intValue()));
            int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int i21 = height2;
            arrayList.add(new AnonymousClass9("" + CFG.getPrecision2(((Float) arrayList4.get(i19)).floatValue(), 10), CFG.FONT_REGULAR_SMALL, -1, width8, i21, i20, i11, ((Integer) arrayList5.get(i19)).intValue()));
            arrayList.add(new AnonymousClass10("" + CFG.getPrecision2(Game.getProvince(((Integer) arrayList5.get(i19)).intValue()).fProvinceIncomeProduction, 100), CFG.FONT_BOLD_SMALL, -1, width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, i21, i20, i11, ((Integer) arrayList5.get(i19)).intValue()));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList4.remove(i19);
            arrayList5.remove(i19);
            arrayList3 = arrayList4;
            arrayList2 = arrayList5;
            i13 = i15;
            i8 = i16;
            width = i17;
            height = i18;
            i10 = 0;
        }
        int i22 = height;
        int i23 = width;
        int size2 = arrayList.size();
        int posY = 0;
        for (int i24 = 0; i24 < size2; i24++) {
            if (posY < arrayList.get(i24).getPosY() + arrayList.get(i24).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i24).getPosY() + arrayList.get(i24).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - i22) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, i23, Math.max(posY, iMin)));
        initMenu(new AnonymousClass11("", Game.lang.get("Year") + ": " + Game_Calendar.currentYear, false, false, Images.title928), (CFG.GAME_WIDTH / 2) - (i23 / 2), i22, i23, iMin, arrayList, false, true);
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
        lTime = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("Provinces") + ": " + ResourcesManager.lResources.get(RESOURCE_ID).Name);
    }
}
