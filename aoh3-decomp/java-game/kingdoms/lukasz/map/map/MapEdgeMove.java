package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MapEdgeMove {
    public static final int DEFAULT_SCROLL = 10;
    public static final int DEFAULT_SCROLL_MAP = 30;
    private static int MAX_MOVE_SPEED = 45;
    private static int PADDING_EDGE_MOVE = 10;
    private static int SCROLL_RESET_TIME = 350;
    public int MAP_MOVE_KEYBOARD = 0;
    public boolean MAP_MOVE_LEFT = false;
    public boolean MAP_MOVE_RIGHT = false;
    public boolean MAP_MOVE_TOP = false;
    public boolean MAP_MOVE_BOT = false;
    public float iScroll_MAP = 30.0f;
    public float fScroll_XorY_Perc = 0.0f;
    public long lScrollTime_MAP = 0;
    private long lScrollResetTime = 0;
    private int iScroll = DEFAULT_SCROLL;
    private long lScrollTime = 0;
    private int iMousePosX = 100;
    private int iMousePosY = 100;
    private int extraTime = 125;
    private final int NEXT_SCROLL_TIME = 10;

    private final int getMaxMoveSpeed() {
        float currentScale;
        if (Game.mapScale.getCurrentScale() < 1.0f) {
            currentScale = MAX_MOVE_SPEED * (((1.0f - Game.mapScale.getCurrentScale()) * 2.0f) + 1.0f);
        } else {
            float f = MAX_MOVE_SPEED;
            float currentScale2 = Game.mapScale.getCurrentScale();
            MapScale mapScale = Game.mapScale;
            currentScale = f * (1.0f - ((currentScale2 / MapScale.defScales.definedScales[0]) * 0.75f));
        }
        return (int) currentScale;
    }

    private final void resetScrollMap() {
        if (this.lScrollResetTime + ((long) SCROLL_RESET_TIME) < CFG.currentTimeMillis) {
            this.lScrollTime_MAP = CFG.currentTimeMillis + ((long) this.extraTime);
            this.iScroll_MAP = DEFAULT_SCROLL;
        }
    }

    private final void updateScroll_MapX() {
        if (this.iMousePosY > CFG.GAME_HEIGHT / 2) {
            this.fScroll_XorY_Perc = (this.iMousePosY - (CFG.GAME_HEIGHT / 2.0f)) / (CFG.GAME_HEIGHT / 2.0f);
        } else {
            this.fScroll_XorY_Perc = -(1.0f - (this.iMousePosY / (CFG.GAME_HEIGHT / 2.0f)));
        }
        this.lScrollResetTime = CFG.currentTimeMillis;
        if (this.lScrollTime_MAP + 10 < CFG.currentTimeMillis) {
            this.lScrollTime_MAP = CFG.currentTimeMillis;
            if (Game.mapScale.getCurrentScale() < 1.0f) {
                float f = this.iScroll_MAP;
                this.iScroll_MAP = f + (((1.0f - Game.mapScale.getCurrentScale()) + 0.13f) * f);
            } else {
                float f2 = this.iScroll_MAP;
                this.iScroll_MAP = f2 + ((0.13f / Game.mapScale.getCurrentScale()) * f2);
            }
            if (this.iScroll_MAP > getMaxMoveSpeed()) {
                this.iScroll_MAP = getMaxMoveSpeed();
            }
        }
    }

    private final void updateScroll_MapY() {
        if (this.iMousePosX > CFG.GAME_WIDTH / 2) {
            this.fScroll_XorY_Perc = (this.iMousePosX - (CFG.GAME_WIDTH / 2.0f)) / (CFG.GAME_WIDTH / 2.0f);
        } else {
            this.fScroll_XorY_Perc = -(1.0f - (this.iMousePosX / (CFG.GAME_WIDTH / 2.0f)));
        }
        this.lScrollResetTime = CFG.currentTimeMillis;
        if (this.lScrollTime_MAP + 10 < CFG.currentTimeMillis) {
            this.lScrollTime_MAP = CFG.currentTimeMillis;
            float f = this.iScroll_MAP;
            float currentScale = f + (((Game.mapScale.getCurrentScale() < 1.0f ? 1.0f - Game.mapScale.getCurrentScale() : 0.0f) + 0.2f) * f);
            this.iScroll_MAP = currentScale;
            if (currentScale > getMaxMoveSpeed()) {
                this.iScroll_MAP = getMaxMoveSpeed();
            }
        }
    }

    public final void MouseMoved_EdgeMove(int i, int i2) {
        if (CFG.isDesktop && this.MAP_MOVE_KEYBOARD == 0) {
            this.iMousePosX = i;
            this.iMousePosY = i2;
            if (Game.settingsManager.ENABLE_EDGE_SCROLL) {
                if (i >= PADDING_EDGE_MOVE) {
                    this.MAP_MOVE_LEFT = false;
                } else if (!this.MAP_MOVE_LEFT) {
                    this.MAP_MOVE_LEFT = true;
                    this.MAP_MOVE_RIGHT = false;
                    resetScrollMap();
                    Game.mapScroll.stopScrollingTheMap();
                    this.MAP_MOVE_KEYBOARD = 0;
                }
                if (i <= CFG.GAME_WIDTH - PADDING_EDGE_MOVE) {
                    this.MAP_MOVE_RIGHT = false;
                } else if (!this.MAP_MOVE_RIGHT) {
                    this.MAP_MOVE_RIGHT = true;
                    this.MAP_MOVE_LEFT = false;
                    resetScrollMap();
                    Game.mapScroll.stopScrollingTheMap();
                    this.MAP_MOVE_KEYBOARD = 0;
                }
                if (i2 >= PADDING_EDGE_MOVE) {
                    this.MAP_MOVE_TOP = false;
                } else if (!this.MAP_MOVE_TOP) {
                    this.MAP_MOVE_TOP = true;
                    this.MAP_MOVE_BOT = false;
                    resetScrollMap();
                    Game.mapScroll.stopScrollingTheMap();
                    this.MAP_MOVE_KEYBOARD = 0;
                }
                if (i2 <= CFG.GAME_HEIGHT - PADDING_EDGE_MOVE) {
                    this.MAP_MOVE_BOT = false;
                    return;
                }
                if (this.MAP_MOVE_BOT) {
                    return;
                }
                this.MAP_MOVE_BOT = true;
                this.MAP_MOVE_TOP = false;
                resetScrollMap();
                Game.mapScroll.stopScrollingTheMap();
                this.MAP_MOVE_KEYBOARD = 0;
            }
        }
    }

    public final void updateMoveMap() {
        try {
            if (this.MAP_MOVE_KEYBOARD > 0) {
                if (this.MAP_MOVE_LEFT) {
                    updateScroll_MapX();
                    Game.mapCoords.setNewPosX(Game.mapCoords.getPosX() + ((int) this.iScroll_MAP));
                } else if (this.MAP_MOVE_RIGHT) {
                    updateScroll_MapX();
                    Game.mapCoords.setNewPosX(Game.mapCoords.getPosX() - ((int) this.iScroll_MAP));
                }
                if (this.MAP_MOVE_TOP) {
                    updateScroll_MapY();
                    Game.mapCoords.setNewPosY(Game.mapCoords.getPosY() + ((int) this.iScroll_MAP));
                    return;
                } else {
                    if (this.MAP_MOVE_BOT) {
                        updateScroll_MapY();
                        Game.mapCoords.setNewPosY(Game.mapCoords.getPosY() - ((int) this.iScroll_MAP));
                        return;
                    }
                    return;
                }
            }
            if (this.MAP_MOVE_LEFT) {
                updateScroll_MapX();
                Game.mapCoords.setNewPosX(Game.mapCoords.getPosX() + ((int) this.iScroll_MAP));
                Game.mapCoords.setNewPosY((int) (Game.mapCoords.getPosY() - (((int) this.iScroll_MAP) * this.fScroll_XorY_Perc)));
                return;
            }
            if (this.MAP_MOVE_RIGHT) {
                updateScroll_MapX();
                Game.mapCoords.setNewPosX(Game.mapCoords.getPosX() - ((int) this.iScroll_MAP));
                Game.mapCoords.setNewPosY((int) (Game.mapCoords.getPosY() - (((int) this.iScroll_MAP) * this.fScroll_XorY_Perc)));
            } else if (this.MAP_MOVE_TOP) {
                updateScroll_MapY();
                Game.mapCoords.setNewPosY(Game.mapCoords.getPosY() + ((int) this.iScroll_MAP));
                Game.mapCoords.setNewPosX((int) (Game.mapCoords.getPosX() - (((int) this.iScroll_MAP) * this.fScroll_XorY_Perc)));
            } else if (this.MAP_MOVE_BOT) {
                updateScroll_MapY();
                Game.mapCoords.setNewPosY(Game.mapCoords.getPosY() - ((int) this.iScroll_MAP));
                Game.mapCoords.setNewPosX((int) (Game.mapCoords.getPosX() - (((int) this.iScroll_MAP) * this.fScroll_XorY_Perc)));
            }
        } catch (ArithmeticException e) {
            CFG.LOG(e);
        } catch (IndexOutOfBoundsException e2) {
            CFG.LOG(e2);
        } catch (NullPointerException e3) {
            CFG.LOG(e3);
        }
    }
}
