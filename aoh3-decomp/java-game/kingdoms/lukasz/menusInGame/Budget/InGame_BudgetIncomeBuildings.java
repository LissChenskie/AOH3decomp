package aoc.kingdoms.lukasz.menusInGame.Budget;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
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
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_BudgetIncomeBuildings extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID = 4;
    public static long lTime;
    public static long lTime2;
    public int iActiveCivID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeBuildings$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsBudget_Right2 {
        AnonymousClass1(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(InGame_BudgetIncomeBuildings.this.iActiveCivID).civBonuses.MonthlyIncome) {
                float f = Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(InGame_BudgetIncomeBuildings.this.iActiveCivID).civBonuses.MonthlyIncome;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeBuildings$2, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeBuildings$3, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeBuildings$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeBuildings.iSortID == 0) {
                InGame_BudgetIncomeBuildings.iSortID = 1;
            } else {
                InGame_BudgetIncomeBuildings.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeBuildings();
            InGame_BudgetIncomeBuildings.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeBuildings$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlue {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeBuildings$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeBuildings.iSortID == 4) {
                InGame_BudgetIncomeBuildings.iSortID = 5;
            } else {
                InGame_BudgetIncomeBuildings.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeBuildings();
            InGame_BudgetIncomeBuildings.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeBuildings$7, reason: invalid class name */
    class AnonymousClass7 extends Text_StaticBG_ID {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeBuildings$8, reason: invalid class name */
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
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeBuildings$9, reason: invalid class name */
    class AnonymousClass9 extends MenuTitleIMG_FlagCenter {
        AnonymousClass9(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_BudgetIncomeBuildings.this.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_BudgetIncomeBuildings.lTime2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0782  */
    /* JADX WARN: Code duplicated, block: B:86:0x048f  */
    /* JADX WARN: Code duplicated, block: B:88:0x0547  */
    /* JADX WARN: Code duplicated, block: B:89:0x054a  */
    /* JADX WARN: Code duplicated, block: B:91:0x058e  */
    /* JADX WARN: Code duplicated, block: B:95:0x05ac  */
    public InGame_BudgetIncomeBuildings() {
        int i;
        char c;
        char c2;
        int i2;
        int i3;
        String str;
        String str2;
        int i4;
        int i5;
        int i6;
        String str3;
        String str4;
        float f;
        String str5;
        ArrayList arrayList = new ArrayList();
        int i7 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i8 = CFG.PADDING;
        int i9 = CFG.PADDING;
        this.iActiveCivID = Game.player.iCivID;
        int width2 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i10 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        int i11 = (CFG.BUTTON_HEIGHT * 4) / 5;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "+999 999");
        int i12 = ((int) Renderer.glyphLayout.width) + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i13 = width - (i7 * 2);
        int i14 = (i13 - CFG.PADDING) - i12;
        arrayList.add(new ButtonStatsBudget(Game.lang.get("TotalIncome"), Images.goldPositive, i7, i9, i14, i10, width2, true));
        int i15 = i7 + i14;
        arrayList.add(new AnonymousClass1("+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(this.iActiveCivID).civBonuses.MonthlyIncome, 100), i15 + CFG.PADDING, i9, i12, i10));
        int height2 = i9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float f2 = Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth;
        arrayList.add(new ButtonStatsBudget(Game.lang.get("TotalExpenses"), Images.goldNegative, i7, height2, i14, i10, width2, false));
        arrayList.add(new AnonymousClass2((f2 >= 0.0f ? "+" : "-") + CFG.getPrecision2(Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth, 100), i15 + CFG.PADDING, height2, i12, i10));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float f3 = (Game.getCiv(this.iActiveCivID).fTotalIncomePerMonth + Game.getCiv(this.iActiveCivID).civBonuses.MonthlyIncome) - Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth;
        String str6 = "";
        arrayList.add(new AnonymousClass3(Game.lang.get("Balance") + ": ", (f3 > 0.0f ? "+" : "") + CFG.getPrecision2(f3, 100), Images.gold, i7, height3, i13, CFG.TEXT_HEIGHT + (CFG.PADDING * 10)));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i16 = Images.boxTitleBORDERWIDTH;
        int i17 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.35f);
        int i18 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.45f);
        int i19 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i20 = (int) ((i13 - (CFG.PADDING * 2)) * 0.35f);
        int i21 = (int) ((i13 - (CFG.PADDING * 2)) * 0.45f);
        int i22 = (int) ((i13 - (CFG.PADDING * 2)) * 0.2f);
        int i23 = iSortID;
        arrayList.add(new AnonymousClass4(i23 == 0 || i23 == 1, i23 == 1, Game.lang.get("Name"), -1, i16, height4, i17, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = i16 + arrayList.get(arrayList.size() - 1).getWidth();
        arrayList.add(new AnonymousClass5(Game.lang.get("Building"), -1, width3, height4, i18, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i24 = iSortID;
        arrayList.add(new AnonymousClass6(i24 == 4 || i24 == 5, i24 == 5, Game.lang.get("Income"), -1, width4, height4, i19, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i25 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        ArrayList arrayList2 = new ArrayList();
        for (int i26 = 0; i26 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i26++) {
            if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i26)).provBonuses.MonthlyIncome > 0.0f) {
                arrayList2.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i26)));
            }
        }
        if (arrayList2.size() > 0) {
            int i27 = 1;
            while (arrayList2.size() > 0) {
                int i28 = iSortID;
                if (i28 == 0) {
                    i3 = 0;
                    for (int i29 = 1; i29 < arrayList2.size(); i29++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i3)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i29)).intValue()).getProvinceName())) {
                            i3 = i29;
                        }
                    }
                } else {
                    if (i28 == 1) {
                        i3 = 0;
                        for (int i30 = 1; i30 < arrayList2.size(); i30++) {
                            if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i30)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i3)).intValue()).getProvinceName())) {
                                i3 = i30;
                            }
                        }
                    } else {
                        c = 4;
                        if (i28 == 4) {
                            int i31 = 0;
                            for (int i32 = 1; i32 < arrayList2.size(); i32++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i32)).intValue()).provBonuses.MonthlyIncome > Game.getProvince(((Integer) arrayList2.get(i31)).intValue()).provBonuses.MonthlyIncome) {
                                    i31 = i32;
                                }
                            }
                            i2 = i31;
                            c2 = 5;
                        } else {
                            c2 = 5;
                            if (i28 == 5) {
                                int i33 = 0;
                                for (int i34 = 1; i34 < arrayList2.size(); i34++) {
                                    if (Game.getProvince(((Integer) arrayList2.get(i34)).intValue()).provBonuses.MonthlyIncome < Game.getProvince(((Integer) arrayList2.get(i33)).intValue()).provBonuses.MonthlyIncome) {
                                        i33 = i34;
                                    }
                                }
                                i2 = i33;
                            } else {
                                i2 = 0;
                            }
                        }
                    }
                    str = ". ";
                    if (Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).isCapital) {
                        int i35 = i27 + 1;
                        str2 = str6;
                        i4 = i2;
                        arrayList.add(new AnonymousClass7(str6 + i27 + ". " + Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceName(), CFG.FONT_BOLD_SMALL, CFG.PADDING * 2, i7, height5, i20, i25, ((Integer) arrayList2.get(i2)).intValue()));
                        int width5 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i7;
                        arrayList.add(new Text_StaticBG_ID(Game.lang.get("Capital"), CFG.FONT_REGULAR_SMALL, -1, width5, height5, i21, i25, ((Integer) arrayList2.get(i4)).intValue()));
                        int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        f = GameValues.capital.CAPITAL_MONTHLY_INCOME;
                        StringBuilder sb = new StringBuilder();
                        if (f > 0.0f) {
                            str5 = "+";
                        } else {
                            str5 = str2;
                        }
                        arrayList.add(new ButtonStatsBudget_Right2(sb.append(str5).append(CFG.getPrecision2(f, 100)).toString(), width6, height5, i22, i25, ((Integer) arrayList2.get(i4)).intValue()));
                        height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        i27 = i35;
                    } else {
                        str2 = str6;
                        i4 = i2;
                    }
                    i5 = 0;
                    while (i5 < Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).iBuildingsSize) {
                        if (BuildingsManager.buildings.get(Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getBuildings(i5).getBuilding()).MonthlyIncome != null || BuildingsManager.buildings.get(Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getBuildings(i5).getBuilding()).MonthlyIncome[Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getBuildings(i5).getBuildingID()] == 0.0f) {
                            i6 = i25;
                            String str7 = str;
                            str3 = str2;
                            str4 = str7;
                        } else {
                            String str8 = str2;
                            int i36 = i27 + 1;
                            String str9 = str;
                            str4 = str9;
                            str3 = str8;
                            i6 = i25;
                            arrayList.add(new AnonymousClass8(str8 + i27 + str9 + Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).isCapital ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i7, height5, i20, i25, ((Integer) arrayList2.get(i4)).intValue()));
                            int width7 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i7;
                            arrayList.add(new Text_StaticBG_ID(BuildingsManager.buildings.get(Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getBuildings(i5).getBuilding()).Name[Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getBuildings(i5).getBuildingID()], CFG.FONT_REGULAR_SMALL, -1, width7, height5, i21, i6, ((Integer) arrayList2.get(i4)).intValue()));
                            int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                            float f4 = BuildingsManager.buildings.get(Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getBuildings(i5).getBuilding()).MonthlyIncome[Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getBuildings(i5).getBuildingID()];
                            arrayList.add(new ButtonStatsBudget_Right2((f4 > 0.0f ? "+" : str3) + CFG.getPrecision2(f4, 100), width8, height5, i22, i6, ((Integer) arrayList2.get(i4)).intValue()));
                            height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                            i27 = i36;
                        }
                        i5++;
                        i25 = i6;
                        String str10 = str3;
                        str = str4;
                        str2 = str10;
                    }
                    arrayList2.remove(i4);
                    width = width;
                    str6 = str2;
                }
                i2 = i3;
                c2 = 5;
                c = 4;
                str = ". ";
                if (Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).isCapital) {
                    int i37 = i27 + 1;
                    str2 = str6;
                    i4 = i2;
                    arrayList.add(new AnonymousClass7(str6 + i27 + ". " + Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceName(), CFG.FONT_BOLD_SMALL, CFG.PADDING * 2, i7, height5, i20, i25, ((Integer) arrayList2.get(i2)).intValue()));
                    int width9 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i7;
                    arrayList.add(new Text_StaticBG_ID(Game.lang.get("Capital"), CFG.FONT_REGULAR_SMALL, -1, width9, height5, i21, i25, ((Integer) arrayList2.get(i4)).intValue()));
                    int width10 = width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                    f = GameValues.capital.CAPITAL_MONTHLY_INCOME;
                    StringBuilder sb2 = new StringBuilder();
                    if (f > 0.0f) {
                        str5 = "+";
                    } else {
                        str5 = str2;
                    }
                    arrayList.add(new ButtonStatsBudget_Right2(sb2.append(str5).append(CFG.getPrecision2(f, 100)).toString(), width10, height5, i22, i25, ((Integer) arrayList2.get(i4)).intValue()));
                    height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    i27 = i37;
                } else {
                    str2 = str6;
                    i4 = i2;
                }
                i5 = 0;
                while (i5 < Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).iBuildingsSize) {
                    if (BuildingsManager.buildings.get(Game.getProvince(((Integer) arrayList2.get(i4)).intValue()).getBuildings(i5).getBuilding()).MonthlyIncome != null) {
                        i6 = i25;
                        String str11 = str;
                        str3 = str2;
                        str4 = str11;
                    } else {
                        i6 = i25;
                        String str12 = str;
                        str3 = str2;
                        str4 = str12;
                    }
                    i5++;
                    i25 = i6;
                    String str13 = str3;
                    str = str4;
                    str2 = str13;
                }
                arrayList2.remove(i4);
                width = width;
                str6 = str2;
            }
            i = width;
        } else {
            i = width;
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i7, height5, i13, CFG.BUTTON_HEIGHT2));
            height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i38 = height5;
        int iMin = Math.min(i38, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        int i39 = i;
        arrayList.add(new Empty(0, 0, i39, Math.max(i38, iMin)));
        initMenu(new AnonymousClass9(Game.lang.get("Buildings"), Game.getCiv(this.iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height, i39, iMin, arrayList, false, true);
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
        getTitle().setText(Game.lang.get("Buildings"));
    }
}
