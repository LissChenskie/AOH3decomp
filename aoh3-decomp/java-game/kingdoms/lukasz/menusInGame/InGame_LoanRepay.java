package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
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
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.HttpResponseHeader;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_LoanRepay extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_LoanRepay$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_TakeLoanRepay(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_LoanRepay$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsBudget_Right2 {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).repayLoan(this.id)) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("LoanRepaid"), Game.lang.get("Loans") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).iLoansSize, 100) + " / " + Game.getLoanMaxNumber(Game.player.iCivID));
                InGame_Info.imgID = Images.infoCrown;
                Game.getCiv(Game.player.iCivID).updateTotalIncomePerMonth();
            } else {
                Game.menuManager.addToast_Error(Game.lang.get("InsufficientGold"));
            }
            if (Game.getCiv(Game.player.iCivID).iLoansSize == 0) {
                Game.menuManager.setVisibleInGame_TakeLoanRepay(false);
            } else {
                Game.menuManager.rebuildInGame_TakeLoanRepay();
                InGame_LoanRepay.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Repay"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Gold") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_LOAN_REPAY;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            try {
                if (this.lastValue != Game.getCiv(Game.player.iCivID).loans.get(this.id).fLoanValue - Game.getCiv(Game.player.iCivID).loans.get(this.id).getLoanValueLeft()) {
                    float loanValueLeft = Game.getCiv(Game.player.iCivID).loans.get(this.id).fLoanValue - Game.getCiv(Game.player.iCivID).loans.get(this.id).getLoanValueLeft();
                    setText(CFG.getPrecision2(loanValueLeft, 100));
                    this.lastValue = loanValueLeft;
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                }
            } catch (IndexOutOfBoundsException unused) {
                Game.menuManager.rebuildInGame_TakeLoanRepay();
                InGame_LoanRepay.lTime = 0L;
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_LoanRepay$3, reason: invalid class name */
    class AnonymousClass3 extends MenuTitleIMG {
        AnonymousClass3(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_LoanRepay.lTime;
        }
    }

    public InGame_LoanRepay() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int i2 = CFG.BUTTON_WIDTH;
        int i3 = Renderer.boxBGExtraY;
        int i4 = CFG.PADDING;
        int height = ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING * 2) + ImageManager.getImage(Images.title500).getHeight();
        int i5 = CFG.PADDING;
        int i6 = Images.boxTitleBORDERWIDTH;
        int width2 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i7 = CFG.BUTTON_HEIGHT2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "+999 999");
        int i8 = ((int) Renderer.glyphLayout.width) + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i9 = width - (i * 2);
        int i10 = (i9 - CFG.PADDING) - i8;
        arrayList.add(new AnonymousClass1(Game.lang.get(ALZmnpZHj.NHfGRtmMazjeRHj), CFG.FONT_REGULAR, -1, i, i5, i9, true));
        int height2 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (Game.getCiv(Game.player.iCivID).iLoansSize == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i, height2, i9, CFG.BUTTON_HEIGHT));
        } else {
            int height3 = height2;
            int i11 = 0;
            while (i11 < Game.getCiv(Game.player.iCivID).iLoansSize) {
                int i12 = i11 + 1;
                int i13 = height3;
                int i14 = width2;
                int i15 = width2;
                int i16 = i11;
                arrayList.add(new ButtonStatsBudget(i12 + ". " + Game.lang.get("Loan") + ", " + Game.lang.get(HttpResponseHeader.Expires) + ": " + Game_Calendar.getNumOfDates_ByTurnID(Game.getCiv(Game.player.iCivID).loans.get(i11).iExpires_TurnID), Images.loan, i, i13, i10, i7, i14, true));
                arrayList.add(new AnonymousClass2("" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).loans.get(i16).fLoanValue - Game.getCiv(Game.player.iCivID).loans.get(i16).getLoanValueLeft(), 100), i + i10 + CFG.PADDING, i13, i8, i7, i16));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i11 = i12;
                width2 = i15;
            }
        }
        int size = arrayList.size();
        int posY = 0;
        for (int i17 = 0; i17 < size; i17++) {
            if (posY < arrayList.get(i17).getPosY() + arrayList.get(i17).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i17).getPosY() + arrayList.get(i17).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass3(Game.lang.get("RepayLoans"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), CFG.GAME_HEIGHT / 4, width, iMin, arrayList, false, true);
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
