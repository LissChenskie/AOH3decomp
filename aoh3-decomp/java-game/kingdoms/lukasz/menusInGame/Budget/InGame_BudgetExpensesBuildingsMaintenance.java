package aoc.kingdoms.lukasz.menusInGame.Budget;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
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
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Population;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_BudgetExpensesBuildingsMaintenance extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID = 6;
    public static long lTime;
    public static long lTime2;
    public int iActiveCivID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesBuildingsMaintenance$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsBudget_Right2 {
        AnonymousClass1(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(InGame_BudgetExpensesBuildingsMaintenance.this.iActiveCivID).civBonuses.MonthlyIncome) {
                float f = Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(InGame_BudgetExpensesBuildingsMaintenance.this.iActiveCivID).civBonuses.MonthlyIncome;
                setText((f > 0.0f ? CaiJWNfqszJNZ.pJK : HjHDSSkYG.kQoesU) + CFG.getPrecision2(f, 100));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesBuildingsMaintenance$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsBudget_Right2 {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float provinceBuildingsMaintenance = Game.getProvince(this.id).getProvinceBuildingsMaintenance();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("BuildingsMaintenance") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle((provinceBuildingsMaintenance > 0.0f ? "-" : "") + CFG.getPrecision2(provinceBuildingsMaintenance, 1000), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getProvince(this.id).getProvinceBuildingsMaintenance()) {
                float provinceBuildingsMaintenance = Game.getProvince(this.id).getProvinceBuildingsMaintenance();
                setText((provinceBuildingsMaintenance > 0.0f ? "-" : "") + CFG.getPrecision2(provinceBuildingsMaintenance, 1000));
                this.lastValue = provinceBuildingsMaintenance;
                if (provinceBuildingsMaintenance == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (provinceBuildingsMaintenance > 0.0f) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesBuildingsMaintenance$11, reason: invalid class name */
    class AnonymousClass11 extends MenuTitleIMG_FlagCenter {
        AnonymousClass11(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_BudgetExpensesBuildingsMaintenance.this.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_BudgetExpensesBuildingsMaintenance.lTime2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesBuildingsMaintenance$2, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesBuildingsMaintenance$3, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesBuildingsMaintenance$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetExpensesBuildingsMaintenance.iSortID == 0) {
                InGame_BudgetExpensesBuildingsMaintenance.iSortID = 1;
            } else {
                InGame_BudgetExpensesBuildingsMaintenance.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_BudgetExpensesBuildingsMaintenance();
            InGame_BudgetExpensesBuildingsMaintenance.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesBuildingsMaintenance$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetExpensesBuildingsMaintenance.iSortID == 2) {
                InGame_BudgetExpensesBuildingsMaintenance.iSortID = 3;
            } else {
                InGame_BudgetExpensesBuildingsMaintenance.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_BudgetExpensesBuildingsMaintenance();
            InGame_BudgetExpensesBuildingsMaintenance.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesBuildingsMaintenance$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetExpensesBuildingsMaintenance.iSortID == 4) {
                InGame_BudgetExpensesBuildingsMaintenance.iSortID = 5;
            } else {
                InGame_BudgetExpensesBuildingsMaintenance.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_BudgetExpensesBuildingsMaintenance();
            InGame_BudgetExpensesBuildingsMaintenance.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Buildings"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesBuildingsMaintenance$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetExpensesBuildingsMaintenance.iSortID == 6) {
                InGame_BudgetExpensesBuildingsMaintenance.iSortID = 7;
            } else {
                InGame_BudgetExpensesBuildingsMaintenance.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_BudgetExpensesBuildingsMaintenance();
            InGame_BudgetExpensesBuildingsMaintenance.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("BuildingsMaintenance"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesBuildingsMaintenance$8, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesBuildingsMaintenance$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_Population {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulation(getCurrent(), false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:132:0x05b0  */
    /* JADX WARN: Code duplicated, block: B:133:0x05b3  */
    /* JADX WARN: Code duplicated, block: B:136:0x06d3  */
    /* JADX WARN: Code duplicated, block: B:137:0x06d6  */
    public InGame_BudgetExpensesBuildingsMaintenance() {
        char c;
        char c2;
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        int i5;
        float provinceBuildingsMaintenance;
        String str2;
        ArrayList arrayList = new ArrayList();
        int i6 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i7 = CFG.PADDING;
        int i8 = CFG.PADDING;
        this.iActiveCivID = Game.player.iCivID;
        int width2 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i9 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        int i10 = (CFG.BUTTON_HEIGHT * 4) / 5;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "+999 999");
        int i11 = ((int) Renderer.glyphLayout.width) + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i12 = width - (i6 * 2);
        int i13 = (i12 - CFG.PADDING) - i11;
        arrayList.add(new ButtonStatsBudget(Game.lang.get(gpVDKipRURuzw.nMiRMBcOvUgQc), Images.goldPositive, i6, i8, i13, i9, width2, true));
        int i14 = i6 + i13;
        arrayList.add(new AnonymousClass1("+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(this.iActiveCivID).civBonuses.MonthlyIncome, 100), i14 + CFG.PADDING, i8, i11, i9));
        int height2 = i8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float f = Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth;
        arrayList.add(new ButtonStatsBudget(Game.lang.get("TotalExpenses"), Images.goldNegative, i6, height2, i13, i9, width2, false));
        arrayList.add(new AnonymousClass2((f >= 0.0f ? "+" : "-") + CFG.getPrecision2(Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth, 100), i14 + CFG.PADDING, height2, i11, i9));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float f2 = (Game.getCiv(this.iActiveCivID).fTotalIncomePerMonth + Game.getCiv(this.iActiveCivID).civBonuses.MonthlyIncome) - Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth;
        String str3 = Game.lang.get("Balance") + ": ";
        StringBuilder sb = new StringBuilder();
        String str4 = ALZmnpZHj.CifUAzstzxGcOx;
        String str5 = str4;
        arrayList.add(new AnonymousClass3(str3, sb.append(f2 > 0.0f ? "+" : str4).append(CFG.getPrecision2(f2, 100)).toString(), Images.gold, i6, height3, i12, CFG.TEXT_HEIGHT + (CFG.PADDING * 10)));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i15 = Images.boxTitleBORDERWIDTH;
        int i16 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
        int i17 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i18 = iSortID;
        int i19 = 1;
        arrayList.add(new AnonymousClass4(i18 == 0 || i18 == 1, i18 == 1, Game.lang.get("Name"), -1, i15, height4, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = i15 + arrayList.get(arrayList.size() - 1).getWidth();
        int i20 = iSortID;
        arrayList.add(new AnonymousClass5(i20 == 2 || i20 == 3, i20 == 3, Game.lang.get("Population"), -1, width3, height4, i16, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i21 = iSortID;
        arrayList.add(new AnonymousClass6(i21 == 4 || i21 == 5, i21 == 5, Game.lang.get("Buildings"), -1, width4, height4, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width5 = width4 + arrayList.get(arrayList.size() - 1).getWidth();
        int i22 = iSortID;
        int i23 = 7;
        arrayList.add(new AnonymousClass7(i22 == 6 || i22 == 7, i22 == 7, Game.lang.get("BuildingsMaintenance"), -1, width5, height4, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i24 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i25 = 5;
        int i26 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
        int i27 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
        ArrayList arrayList2 = new ArrayList();
        for (int i28 = 0; i28 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i28++) {
            arrayList2.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i28)));
        }
        int i29 = 1;
        int height6 = height5;
        while (arrayList2.size() > 0) {
            int i30 = iSortID;
            if (i30 == 0) {
                i4 = 0;
                for (int i31 = i19; i31 < arrayList2.size(); i31++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i31)).intValue()).getProvinceName())) {
                        i4 = i31;
                    }
                }
            } else if (i30 == i19) {
                i4 = 0;
                for (int i32 = i19; i32 < arrayList2.size(); i32++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i32)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getProvinceName())) {
                        i4 = i32;
                    }
                }
            } else {
                if (i30 == 2) {
                    i4 = 0;
                    for (int i33 = i19; i33 < arrayList2.size(); i33++) {
                        if (Game.getProvince(((Integer) arrayList2.get(i33)).intValue()).getPopulationTotal() > Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getPopulationTotal()) {
                            i4 = i33;
                        }
                    }
                } else {
                    c = 3;
                    if (i30 == 3) {
                        i3 = 0;
                        for (int i34 = i19; i34 < arrayList2.size(); i34++) {
                            if (Game.getProvince(((Integer) arrayList2.get(i34)).intValue()).getPopulationTotal() < Game.getProvince(((Integer) arrayList2.get(i3)).intValue()).getPopulationTotal()) {
                                i3 = i34;
                            }
                        }
                    } else if (i30 == 4) {
                        i3 = 0;
                        for (int i35 = i19; i35 < arrayList2.size(); i35++) {
                            if (Game.getProvince(((Integer) arrayList2.get(i35)).intValue()).getUsedBuildingsSlots() > Game.getProvince(((Integer) arrayList2.get(i3)).intValue()).getUsedBuildingsSlots()) {
                                i3 = i35;
                            }
                        }
                    } else if (i30 == i25) {
                        i3 = 0;
                        for (int i36 = i19; i36 < arrayList2.size(); i36++) {
                            if (Game.getProvince(((Integer) arrayList2.get(i36)).intValue()).getUsedBuildingsSlots() < Game.getProvince(((Integer) arrayList2.get(i3)).intValue()).getUsedBuildingsSlots()) {
                                i3 = i36;
                            }
                        }
                    } else {
                        c2 = 6;
                        if (i30 == 6) {
                            i2 = 0;
                            for (int i37 = i19; i37 < arrayList2.size(); i37++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceBuildingsMaintenance() < Game.getProvince(((Integer) arrayList2.get(i37)).intValue()).getProvinceBuildingsMaintenance()) {
                                    i2 = i37;
                                }
                            }
                        } else if (i30 == i23) {
                            i2 = 0;
                            for (int i38 = i19; i38 < arrayList2.size(); i38++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceBuildingsMaintenance() > Game.getProvince(((Integer) arrayList2.get(i38)).intValue()).getProvinceBuildingsMaintenance()) {
                                    i2 = i38;
                                }
                            }
                        } else {
                            i = 0;
                        }
                        i = i2;
                    }
                    i = i3;
                    c2 = 6;
                }
                str = str5;
                int i39 = i29 + 1;
                String str6 = str + i29 + ". " + Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getProvinceName();
                if (Game.getProvince(((Integer) arrayList2.get(i)).intValue()).isCapital) {
                    i5 = CFG.FONT_BOLD_SMALL;
                } else {
                    i5 = CFG.FONT_REGULAR_SMALL;
                }
                int i40 = i;
                int i41 = height6;
                ArrayList arrayList3 = arrayList2;
                int i42 = i27;
                int i43 = i26;
                arrayList.add(new AnonymousClass8(str6, i5, CFG.PADDING * 2, i6, i41, i26, i24, ((Integer) arrayList2.get(i)).intValue()));
                int width6 = i6 + arrayList.get(arrayList.size() - i19).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass9(CFG.getNumberWithSpaces(str + Game.getProvince(((Integer) arrayList3.get(i40)).intValue()).getPopulationTotal()), CFG.FONT_REGULAR_SMALL, -1, width6, i41, i43, i24, ((Integer) arrayList3.get(i40)).intValue()));
                int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new Text_StaticBG_ID(str + Game.getProvince(((Integer) arrayList3.get(i40)).intValue()).getUsedBuildingsSlots(), CFG.FONT_REGULAR_SMALL, -1, width7, i41, i42, i24, ((Integer) arrayList3.get(i40)).intValue()));
                int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                provinceBuildingsMaintenance = Game.getProvince(((Integer) arrayList3.get(i40)).intValue()).getProvinceBuildingsMaintenance();
                StringBuilder sb2 = new StringBuilder();
                if (provinceBuildingsMaintenance > 0.0f) {
                    str2 = "-";
                } else {
                    str2 = str;
                }
                arrayList.add(new AnonymousClass10(sb2.append(str2).append(CFG.getPrecision2(provinceBuildingsMaintenance, 1000)).toString(), width8, i41, i42, i24, ((Integer) arrayList3.get(i40)).intValue()));
                height6 = i41 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList3.remove(i40);
                arrayList2 = arrayList3;
                i27 = i42;
                i26 = i43;
                str5 = str;
                i25 = 5;
                i23 = 7;
                i19 = 1;
                i29 = i39;
            }
            i = i4;
            c2 = 6;
            c = 3;
            str = str5;
            int i310 = i29 + 1;
            String str7 = str + i29 + ". " + Game.getProvince(((Integer) arrayList2.get(i)).intValue()).getProvinceName();
            if (Game.getProvince(((Integer) arrayList2.get(i)).intValue()).isCapital) {
                i5 = CFG.FONT_BOLD_SMALL;
            } else {
                i5 = CFG.FONT_REGULAR_SMALL;
            }
            int i44 = i;
            int i45 = height6;
            ArrayList arrayList4 = arrayList2;
            int i46 = i27;
            int i47 = i26;
            arrayList.add(new AnonymousClass8(str7, i5, CFG.PADDING * 2, i6, i45, i26, i24, ((Integer) arrayList2.get(i)).intValue()));
            int width9 = i6 + arrayList.get(arrayList.size() - i19).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass9(CFG.getNumberWithSpaces(str + Game.getProvince(((Integer) arrayList4.get(i44)).intValue()).getPopulationTotal()), CFG.FONT_REGULAR_SMALL, -1, width9, i45, i47, i24, ((Integer) arrayList4.get(i44)).intValue()));
            int width10 = width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new Text_StaticBG_ID(str + Game.getProvince(((Integer) arrayList4.get(i44)).intValue()).getUsedBuildingsSlots(), CFG.FONT_REGULAR_SMALL, -1, width10, i45, i46, i24, ((Integer) arrayList4.get(i44)).intValue()));
            int width11 = width10 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            provinceBuildingsMaintenance = Game.getProvince(((Integer) arrayList4.get(i44)).intValue()).getProvinceBuildingsMaintenance();
            StringBuilder sb3 = new StringBuilder();
            if (provinceBuildingsMaintenance > 0.0f) {
                str2 = "-";
            } else {
                str2 = str;
            }
            arrayList.add(new AnonymousClass10(sb3.append(str2).append(CFG.getPrecision2(provinceBuildingsMaintenance, 1000)).toString(), width11, i45, i46, i24, ((Integer) arrayList4.get(i44)).intValue()));
            height6 = i45 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList4.remove(i44);
            arrayList2 = arrayList4;
            i27 = i46;
            i26 = i47;
            str5 = str;
            i25 = 5;
            i23 = 7;
            i19 = 1;
            i29 = i310;
        }
        int i48 = height6;
        int iMin = Math.min(i48, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(i48, iMin)));
        initMenu(new AnonymousClass11(Game.lang.get("BuildingsMaintenance"), Game.getCiv(this.iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
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
        getTitle().setText(Game.lang.get("BuildingsMaintenance"));
    }
}
