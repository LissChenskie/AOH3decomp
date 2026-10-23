package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMainTitle;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.menus.InitGame;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.menus.Settings.Settings_Menu;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Escape extends Menu {
    protected static final int ANIMATION_TIME = 125;
    private long lTime = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Escape$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMainTitle {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Escape$1$1, reason: invalid class name and collision with other inner class name */
        class C00061 extends ClickAnimation {
            C00061(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new C00061(getPosX() + (getWidth() / 2) + InGame_Escape.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Escape.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = MainMenu.getHoverAbout_Short();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Escape$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame2 {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_SaveGame(false);
            Game.menuManager.setVisibleInGame_Escape(false);
            Game.mapBG.updateActiveMapBGShader();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("ReturnToGame"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Escape$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame2 {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_SaveGame()) {
                Game.menuManager.setVisibleInGame_SaveGame(false);
            } else {
                Game.menuManager.rebuildInGame_SaveGame();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("SaveTheGame"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Escape$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame2 {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_SaveGame(false);
            Game.menuManager.setVisibleInGame_Escape(false);
            Game.mapBG.updateActiveMapBGShader();
            Game.menuManager.rebuildInGame_Audio();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Audio"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Escape$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonGame2 {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Settings_Menu.goBackToMenu = View.IN_GAME;
            Game.menuManager.setViewID(View.SETTINGS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("GameOptions"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Escape$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonGame2 {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.setDialogType(Dialog.DialogType.ESCAPE_TO_MAIN_MENU);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("ExitToMainMenu"));
        }
    }

    public InGame_Escape() {
        ArrayList arrayList = new ArrayList();
        int i = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int height = ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int i2 = CFG.GAME_WIDTH / 10;
        int i3 = CFG.GAME_HEIGHT / 10;
        int i4 = CFG.PADDING + (CFG.PADDING / 2);
        int i5 = CFG.PADDING;
        int i6 = CFG.PADDING;
        arrayList.add(new AnonymousClass1("", 0, -1, 0, 0, width, true));
        int height2 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + i4;
        int i7 = width - (i * 2);
        arrayList.add(new AnonymousClass2(null, 1, -1, i, height2, i7, true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i4;
        arrayList.add(new AnonymousClass3(null, 1, -1, i, height3, i7, true));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i4 + i4;
        arrayList.add(new AnonymousClass4(null, 1, -1, i, height4, i7, true));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i4;
        arrayList.add(new AnonymousClass5(null, 1, -1, i, height5, i7, true));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i4;
        arrayList.add(new AnonymousClass6(null, 1, -1, i, height6, i7, true));
        int iMin = Math.min(height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + Images.boxTitleBORDERWIDTH, ((CFG.GAME_HEIGHT - height) - i3) - (CFG.PADDING * 2));
        initMenu(null, CFG.GAME_WIDTH / 10, (CFG.GAME_HEIGHT / 2) - ((height + iMin) / 2), width, iMin, arrayList, false, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        try {
            float f = this.lTime + 125 >= CFG.currentTimeMillis ? (CFG.currentTimeMillis - this.lTime) / 125.0f : 1.0f;
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.05f * f));
            Images.pix.draw2(spriteBatch, i, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.8f * f));
            ImageManager.getImage(Images.gradientHorizontal3).draw(spriteBatch, ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2) + i, ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2) + i2, InitGame.backgroundWidth, InitGame.backgroundHeight);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f * 1.0f));
            spriteBatch.setShader(Renderer.shaderAlpha);
            InitGame.background.getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            Images.gradientFull.draw(spriteBatch, ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2) + i, ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2) + i2, InitGame.backgroundWidth, InitGame.backgroundHeight);
            ImageManager.getImage(Images.gradientHorizontal3).draw(spriteBatch, ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2) + i, ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2) + i2, InitGame.backgroundWidth, InitGame.backgroundHeight);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            if (Game.menuManager.getVisibleInGame_SaveGame()) {
                spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f * f));
                Images.pix.draw2(spriteBatch, i, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
            }
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.15f * f));
            ImageManager.getImage(Images.patt2).draw2(spriteBatch, i, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.45f * f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, 0, CFG.LEFT_MENU_WIDTH / 2, CFG.GAME_HEIGHT);
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, (CFG.GAME_WIDTH - (CFG.LEFT_MENU_WIDTH / 2)) + i, 0, CFG.LEFT_MENU_WIDTH / 2, CFG.GAME_HEIGHT, true, false);
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, 0, CFG.GAME_WIDTH, CFG.LEFT_MENU_WIDTH / 2);
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, (CFG.GAME_HEIGHT + 0) - (CFG.LEFT_MENU_WIDTH / 2), CFG.GAME_WIDTH, CFG.LEFT_MENU_WIDTH / 2, false, true);
            spriteBatch.setColor(MainMenu.sparksColors);
            MenuManager.sparksAnimation.draw2(spriteBatch, i, (CFG.GAME_HEIGHT - Images.sparkHeight) + i2, CFG.GAME_WIDTH, Images.sparkHeight);
            spriteBatch.setColor(Color.WHITE);
            int height = this.lTime + 125 >= CFG.currentTimeMillis ? (i2 - ((getHeight() * 4) / 5)) + ((int) (((getHeight() * 4) / 5) * f)) : i2;
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + height, getWidth(), getHeight() + CFG.PADDING);
            Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + height, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
            super.draw(spriteBatch, i, height, z, status);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameEscape();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        this.lTime = CFG.currentTimeMillis;
        if (z) {
            return;
        }
        Game.menuManager.setVisibleInGame_SaveGame(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
    }
}
