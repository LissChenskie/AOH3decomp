package aoc.kingdoms.lukasz.menusInGame.Budget;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Balance;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_BudgetBalanceProvinces extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID = 6;
    public static long lTime;
    public static long lTime2;
    public int iActiveCivID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Title_Diplomacy {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Budget();
            Game.menuManager.setVisibleInGame_Budget(true);
            InGame_Budget.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsBudget_Right2 {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvinceIncome(this.id, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getProvince(this.id).getProvinceIncome() - Game.getProvince(this.id).fProvinceMaintenance) {
                float provinceIncome = Game.getProvince(this.id).getProvinceIncome() - Game.getProvince(this.id).fProvinceMaintenance;
                setText((provinceIncome > 0.0f ? "+" : "") + CFG.getPrecision2(provinceIncome, 100));
                this.lastValue = provinceIncome;
                if (provinceIncome == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (provinceIncome > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces$12, reason: invalid class name */
    class AnonymousClass12 extends MenuTitleIMG_FlagCenter {
        AnonymousClass12(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_BudgetBalanceProvinces.this.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_BudgetBalanceProvinces.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces$2, reason: invalid class name */
    class AnonymousClass2 extends Text_Title_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Budget();
            Game.menuManager.setVisibleInGame_Budget(true);
            InGame_Budget.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsBudget_Balance {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            super(str, str2, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Budget();
            Game.menuManager.setVisibleInGame_Budget(true);
            InGame_Budget.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Back"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetBalanceProvinces.iSortID == 0) {
                InGame_BudgetBalanceProvinces.iSortID = 1;
            } else {
                InGame_BudgetBalanceProvinces.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_BudgetBalanceProvinces();
            InGame_BudgetBalanceProvinces.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetBalanceProvinces.iSortID == 2) {
                InGame_BudgetBalanceProvinces.iSortID = 3;
            } else {
                InGame_BudgetBalanceProvinces.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_BudgetBalanceProvinces();
            InGame_BudgetBalanceProvinces.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Income"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetBalanceProvinces.iSortID == 4) {
                InGame_BudgetBalanceProvinces.iSortID = 5;
            } else {
                InGame_BudgetBalanceProvinces.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_BudgetBalanceProvinces();
            InGame_BudgetBalanceProvinces.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Expenses"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetBalanceProvinces.iSortID == 6) {
                InGame_BudgetBalanceProvinces.iSortID = 7;
            } else {
                InGame_BudgetBalanceProvinces.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_BudgetBalanceProvinces();
            InGame_BudgetBalanceProvinces.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Balance"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces$8, reason: invalid class name */
    class AnonymousClass8 extends Text_StaticBG_ID {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince != getCurrent()) {
                Game.mapCoords.centerToProvinceID(getCurrent());
                Game.setActiveProvinceID(getCurrent());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            } else {
                Game.menuManager.setVisibleInGame_Budget(false);
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }
    }

    /* JADX WARN: Code duplicated, block: B:127:0x055f  */
    /* JADX WARN: Code duplicated, block: B:128:0x0562  */
    /* JADX WARN: Code duplicated, block: B:131:0x0685  */
    /* JADX WARN: Code duplicated, block: B:132:0x0688  */
    public InGame_BudgetBalanceProvinces() {
        int i;
        int i2;
        String str;
        int i3;
        float provinceIncome;
        String str2;
        ArrayList arrayList = new ArrayList();
        int i4 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i5 = CFG.PADDING;
        this.iActiveCivID = Game.player.iCivID;
        ImageManager.getImage(Images.gold).getWidth();
        int i6 = CFG.PADDING;
        int i7 = CFG.PADDING / 2;
        int i8 = CFG.TEXT_HEIGHT;
        int i9 = CFG.PADDING;
        int i10 = (CFG.BUTTON_HEIGHT * 4) / 5;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "+999 999");
        float f = Renderer.glyphLayout.width;
        int i11 = CFG.PADDING;
        int i12 = CFG.PADDING / 2;
        int i13 = width - (i4 * 2);
        int i14 = CFG.PADDING;
        arrayList.add(new AnonymousClass1(Game.lang.get("Budget"), Images.boxTitleBORDERWIDTH, 0, (width - (Images.boxTitleBORDERWIDTH * 2)) / 2, CFG.BUTTON_HEIGHT4, false));
        arrayList.add(new AnonymousClass2(Game.lang.get("Provinces"), Images.boxTitleBORDERWIDTH + ((width - (Images.boxTitleBORDERWIDTH * 2)) / 2), 0, (width - (Images.boxTitleBORDERWIDTH * 2)) / 2, CFG.BUTTON_HEIGHT4, true));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
        float f2 = (Game.getCiv(this.iActiveCivID).fTotalIncomePerMonth + Game.getCiv(this.iActiveCivID).civBonuses.MonthlyIncome) - Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth;
        String str3 = "";
        arrayList.add(new AnonymousClass3(Game.lang.get("Balance") + ": ", (f2 > 0.0f ? "+" : "") + CFG.getPrecision2(f2, 100), Images.gold, i4, height2, i13, CFG.TEXT_HEIGHT + (CFG.PADDING * 10)));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i15 = Images.boxTitleBORDERWIDTH;
        int i16 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
        int i17 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i18 = iSortID;
        arrayList.add(new AnonymousClass4(i18 == 0 || i18 == 1, i18 == 1, Game.lang.get("Name"), -1, i15, height3, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i15 + arrayList.get(arrayList.size() - 1).getWidth();
        int i19 = iSortID;
        arrayList.add(new AnonymousClass5(i19 == 2 || i19 == 3, i19 == 3, Game.lang.get("Income"), -1, width2, height3, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i20 = iSortID;
        int i21 = 4;
        arrayList.add(new AnonymousClass6(i20 == 4 || i20 == 5, i20 == 5, Game.lang.get("Expenses"), -1, width3, height3, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i22 = iSortID;
        arrayList.add(new AnonymousClass7(i22 == 6 || i22 == 7, i22 == 7, Game.lang.get("Balance"), -1, width4, height3, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i23 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i24 = 5;
        int i25 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
        int i26 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
        ArrayList arrayList2 = new ArrayList();
        for (int i27 = 0; i27 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i27++) {
            arrayList2.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i27)));
        }
        int height5 = height4;
        int i28 = 1;
        while (arrayList2.size() > 0) {
            int i29 = iSortID;
            if (i29 == 0) {
                i2 = 0;
                for (int i30 = 1; i30 < arrayList2.size(); i30++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i30)).intValue()).getProvinceName())) {
                        i2 = i30;
                    }
                }
            } else if (i29 == 1) {
                i2 = 0;
                for (int i31 = 1; i31 < arrayList2.size(); i31++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i31)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceName())) {
                        i2 = i31;
                    }
                }
            } else if (i29 == 2) {
                i2 = 0;
                for (int i32 = 1; i32 < arrayList2.size(); i32++) {
                    if (Game.getProvince(((Integer) arrayList2.get(i32)).intValue()).getProvinceIncome() > Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceIncome()) {
                        i2 = i32;
                    }
                }
            } else if (i29 == 3) {
                i2 = 0;
                for (int i33 = 1; i33 < arrayList2.size(); i33++) {
                    if (Game.getProvince(((Integer) arrayList2.get(i33)).intValue()).getProvinceIncome() < Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceIncome()) {
                        i2 = i33;
                    }
                }
            } else if (i29 == i21) {
                i2 = 0;
                for (int i34 = 1; i34 < arrayList2.size(); i34++) {
                    if (Game.getProvince(((Integer) arrayList2.get(i34)).intValue()).fProvinceMaintenance > Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).fProvinceMaintenance) {
                        i2 = i34;
                    }
                }
            } else if (i29 == i24) {
                i2 = 0;
                for (int i35 = 1; i35 < arrayList2.size(); i35++) {
                    if (Game.getProvince(((Integer) arrayList2.get(i35)).intValue()).fProvinceMaintenance < Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).fProvinceMaintenance) {
                        i2 = i35;
                    }
                }
            } else if (i29 == 6) {
                i2 = 0;
                for (int i36 = 1; i36 < arrayList2.size(); i36++) {
                    if (Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).fProvinceMaintenance < Game.getProvince(((Integer) arrayList2.get(i36)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList2.get(i36)).intValue()).fProvinceMaintenance) {
                        i2 = i36;
                    }
                }
            } else {
                if (i29 == 7) {
                    i2 = 0;
                    for (int i37 = 1; i37 < arrayList2.size(); i37++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).fProvinceMaintenance > Game.getProvince(((Integer) arrayList2.get(i37)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList2.get(i37)).intValue()).fProvinceMaintenance) {
                            i2 = i37;
                        }
                    }
                } else {
                    i = 0;
                }
                str = str3;
                int i38 = i28 + 1;
                String str4 = str + i28 + ". " + Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getProvinceName();
                if (Game.getProvince(((Integer) arrayList2.get(i)).intValue()).isCapital) {
                    i3 = CFG.FONT_BOLD_SMALL;
                } else {
                    i3 = CFG.FONT_REGULAR_SMALL;
                }
                int i39 = height5;
                int i40 = width;
                int i41 = i;
                ArrayList arrayList3 = arrayList2;
                int i42 = i26;
                int i43 = i25;
                arrayList.add(new AnonymousClass8(str4, i3, CFG.PADDING * 2, i4, i39, i25, i23, ((Integer) arrayList2.get(i)).intValue()));
                int width5 = i4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                int i44 = i4;
                arrayList.add(new AnonymousClass9(CFG.getPrecision2(Game.getProvince(((Integer) arrayList3.get(i41)).intValue()).getProvinceIncome(), 100), CFG.FONT_REGULAR_SMALL, -1, width5, i39, i43, i23, ((Integer) arrayList3.get(i41)).intValue()));
                int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass10(str + CFG.getPrecision2(Game.getProvince(((Integer) arrayList3.get(i41)).intValue()).fProvinceMaintenance, 100), CFG.FONT_REGULAR_SMALL, -1, width6, i39, i42, i23, ((Integer) arrayList3.get(i41)).intValue()));
                int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                provinceIncome = Game.getProvince(((Integer) arrayList3.get(i41)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList3.get(i41)).intValue()).fProvinceMaintenance;
                StringBuilder sb = new StringBuilder();
                if (provinceIncome > 0.0f) {
                    str2 = "+";
                } else {
                    str2 = str;
                }
                arrayList.add(new AnonymousClass11(sb.append(str2).append(CFG.getPrecision2(provinceIncome, 100)).toString(), width7, i39, i42, i23, ((Integer) arrayList3.get(i41)).intValue()));
                height5 = i39 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList3.remove(i41);
                arrayList2 = arrayList3;
                i28 = i38;
                i4 = i44;
                width = i40;
                str3 = str;
                i26 = i42;
                i25 = i43;
                i21 = 4;
                i24 = 5;
            }
            i = i2;
            str = str3;
            int i310 = i28 + 1;
            String str5 = str + i28 + ". " + Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getProvinceName();
            if (Game.getProvince(((Integer) arrayList2.get(i)).intValue()).isCapital) {
                i3 = CFG.FONT_BOLD_SMALL;
            } else {
                i3 = CFG.FONT_REGULAR_SMALL;
            }
            int i311 = height5;
            int i45 = width;
            int i46 = i;
            ArrayList arrayList4 = arrayList2;
            int i47 = i26;
            int i48 = i25;
            arrayList.add(new AnonymousClass8(str5, i3, CFG.PADDING * 2, i4, i311, i25, i23, ((Integer) arrayList2.get(i)).intValue()));
            int width8 = i4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int i49 = i4;
            arrayList.add(new AnonymousClass9(CFG.getPrecision2(Game.getProvince(((Integer) arrayList4.get(i46)).intValue()).getProvinceIncome(), 100), CFG.FONT_REGULAR_SMALL, -1, width8, i311, i48, i23, ((Integer) arrayList4.get(i46)).intValue()));
            int width9 = width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass10(str + CFG.getPrecision2(Game.getProvince(((Integer) arrayList4.get(i46)).intValue()).fProvinceMaintenance, 100), CFG.FONT_REGULAR_SMALL, -1, width9, i311, i47, i23, ((Integer) arrayList4.get(i46)).intValue()));
            int width10 = width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            provinceIncome = Game.getProvince(((Integer) arrayList4.get(i46)).intValue()).getProvinceIncome() - Game.getProvince(((Integer) arrayList4.get(i46)).intValue()).fProvinceMaintenance;
            StringBuilder sb2 = new StringBuilder();
            if (provinceIncome > 0.0f) {
                str2 = "+";
            } else {
                str2 = str;
            }
            arrayList.add(new AnonymousClass11(sb2.append(str2).append(CFG.getPrecision2(provinceIncome, 100)).toString(), width10, i311, i47, i23, ((Integer) arrayList4.get(i46)).intValue()));
            height5 = i311 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList4.remove(i46);
            arrayList2 = arrayList4;
            i28 = i310;
            i4 = i49;
            width = i45;
            str3 = str;
            i26 = i47;
            i25 = i48;
            i21 = 4;
            i24 = 5;
        }
        int i50 = height5;
        int i51 = width;
        int iMin = Math.min(i50, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, i51, Math.max(i50, iMin)));
        initMenu(new AnonymousClass12(Game.lang.get("MonthlyIncomeEconomy"), Game.getCiv(this.iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height, i51, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.budgetOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.budgetOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.budgetOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime2 = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("Provinces"));
    }
}
