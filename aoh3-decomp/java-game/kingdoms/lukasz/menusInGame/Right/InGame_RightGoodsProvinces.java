package aoc.kingdoms.lukasz.menusInGame.Right;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
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
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_RightGoodsProvinces extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID = 2;
    public static long lTime;
    public static long lTime2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoodsProvinces$1, reason: invalid class name */
    class AnonymousClass1 extends Text_TitleBlueSort {
        AnonymousClass1(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightGoodsProvinces.iSortID == 0) {
                InGame_RightGoodsProvinces.iSortID = 1;
            } else {
                InGame_RightGoodsProvinces.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_RightGoodsProvinces();
            InGame_RightGoodsProvinces.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoodsProvinces$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlueSort {
        AnonymousClass2(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightGoodsProvinces.iSortID == 2) {
                InGame_RightGoodsProvinces.iSortID = 3;
            } else {
                InGame_RightGoodsProvinces.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_RightGoodsProvinces();
            InGame_RightGoodsProvinces.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoodsProvinces$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_RightGoodsProvinces.iSortID == 4) {
                InGame_RightGoodsProvinces.iSortID = 5;
            } else {
                InGame_RightGoodsProvinces.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_RightGoodsProvinces();
            InGame_RightGoodsProvinces.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoodsProvinces$4, reason: invalid class name */
    class AnonymousClass4 extends Text_StaticBG_ID_Flag {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince == getCurrent()) {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.setActiveProvinceID(getCurrent());
                Game.menuManager.rebuildInGame_ProvinceInfo(true);
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                return;
            }
            Game.mapCoords.centerToProvinceID(getCurrent());
            Game.setActiveProvinceID(getCurrent());
            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                Game.menuManager.rebuildInGame_ProvinceInfo(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvince(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoodsProvinces$5, reason: invalid class name */
    class AnonymousClass5 extends Text_StaticBG {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            InGame_RightGoods.iActiveResID = -1;
            Game.menuManager.rebuildInGame_RightGoods();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Resources"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(Game.lang.get("Production") + ": ", getText(), InGame_RightGoods.iActiveResID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoodsProvinces$6, reason: invalid class name */
    class AnonymousClass6 extends Text_StaticBG {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            InGame_RightGoods.iActiveResID = -1;
            Game.menuManager.rebuildInGame_RightGoods();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Resources"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeProduction") + ": ", getText(), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
            }
            return getIsHovered() ? Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER : Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoodsProvinces$7, reason: invalid class name */
    class AnonymousClass7 extends MenuTitleIMG_DoubleText {
        AnonymousClass7(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            ImageManager.getImage(this.imageID).draw2(spriteBatch, i, i2 - getHeight(), i3, getHeight());
            drawGradient(spriteBatch, i, i2, i3, status);
            drawText(spriteBatch, i + (Images.boxTitleBORDERWIDTH / 2), i2, i3, status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_RightGoodsProvinces.lTime2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:110:0x03c0  */
    /* JADX WARN: Code duplicated, block: B:113:0x041b  */
    /* JADX WARN: Code duplicated, block: B:114:0x041e  */
    /* JADX WARN: Code duplicated, block: B:128:0x049f  */
    /* JADX WARN: Code duplicated, block: B:130:0x04b9  */
    /* JADX WARN: Code duplicated, block: B:147:0x04d1 A[SYNTHETIC] */
    public InGame_RightGoodsProvinces() {
        int i;
        int i2;
        int i3;
        int i4;
        int size;
        int i5;
        int posY;
        char c;
        int i6;
        int i7;
        int i8;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i9;
        int i10;
        int i11;
        ArrayList arrayList3 = new ArrayList();
        int i12 = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i13 = Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.title1Red).getWidth();
        int i14 = CFG.GAME_WIDTH - width;
        int height = ImageManager.getImage(Images.topStats).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i15 = CFG.PADDING;
        int i16 = Images.boxTitleBORDERWIDTH;
        int i17 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i18 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.5f);
        int i19 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i20 = (int) ((width - Images.boxTitleBORDERWIDTH) * 0.25f);
        int i21 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.5f);
        int i22 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.25f);
        int i23 = (int) (((width - Images.boxTitleBORDERWIDTH) - (CFG.PADDING * 4)) * 0.25f);
        int i24 = Images.boxTitleBORDERWIDTH;
        int i25 = iSortID;
        arrayList3.add(new AnonymousClass1(i25 == 0 || i25 == 1, i25 == 1, Game.lang.get("Name"), -1, i24, 0, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int i26 = 1;
        int width2 = i24 + arrayList3.get(arrayList3.size() - 1).getWidth();
        int i27 = iSortID;
        arrayList3.add(new AnonymousClass2(i27 == 2 || i27 == 3, i27 == 3, Game.lang.get("Production"), -1, width2, 0, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList3.get(arrayList3.size() - 1).getWidth();
        int i28 = iSortID;
        arrayList3.add(new AnonymousClass3(i28 == 4 || i28 == 5, i28 == 5, Game.lang.get("Income"), -1, width3, 0, i20, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height2 = arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING + 0;
        try {
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            int i29 = 0;
            for (int i30 = 0; i30 < Game.getProvincesSize(); i30++) {
                try {
                    try {
                        if (Game.getProvince(i30).getResourceID() == InGame_RightGoods.iActiveResID) {
                            arrayList4.add(Integer.valueOf(i30));
                            arrayList5.add(Float.valueOf(ResourcesManager.getProducedGoods(i30)));
                            arrayList6.add(Float.valueOf(ResourcesManager.getMonthlyIncome(i30)));
                            i29++;
                        }
                    } catch (Exception e) {
                        e = e;
                        i = i14;
                        i2 = height;
                        i3 = width;
                        i4 = i29;
                        CFG.exceptionStack(e);
                        size = arrayList3.size();
                        posY = 0;
                        for (i5 = 0; i5 < size; i5++) {
                            if (posY < arrayList3.get(i5).getPosY() + arrayList3.get(i5).getHeight() + CFG.PADDING) {
                                posY = arrayList3.get(i5).getPosY() + arrayList3.get(i5).getHeight() + CFG.PADDING;
                            }
                        }
                        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - i2) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
                        int i31 = i3;
                        arrayList3.add(new Empty(0, 0, i31, Math.max(posY, iMin)));
                        initMenu(new AnonymousClass7(ResourcesManager.getResourceName(InGame_RightGoods.iActiveResID), Game.lang.get(LBhZogys.jdggFoc) + ": " + i4, false, false, Images.title600), i, i2, i31, iMin, arrayList3, false, true);
                        this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
                    }
                } catch (Exception e2) {
                    e = e2;
                    i = i14;
                    i2 = height;
                    i3 = width;
                }
            }
            int i32 = 1;
            while (arrayList4.size() > 0) {
                int i33 = iSortID;
                try {
                    if (i33 == 0) {
                        i8 = 0;
                        for (int i34 = i26; i34 < arrayList4.size(); i34++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList4.get(i8)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList4.get(i34)).intValue()).getProvinceName())) {
                                i8 = i34;
                            }
                        }
                    } else {
                        if (i33 == i26) {
                            i8 = 0;
                            for (int i35 = i26; i35 < arrayList4.size(); i35++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList4.get(i35)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList4.get(i8)).intValue()).getProvinceName())) {
                                    i8 = i35;
                                }
                            }
                        } else {
                            c = 2;
                            if (i33 == 2) {
                                i7 = 0;
                                for (int i36 = 1; i36 < arrayList4.size(); i36++) {
                                    if (((Float) arrayList5.get(i7)).floatValue() < ((Float) arrayList5.get(i36)).floatValue()) {
                                        i7 = i36;
                                    }
                                }
                            } else if (i33 == 3) {
                                i7 = 0;
                                for (int i37 = 1; i37 < arrayList4.size(); i37++) {
                                    if (((Float) arrayList5.get(i7)).floatValue() > ((Float) arrayList5.get(i37)).floatValue()) {
                                        i7 = i37;
                                    }
                                }
                            } else if (i33 == 4) {
                                i7 = 0;
                                for (int i38 = 1; i38 < arrayList4.size(); i38++) {
                                    if (((Float) arrayList6.get(i7)).floatValue() < ((Float) arrayList6.get(i38)).floatValue()) {
                                        i7 = i38;
                                    }
                                }
                            } else if (i33 == 5) {
                                i7 = 0;
                                for (int i39 = 1; i39 < arrayList4.size(); i39++) {
                                    if (((Float) arrayList6.get(i7)).floatValue() > ((Float) arrayList6.get(i39)).floatValue()) {
                                        i7 = i39;
                                    }
                                }
                            } else {
                                i6 = 0;
                            }
                            i6 = i7;
                        }
                        int i40 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                        int i41 = i32 + 1;
                        i = i14;
                        arrayList = arrayList6;
                        i3 = width;
                        arrayList2 = arrayList5;
                        i2 = height;
                        ArrayList arrayList7 = arrayList4;
                        i9 = i6;
                        arrayList3.add(new AnonymousClass4("" + i32 + ". " + Game.getProvince(((Integer) arrayList4.get(i6)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i40, height2, i21, i17, ((Integer) arrayList4.get(i6)).intValue()));
                        int width4 = i40 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                        StringBuilder sbAppend = new StringBuilder().append("");
                        float fFloatValue = ((Float) arrayList2.get(i9)).floatValue();
                        if (((Float) arrayList2.get(i9)).floatValue() < 1.0f) {
                            i10 = 100;
                        } else {
                            i10 = 10;
                        }
                        arrayList3.add(new AnonymousClass5(sbAppend.append(CFG.getPrecision2(fFloatValue, i10)).toString(), CFG.FONT_REGULAR_SMALL, -1, width4, height2, i22, i17));
                        int width5 = width4 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                        StringBuilder sbAppend2 = new StringBuilder().append("");
                        float fFloatValue2 = ((Float) arrayList.get(i9)).floatValue();
                        if (((Float) arrayList.get(i9)).floatValue() < 1.0f) {
                            i11 = 100;
                        } else {
                            i11 = 10;
                        }
                        arrayList3.add(new AnonymousClass6(sbAppend2.append(CFG.getPrecision2(fFloatValue2, i11)).toString(), CFG.FONT_BOLD_SMALL, -1, width5, height2, i23, i17));
                        height2 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                        arrayList2.remove(i9);
                        arrayList7.remove(i9);
                        arrayList.remove(i9);
                        arrayList4 = arrayList7;
                        arrayList5 = arrayList2;
                        arrayList6 = arrayList;
                        i32 = i41;
                        height = i2;
                        i26 = 1;
                        i14 = i;
                        width = i3;
                    }
                    arrayList3.add(new AnonymousClass4("" + i32 + ". " + Game.getProvince(((Integer) arrayList4.get(i6)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i40, height2, i21, i17, ((Integer) arrayList4.get(i6)).intValue()));
                    int width6 = i40 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                    StringBuilder sbAppend3 = new StringBuilder().append("");
                    float fFloatValue3 = ((Float) arrayList2.get(i9)).floatValue();
                    if (((Float) arrayList2.get(i9)).floatValue() < 1.0f) {
                        i10 = 100;
                    } else {
                        i10 = 10;
                    }
                    arrayList3.add(new AnonymousClass5(sbAppend3.append(CFG.getPrecision2(fFloatValue3, i10)).toString(), CFG.FONT_REGULAR_SMALL, -1, width6, height2, i22, i17));
                    int width7 = width6 + arrayList3.get(arrayList3.size() - 1).getWidth() + CFG.PADDING;
                    StringBuilder sbAppend4 = new StringBuilder().append("");
                    float fFloatValue4 = ((Float) arrayList.get(i9)).floatValue();
                    if (((Float) arrayList.get(i9)).floatValue() < 1.0f) {
                        i11 = 100;
                    } else {
                        i11 = 10;
                    }
                    arrayList3.add(new AnonymousClass6(sbAppend4.append(CFG.getPrecision2(fFloatValue4, i11)).toString(), CFG.FONT_BOLD_SMALL, -1, width7, height2, i23, i17));
                    height2 += arrayList3.get(arrayList3.size() - 1).getHeight() + CFG.PADDING;
                    arrayList2.remove(i9);
                    arrayList7.remove(i9);
                    arrayList.remove(i9);
                    arrayList4 = arrayList7;
                    arrayList5 = arrayList2;
                    arrayList6 = arrayList;
                    i32 = i41;
                    height = i2;
                    i26 = 1;
                    i14 = i;
                    width = i3;
                } catch (Exception e3) {
                    e = e3;
                    i4 = i29;
                    CFG.exceptionStack(e);
                    size = arrayList3.size();
                    posY = 0;
                    while (i5 < size) {
                        if (posY < arrayList3.get(i5).getPosY() + arrayList3.get(i5).getHeight() + CFG.PADDING) {
                            posY = arrayList3.get(i5).getPosY() + arrayList3.get(i5).getHeight() + CFG.PADDING;
                        }
                    }
                    int iMin2 = Math.min(posY, (CFG.GAME_HEIGHT - i2) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
                    int i310 = i3;
                    arrayList3.add(new Empty(0, 0, i310, Math.max(posY, iMin2)));
                    initMenu(new AnonymousClass7(ResourcesManager.getResourceName(InGame_RightGoods.iActiveResID), Game.lang.get(LBhZogys.jdggFoc) + ": " + i4, false, false, Images.title600), i, i2, i310, iMin2, arrayList3, false, true);
                    this.scrollExtraPosX = Images.boxTitleBORDERWIDTH;
                }
                i6 = i8;
                c = 2;
                int i42 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
                int i43 = i32 + 1;
                i = i14;
                arrayList = arrayList6;
                i3 = width;
                arrayList2 = arrayList5;
                i2 = height;
                ArrayList arrayList8 = arrayList4;
                i9 = i6;
            }
            i = i14;
            i2 = height;
            i3 = width;
            i4 = i29;
        } catch (Exception e4) {
            e = e4;
            i = i14;
            i2 = height;
            i3 = width;
            i4 = 0;
        }
        size = arrayList3.size();
        posY = 0;
        while (i5 < size) {
            if (posY < arrayList3.get(i5).getPosY() + arrayList3.get(i5).getHeight() + CFG.PADDING) {
                posY = arrayList3.get(i5).getPosY() + arrayList3.get(i5).getHeight() + CFG.PADDING;
            }
        }
        int iMin3 = Math.min(posY, (CFG.GAME_HEIGHT - i2) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3)));
        int i311 = i3;
        arrayList3.add(new Empty(0, 0, i311, Math.max(posY, iMin3)));
        initMenu(new AnonymousClass7(ResourcesManager.getResourceName(InGame_RightGoods.iActiveResID), Game.lang.get(LBhZogys.jdggFoc) + ": " + i4, false, false, Images.title600), i, i2, i311, iMin3, arrayList3, false, true);
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
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut() && !Game.menuManager.getVisibleInGame_CivBonuses();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        long j = CFG.currentTimeMillis;
        lTime = j;
        lTime2 = j;
    }
}
