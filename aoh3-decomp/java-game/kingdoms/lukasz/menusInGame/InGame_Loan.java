package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.HttpResponseHeader;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Loan extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Loan$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsBudget {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Interest") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(Game.getLoanInterest(Game.player.iCivID), 100) + "%", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("BaseValue") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(GameValues.loan.LOAN_DEFAULT_INTEREST, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Loan$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsBudget_Right2 {
        AnonymousClass2(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setText(String str) {
            super.setText(str);
            this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
            this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Loan$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsBudget_Right2 {
        AnonymousClass3(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setText(String str) {
            super.setText(str);
            this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
            this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Loan$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsBudget_Right2 {
        AnonymousClass4(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Inflation") + ": ", "+" + CFG.getPrecision2(GameValues.loan.LOAN_INFLATION * 100.0f, 100) + "%", Images.inflation, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setText(String str) {
            super.setText(str);
            this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
            this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Loan$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonGame {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_TakeLoan(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Loan$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonGame {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).takeLoan()) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("ALoanHasBeenTaken"), Game.lang.get("Loans") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).iLoansSize, 100) + " / " + Game.getLoanMaxNumber(Game.player.iCivID));
                InGame_Info.imgID = Images.infoCrown;
                Game.player.currSituation.updateCurrentSituation();
            }
            Game.menuManager.setVisibleInGame_TakeLoan(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("TakeLoan"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float loanValue = Game.getLoanValue(Game.player.iCivID);
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Gold") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("+" + CFG.getPrecision2(loanValue, 100), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Interest") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("+" + CFG.getPrecision2(Game.getLoanInterestValue(Game.player.iCivID), 100), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.goldNegative, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(Game.player.iCivID).iLoansSize >= Game.getLoanMaxNumber(Game.player.iCivID)) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MaximumNumberOfLoans") + ": ", CFG.FONT_BOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).iLoansSize + " / " + Game.getLoanMaxNumber(Game.player.iCivID), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return Game.getCiv(Game.player.iCivID).iLoansSize < Game.getLoanMaxNumber(Game.player.iCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_LOAN;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Loan$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonGame {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).takeLoan()) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("ALoanHasBeenTaken"), Game.lang.get("Loans") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).iLoansSize, 100) + " / " + Game.getLoanMaxNumber(Game.player.iCivID));
                InGame_Info.imgID = Images.infoCrown;
                Game.player.currSituation.updateCurrentSituation();
            }
            if (Game.getCiv(Game.player.iCivID).iLoansSize >= Game.getLoanMaxNumber(Game.player.iCivID)) {
                Game.menuManager.setVisibleInGame_TakeLoan(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("TakeLoan"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float loanValue = Game.getLoanValue(Game.player.iCivID);
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Gold") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("+" + CFG.getPrecision2(loanValue, 100), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Interest") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("+" + CFG.getPrecision2(Game.getLoanInterestValue(Game.player.iCivID), 100), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.goldNegative, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(Game.player.iCivID).iLoansSize >= Game.getLoanMaxNumber(Game.player.iCivID)) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MaximumNumberOfLoans") + ": ", CFG.FONT_BOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).iLoansSize + " / " + Game.getLoanMaxNumber(Game.player.iCivID), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return Game.getCiv(Game.player.iCivID).iLoansSize < Game.getLoanMaxNumber(Game.player.iCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_LOAN;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Loan$8, reason: invalid class name */
    class AnonymousClass8 extends MenuTitleIMG {
        AnonymousClass8(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Loan.lTime;
        }
    }

    public InGame_Loan() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int i2 = CFG.BUTTON_WIDTH;
        int i3 = Renderer.boxBGExtraY;
        int i4 = CFG.PADDING;
        int height = ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING * 2) + ImageManager.getImage(Images.title500).getHeight();
        int i5 = CFG.PADDING * 2;
        int i6 = Images.boxTitleBORDERWIDTH;
        int width2 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i7 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "+999 999");
        int i8 = ((int) Renderer.glyphLayout.width) + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i9 = width - (i * 2);
        int i10 = (i9 - CFG.PADDING) - i8;
        arrayList.add(new ButtonStatsBudget(Game.lang.get(PxHJ.GZRMwSB), Images.loan, i, i5, i10, i7, width2, true));
        int i11 = i + i10;
        arrayList.add(new ButtonStatsBudget_Right2("+" + CFG.getPrecision2(Game.getLoanValue(Game.player.iCivID), 100), i11 + CFG.PADDING, i5, i8, i7));
        int height2 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass1(Game.lang.get("Interest") + ": " + CFG.getPrecision2(Game.getLoanInterest(Game.player.iCivID), 100) + "%", Images.gold, i, height2, i10, i7, width2, false));
        arrayList.add(new AnonymousClass2("+" + CFG.getPrecision2(Game.getLoanInterestValue(Game.player.iCivID), 100), i11 + CFG.PADDING, height2, i8, i7));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsBudget(Game.lang.get("MonthlyExpenses"), Images.goldNegative, i, height3, i10, i7, width2, true));
        arrayList.add(new AnonymousClass3("-" + CFG.getPrecision2(Game.getLoanMonthlyExpenses(Game.getLoanValue(Game.player.iCivID) + Game.getLoanInterestValue(Game.player.iCivID)), 100), i11 + CFG.PADDING, height3, i8, i7));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsBudget(Game.lang.get("Inflation"), Images.inflation, i, height4, i10, i7, width2, true));
        arrayList.add(new AnonymousClass4("+" + CFG.getPrecision2(GameValues.loan.LOAN_INFLATION * 100.0f, 100) + "%", i11 + CFG.PADDING, height4, i8, i7));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsBudget(Game.lang.get(HttpResponseHeader.Expires) + ": " + Game_Calendar.getNumOfDates_ByTurnID(Game_Calendar.TURN_ID + Game.getLoanExpires()), Images.time, i, height5, i9, i7, width2, false));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsBudget(Game.lang.get("MaximumNumberOfLoans") + ": " + Game.getCiv(Game.player.iCivID).iLoansSize + " / " + Game.getLoanMaxNumber(Game.player.iCivID), Images.loan, i, height6, i9, i7, width2, false));
        int height7 = arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2) + height6;
        arrayList.add(new AnonymousClass5(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i, height7, (((i9 - CFG.PADDING) - CFG.PADDING) - CFG.BUTTON_HEIGHT2) / 2, true));
        arrayList.add(new AnonymousClass6(Game.lang.get("Confirm"), CFG.FONT_REGULAR, -1, CFG.PADDING + i + ((((i9 - CFG.PADDING) - CFG.PADDING) - CFG.BUTTON_HEIGHT2) / 2), height7, ((i9 - CFG.PADDING) - CFG.BUTTON_HEIGHT2) / 2, true));
        arrayList.add(new AnonymousClass7("+", CFG.FONT_REGULAR, -1, i + (CFG.PADDING * 2) + (((i9 - CFG.PADDING) - CFG.PADDING) - CFG.BUTTON_HEIGHT2), height7, CFG.BUTTON_HEIGHT2, true));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i12 = CFG.PADDING;
        int size = arrayList.size();
        int posY = 0;
        for (int i13 = 0; i13 < size; i13++) {
            if (posY < arrayList.get(i13).getPosY() + arrayList.get(i13).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i13).getPosY() + arrayList.get(i13).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass8(Game.lang.get("TakeLoan"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), CFG.GAME_HEIGHT / 4, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civInfoOver).getWidth() / 2)) + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
