package aoc.kingdoms.lukasz.menusInGame.Budget;

import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
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
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Economy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Population;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_BudgetIncomeEconomy extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID = 6;
    public static long lTime;
    public static long lTime2;
    public int iActiveCivID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsBudget_Right2 {
        AnonymousClass1(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(InGame_BudgetIncomeEconomy.this.iActiveCivID).civBonuses.MonthlyIncome) {
                float f = Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(InGame_BudgetIncomeEconomy.this.iActiveCivID).civBonuses.MonthlyIncome;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy$10, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsBudget_Right2 {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float incomeFromEconomy = Game.getIncomeFromEconomy(this.id);
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MonthlyIncomeEconomy") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle((incomeFromEconomy > 0.0f ? "+" : "") + CFG.getPrecision2(incomeFromEconomy, 100), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getIncomeFromEconomy(this.id)) {
                float incomeFromEconomy = Game.getIncomeFromEconomy(this.id);
                setText((incomeFromEconomy > 0.0f ? "+" : "") + CFG.getPrecision2(incomeFromEconomy, 100));
                this.lastValue = incomeFromEconomy;
                if (incomeFromEconomy == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (incomeFromEconomy > 0.0f) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy$12, reason: invalid class name */
    class AnonymousClass12 extends MenuTitleIMG_FlagCenter {
        AnonymousClass12(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_BudgetIncomeEconomy.this.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_BudgetIncomeEconomy.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy$2, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy$3, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeEconomy.iSortID == 0) {
                InGame_BudgetIncomeEconomy.iSortID = 1;
            } else {
                InGame_BudgetIncomeEconomy.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeEconomy();
            InGame_BudgetIncomeEconomy.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + PxHJ.ItkG));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Name"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeEconomy.iSortID == 2) {
                InGame_BudgetIncomeEconomy.iSortID = 3;
            } else {
                InGame_BudgetIncomeEconomy.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeEconomy();
            InGame_BudgetIncomeEconomy.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeEconomy.iSortID == 4) {
                InGame_BudgetIncomeEconomy.iSortID = 5;
            } else {
                InGame_BudgetIncomeEconomy.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeEconomy();
            InGame_BudgetIncomeEconomy.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeEconomy.iSortID == 6) {
                InGame_BudgetIncomeEconomy.iSortID = 7;
            } else {
                InGame_BudgetIncomeEconomy.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeEconomy();
            InGame_BudgetIncomeEconomy.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy$8, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_Population {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulation(getCurrent(), false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:133:0x05a4  */
    /* JADX WARN: Code duplicated, block: B:134:0x05a7  */
    /* JADX WARN: Code duplicated, block: B:137:0x06d2  */
    /* JADX WARN: Code duplicated, block: B:138:0x06d5  */
    public InGame_BudgetIncomeEconomy() {
        char c;
        char c2;
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        float incomeFromEconomy;
        String str2;
        ArrayList arrayList = new ArrayList();
        int i5 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i6 = CFG.PADDING;
        int i7 = CFG.PADDING;
        this.iActiveCivID = Game.player.iCivID;
        int width2 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i8 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        int i9 = (CFG.BUTTON_HEIGHT * 4) / 5;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "+999 999");
        int i10 = ((int) Renderer.glyphLayout.width) + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i11 = width - (i5 * 2);
        int i12 = (i11 - CFG.PADDING) - i10;
        arrayList.add(new ButtonStatsBudget(Game.lang.get("TotalIncome"), Images.goldPositive, i5, i7, i12, i8, width2, true));
        int i13 = i5 + i12;
        arrayList.add(new AnonymousClass1("+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(this.iActiveCivID).civBonuses.MonthlyIncome, 100), i13 + CFG.PADDING, i7, i10, i8));
        int height2 = i7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float f = Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth;
        arrayList.add(new ButtonStatsBudget(Game.lang.get("TotalExpenses"), Images.goldNegative, i5, height2, i12, i8, width2, false));
        arrayList.add(new AnonymousClass2((f >= 0.0f ? "+" : uNBYrZVGzy.ihGMDapFE) + CFG.getPrecision2(Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth, 100), i13 + CFG.PADDING, height2, i10, i8));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float f2 = (Game.getCiv(this.iActiveCivID).fTotalIncomePerMonth + Game.getCiv(this.iActiveCivID).civBonuses.MonthlyIncome) - Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth;
        String str3 = "";
        arrayList.add(new AnonymousClass3(Game.lang.get("Balance") + ": ", (f2 > 0.0f ? "+" : "") + CFG.getPrecision2(f2, 100), Images.gold, i5, height3, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 10)));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i14 = Images.boxTitleBORDERWIDTH;
        int i15 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
        int i16 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i17 = iSortID;
        int i18 = 1;
        arrayList.add(new AnonymousClass4(i17 == 0 || i17 == 1, i17 == 1, Game.lang.get("Name"), -1, i14, height4, i15, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = i14 + arrayList.get(arrayList.size() - 1).getWidth();
        int i19 = iSortID;
        arrayList.add(new AnonymousClass5(i19 == 2 || i19 == 3, i19 == 3, Game.lang.get("Population"), -1, width3, height4, i15, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i20 = iSortID;
        arrayList.add(new AnonymousClass6(i20 == 4 || i20 == 5, i20 == 5, Game.lang.get("Economy"), -1, width4, height4, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = width4 + arrayList.get(arrayList.size() - 1).getWidth();
        int i21 = iSortID;
        arrayList.add(new AnonymousClass7(i21 == 6 || i21 == 7, i21 == 7, Game.lang.get(fTNtCctcBZcqKK.IKwXmWMrVvSsq), -1, width5, height4, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i22 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i23 = 5;
        int i24 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
        int i25 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
        ArrayList arrayList2 = new ArrayList();
        for (int i26 = 0; i26 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i26++) {
            arrayList2.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i26)));
        }
        int i27 = 1;
        int height6 = height5;
        while (arrayList2.size() > 0) {
            int i28 = iSortID;
            if (i28 == 0) {
                i3 = 0;
                for (int i29 = i18; i29 < arrayList2.size(); i29++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i3)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i29)).intValue()).getProvinceName())) {
                        i3 = i29;
                    }
                }
            } else if (i28 == i18) {
                i3 = 0;
                for (int i30 = i18; i30 < arrayList2.size(); i30++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i30)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i3)).intValue()).getProvinceName())) {
                        i3 = i30;
                    }
                }
            } else {
                if (i28 == 2) {
                    i3 = 0;
                    for (int i31 = i18; i31 < arrayList2.size(); i31++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i31)).intValue()).getPopulationTotal() > Game.getProvince(((Integer) arrayList2.get(i3)).intValue()).getPopulationTotal()) {
                            i3 = i31;
                        }
                    }
                } else {
                    c = 3;
                    if (i28 == 3) {
                        int i32 = 0;
                        for (int i33 = i18; i33 < arrayList2.size(); i33++) {
                            if (Game.getProvince(((Integer) arrayList2.get(i33)).intValue()).getPopulationTotal() < Game.getProvince(((Integer) arrayList2.get(i32)).intValue()).getPopulationTotal()) {
                                i32 = i33;
                            }
                        }
                        i = i32;
                        c2 = 4;
                    } else {
                        c2 = 4;
                        if (i28 == 4) {
                            i2 = 0;
                            for (int i34 = i18; i34 < arrayList2.size(); i34++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i34)).intValue()).getEconomyWithBonuses() > Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getEconomyWithBonuses()) {
                                    i2 = i34;
                                }
                            }
                        } else if (i28 == i23) {
                            i2 = 0;
                            for (int i35 = i18; i35 < arrayList2.size(); i35++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i35)).intValue()).getEconomyWithBonuses() < Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getEconomyWithBonuses()) {
                                    i2 = i35;
                                }
                            }
                        } else if (i28 == 6) {
                            i2 = 0;
                            for (int i36 = i18; i36 < arrayList2.size(); i36++) {
                                if (Game.getIncomeFromEconomy(((Integer) arrayList2.get(i2)).intValue()) < Game.getIncomeFromEconomy(((Integer) arrayList2.get(i36)).intValue())) {
                                    i2 = i36;
                                }
                            }
                        } else if (i28 == 7) {
                            i2 = 0;
                            for (int i37 = i18; i37 < arrayList2.size(); i37++) {
                                if (Game.getIncomeFromEconomy(((Integer) arrayList2.get(i2)).intValue()) > Game.getIncomeFromEconomy(((Integer) arrayList2.get(i37)).intValue())) {
                                    i2 = i37;
                                }
                            }
                        } else {
                            i = 0;
                        }
                        i = i2;
                    }
                }
                int i38 = i27 + 1;
                String str4 = str3 + i27 + ". " + Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getProvinceName();
                if (Game.getProvince(((Integer) arrayList2.get(i)).intValue()).isCapital) {
                    i4 = CFG.FONT_BOLD_SMALL;
                } else {
                    i4 = CFG.FONT_REGULAR_SMALL;
                }
                int i39 = i;
                int i40 = height6;
                ArrayList arrayList3 = arrayList2;
                int i41 = i25;
                int i42 = i24;
                arrayList.add(new AnonymousClass8(str4, i4, CFG.PADDING * 2, i5, i40, i24, i22, ((Integer) arrayList2.get(i)).intValue()));
                int width6 = i5 + arrayList.get(arrayList.size() - i18).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass9(CFG.getNumberWithSpaces(str3 + Game.getProvince(((Integer) arrayList3.get(i39)).intValue()).getPopulationTotal()), CFG.FONT_REGULAR_SMALL, -1, width6, i40, i42, i22, ((Integer) arrayList3.get(i39)).intValue()));
                int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                str = str3;
                arrayList.add(new AnonymousClass10(str3 + CFG.getPrecision2(Game.getProvince(((Integer) arrayList3.get(i39)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width7, i40, i41, i22, ((Integer) arrayList3.get(i39)).intValue()));
                int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                incomeFromEconomy = Game.getIncomeFromEconomy(((Integer) arrayList3.get(i39)).intValue());
                StringBuilder sb = new StringBuilder();
                if (incomeFromEconomy > 0.0f) {
                    str2 = "+";
                } else {
                    str2 = str;
                }
                arrayList.add(new AnonymousClass11(sb.append(str2).append(CFG.getPrecision2(incomeFromEconomy, 100)).toString(), width8, i40, i41, i22, ((Integer) arrayList3.get(i39)).intValue()));
                height6 = i40 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList3.remove(i39);
                i18 = 1;
                arrayList2 = arrayList3;
                i27 = i38;
                i25 = i41;
                i24 = i42;
                str3 = str;
                i23 = 5;
            }
            i = i3;
            c2 = 4;
            c = 3;
            int i310 = i27 + 1;
            String str5 = str3 + i27 + ". " + Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getProvinceName();
            if (Game.getProvince(((Integer) arrayList2.get(i)).intValue()).isCapital) {
                i4 = CFG.FONT_BOLD_SMALL;
            } else {
                i4 = CFG.FONT_REGULAR_SMALL;
            }
            int i311 = i;
            int i43 = height6;
            ArrayList arrayList4 = arrayList2;
            int i44 = i25;
            int i45 = i24;
            arrayList.add(new AnonymousClass8(str5, i4, CFG.PADDING * 2, i5, i43, i24, i22, ((Integer) arrayList2.get(i)).intValue()));
            int width9 = i5 + arrayList.get(arrayList.size() - i18).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass9(CFG.getNumberWithSpaces(str3 + Game.getProvince(((Integer) arrayList4.get(i311)).intValue()).getPopulationTotal()), CFG.FONT_REGULAR_SMALL, -1, width9, i43, i45, i22, ((Integer) arrayList4.get(i311)).intValue()));
            int width10 = width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            str = str3;
            arrayList.add(new AnonymousClass10(str3 + CFG.getPrecision2(Game.getProvince(((Integer) arrayList4.get(i311)).intValue()).getEconomyWithBonuses(), 100), CFG.FONT_REGULAR_SMALL, -1, width10, i43, i44, i22, ((Integer) arrayList4.get(i311)).intValue()));
            int width11 = width10 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            incomeFromEconomy = Game.getIncomeFromEconomy(((Integer) arrayList4.get(i311)).intValue());
            StringBuilder sb2 = new StringBuilder();
            if (incomeFromEconomy > 0.0f) {
                str2 = "+";
            } else {
                str2 = str;
            }
            arrayList.add(new AnonymousClass11(sb2.append(str2).append(CFG.getPrecision2(incomeFromEconomy, 100)).toString(), width11, i43, i44, i22, ((Integer) arrayList4.get(i311)).intValue()));
            height6 = i43 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList4.remove(i311);
            i18 = 1;
            arrayList2 = arrayList4;
            i27 = i310;
            i25 = i44;
            i24 = i45;
            str3 = str;
            i23 = 5;
        }
        int i46 = height6;
        int iMin = Math.min(i46, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(i46, iMin)));
        initMenu(new AnonymousClass12(Game.lang.get("MonthlyIncomeEconomy"), Game.getCiv(this.iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
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
        getTitle().setText(Game.lang.get("MonthlyIncomeEconomy"));
    }
}
