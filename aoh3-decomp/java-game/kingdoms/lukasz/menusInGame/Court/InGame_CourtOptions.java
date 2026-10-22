package aoc.kingdoms.lukasz.menusInGame.Court;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_CourtOptions extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int buildID = 0;
    public static int iActiveID = -7777;
    public static int iGovernmentID;
    public static int iLawID;
    public static int menuH;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions$1, reason: invalid class name */
    class AnonymousClass1 extends MenuTitleIMG_FlagCenter2 {
        AnonymousClass1(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void action() {
            super.action();
            Game.menuManager.setOrderOfMenu_InGameCourt();
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
            super.draw(spriteBatch, i - Images.boxTitleBORDERWIDTH, i2, i3 + (Images.boxTitleBORDERWIDTH * 2), status);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter2
        public int getFlagCivID() {
            return InGame_Court.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Court.lTime2;
        }
    }

    public InGame_CourtOptions() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth() - (Images.boxTitleBORDERWIDTH * 2);
        int otherMenuPosX = Images.boxTitleBORDERWIDTH + InGame_CourtOptions2.getOtherMenuPosX();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i2 = CFG.PADDING;
        int i3 = CFG.BUTTON_HEIGHT2;
        if (CFG.isDesktop()) {
            int i4 = CFG.BUTTON_HEIGHT4;
        } else {
            int i5 = CFG.BUTTON_HEIGHT2;
        }
        arrayList.add(new Empty(0, 0, 1, 1));
        arrayList.get(0).getPosY();
        arrayList.get(0).getHeight();
        menuH = ImageManager.getImage(Images.title500).getHeight() + 0;
        initMenu(new AnonymousClass1(Game.lang.get(GameValues.court.COUNCIL_NAME), false, false, Images.title500), otherMenuPosX, height, width, 0, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static void disableAllViews() {
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INVEST_IN_ECONOMY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEVELOP_INFRASTRUCTURE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_TAX_EFFICIENCY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_MANPOWER || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MOVE_CAPITAL || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_GROWTH_RATE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CONVERT_RELIGION || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CORE) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
        InGame_Court_Buildings2.oBuildingID = null;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.menuManager.setVisibleInGame_Court(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionElement(int i) {
        super.actionElement(i);
        if (InGame_Court.iActiveCivID != Game.player.iCivID) {
            InGame_Court.iActiveCivID = Game.player.iCivID;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
        Renderer.drawMenusBoxTopOnly(spriteBatch, (getPosX() - Images.boxTitleBORDERWIDTH) + i3, getPosY() + i2, (Images.boxTitleBORDERWIDTH * 2) + getWidth(), getHeight(), false, Images.insideTop500);
        spriteBatch.setColor(Colors.COLOR_GRADIENT_OVER_BLUE);
        Images.gradientFull.draw(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(Colors.COLOR_GRADIENT_BG_BLUE);
        Images.gradientXY.draw(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i3, (((getPosY() + getHeight()) - (CFG.PADDING * 2)) - 1) + i2, getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(Colors.COLOR_GRADIENT_BG_BLUE);
        Images.pix.draw(spriteBatch, getPosX() + i3, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_BOX_FRAME.r, Colors.COLOR_BOX_FRAME.g, Colors.COLOR_BOX_FRAME.b, 0.35f));
        Images.pix.draw(spriteBatch, getPosX() + i3, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Colors.COLOR_BOX_FRAME);
        Images.gradientFull.draw(spriteBatch, getPosX() + i3, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.newGameOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.newGameOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.newGameOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameCourt();
    }
}
