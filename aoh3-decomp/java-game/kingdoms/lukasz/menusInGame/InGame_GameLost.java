package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonPlay;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_GameLost extends Menu {
    public static final int ANIMATION_TIME = 500;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_GameLost$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonPlay {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.setActiveProvinceID(-1);
            ProvinceBorderManager.clearProvinceBorder();
            MainMenu.canContinue = false;
            Game.menuManager.setViewID(View.MAINMENU);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_GameLost$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonPlay {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.SPECTATOR_MODE = true;
            Game.player.iCivID = 0;
            Game.setActiveProvinceID(-1);
            ProvinceBorderManager.clearProvinceBorder();
            Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_GameLost$3, reason: invalid class name */
    class AnonymousClass3 extends Text_Static {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), false, true);
            spriteBatch.setColor(Color.WHITE);
            super.draw(spriteBatch, i, i2, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.HOVER_GOLD;
        }
    }

    public InGame_GameLost() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(Game.lang.get("Continue"), 1, -1, CFG.GAME_WIDTH - ImageManager.getImage(Images.buttonPlay).getWidth(), CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight(), false));
        arrayList.add(new AnonymousClass2(Game.lang.get("SpectatorMode"), 1, -1, 0, CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight(), true));
        lTime = CFG.currentTimeMillis;
        arrayList.add(new AnonymousClass3(Game.lang.get("YouHaveBeenDefeated"), -1, 0, 0, CFG.GAME_WIDTH, CFG.BUTTON_HEIGHT));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.BUTTON_HEIGHT / 2);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - (CFG.BUTTON_HEIGHT / 2)) + i2, getWidth(), CFG.BUTTON_HEIGHT / 2, false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
