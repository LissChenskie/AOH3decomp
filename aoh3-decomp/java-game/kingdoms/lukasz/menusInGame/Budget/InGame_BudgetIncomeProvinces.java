package aoc.kingdoms.lukasz.menusInGame.Budget;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
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
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
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
public class InGame_BudgetIncomeProvinces extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iSortID = 6;
    public static long lTime;
    public static long lTime2;
    public int iActiveCivID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProvinces$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsBudget_Balance {
        AnonymousClass1(String str, String str2, int i, int i2, int i3, int i4, int i5) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProvinces$2, reason: invalid class name */
    class AnonymousClass2 extends Text_TitleBlueSort {
        AnonymousClass2(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeProvinces.iSortID == 0) {
                InGame_BudgetIncomeProvinces.iSortID = 1;
            } else {
                InGame_BudgetIncomeProvinces.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeProvinces();
            InGame_BudgetIncomeProvinces.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProvinces$3, reason: invalid class name */
    class AnonymousClass3 extends Text_TitleBlueSort {
        AnonymousClass3(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeProvinces.iSortID == 2) {
                InGame_BudgetIncomeProvinces.iSortID = 3;
            } else {
                InGame_BudgetIncomeProvinces.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeProvinces();
            InGame_BudgetIncomeProvinces.lTime = 0L;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProvinces$4, reason: invalid class name */
    class AnonymousClass4 extends Text_TitleBlueSort {
        AnonymousClass4(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeProvinces.iSortID == 4) {
                InGame_BudgetIncomeProvinces.iSortID = 5;
            } else {
                InGame_BudgetIncomeProvinces.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeProvinces();
            InGame_BudgetIncomeProvinces.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(hQfu.PcROuhkcnkcLM), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProvinces$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_BudgetIncomeProvinces.iSortID == 6) {
                InGame_BudgetIncomeProvinces.iSortID = 7;
            } else {
                InGame_BudgetIncomeProvinces.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_BudgetIncomeProvinces();
            InGame_BudgetIncomeProvinces.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MonthlyIncome"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProvinces$6, reason: invalid class name */
    class AnonymousClass6 extends Text_StaticBG_ID {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProvinces$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsBudget_Right2 {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float f = Game.getProvince(this.id).fProvinceIncome - Game.getProvince(this.id).fProvinceMaintenance;
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MonthlyIncome") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle((f > 0.0f ? "+" : "") + CFG.getPrecision2(f, 100), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getProvince(this.id).fProvinceIncome - Game.getProvince(this.id).fProvinceMaintenance) {
                float f = Game.getProvince(this.id).fProvinceIncome - Game.getProvince(this.id).fProvinceMaintenance;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProvinces$8, reason: invalid class name */
    class AnonymousClass8 extends MenuTitleIMG_FlagCenter {
        AnonymousClass8(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_BudgetIncomeProvinces.this.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_BudgetIncomeProvinces.lTime2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:104:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:106:0x03f2  */
    /* JADX WARN: Code duplicated, block: B:108:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:110:0x03fa  */
    /* JADX WARN: Code duplicated, block: B:113:0x0402  */
    /* JADX WARN: Code duplicated, block: B:115:0x0448  */
    /* JADX WARN: Code duplicated, block: B:117:0x044e  */
    /* JADX WARN: Code duplicated, block: B:119:0x0451  */
    /* JADX WARN: Code duplicated, block: B:122:0x0459  */
    /* JADX WARN: Code duplicated, block: B:124:0x049f  */
    /* JADX WARN: Code duplicated, block: B:126:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:129:0x04e6  */
    /* JADX WARN: Code duplicated, block: B:130:0x04e9  */
    /* JADX WARN: Code duplicated, block: B:133:0x0615  */
    /* JADX WARN: Code duplicated, block: B:134:0x0618  */
    /* JADX WARN: Code duplicated, block: B:144:0x02ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:0x0324 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:150:0x0356 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x0389 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:0x03bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x03f3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x0449 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x04a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x01db  */
    /* JADX WARN: Code duplicated, block: B:34:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:40:0x021e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0221  */
    /* JADX WARN: Code duplicated, block: B:43:0x0223  */
    /* JADX WARN: Code duplicated, block: B:46:0x0260  */
    /* JADX WARN: Code duplicated, block: B:47:0x0263  */
    /* JADX WARN: Code duplicated, block: B:51:0x0296 A[LOOP:0: B:49:0x0288->B:51:0x0296, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:57:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:60:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:62:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:64:0x02ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:68:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:70:0x0323  */
    /* JADX WARN: Code duplicated, block: B:72:0x0327 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x0329  */
    /* JADX WARN: Code duplicated, block: B:76:0x0331  */
    /* JADX WARN: Code duplicated, block: B:78:0x0355  */
    /* JADX WARN: Code duplicated, block: B:80:0x0359  */
    /* JADX WARN: Code duplicated, block: B:82:0x035c  */
    /* JADX WARN: Code duplicated, block: B:85:0x0364  */
    /* JADX WARN: Code duplicated, block: B:87:0x0388  */
    /* JADX WARN: Code duplicated, block: B:90:0x038f  */
    /* JADX WARN: Code duplicated, block: B:92:0x0392  */
    /* JADX WARN: Code duplicated, block: B:95:0x039a  */
    /* JADX WARN: Code duplicated, block: B:97:0x03be  */
    /* JADX WARN: Code duplicated, block: B:99:0x03c3  */
    public InGame_BudgetIncomeProvinces() {
        int i;
        boolean z;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        ArrayList arrayList;
        int i8;
        int i9;
        int height;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        String str;
        int i20;
        float f;
        String str2;
        int i21;
        ArrayList arrayList2 = new ArrayList();
        int i22 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i23 = CFG.PADDING;
        int i24 = CFG.PADDING;
        this.iActiveCivID = Game.player.iCivID;
        ImageManager.getImage(Images.gold).getWidth();
        int i25 = CFG.PADDING;
        int i26 = CFG.PADDING / 2;
        int i27 = CFG.TEXT_HEIGHT;
        int i28 = CFG.PADDING;
        int i29 = (CFG.BUTTON_HEIGHT * 4) / 5;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "+999 999");
        float f2 = glyphLayout_Game.width;
        int i30 = CFG.PADDING;
        int i31 = CFG.PADDING / 2;
        int i32 = width - (i22 * 2);
        int i33 = CFG.PADDING;
        float f3 = (Game.getCiv(this.iActiveCivID).fTotalIncomePerMonth + Game.getCiv(this.iActiveCivID).civBonuses.MonthlyIncome) - Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth;
        String str3 = "";
        arrayList2.add(new AnonymousClass1(Game.lang.get("Balance") + ": ", (f3 > 0.0f ? "+" : "") + CFG.getPrecision2(f3, 100), Images.gold, i22, i24, i32, CFG.TEXT_HEIGHT + (CFG.PADDING * 10)));
        int height3 = i24 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        int i34 = Images.boxTitleBORDERWIDTH;
        int i35 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.3f);
        int i36 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i37 = iSortID;
        int i38 = 1;
        arrayList2.add(new AnonymousClass2(i37 == 0 || i37 == 1, i37 == 1, Game.lang.get(qIuEvFbUtcea.vRKGCinL), -1, i34, height3, i35, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i34 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i39 = iSortID;
        arrayList2.add(new AnonymousClass3(i39 == 2 || i39 == 3, i39 == 3, Game.lang.get("Income"), -1, width2, height3, i35, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList2.get(arrayList2.size() - 1).getWidth();
        int i40 = iSortID;
        if (i40 != 4) {
            i = 5;
            if (i40 != 5) {
                z = false;
            }
            if (i40 == i) {
                z2 = true;
            } else {
                z2 = false;
            }
            arrayList2.add(new AnonymousClass4(z, z2, Game.lang.get("Expenses"), -1, width3, height3, i36, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int width4 = width3 + arrayList2.get(arrayList2.size() - 1).getWidth();
            i2 = iSortID;
            if (i2 != 6 || i2 == 7) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (i2 == 7) {
                z4 = true;
            } else {
                z4 = false;
            }
            arrayList2.add(new AnonymousClass5(z3, z4, Game.lang.get("MonthlyIncome"), -1, width4, height3, i36, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int height4 = height3 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
            if (CFG.isDesktop()) {
                i3 = CFG.BUTTON_HEIGHT3;
            } else {
                i3 = CFG.BUTTON_HEIGHT2;
            }
            i4 = i3;
            i5 = 2;
            i6 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
            i7 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
            arrayList = new ArrayList();
            for (i8 = 0; i8 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i8++) {
                arrayList.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i8)));
            }
            i9 = 1;
            height = height4;
            while (arrayList.size() > 0) {
                i10 = iSortID;
                if (i10 == 0) {
                    i11 = 0;
                    for (i21 = i38; i21 < arrayList.size(); i21++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList.get(i11)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList.get(i21)).intValue()).getProvinceName())) {
                            i11 = i21;
                        }
                    }
                } else if (i10 == i38) {
                    i11 = 0;
                    for (i19 = i38; i19 < arrayList.size(); i19++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList.get(i19)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList.get(i11)).intValue()).getProvinceName())) {
                            i11 = i19;
                        }
                    }
                } else if (i10 == i5) {
                    i11 = 0;
                    for (i18 = i38; i18 < arrayList.size(); i18++) {
                        if (Game.getProvince(((Integer) arrayList.get(i18)).intValue()).fProvinceIncome > Game.getProvince(((Integer) arrayList.get(i11)).intValue()).fProvinceIncome) {
                            i11 = i18;
                        }
                    }
                } else {
                    if (i10 == 3) {
                        i13 = 0;
                        for (i17 = i38; i17 < arrayList.size(); i17++) {
                            if (Game.getProvince(((Integer) arrayList.get(i17)).intValue()).fProvinceIncome < Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceIncome) {
                                i13 = i17;
                            }
                        }
                    } else if (i10 == 4) {
                        i13 = 0;
                        for (i16 = i38; i16 < arrayList.size(); i16++) {
                            if (Game.getProvince(((Integer) arrayList.get(i16)).intValue()).fProvinceMaintenance > Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceMaintenance) {
                                i13 = i16;
                            }
                        }
                    } else if (i10 == 5) {
                        i13 = 0;
                        for (i15 = i38; i15 < arrayList.size(); i15++) {
                            if (Game.getProvince(((Integer) arrayList.get(i15)).intValue()).fProvinceMaintenance < Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceMaintenance) {
                                i13 = i15;
                            }
                        }
                    } else if (i10 == 6) {
                        i13 = 0;
                        for (i14 = i38; i14 < arrayList.size(); i14++) {
                            if (Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceIncome - Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceMaintenance < Game.getProvince(((Integer) arrayList.get(i14)).intValue()).fProvinceIncome - Game.getProvince(((Integer) arrayList.get(i14)).intValue()).fProvinceMaintenance) {
                                i13 = i14;
                            }
                        }
                    } else if (i10 == 7) {
                        i13 = 0;
                        for (i12 = i38; i12 < arrayList.size(); i12++) {
                            if (Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceIncome - Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceMaintenance > Game.getProvince(((Integer) arrayList.get(i12)).intValue()).fProvinceIncome - Game.getProvince(((Integer) arrayList.get(i12)).intValue()).fProvinceMaintenance) {
                                i13 = i12;
                            }
                        }
                    } else {
                        i11 = 0;
                    }
                    i11 = i13;
                }
                str = str3;
                int i41 = i9 + 1;
                String str4 = str + i9 + ". " + Game.getProvince(((Integer) arrayList.get(i11)).intValue()).getProvinceName();
                if (Game.getProvince(((Integer) arrayList.get(i11)).intValue()).isCapital) {
                    i20 = CFG.FONT_BOLD_SMALL;
                } else {
                    i20 = CFG.FONT_REGULAR_SMALL;
                }
                int i42 = height;
                int i43 = width;
                int i44 = i11;
                ArrayList arrayList3 = arrayList;
                int i45 = i7;
                int i46 = i6;
                arrayList2.add(new AnonymousClass6(str4, i20, CFG.PADDING * 2, i22, i42, i6, i4, ((Integer) arrayList.get(i11)).intValue()));
                int width5 = arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING + i22;
                int i47 = i22;
                arrayList2.add(new Text_StaticBG_ID(str + CFG.getPrecision2(Game.getProvince(((Integer) arrayList3.get(i44)).intValue()).fProvinceIncome, 100), CFG.FONT_REGULAR_SMALL, -1, width5, i42, i46, i4, ((Integer) arrayList3.get(i44)).intValue()));
                int width6 = width5 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                arrayList2.add(new Text_StaticBG_ID("-" + CFG.getPrecision2(Game.getProvince(((Integer) arrayList3.get(i44)).intValue()).fProvinceMaintenance, 100), CFG.FONT_REGULAR_SMALL, -1, width6, i42, i45, i4, ((Integer) arrayList3.get(i44)).intValue()));
                int width7 = width6 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
                f = Game.getProvince(((Integer) arrayList3.get(i44)).intValue()).fProvinceIncome - Game.getProvince(((Integer) arrayList3.get(i44)).intValue()).fProvinceMaintenance;
                StringBuilder sb = new StringBuilder();
                if (f > 0.0f) {
                    str2 = "+";
                } else {
                    str2 = str;
                }
                arrayList2.add(new AnonymousClass7(sb.append(str2).append(CFG.getPrecision2(f, 100)).toString(), width7, i42, i45, i4, ((Integer) arrayList3.get(i44)).intValue()));
                height = i42 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
                arrayList3.remove(i44);
                i38 = 1;
                arrayList = arrayList3;
                i9 = i41;
                i22 = i47;
                width = i43;
                i7 = i45;
                i6 = i46;
                str3 = str;
                i5 = 2;
            }
            int i48 = height;
            int i49 = width;
            int iMin = Math.min(i48, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 3));
            arrayList2.add(new Empty(0, 0, i49, Math.max(i48, iMin)));
            initMenu(new AnonymousClass8(Game.lang.get("ProvinceMonthlyIncome"), Game.getCiv(this.iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height2, i49, iMin, arrayList2, false, true);
            this.drawScrollPositionAlways = false;
        }
        i = 5;
        z = true;
        if (i40 == i) {
            z2 = true;
        } else {
            z2 = false;
        }
        arrayList2.add(new AnonymousClass4(z, z2, Game.lang.get("Expenses"), -1, width3, height3, i36, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width8 = width3 + arrayList2.get(arrayList2.size() - 1).getWidth();
        i2 = iSortID;
        if (i2 != 6) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (i2 == 7) {
            z4 = true;
        } else {
            z4 = false;
        }
        arrayList2.add(new AnonymousClass5(z3, z4, Game.lang.get("MonthlyIncome"), -1, width8, height3, i36, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height5 = height3 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        if (CFG.isDesktop()) {
            i3 = CFG.BUTTON_HEIGHT3;
        } else {
            i3 = CFG.BUTTON_HEIGHT2;
        }
        i4 = i3;
        i5 = 2;
        i6 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.3f);
        i7 = (int) (((width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 5)) * 0.2f);
        arrayList = new ArrayList();
        while (i8 < Game.getCiv(Game.player.iCivID).getNumOfProvinces()) {
            arrayList.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i8)));
        }
        i9 = 1;
        height = height5;
        while (arrayList.size() > 0) {
            i10 = iSortID;
            if (i10 == 0) {
                i11 = 0;
                while (i21 < arrayList.size()) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList.get(i11)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList.get(i21)).intValue()).getProvinceName())) {
                        i11 = i21;
                    }
                }
            } else if (i10 == i38) {
                i11 = 0;
                while (i19 < arrayList.size()) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList.get(i19)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList.get(i11)).intValue()).getProvinceName())) {
                        i11 = i19;
                    }
                }
            } else if (i10 == i5) {
                i11 = 0;
                while (i18 < arrayList.size()) {
                    if (Game.getProvince(((Integer) arrayList.get(i18)).intValue()).fProvinceIncome > Game.getProvince(((Integer) arrayList.get(i11)).intValue()).fProvinceIncome) {
                        i11 = i18;
                    }
                }
            } else {
                if (i10 == 3) {
                    i13 = 0;
                    while (i17 < arrayList.size()) {
                        if (Game.getProvince(((Integer) arrayList.get(i17)).intValue()).fProvinceIncome < Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceIncome) {
                            i13 = i17;
                        }
                    }
                } else if (i10 == 4) {
                    i13 = 0;
                    while (i16 < arrayList.size()) {
                        if (Game.getProvince(((Integer) arrayList.get(i16)).intValue()).fProvinceMaintenance > Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceMaintenance) {
                            i13 = i16;
                        }
                    }
                } else if (i10 == 5) {
                    i13 = 0;
                    while (i15 < arrayList.size()) {
                        if (Game.getProvince(((Integer) arrayList.get(i15)).intValue()).fProvinceMaintenance < Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceMaintenance) {
                            i13 = i15;
                        }
                    }
                } else if (i10 == 6) {
                    i13 = 0;
                    while (i14 < arrayList.size()) {
                        if (Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceIncome - Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceMaintenance < Game.getProvince(((Integer) arrayList.get(i14)).intValue()).fProvinceIncome - Game.getProvince(((Integer) arrayList.get(i14)).intValue()).fProvinceMaintenance) {
                            i13 = i14;
                        }
                    }
                } else if (i10 == 7) {
                    i13 = 0;
                    while (i12 < arrayList.size()) {
                        if (Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceIncome - Game.getProvince(((Integer) arrayList.get(i13)).intValue()).fProvinceMaintenance > Game.getProvince(((Integer) arrayList.get(i12)).intValue()).fProvinceIncome - Game.getProvince(((Integer) arrayList.get(i12)).intValue()).fProvinceMaintenance) {
                            i13 = i12;
                        }
                    }
                } else {
                    i11 = 0;
                }
                i11 = i13;
            }
            str = str3;
            int i410 = i9 + 1;
            String str5 = str + i9 + ". " + Game.getProvince(((Integer) arrayList.get(i11)).intValue()).getProvinceName();
            if (Game.getProvince(((Integer) arrayList.get(i11)).intValue()).isCapital) {
                i20 = CFG.FONT_BOLD_SMALL;
            } else {
                i20 = CFG.FONT_REGULAR_SMALL;
            }
            int i411 = height;
            int i412 = width;
            int i413 = i11;
            ArrayList arrayList4 = arrayList;
            int i414 = i7;
            int i415 = i6;
            arrayList2.add(new AnonymousClass6(str5, i20, CFG.PADDING * 2, i22, i411, i6, i4, ((Integer) arrayList.get(i11)).intValue()));
            int width9 = arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING + i22;
            int i416 = i22;
            arrayList2.add(new Text_StaticBG_ID(str + CFG.getPrecision2(Game.getProvince(((Integer) arrayList4.get(i413)).intValue()).fProvinceIncome, 100), CFG.FONT_REGULAR_SMALL, -1, width9, i411, i415, i4, ((Integer) arrayList4.get(i413)).intValue()));
            int width10 = width9 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
            arrayList2.add(new Text_StaticBG_ID("-" + CFG.getPrecision2(Game.getProvince(((Integer) arrayList4.get(i413)).intValue()).fProvinceMaintenance, 100), CFG.FONT_REGULAR_SMALL, -1, width10, i411, i414, i4, ((Integer) arrayList4.get(i413)).intValue()));
            int width11 = width10 + arrayList2.get(arrayList2.size() - 1).getWidth() + CFG.PADDING;
            f = Game.getProvince(((Integer) arrayList4.get(i413)).intValue()).fProvinceIncome - Game.getProvince(((Integer) arrayList4.get(i413)).intValue()).fProvinceMaintenance;
            StringBuilder sb2 = new StringBuilder();
            if (f > 0.0f) {
                str2 = "+";
            } else {
                str2 = str;
            }
            arrayList2.add(new AnonymousClass7(sb2.append(str2).append(CFG.getPrecision2(f, 100)).toString(), width11, i411, i414, i4, ((Integer) arrayList4.get(i413)).intValue()));
            height = i411 + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
            arrayList4.remove(i413);
            i38 = 1;
            arrayList = arrayList4;
            i9 = i410;
            i22 = i416;
            width = i412;
            i7 = i414;
            i6 = i415;
            str3 = str;
            i5 = 2;
        }
        int i417 = height;
        int i418 = width;
        int iMin2 = Math.min(i417, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 3));
        arrayList2.add(new Empty(0, 0, i418, Math.max(i417, iMin2)));
        initMenu(new AnonymousClass8(Game.lang.get("ProvinceMonthlyIncome"), Game.getCiv(this.iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height2, i418, iMin2, arrayList2, false, true);
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
        getTitle().setText(Game.lang.get("ProvinceMonthlyIncome"));
    }
}
