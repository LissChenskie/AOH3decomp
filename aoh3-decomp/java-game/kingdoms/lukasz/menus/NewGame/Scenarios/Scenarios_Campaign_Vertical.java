package aoc.kingdoms.lukasz.menus.NewGame.Scenarios;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag2_CivName_Random;
import aoc.kingdoms.lukasz.menu_element.button.ButtonPlay;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menus.InitGame;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Scenarios_Campaign_Vertical extends Menu {
    private int iHeight;
    private int iWidth;
    private int iXPos;
    private int iYPos;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios_Campaign_Vertical$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonPlay {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.MAINMENU);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get(fiRhHJntP.GriSQrRaTwhJxv));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios_Campaign_Vertical$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass2(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Scenarios.SCENARIOS_DEFAULT_MODE = !Scenarios.SCENARIOS_DEFAULT_MODE;
            Game.menuManager.setViewIDWithoutAnimation(View.SCENARIOS_CAMPAIGN);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios_Campaign_Vertical$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.SCENARIOS);
            Game.menuManager.setOrderOfMenu_Scenarios();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios_Campaign_Vertical$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonFlag2_CivName_Random {
        AnonymousClass4(int i, int i2, boolean z) {
            super(i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag2_CivName_Random, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MapScenarios.loadRandomScenario();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag2_CivName_Random, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("RandomScenario"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.dice, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    public Scenarios_Campaign_Vertical() {
        this.iXPos = 0;
        this.iYPos = 0;
        this.iWidth = 480;
        this.iHeight = 480;
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + (CFG.PADDING / 2);
        this.iXPos = (CFG.GAME_WIDTH / 2) - (this.iWidth / 2);
        this.iWidth = Game.mapBG.scenarioOver.getWidth() + (i * 2);
        this.iHeight = (i * 3) + (i / 2) + ((CFG.BUTTON_HEIGHT + (CFG.PADDING * 2)) * 6);
        this.iYPos = (int) (((CFG.GAME_HEIGHT - this.iHeight) - ImageManager.getImage(Images.mainTitle).getHeight()) * 0.5f);
        arrayList.add(new AnonymousClass1(TGqtTWl.XSJrHT, 1, -1, 0, CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight(), true));
        arrayList.add(new AnonymousClass2(Game.lang.get(jkEBdieJhbh.xIEPKjxJNNWk), "", Images.outliner, CFG.PADDING, ((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 2)) - CFG.BUTTON_HEIGHT3, (ImageManager.getImage(Images.buttonPlay).getWidth() * 3) / 4, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.time).getWidth()));
        arrayList.add(new AnonymousClass3(Game.lang.get("NewGame"), "", Images.outliner, CFG.PADDING, ((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 2)) - CFG.BUTTON_HEIGHT3) - CFG.PADDING) - CFG.BUTTON_HEIGHT3, (ImageManager.getImage(Images.buttonPlay).getWidth() * 3) / 4, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.time).getWidth()));
        arrayList.add(new AnonymousClass4(CFG.PADDING, (((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 4)) - (CFG.BUTTON_HEIGHT3 * 2)) - ((ImageManager.getImage(Images.flagOverDefault).getHeight() + CFG.TEXT_HEIGHT) + (CFG.PADDING * 2)), true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        spriteBatch.setColor(new Color(0.050980393f, 0.08627451f, 0.13333334f, 1.0f));
        InitGame.background.draw(spriteBatch, i + ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2), i2 + ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2), InitGame.backgroundWidth, InitGame.backgroundHeight);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setShader(Renderer.shaderAlpha);
        InitGame.background.getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        Images.gradientXY.draw(spriteBatch, getPosX() + ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2) + i, getPosY() + ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2) + i2, InitGame.backgroundWidth, InitGame.backgroundHeight);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        spriteBatch.setColor(MainMenu.sparksColors);
        MenuManager.sparksAnimation.draw2(spriteBatch, i, (CFG.GAME_HEIGHT - Images.sparkHeight) + i2, CFG.GAME_WIDTH, Images.sparkHeight);
        MenuManager.sparksAnimationHover.draw2(spriteBatch, i, i2, CFG.GAME_WIDTH, Images.sparkHeight, false, true);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_Scenarios();
    }
}
