package aoc.kingdoms.lukasz.jakowski;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import aoc.kingdoms.lukasz.map.map.Map;
import aoc.kingdoms.lukasz.map.map.MapBG;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.HoverManager;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.pieChart.PieChart_Renderer;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.ApplicationAdapter;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AA_Game extends ApplicationAdapter {
    private Renderer renderer;
    private Touch touch = new Touch();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AA_Game$1, reason: invalid class name */
    class AnonymousClass1 extends InputAdapter {
        AnonymousClass1() {
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean keyDown(int i) {
            return AA_KeyManager.keyDown(i);
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean keyTyped(char c) {
            try {
                Keyboard keyboard = Game.keyboard;
                if (Keyboard.keyboardMode && c > 0) {
                    if (c == 18 || c == '\b') {
                        Keyboard keyboard2 = Game.keyboard;
                        Keyboard.keyboardAction.delete();
                        Game.hoverManager.resetHoverActive_Menu();
                    } else if (c != '\r' && c != '\n' && c != '\t') {
                        Keyboard keyboard3 = Game.keyboard;
                        Keyboard.keyboardAction.actionType("" + c);
                        Game.hoverManager.resetHoverActive_Menu();
                    }
                }
                return false;
            } catch (Exception unused) {
                return false;
            }
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean keyUp(int i) {
            return AA_KeyManager.keyUp(i);
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean mouseMoved(int i, int i2) {
            Touch.setMousePosXY(i, i2);
            Game.mapEdgeMove.MouseMoved_EdgeMove(i, i2);
            AA_Game.this.touch.actionMove_Hover(i, i2);
            return true;
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean scrolled(float f, float f2) {
            try {
                if (Game.menuManager.getInInitGameMenu() || Game.menuManager.getInLoadScenario()) {
                    return true;
                }
                return ScrollManager.scrolled((int) (f + f2));
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return true;
            }
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchDown(int i, int i2, int i3, int i4) {
            Touch.buttonTouch = i4;
            Touch.setMousePosXY(i, i2);
            AA_Game.this.touch.actionDown(i, i2, i3, i4);
            return true;
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchDragged(int i, int i2, int i3) {
            try {
                if (!Game.menuManager.getInInitGameMenu() && !Game.menuManager.getInLoadScenario()) {
                    Game.mapScroll.setScrollPos(i, i2);
                    Touch.setMousePosXY(i, i2);
                    if (Gdx.input.isTouched(1) && i3 == 0) {
                        AA_Game.this.touch.actionMove(Gdx.input.getX(0), Gdx.input.getY(0), Gdx.input.getX(1), Gdx.input.getY(1));
                    } else {
                        AA_Game.this.touch.actionMove(i, i2, i3);
                    }
                    if (CFG.brushTool) {
                        AA_Game.this.touch.actionMove_Hover(i, i2);
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            return true;
        }

        @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
        public boolean touchUp(int i, int i2, int i3, int i4) {
            Touch.setMousePosXY(i, i2);
            AA_Game.this.touch.actionUp(i, i2, i3, i4);
            return true;
        }
    }

    private static final void initGame_LoadImages() {
        Images.pickerSV = ImageManager.addImage("ui/picker/sv.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.pickerHUE = ImageManager.addImage("ui/picker/hue.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.pickerSVPos = ImageManager.addImage("ui/picker/pos.png");
        Images.pickerEdge = ImageManager.addImage("ui/picker/edge.png");
        Images.scroll_position = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "scroll/position.png");
        Images.scroll_position_active = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "scroll/position_active.png");
        Images.patt = ImageManager.addImage("ui/patterns/0.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.Repeat);
        Images.patt2 = ImageManager.addImage("ui/patterns/1.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.Repeat);
        Images.patt3 = ImageManager.addImage(CoLRpi.kEvtgFXABfOKtY, Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.Repeat);
        Images.patt4 = ImageManager.addImage("ui/patterns/3.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.Repeat);
        Images.pattOccupied = ImageManager.addImage("ui/patterns/4.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.Repeat);
        Images.gradientVertical = ImageManager.addImage("ui/gradients/gradientVertical.png");
        Images.gradientHorizontal = ImageManager.addImage("ui/gradients/gradientHorizontal.png");
        Images.gradientHorizontal2 = ImageManager.addImage("ui/gradients/gradientHorizontal2.png");
        Images.gradientHorizontal3 = ImageManager.addImage("ui/gradients/gradientHorizontal3.png");
        Images.gradientFull = ImageManager.loadImage("ui/gradients/gradientFull.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear);
        Images.gradientFull2 = ImageManager.addImage("ui/gradients/gradientFull2.png");
        Images.gradientXY = ImageManager.loadImage("ui/gradients/gradientXY.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear);
        Images.gradientXYVertical = ImageManager.addImage("ui/gradients/gradientXYVertical.png");
        Images.line_32_off1 = ImageManager.loadImage("ui/lines/line_32_off1.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear);
        Images.line_131 = ImageManager.addImage("ui/patterns/line_131.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.line_131_vertical = ImageManager.addImage("ui/patterns/line_131_vertical.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        if (CFG.XXHDPI) {
            Images.logo = ImageManager.addImage("gfx/logo/gameLogo_XXH.png");
        } else if (CFG.XHDPI) {
            Images.logo = ImageManager.addImage("gfx/logo/gameLogo_XH.png");
        } else {
            Images.logo = ImageManager.addImage("gfx/logo/gameLogo.png");
        }
    }

    private void initInput() {
        Gdx.input.setInputProcessor(new AnonymousClass1());
    }

    @Override // com.badlogic.gdx.ApplicationAdapter, com.badlogic.gdx.ApplicationListener
    public void create() {
        FileManager.initLoadInterface();
        CFG.currentTimeMillis = System.currentTimeMillis();
        this.renderer = new Renderer(Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
        try {
            Game.loadLowSettings();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            Game.loadSettings();
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        initUIScale();
        if (CFG.isDesktop()) {
            SteamManager.init();
            SteamManager.loadSubscribedItems();
            SteamManager.userStats.requestCurrentStats();
        }
        Game.loadLanguage();
        Renderer.loadFont(Game.lang.get(aBEBOpwLZcQFCZ.EEqTlGskQgB), "A", Game.settingsManager.FONT_MAIN_SIZE);
        CFG.FONT_BOLD = Renderer.fontMain.size() - 1;
        initGame();
        initInput();
        CFG.isDesktop = Gdx.app.getType() == Application.ApplicationType.Desktop;
        CFG.isAndroid = Gdx.app.getType() == Application.ApplicationType.Android || Gdx.app.getType() == Application.ApplicationType.iOS;
        CFG.isiOS = Gdx.app.getType() == Application.ApplicationType.iOS;
        ProvinceDraw.updateDrawProvinces();
        CFG.UIScale = CFG.getUIScale();
        Game.mapScale.initDefinedScales();
    }

    @Override // com.badlogic.gdx.ApplicationAdapter, com.badlogic.gdx.ApplicationListener
    public void dispose() {
        this.renderer.dispose();
        Game.map.dispose();
        Game.gameThread.running = false;
        Game.gameThreadUpdate.running = false;
        Game.gameThreadTurns.running = false;
        Game.gameThreadEvents.running = false;
    }

    protected final void initGame() {
        int i;
        Game.map = new Map();
        Game.mapBG = new MapBG();
        Game.mapBG.iMapExtraScale = Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.ExtraMapScale;
        Game.mapBG.iMapScale = (int) (Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.DefaultMapScale * Game.mapBG.iMapExtraScale);
        Images.imageNotFound = ImageManager.addImage(CFG.FILE_IMAGE_NOT_FOUND);
        Images.buttonMenu = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/buttonMenu.png");
        Images.buttonMenuH = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/buttonMenuH.png");
        Images.btn_close = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/close.png");
        CFG.BUTTON_HEIGHT = ImageManager.getImage(Images.buttonMenu).getHeight();
        if (CFG.XXHDPI) {
            i = Input.Keys.NUMPAD_ENTER;
        } else {
            i = CFG.XHDPI ? Input.Keys.PRINT_SCREEN : 90;
        }
        CFG.BUTTON_WIDTH = i;
        GameValues.initGameValue();
        CFG.GUI_SCALE = ((CFG.BUTTON_HEIGHT * 100.0f) / 68.0f) / 100.0f;
        CFG.PADDING = (int) (GameValues.value.PADDING * ((CFG.GUI_SCALE > 1.0f ? (CFG.GUI_SCALE - 1.0f) / 2.0f : 0.0f) + 1.0f));
        CFG.BUTTON_HEIGHT2 = (int) (CFG.BUTTON_HEIGHT2 * CFG.GUI_SCALE);
        CFG.BUTTON_HEIGHT3 = (int) (CFG.BUTTON_HEIGHT3 * CFG.GUI_SCALE);
        CFG.BUTTON_HEIGHT4 = (int) (CFG.BUTTON_HEIGHT4 * CFG.GUI_SCALE);
        CFG.LEFT_MENU_WIDTH = Math.max(CFG.LEFT_MENU_WIDTH, Math.min(CFG.LEFT_MENU_WIDTH, CFG.GAME_WIDTH / 4));
        CFG.LEFT_MENU_WIDTH = (int) (CFG.LEFT_MENU_WIDTH * CFG.GUI_SCALE);
        CFG.LEFT_MENU_WIDTH2 = Math.max(CFG.LEFT_MENU_WIDTH2, Math.min(CFG.LEFT_MENU_WIDTH2, CFG.GAME_WIDTH / 3));
        CFG.LEFT_MENU_WIDTH2 = (int) (CFG.LEFT_MENU_WIDTH2 * CFG.GUI_SCALE);
        initGame_LoadImages();
        Renderer.pieChartRenderer = new PieChart_Renderer();
        Game.soundsManager = new SoundsManager();
        Game.ambienceManager = new AmbienceManager();
        Game.hoverManager = new HoverManager();
        Game.menuManager = new MenuManager();
        Game.menuManager.setViewIDWithoutAnimation(View.INIT_GAME_MENU);
        Game.menuManager.initColorPicker();
        Game.animationManager = new AnimationManager();
        Game.animationManager.loadAnimations();
        Game.map.updateWorldMap();
    }

    public void initUIScale() {
        boolean z = true;
        if (Game.settingsManager.UI_SCALE >= 0) {
            if (Game.settingsManager.UI_SCALE == 1) {
                CFG.XHDPI = true;
                CFG.XXHDPI = false;
                return;
            } else if (Game.settingsManager.UI_SCALE == 2) {
                CFG.XHDPI = false;
                CFG.XXHDPI = true;
                return;
            } else {
                CFG.XHDPI = false;
                CFG.XXHDPI = false;
                return;
            }
        }
        if (!CFG.isAndroid()) {
            if (CFG.isDesktop()) {
                CFG.XHDPI = CFG.GAME_WIDTH >= 2400;
            }
        } else {
            CFG.XHDPI = Gdx.graphics.getPpiX() >= 300.0f || CFG.GAME_WIDTH >= 1200 || CFG.GAME_HEIGHT >= 1200;
            if (Gdx.graphics.getPpiX() < 380.0f && CFG.GAME_WIDTH < 1800 && CFG.GAME_HEIGHT < 1800) {
                z = false;
            }
            CFG.XXHDPI = z;
        }
    }

    @Override // com.badlogic.gdx.ApplicationAdapter, com.badlogic.gdx.ApplicationListener
    public void render() {
        this.renderer.render();
    }

    @Override // com.badlogic.gdx.ApplicationAdapter, com.badlogic.gdx.ApplicationListener
    public void resize(int i, int i2) {
        this.renderer.resize(i, i2);
    }
}
