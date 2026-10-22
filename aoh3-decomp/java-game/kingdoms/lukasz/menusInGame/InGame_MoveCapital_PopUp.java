package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.Button_CapitalMove;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_MoveCapital_PopUp extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;
    public static int toProvinceID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MoveCapital_PopUp$1, reason: invalid class name */
    class AnonymousClass1 extends Text_StaticBG_RulerTitle {
        AnonymousClass1(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_MoveCapital_PopUp.toProvinceID >= 0) {
                Game.mapCoords.centerToProvinceID(InGame_MoveCapital_PopUp.toProvinceID);
                Game.setActiveProvinceID(InGame_MoveCapital_PopUp.toProvinceID);
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(CvuNnwgYwe.XwUbK) + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(InGame_MoveCapital_PopUp.toProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MoveCapital_PopUp$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass2(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_MoveCapital_PopUp.toProvinceID >= 0) {
                Game.mapCoords.centerToProvinceID(InGame_MoveCapital_PopUp.toProvinceID);
                Game.setActiveProvinceID(InGame_MoveCapital_PopUp.toProvinceID);
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MoveCapitalTo") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(InGame_MoveCapital_PopUp.toProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MoveCapital_PopUp$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_RIGHT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MoveCapital_PopUp$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MoveCapital_PopUp$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonGame {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_MoveCapital_PopUp.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MoveCapitalTo") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.getProvince(InGame_MoveCapital_PopUp.toProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.capital.MOVE_CAPITAL_COST, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("AllUniqueBuildingsInTheCapitalWillBeDestroyed"), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return Game.getCiv(Game.player.iCivID).fGold >= GameValues.capital.MOVE_CAPITAL_COST;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MoveCapital_PopUp$6, reason: invalid class name */
    class AnonymousClass6 extends MenuTitleIMG_FlagCenter2 {
        AnonymousClass6(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2
        public int getFlagCivID() {
            return Game.player.iCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_MoveCapital_PopUp.lTime;
        }
    }

    public InGame_MoveCapital_PopUp() {
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
        arrayList.add(new Button_CapitalMove(i, i5));
        int width2 = i6 + arrayList.get(arrayList.size() - 1).getWidth() + (CFG.PADDING * 3);
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + i5;
        int width3 = ImageManager.getImage(Images.gold).getWidth();
        int i7 = (width - width2) - i;
        int buttonHeight = (Button_CapitalMove.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        arrayList.add(new AnonymousClass1(Game.lang.get("MoveCapital"), width2, i5, i7, buttonHeight));
        int height3 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass2(Game.getProvince(Math.max(0, toProvinceID)).getProvinceName(), "", Images.capital, width2, height3, i7, buttonHeight, width3));
        arrayList.add(new AnonymousClass3(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(GameValues.capital.MOVE_CAPITAL_COST, 100), Images.gold, width2, height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING, i7, buttonHeight, width3));
        int i8 = width - (i * 2);
        arrayList.add(new AnonymousClass4(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i, height2, (i8 - CFG.PADDING) / 2, true));
        arrayList.add(new AnonymousClass5(Game.lang.get("Confirm"), CFG.FONT_REGULAR, -1, i + CFG.PADDING + ((i8 - CFG.PADDING) / 2), height2, (i8 - CFG.PADDING) / 2, true));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i9 = CFG.PADDING;
        int size = arrayList.size();
        int posY = 0;
        for (int i10 = 0; i10 < size; i10++) {
            if (posY < arrayList.get(i10).getPosY() + arrayList.get(i10).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i10).getPosY() + arrayList.get(i10).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass6(Game.lang.get("Capital"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), CFG.GAME_HEIGHT / 4, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static final void confirm() {
        if (Game.getCiv(Game.player.iCivID).moveCapital(toProvinceID)) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions.iGovernmentID) {
                Game.menuManager.rebuildInGame_Government_SavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = 0;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("CapitalMoved"), Game.getProvince(Game.getCiv(Game.player.iCivID).getCapitalProvinceID()).getProvinceName());
            InGame_Info.imgID = Images.infoCrown;
        }
        Game.menuManager.setVisibleInGame_PopUp(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop500, Images.insideBot500);
        spriteBatch.setColor(Colors.COLOR_GRADIENT);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
