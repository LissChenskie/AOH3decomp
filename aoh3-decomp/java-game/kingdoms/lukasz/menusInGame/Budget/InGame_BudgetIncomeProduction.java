package aoc.kingdoms.lukasz.menusInGame.Budget;

import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Balance;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Resource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Economy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_BudgetIncomeProduction extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID = 6;
    public static long lTime;
    public static long lTime2;
    public int iActiveCivID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsBudget_Right2 {
        AnonymousClass1(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(InGame_BudgetIncomeProduction.this.iActiveCivID).civBonuses.MonthlyIncome) {
                float f = Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(InGame_BudgetIncomeProduction.this.iActiveCivID).civBonuses.MonthlyIncome;
                setText((f > 0.0f ? "+" : "") + CFG.getPrecision2(f, 100));
                this.lastValue = f;
                if (f == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (f > 0.0f) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_Economy {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID) {
                if (!AA_KeyManager.SHIFT_HOLD && !AA_KeyManager.CTRL_HOLD) {
                    if (Game.canInvestInEconomy(getCurrent())) {
                        Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                        Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(getCurrent()), 10), Game_Calendar.IMG_ECONOMY);
                        return;
                    } else if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(getCurrent())) {
                        Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getInvestCost_Legacy(getCurrent()), 100), Images.legacy);
                        return;
                    } else if (Game.getProvince(getCurrent()).addInvestInProvince()) {
                        ProvinceDraw.addProvinceDot_Economy(getCurrent());
                        return;
                    } else {
                        Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getInvestCost(getCurrent()), 100), Images.gold);
                        return;
                    }
                }
                for (int i = 0; i < 5; i++) {
                    if (Game.canInvestInEconomy(getCurrent())) {
                        Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                        Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(getCurrent()), 10), Game_Calendar.IMG_ECONOMY);
                        return;
                    }
                    if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(getCurrent())) {
                        Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getInvestCost_Legacy(getCurrent()), 100), Images.legacy);
                    } else {
                        if (!Game.getProvince(getCurrent()).addInvestInProvince()) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getInvestCost(getCurrent()), 100), Images.gold);
                            return;
                        }
                        ProvinceDraw.addProvinceDot_Economy(getCurrent());
                    }
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverEconomy(getCurrent(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsBudget_Right2 {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float incomeFromEconomy = Game.getIncomeFromEconomy(this.id);
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("IncomeProduction") + IlLkpaQxs.edeLZEKr, CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle((incomeFromEconomy > 0.0f ? "+" : kfGnwGN.feRBtn) + CFG.getPrecision2(incomeFromEconomy, 100), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != ResourcesManager.getMonthlyIncome(this.id, Game.getProvince(this.id).getResourceID())) {
                float monthlyIncome = ResourcesManager.getMonthlyIncome(this.id, Game.getProvince(this.id).getResourceID());
                setText((monthlyIncome > 0.0f ? "+" : "") + CFG.getPrecision2(monthlyIncome, 100));
                this.lastValue = monthlyIncome;
                if (monthlyIncome == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (monthlyIncome > 0.0f) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction$12, reason: invalid class name */
    class AnonymousClass12 extends MenuTitleIMG_FlagCenter {
        AnonymousClass12(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_BudgetIncomeProduction.this.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_BudgetIncomeProduction.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsBudget_Right2 {
        AnonymousClass2(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).fTotalExpensesPerMonth) {
                float f = Game.getCiv(Game.player.iCivID).fTotalExpensesPerMonth;
                setText((f > 0.0f ? "-" : "") + CFG.getPrecision2(f, 100));
                this.lastValue = f;
                if (f == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (f > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction$3, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeProduction.iSortID == 0) {
                InGame_BudgetIncomeProduction.iSortID = 1;
            } else {
                InGame_BudgetIncomeProduction.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeProduction();
            InGame_BudgetIncomeProduction.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeProduction.iSortID == 2) {
                InGame_BudgetIncomeProduction.iSortID = 3;
            } else {
                InGame_BudgetIncomeProduction.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeProduction();
            InGame_BudgetIncomeProduction.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeProduction.iSortID == 4) {
                InGame_BudgetIncomeProduction.iSortID = 5;
            } else {
                InGame_BudgetIncomeProduction.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeProduction();
            InGame_BudgetIncomeProduction.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Economy"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeProduction.iSortID == 6) {
                InGame_BudgetIncomeProduction.iSortID = 7;
            } else {
                InGame_BudgetIncomeProduction.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeProduction();
            InGame_BudgetIncomeProduction.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction$8, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonStatsRectIMG_Resource {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverResource(getCurrent(), getValue1(), false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:138:0x05d8  */
    /* JADX WARN: Code duplicated, block: B:139:0x05db  */
    /* JADX WARN: Code duplicated, block: B:142:0x0645  */
    /* JADX WARN: Code duplicated, block: B:143:0x069f  */
    /* JADX WARN: Code duplicated, block: B:146:0x0760  */
    /* JADX WARN: Code duplicated, block: B:147:0x0763  */
    public InGame_BudgetIncomeProduction() {
        int i;
        char c;
        char c2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        String str;
        ArrayList arrayList;
        int i7;
        int width;
        String str2;
        String str3;
        float monthlyIncome;
        String str4;
        ArrayList arrayList2 = new ArrayList();
        int i8 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width2 = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i9 = CFG.PADDING;
        int i10 = CFG.PADDING;
        this.iActiveCivID = Game.player.iCivID;
        int width3 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i11 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        int i12 = (CFG.BUTTON_HEIGHT * 4) / 5;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "+999 999");
        int i13 = ((int) glyphLayout_Game.width) + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i14 = width2 - (i8 * 2);
        int i15 = (i14 - CFG.PADDING) - i13;
        arrayList2.add(new ButtonStatsBudget(Game.lang.get("TotalIncome"), Images.goldPositive, i8, i10, i15, i11, width3, true));
        String str5 = kfGnwGN.yrmKfXkNaoIz;
        int i16 = i8 + i15;
        arrayList2.add(new AnonymousClass1(str5 + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(this.iActiveCivID).civBonuses.MonthlyIncome, 100), i16 + CFG.PADDING, i10, i13, i11));
        int height2 = i10 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        float f = Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth;
        arrayList2.add(new ButtonStatsBudget(Game.lang.get("TotalExpenses"), Images.goldNegative, i8, height2, i15, i11, width3, false));
        arrayList2.add(new AnonymousClass2((f >= 0.0f ? str5 : "-") + CFG.getPrecision2(Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth, 100), i16 + CFG.PADDING, height2, i13, i11));
        int height3 = height2 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        float f2 = (Game.getCiv(this.iActiveCivID).fTotalIncomePerMonth + Game.getCiv(this.iActiveCivID).civBonuses.MonthlyIncome) - Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth;
        String str6 = "";
        arrayList2.add(new AnonymousClass3(Game.lang.get("Balance") + ": ", (f2 > 0.0f ? str5 : "") + CFG.getPrecision2(f2, 100), Images.gold, i8, height3, i14, CFG.TEXT_HEIGHT + (CFG.PADDING * 10)));
        int height4 = height3 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i17 = Images.boxTitleBORDERWIDTH;
        int i18 = (int) ((width2 - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
        int i19 = (int) ((width2 - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i20 = iSortID;
        int i21 = 1;
        arrayList2.add(new AnonymousClass4(i20 == 0 || i20 == 1, i20 == 1, Game.lang.get("Name"), -1, i17, height4, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = i17 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i22 = iSortID;
        arrayList2.add(new AnonymousClass5(i22 == 2 || i22 == 3, i22 == 3, Game.lang.get("Resource"), -1, width4, height4, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = width4 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i23 = iSortID;
        arrayList2.add(new AnonymousClass6(i23 == 4 || i23 == 5, i23 == 5, Game.lang.get("Economy"), -1, width5, height4, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width6 = width5 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i24 = iSortID;
        arrayList2.add(new AnonymousClass7(i24 == 6 || i24 == 7, i24 == 7, Game.lang.get("Income"), -1, width6, height4, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height5 = height4 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i25 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i26 = 5;
        int i27 = (int) (((width2 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
        int i28 = (int) (((width2 - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
        ArrayList arrayList3 = new ArrayList();
        for (int i29 = 0; i29 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i29++) {
            if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i29)).getResourceID() >= 0) {
                arrayList3.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i29)));
            }
        }
        String str7 = "None";
        if (arrayList3.size() > 0) {
            int i30 = 1;
            while (arrayList3.size() > 0) {
                int i31 = iSortID;
                if (i31 == 0) {
                    i4 = 0;
                    for (int i32 = i21; i32 < arrayList3.size(); i32++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList3.get(i4)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList3.get(i32)).intValue()).getProvinceName())) {
                            i4 = i32;
                        }
                    }
                } else if (i31 == i21) {
                    i4 = 0;
                    for (int i33 = i21; i33 < arrayList3.size(); i33++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList3.get(i33)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList3.get(i4)).intValue()).getProvinceName())) {
                            i4 = i33;
                        }
                    }
                } else {
                    if (i31 == 2) {
                        i4 = 0;
                        for (int i34 = i21; i34 < arrayList3.size(); i34++) {
                            if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList3.get(i4)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList3.get(i34)).intValue()).getResourceID()))) {
                                i4 = i34;
                            }
                        }
                    } else {
                        c = 3;
                        if (i31 == 3) {
                            int i35 = 0;
                            for (int i36 = i21; i36 < arrayList3.size(); i36++) {
                                if (CFG.compareAlphabetic_TwoString(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList3.get(i36)).intValue()).getResourceID()), ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList3.get(i35)).intValue()).getResourceID()))) {
                                    i35 = i36;
                                }
                            }
                            i2 = i35;
                            c2 = 4;
                        } else {
                            c2 = 4;
                            if (i31 == 4) {
                                i3 = 0;
                                for (int i37 = i21; i37 < arrayList3.size(); i37++) {
                                    if (Game.getProvince(((Integer) arrayList3.get(i37)).intValue()).getEconomyWithBonuses() > Game.getProvince(((Integer) arrayList3.get(i3)).intValue()).getEconomyWithBonuses()) {
                                        i3 = i37;
                                    }
                                }
                            } else if (i31 == i26) {
                                i3 = 0;
                                for (int i38 = i21; i38 < arrayList3.size(); i38++) {
                                    if (Game.getProvince(((Integer) arrayList3.get(i38)).intValue()).getEconomyWithBonuses() < Game.getProvince(((Integer) arrayList3.get(i3)).intValue()).getEconomyWithBonuses()) {
                                        i3 = i38;
                                    }
                                }
                            } else if (i31 == 6) {
                                i3 = 0;
                                for (int i39 = i21; i39 < arrayList3.size(); i39++) {
                                    if (ResourcesManager.getMonthlyIncome(((Integer) arrayList3.get(i3)).intValue()) < ResourcesManager.getMonthlyIncome(((Integer) arrayList3.get(i39)).intValue())) {
                                        i3 = i39;
                                    }
                                }
                            } else if (i31 == 7) {
                                i3 = 0;
                                for (int i40 = i21; i40 < arrayList3.size(); i40++) {
                                    if (ResourcesManager.getMonthlyIncome(((Integer) arrayList3.get(i3)).intValue()) > ResourcesManager.getMonthlyIncome(((Integer) arrayList3.get(i40)).intValue())) {
                                        i3 = i40;
                                    }
                                }
                            } else {
                                i2 = 0;
                            }
                            i2 = i3;
                        }
                    }
                    int i41 = i30 + 1;
                    String str8 = str6 + i30 + ". " + Game.getProvince(((Integer) arrayList3.get(i2)).intValue()).getProvinceName();
                    if (Game.getProvince(((Integer) arrayList3.get(i2)).intValue()).isCapital) {
                        i5 = CFG.FONT_BOLD_SMALL;
                    } else {
                        i5 = CFG.FONT_REGULAR_SMALL;
                    }
                    i6 = i2;
                    str = str7;
                    arrayList = arrayList3;
                    int i42 = i28;
                    i7 = i27;
                    arrayList2.add(new AnonymousClass8(str8, i5, CFG.PADDING * 2, i8, height5, i27, i25, ((Integer) arrayList3.get(i2)).intValue()));
                    width = i8 + arrayList2.get(arrayList2.size() - i21).getWidth() + CFG.PADDING;
                    if (Game.getProvince(((Integer) arrayList.get(i6)).intValue()).getResourceID() >= 0) {
                        arrayList2.add(new AnonymousClass9(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i6)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList.get(i6)).intValue()).getResourceID(), width, height5, i7, i25, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList.get(i6)).intValue()));
                        str2 = str;
                    } else {
                        str2 = str;
                        arrayList2.add(new Text_StaticBG(Game.lang.get(str2), CFG.FONT_REGULAR_SMALL, -1, width, height5, i7, i25));
                    }
                    int width7 = width + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    str3 = str6;
                    arrayList2.add(new AnonymousClass10(str6 + CFG.getPrecision2(Game.getProvince(((Integer) arrayList.get(r8)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width7, height5, i42, i25, ((Integer) arrayList.get(r8)).intValue()));
                    int width8 = width7 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                    monthlyIncome = ResourcesManager.getMonthlyIncome(((Integer) arrayList.get(r8)).intValue(), Game.getProvince(((Integer) arrayList.get(r8)).intValue()).getResourceID());
                    StringBuilder sb = new StringBuilder();
                    if (monthlyIncome > 0.0f) {
                        str4 = str5;
                    } else {
                        str4 = str3;
                    }
                    arrayList2.add(new AnonymousClass11(sb.append(str4).append(CFG.getPrecision2(monthlyIncome, 100)).toString(), width8, height5, i42, i25, ((Integer) arrayList.get(r8)).intValue()));
                    height5 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                    arrayList.remove(i6);
                    arrayList3 = arrayList;
                    str7 = str2;
                    i30 = i41;
                    i28 = i42;
                    i27 = i7;
                    str6 = str3;
                    width2 = width2;
                    i26 = 5;
                    i21 = 1;
                }
                i2 = i4;
                c2 = 4;
                c = 3;
                int i43 = i30 + 1;
                String str9 = str6 + i30 + ". " + Game.getProvince(((Integer) arrayList3.get(i2)).intValue()).getProvinceName();
                if (Game.getProvince(((Integer) arrayList3.get(i2)).intValue()).isCapital) {
                    i5 = CFG.FONT_BOLD_SMALL;
                } else {
                    i5 = CFG.FONT_REGULAR_SMALL;
                }
                i6 = i2;
                str = str7;
                arrayList = arrayList3;
                int i44 = i28;
                i7 = i27;
                arrayList2.add(new AnonymousClass8(str9, i5, CFG.PADDING * 2, i8, height5, i27, i25, ((Integer) arrayList3.get(i2)).intValue()));
                width = i8 + arrayList2.get(arrayList2.size() - i21).getWidth() + CFG.PADDING;
                if (Game.getProvince(((Integer) arrayList.get(i6)).intValue()).getResourceID() >= 0) {
                    arrayList2.add(new AnonymousClass9(ResourcesManager.getResourceName(Game.getProvince(((Integer) arrayList.get(i6)).intValue()).getResourceID()), Game.getProvince(((Integer) arrayList.get(i6)).intValue()).getResourceID(), width, height5, i7, i25, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList.get(i6)).intValue()));
                    str2 = str;
                } else {
                    str2 = str;
                    arrayList2.add(new Text_StaticBG(Game.lang.get(str2), CFG.FONT_REGULAR_SMALL, -1, width, height5, i7, i25));
                }
                int width9 = width + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                str3 = str6;
                arrayList2.add(new AnonymousClass10(str6 + CFG.getPrecision2(Game.getProvince(((Integer) arrayList.get(r8)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width9, height5, i44, i25, ((Integer) arrayList.get(r8)).intValue()));
                int width10 = width9 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                monthlyIncome = ResourcesManager.getMonthlyIncome(((Integer) arrayList.get(r8)).intValue(), Game.getProvince(((Integer) arrayList.get(r8)).intValue()).getResourceID());
                StringBuilder sb2 = new StringBuilder();
                if (monthlyIncome > 0.0f) {
                    str4 = str5;
                } else {
                    str4 = str3;
                }
                arrayList2.add(new AnonymousClass11(sb2.append(str4).append(CFG.getPrecision2(monthlyIncome, 100)).toString(), width10, height5, i44, i25, ((Integer) arrayList.get(r8)).intValue()));
                height5 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                arrayList.remove(i6);
                arrayList3 = arrayList;
                str7 = str2;
                i30 = i43;
                i28 = i44;
                i27 = i7;
                str6 = str3;
                width2 = width2;
                i26 = 5;
                i21 = 1;
            }
            i = width2;
        } else {
            i = width2;
            arrayList2.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i8, height5, i14, CFG.BUTTON_HEIGHT2));
            height5 += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        }
        int i45 = height5;
        int iMin = Math.min(i45, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        int i46 = i;
        arrayList2.add(new Empty(0, 0, i46, Math.max(i45, iMin)));
        initMenu(new AnonymousClass12(Game.lang.get("IncomeProduction"), Game.getCiv(this.iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height, i46, iMin, arrayList2, false, true);
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
        getTitle().setText(Game.lang.get("IncomeProduction"));
    }
}
