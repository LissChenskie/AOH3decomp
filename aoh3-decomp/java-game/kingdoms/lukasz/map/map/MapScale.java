package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Touch;
import com.badlogic.gdx.utils.Json;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MapScale {
    public static final float MAXSCALE = 20.0f;
    public static float MINSCALE = 0.01f;
    private static final short REQUIRED_TIME_TO_RESET_SCALE = 175;
    public static float STANDARD_SCALE = 1.0f;
    protected static int animation_TIME_TO_END = 100;
    public static DefinedScales defScales = new DefinedScales();
    private float changeCurrentScaleByX;
    private int iStartScalePosX;
    private int iStartScalePosX2;
    private int iStartScalePosY;
    private int iStartScalePosY2;
    public boolean scaleMode;
    private float currentScale = 1.0f;
    private float newScale = -1.0f;
    private boolean enableScaling = false;
    private float fScaleBeforeReset = 1.5f;
    private boolean scaleChangeByTouch = true;
    protected long animation_TIME_STARTED = 0;
    protected float animation_StartingScale = 1.0f;
    private float fScaleAnimation_PercX = 1.0f;
    private float fScaleAnimation_PercY = 1.0f;
    public int definedScale = 1;
    private int definedScaleBeforeReset = 1;
    public int definedScalesLength = 1;
    public float startScale = -1.0f;
    public boolean scaleByYAxis = true;
    private int iStartScaleMapPosX = -1;
    private int iStartScaleMapPosY = -1;

    public static class DefinedScales {
        public int definedScale_Default;
        public float[] definedScales;
    }

    private float getDefinedScale() {
        try {
            return defScales.definedScales[this.definedScale];
        } catch (IndexOutOfBoundsException unused) {
            return 1.0f;
        }
    }

    private final void resetScaleAnimation() {
        this.changeCurrentScaleByX = 0.0f;
        this.animation_TIME_STARTED = 0L;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0044  */
    private final void updateScale() {
        float f = this.currentScale;
        setCurrentScale(this.animation_StartingScale + ((this.changeCurrentScaleByX * Math.min(CFG.currentTimeMillis - this.animation_TIME_STARTED, animation_TIME_TO_END)) / animation_TIME_TO_END));
        if (CFG.currentTimeMillis - this.animation_TIME_STARTED > animation_TIME_TO_END) {
            float f2 = this.fScaleBeforeReset;
            float f3 = STANDARD_SCALE;
            if (f2 == f3 || !this.scaleChangeByTouch) {
                float f4 = this.currentScale;
                if (f4 > 0.9925f && f4 < 1.0075f) {
                    setCurrentScale(f3);
                }
            } else {
                setCurrentScale(f3);
            }
            resetScaleAnimation();
        }
        Game.mapCoords.setNewPosX((int) (Game.mapCoords.getPosX() - (((CFG.GAME_WIDTH / f) - (CFG.GAME_WIDTH / this.currentScale)) * this.fScaleAnimation_PercX)));
        Game.mapCoords.setNewPosY((int) (Game.mapCoords.getPosY() - (((CFG.GAME_HEIGHT / f) - (CFG.GAME_HEIGHT / this.currentScale)) * this.fScaleAnimation_PercY)));
    }

    public float getCurrentScale() {
        return this.currentScale;
    }

    public boolean getEnableScaling() {
        return this.enableScaling;
    }

    public boolean getScaleMode() {
        return this.scaleMode;
    }

    public final int getStartScalePosY() {
        return this.iStartScalePosY;
    }

    public final void initDefinedScales() {
        try {
            DefinedScales definedScales = (DefinedScales) new Json().fromJson(DefinedScales.class, FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "/data/scales/" + (Game.highTextureSettings ? CFG.FILE_MAP_DEFINED_SCALES : CFG.FILE_MAP_DEFINED_SCALES_LOW)));
            defScales = definedScales;
            this.definedScale = definedScales.definedScale_Default;
            this.definedScaleBeforeReset = defScales.definedScale_Default;
            this.definedScalesLength = defScales.definedScale_Default;
            int length = defScales.definedScales.length;
            for (int i = 0; i < length; i++) {
                if (defScales.definedScales[i] < MINSCALE) {
                    defScales.definedScales[i] = MINSCALE;
                }
            }
            if (defScales.definedScales[defScales.definedScales.length - 1] > MINSCALE) {
                defScales.definedScales[defScales.definedScales.length - 1] = MINSCALE;
            }
            this.definedScalesLength = defScales.definedScales.length;
        } catch (Exception e) {
            CFG.LOG("Error loading: DefinedScales");
            CFG.exceptionStack(e);
        }
    }

    public final void resetScaleInfo() {
        resetStartScalePosition();
        this.scaleMode = false;
        this.startScale = -1.0f;
    }

    protected final void resetScaleOfMap(long j) {
        if ((Game.settingsManager.ENABLE_DOUBLE_CLICK_TO_RESET_MAP_SCALE || CFG.isAndroid()) && j > 0 && this.changeCurrentScaleByX == 0.0f && CFG.currentTimeMillis < Game.mapTouchManager.getActionDownTime() + 175 && !Game.mapCoords.getDisableMovingMap()) {
            resetScaleAnimation();
            this.scaleChangeByTouch = true;
            float f = this.currentScale;
            this.animation_StartingScale = f;
            float f2 = STANDARD_SCALE;
            if (f != f2) {
                this.fScaleBeforeReset = f;
                this.changeCurrentScaleByX = f2 - f;
                this.definedScale = this.definedScaleBeforeReset;
            } else {
                this.changeCurrentScaleByX = this.fScaleBeforeReset - f;
                this.fScaleBeforeReset = f2;
                this.definedScaleBeforeReset = this.definedScale;
                this.definedScale = defScales.definedScale_Default;
            }
            this.animation_TIME_STARTED = CFG.currentTimeMillis;
            updateAnimationScale_CenterToXY(Touch.getMousePosX(), Touch.getMousePosY());
            animation_TIME_TO_END = 100;
            Game.mapTouchManager.updateStartMovePosX = true;
            Game.mapTouchManager.updateStartMovePosY = true;
            Game.mapScroll.resetScrollInfo();
        }
        Game.mapTouchManager.setActionDownTime(j);
    }

    public final void resetStartScalePosition() {
        this.iStartScalePosY2 = -1;
        this.iStartScalePosY = -1;
    }

    public final void scaleTheMap(int i, int i2, float f, float f2) {
        if (this.startScale < 0.0f) {
            this.iStartScaleMapPosX = Game.mapCoords.getPosX();
            this.iStartScaleMapPosY = Game.mapCoords.getPosY();
            this.startScale = this.currentScale;
        }
        int i3 = this.iStartScalePosY;
        if (i3 != i) {
            setNewCurrentScaleByTouch(this.currentScale + (((i < i2 ? i3 - i : i - i3) / 150.0f) / CFG.GUI_SCALE), f, f2);
            this.iStartScalePosY = i;
            Game.mapTouchManager.updateStartMovePosX = true;
            Game.mapTouchManager.updateStartMovePosY = true;
            resetScaleAnimation();
        }
        int i4 = this.iStartScalePosY2;
        if (i4 != i2) {
            setNewCurrentScaleByTouch(this.currentScale + (((i > i2 ? i4 - i2 : i2 - i4) / 150.0f) / CFG.GUI_SCALE), f, f2);
            this.iStartScalePosY2 = i2;
            Game.mapTouchManager.updateStartMovePosX = true;
            Game.mapTouchManager.updateStartMovePosY = true;
            resetScaleAnimation();
        }
    }

    public final void scaleTheMap(int i, int i2, int i3, int i4) {
        if (this.scaleByYAxis) {
            scaleTheMap(i3, i4, Math.abs((i + i2) / 2.0f), Math.abs((i3 + i4) / 2.0f));
        } else {
            scaleTheMap(i, i2, Math.abs((i + i2) / 2.0f), Math.abs((i3 + i4) / 2.0f));
        }
    }

    public final void scrollScale(int i) {
        if (Game.menuManager.getInMainMenu() || Game.menuManager.getInScenarios_NewGame() || Game.menuManager.getInLoadGamesList() || Game.menuManager.getInGameLegacies() || Game.mapTouchManager.selectMode) {
            return;
        }
        int i2 = this.definedScale + i;
        this.definedScale = i2;
        if (i2 < 0) {
            this.definedScale = 0;
        } else if (i2 >= defScales.definedScales.length) {
            this.definedScale = defScales.definedScales.length - 1;
        }
        float definedScale = getDefinedScale();
        if (definedScale >= 0.995f && definedScale <= 1.005f) {
            definedScale = STANDARD_SCALE;
        }
        if (definedScale == this.currentScale || definedScale < MINSCALE - 0.05f) {
            return;
        }
        resetScaleAnimation();
        this.scaleChangeByTouch = false;
        animation_TIME_TO_END = 125;
        float f = this.currentScale;
        this.animation_StartingScale = f;
        this.changeCurrentScaleByX = definedScale - f;
        this.fScaleBeforeReset = definedScale;
        this.animation_TIME_STARTED = CFG.currentTimeMillis;
        updateAnimationScale_CenterToXY(Touch.getMousePosX(), Touch.getMousePosY());
    }

    public float scrollScaleChange(boolean z) {
        float f;
        float f2 = z ? -1.0f : 1.0f;
        if (!z) {
            f = 0.1f;
        } else if (getCurrentScale() >= 0.75f) {
            f = 0.05f;
        } else {
            f = getCurrentScale() >= 0.5f ? 0.02f : 0.01f;
        }
        return f2 * f;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0006 A[PHI: r0
      0x0006: PHI (r0v2 float) = (r0v0 float), (r0v1 float) binds: [B:3:0x0004, B:6:0x000c] A[DONT_GENERATE, DONT_INLINE]] */
    public void setCurrentScale(float f) {
        float f2 = 20.0f;
        if (20.0f < f) {
            f = f2;
        } else {
            f2 = MINSCALE;
            if (f2 > f) {
                f = f2;
            }
        }
        this.currentScale = f;
        Renderer.updateBackgroundColor = true;
    }

    public void setEnableScaling(boolean z) {
        this.enableScaling = z;
    }

    public final void setNewCurrentScaleByTouch(float f, float f2, float f3) {
        if (f > 20.0f) {
            this.newScale = 20.0f;
        } else {
            float f4 = MINSCALE;
            if (f < f4) {
                this.newScale = f4;
            } else {
                this.newScale = f;
            }
        }
        this.scaleChangeByTouch = true;
        float f5 = this.newScale;
        if (f5 > 0.0f) {
            if (this.currentScale != f5) {
                this.fScaleAnimation_PercX = f2 / CFG.GAME_WIDTH;
                this.fScaleAnimation_PercY = f3 / CFG.GAME_HEIGHT;
                if (this.startScale < this.currentScale) {
                    Game.mapCoords.setNewPosX(this.iStartScaleMapPosX - ((int) (((CFG.GAME_WIDTH / this.startScale) - (CFG.GAME_WIDTH / this.newScale)) * this.fScaleAnimation_PercX)));
                    Game.mapCoords.setNewPosY(this.iStartScaleMapPosY - ((int) (((CFG.GAME_HEIGHT / this.startScale) - (CFG.GAME_HEIGHT / this.newScale)) * this.fScaleAnimation_PercY)));
                } else {
                    Game.mapCoords.setNewPosX(this.iStartScaleMapPosX - ((int) (((CFG.GAME_WIDTH / this.startScale) - (CFG.GAME_WIDTH / this.newScale)) / 2.0f)));
                    Game.mapCoords.setNewPosY(this.iStartScaleMapPosY - ((int) (((CFG.GAME_HEIGHT / this.startScale) - (CFG.GAME_HEIGHT / this.newScale)) / 2.0f)));
                }
                this.currentScale = this.newScale;
                this.newScale = 0.0f;
            }
            Game.mapCoords.checkPositionOfMapY();
            Game.mapCoords.checkPositionOfMapX();
            Game.mapCoords.updateSecondSideOfMap();
        }
    }

    public final void startScaleTheMap(int i, int i2, int i3, int i4) {
        this.scaleMode = true;
        if (Math.max(i, i2) - Math.min(i, i2) > Math.max(i3, i4) - Math.min(i3, i4)) {
            this.scaleByYAxis = false;
            this.iStartScalePosY = i;
            this.iStartScalePosY2 = i2;
        } else {
            this.scaleByYAxis = true;
            this.iStartScalePosY = i3;
            this.iStartScalePosY2 = i4;
        }
    }

    public final void update() {
        if (this.changeCurrentScaleByX != 0.0f) {
            updateScale();
        }
    }

    protected final void updateAnimationScale_CenterToXY(int i, int i2) {
        this.fScaleAnimation_PercX = i / CFG.GAME_WIDTH;
        this.fScaleAnimation_PercY = i2 / CFG.GAME_HEIGHT;
    }
}
