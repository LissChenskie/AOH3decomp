package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;
import aoc.kingdoms.lukasz.menus.InitGame;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_LegaciesEmpty extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_LegaciesEmpty$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Static {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_LegaciesEmpty$1$1, reason: invalid class name and collision with other inner class name */
        class C00071 extends ClickAnimation {
            C00071(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_LegaciesEmpty$1$2, reason: invalid class name */
        class AnonymousClass2 extends Game.SimpleTask {
            AnonymousClass2(String str) {
                super(str);
            }

            @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
            public void update() {
                InitGame.loadBackground();
                MainMenu.bgTIME = System.currentTimeMillis();
                MainMenu.bgTIME_CHANGE = System.currentTimeMillis();
                MainMenu.bgAlpha = 0.0f;
            }
        }

        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new C00071(getPosX() + (getWidth() / 2) + InGame_LegaciesEmpty.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_LegaciesEmpty.this.getMenuPosY(), getWidth(), getHeight()));
            Game.addSimpleTask(new AnonymousClass2("loadBackground"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_LegaciesEmpty$2, reason: invalid class name */
    class AnonymousClass2 extends Empty {
        AnonymousClass2(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME);
        }
    }

    public InGame_LegaciesEmpty() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(GameValues.text.VERSION, CFG.FONT_REGULAR_SMALL, -1, CFG.GAME_WIDTH - CFG.BUTTON_HEIGHT3, 0, CFG.BUTTON_HEIGHT3, CFG.BUTTON_HEIGHT3));
        arrayList.add(new AnonymousClass2(0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT));
        arrayList.get(arrayList.size() - 1).setClickable(true);
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (MainMenu.bgAlpha < 1.0f) {
            spriteBatch.setColor(0.0f, 0.0f, 0.0f, 1.0f);
            Images.pix.draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
            MainMenu.bgAlpha = Math.min(1.0f, (CFG.currentTimeMillis - MainMenu.bgTIME) / GameValues.text.MAIN_MENU_BG_ANIMATION_TIME);
        }
        spriteBatch.setColor(new Color(0.050980393f, 0.08627451f, 0.13333334f, MainMenu.bgAlpha * 1.0f));
        InitGame.background.draw(spriteBatch, i + ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2), i2 + ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2), InitGame.backgroundWidth, InitGame.backgroundHeight);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, MainMenu.bgAlpha));
        spriteBatch.setShader(Renderer.shaderAlpha);
        InitGame.background.getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.gradientHorizontal2).draw(spriteBatch, ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2) + i, ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2) + i2, InitGame.backgroundWidth, InitGame.backgroundHeight);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2) + i, ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2) + i2, InitGame.backgroundWidth, InitGame.backgroundHeight);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, MainMenu.bgAlpha * 0.45f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, 0, CFG.LEFT_MENU_WIDTH / 2, CFG.GAME_HEIGHT);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, (CFG.GAME_WIDTH - (CFG.LEFT_MENU_WIDTH / 2)) + i, 0, CFG.LEFT_MENU_WIDTH / 2, CFG.GAME_HEIGHT, true, false);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, 0, CFG.GAME_WIDTH, CFG.LEFT_MENU_WIDTH / 2);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, (CFG.GAME_HEIGHT + 0) - (CFG.LEFT_MENU_WIDTH / 2), CFG.GAME_WIDTH, CFG.LEFT_MENU_WIDTH / 2, false, true);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG.r, Colors.COLOR_GRADIENT_BG.g, Colors.COLOR_GRADIENT_BG.b, MainMenu.bgAlpha * 0.65f));
        Images.gradientFull.draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(MainMenu.sparksColors);
        MenuManager.sparksAnimation.draw2(spriteBatch, i, (CFG.GAME_HEIGHT - Images.sparkHeight) + i2, CFG.GAME_WIDTH, Images.sparkHeight);
        MenuManager.sparksAnimationHover.draw2(spriteBatch, i, i2, CFG.GAME_WIDTH, Images.sparkHeight, false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameLegacies();
    }
}
