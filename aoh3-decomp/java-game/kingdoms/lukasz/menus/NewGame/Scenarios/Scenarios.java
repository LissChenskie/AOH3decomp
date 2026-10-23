package aoc.kingdoms.lukasz.menus.NewGame.Scenarios;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.map.MapScale;
import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.menu.Colors;
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
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_DescScenarios;
import aoc.kingdoms.lukasz.menus.InitGame;
import aoc.kingdoms.lukasz.menus.LoadSave.Menu_LoadScenario;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.menus.NewGame.NewGame;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Scenarios extends Menu {
    public static boolean SCENARIOS_DEFAULT_MODE = true;
    public static int activeDescID;
    public static int currentActiveDescID;
    private int iHeight;
    private int iWidth;
    private int iXPos;
    private int iYPos;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonPlay {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.reloadScenario || MainMenu.canContinue) {
                Game.reloadScenario = false;
                Menu_LoadScenario.editorMode = false;
                Menu_LoadScenario.goToMenu = View.CLOUDS_MENU;
                Game.menuManager.setViewIDWithoutAnimation(View.LOAD_SCENARIO);
                return;
            }
            Game.mapScale.definedScale = MapScale.defScales.definedScale_Default;
            Game.mapScale.setCurrentScale(1.0f);
            NewGame.setRandomCiv();
            Game.menuManager.setViewIDWithoutAnimation(View.CLOUDS_MENU);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("PLAY"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonPlay {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.MAINMENU);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Back"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios$3, reason: invalid class name */
    class AnonymousClass3 extends Text_DescScenarios {
        AnonymousClass3(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return false;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.HOVER_RIGHT2;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosY() {
            return (ScenariosList_NewGame.iYPos / 2) - (getHeight() / 2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Scenarios.SCENARIOS_DEFAULT_MODE = !Scenarios.SCENARIOS_DEFAULT_MODE;
            Game.menuManager.setViewIDWithoutAnimation(View.SCENARIOS);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.SCENARIOS_CAMPAIGN);
            Game.menuManager.setOrderOfMenu_Scenarios();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonFlag2_CivName_Random {
        AnonymousClass6(int i, int i2, boolean z) {
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

    public Scenarios() {
        this.iXPos = 0;
        this.iYPos = 0;
        this.iWidth = 480;
        this.iHeight = 480;
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + (CFG.PADDING / 2);
        this.iXPos = CFG.GAME_WIDTH / 10;
        this.iWidth = Math.max(CFG.LEFT_MENU_WIDTH, Math.min(this.iWidth, CFG.GAME_WIDTH / 4));
        this.iHeight = (i * 3) + (i / 2) + ((CFG.BUTTON_HEIGHT + (CFG.PADDING * 2)) * 6);
        this.iYPos = (int) (((CFG.GAME_HEIGHT - this.iHeight) - ImageManager.getImage(Images.mainTitle).getHeight()) * 0.5f);
        arrayList.add(new AnonymousClass1("", 1, -1, CFG.GAME_WIDTH - ImageManager.getImage(Images.buttonPlay).getWidth(), CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight(), false));
        arrayList.add(new AnonymousClass2("", 1, -1, 0, CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight(), true));
        arrayList.add(new AnonymousClass3(Game.lang.get("1440Desc1") + " " + Game.lang.get("1440Desc2") + " " + Game.lang.get("1440Desc3"), CFG.BUTTON_HEIGHT, 150, CFG.GAME_WIDTH - (CFG.BUTTON_HEIGHT * 2)));
        arrayList.add(new AnonymousClass4(Game.lang.get("Scenarios"), "", Images.outliner, CFG.PADDING, ((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 2)) - CFG.BUTTON_HEIGHT3, (ImageManager.getImage(Images.buttonPlay).getWidth() * 3) / 4, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.time).getWidth()));
        arrayList.add(new AnonymousClass5(Game.lang.get("Campaign"), "", Images.outliner, CFG.PADDING, ((((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 2)) - CFG.BUTTON_HEIGHT3) - CFG.PADDING) - CFG.BUTTON_HEIGHT3, (ImageManager.getImage(Images.buttonPlay).getWidth() * 3) / 4, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.time).getWidth()));
        arrayList.add(new AnonymousClass6(CFG.PADDING, (((CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight()) - (CFG.PADDING * 4)) - (CFG.BUTTON_HEIGHT3 * 2)) - ((ImageManager.getImage(Images.flagOverDefault).getHeight() + CFG.TEXT_HEIGHT) + (CFG.PADDING * 2)), true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
        updateDesc();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        updateDesc();
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

    public void updateDesc() {
        String str = "";
        if (!SCENARIOS_DEFAULT_MODE) {
            getMenuElement(2).setText("");
            return;
        }
        if (currentActiveDescID != activeDescID) {
            if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(activeDescID) + "/Desc.txt").exists()) {
                String[] strArrSplit = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(activeDescID) + "/Desc.txt").readString().split(";");
                int i = 0;
                String str2 = "";
                while (i < strArrSplit.length) {
                    str2 = str2 + Game.lang.get(strArrSplit[i]) + (i == strArrSplit.length + (-1) ? "" : " ");
                    i++;
                }
                str = str2;
            }
            currentActiveDescID = activeDescID;
            getMenuElement(2).setText(str);
        }
    }
}
