package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MapScroll {
    private static final int MAX_SCROLLING_SPEED = 500;
    protected static final float SCROLL_SLOW = 0.97f;
    private float fScrollNewPosX;
    private float fScrollNewPosY;
    private int iScrollEvent_PosX;
    private int iScrollEvent_PosY;
    private int iScrollPosX;
    private int iScrollPosY;
    private boolean scrollingTheMap = false;
    private int iScrollPosX2 = -1;
    private int iScrollPosY2 = -1;
    private long moveMapTime = 0;
    private boolean moveMapDirection = false;
    private int iStepID = 0;
    private boolean scrollEvent = false;
    private ReverseDirection reverseDirectionX = null;
    private ReverseDirection reverseDirectionY = null;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapScroll$1, reason: invalid class name */
    class AnonymousClass1 implements ReverseDirection {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapScroll.ReverseDirection
        public int getNewPos(int i) {
            return Game.mapCoords.getNewPosX() + i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapScroll$2, reason: invalid class name */
    class AnonymousClass2 implements ReverseDirection {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapScroll.ReverseDirection
        public int getNewPos(int i) {
            return Game.mapCoords.getNewPosX() - i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapScroll$3, reason: invalid class name */
    class AnonymousClass3 implements ReverseDirection {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapScroll.ReverseDirection
        public int getNewPos(int i) {
            return Game.mapCoords.getNewPosY() + i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapScroll$4, reason: invalid class name */
    class AnonymousClass4 implements ReverseDirection {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapScroll.ReverseDirection
        public int getNewPos(int i) {
            return Game.mapCoords.getNewPosY() - i;
        }
    }

    private interface ReverseDirection {
        int getNewPos(int i);
    }

    public MapScroll() {
        buildReverseDirectionX();
        buildReverseDirectionY();
    }

    protected static final float changeAnimationPos(int i, int i2) {
        float f;
        float f2;
        switch (i) {
            case 0:
            case 1:
            case 12:
            case 13:
                f = i2;
                f2 = 2.5f;
                break;
            case 2:
            case 3:
            case 10:
            case 11:
                f = i2;
                f2 = 5.0f;
                break;
            case 4:
            case 5:
            case 8:
            case 9:
                f = i2;
                f2 = 10.0f;
                break;
            case 6:
            case 7:
                f = i2;
                f2 = 15.0f;
                break;
            default:
                return 0.0f;
        }
        return (f * f2) / 100.0f;
    }

    private final void setScrollEvent_Pos(int i, int i2) {
        if (this.scrollEvent) {
            return;
        }
        this.scrollEvent = true;
        this.iStepID = 0;
        this.iScrollEvent_PosX = i;
        this.iScrollEvent_PosY = i2;
        this.moveMapTime = CFG.currentTimeMillis + 208;
    }

    protected final void buildReverseDirectionX() {
        if (CFG.reverseDirectionX) {
            this.reverseDirectionX = new AnonymousClass1();
        } else {
            this.reverseDirectionX = new AnonymousClass2();
        }
    }

    protected final void buildReverseDirectionY() {
        if (CFG.reverseDirectionY) {
            this.reverseDirectionY = new AnonymousClass3();
        } else {
            this.reverseDirectionY = new AnonymousClass4();
        }
    }

    protected boolean getScrollingTheMap() {
        return this.scrollingTheMap;
    }

    public final void resetScrollInfo() {
        this.iScrollPosY2 = -1;
        this.iScrollPosX2 = -1;
        this.iScrollPosY = -1;
        this.iScrollPosX = -1;
    }

    protected final void setScrollEvent(int i) {
        setScrollEvent_Pos((int) ((Game.mapCoords.getPosX() + Game.getProvince(i).getCenterX()) - ((CFG.GAME_WIDTH / Game.mapScale.getCurrentScale()) / 2.0f)), (int) ((Game.mapCoords.getPosY() + Game.getProvince(i).getCenterY()) - ((CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale()) / 2.0f)));
    }

    protected final void setScrollEvent_ToPosition(int i, int i2) {
        setScrollEvent_Pos((int) ((Game.mapCoords.getPosX() + i) - ((CFG.GAME_WIDTH / Game.mapScale.getCurrentScale()) / 2.0f)), (int) ((Game.mapCoords.getPosY() + i2) - ((CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale()) / 2.0f)));
    }

    public final void setScrollPos(int i, int i2) {
        this.iScrollPosX2 = this.iScrollPosX;
        this.iScrollPosY2 = this.iScrollPosY;
        this.iScrollPosX = i;
        this.iScrollPosY = i2;
    }

    protected final void startScrollingTheMap() {
        int i;
        if (!CFG.brushTool && ((i = this.iScrollPosX2) >= 0 || this.iScrollPosY2 >= 0)) {
            if (Math.abs(this.iScrollPosX - i) > (CFG.isDesktop() ? CFG.PADDING * 2.0f : 4.0f) * CFG.DENSITY) {
                this.fScrollNewPosX = (this.iScrollPosX - this.iScrollPosX2) * 1.2f * (CFG.reverseDirectionX ? 1 : -1);
                this.scrollingTheMap = true;
            }
            if (Math.abs(this.iScrollPosY - this.iScrollPosY2) > (CFG.isDesktop() ? CFG.PADDING * 2.0f : 4.0f) * CFG.DENSITY) {
                this.fScrollNewPosY = (this.iScrollPosY - this.iScrollPosY2) * 1.2f * (CFG.reverseDirectionY ? 1 : -1);
                this.scrollingTheMap = true;
            }
            if (Game.mapScale.getCurrentScale() > 1.0f) {
                this.fScrollNewPosX = Math.max(-500.0f, Math.min(500.0f, this.fScrollNewPosX) / Game.mapScale.getCurrentScale());
                this.fScrollNewPosY = Math.max(-500.0f, Math.min(500.0f, this.fScrollNewPosY) / Game.mapScale.getCurrentScale());
            } else {
                this.fScrollNewPosX = Math.max(-500.0f, Math.min(500.0f, this.fScrollNewPosX));
                this.fScrollNewPosY = Math.max(-500.0f, Math.min(500.0f, this.fScrollNewPosY));
            }
        }
        int i2 = this.iScrollPosX;
        int i3 = this.iScrollPosX2;
        if (i2 != i3) {
            updateMoveMapDirection(i2 > i3);
        }
        resetScrollInfo();
    }

    public final void stopScrollingTheMap() {
        this.scrollingTheMap = false;
        this.scrollEvent = false;
        resetScrollInfo();
    }

    protected final void update() {
        if (this.scrollEvent) {
            if (this.iStepID < 14) {
                Game.mapCoords.setNewPosX(Game.mapCoords.getPosX() - ((int) changeAnimationPos(this.iStepID, this.iScrollEvent_PosX)));
                MapCoords mapCoords = Game.mapCoords;
                int posY = Game.mapCoords.getPosY();
                int i = this.iStepID;
                this.iStepID = i + 1;
                mapCoords.setNewPosY(posY - ((int) changeAnimationPos(i, this.iScrollEvent_PosY)));
                if (this.iStepID == 14) {
                    this.moveMapTime = CFG.currentTimeMillis;
                    this.scrollEvent = false;
                    return;
                }
                return;
            }
            return;
        }
        if (!this.scrollingTheMap || Game.mapCoords.disableMovingMap) {
            return;
        }
        if (Math.abs(this.fScrollNewPosX) <= 1.0f && Math.abs(this.fScrollNewPosY) <= 1.0f) {
            stopScrollingTheMap();
            return;
        }
        if (Math.abs(this.fScrollNewPosX) > 1.0f) {
            Game.mapCoords.setNewPosX(this.reverseDirectionX.getNewPos((int) this.fScrollNewPosX));
            this.fScrollNewPosX *= SCROLL_SLOW;
        }
        if (Math.abs(this.fScrollNewPosY) > 1.0f) {
            Game.mapCoords.setNewPosY(this.reverseDirectionY.getNewPos((int) this.fScrollNewPosY));
            this.fScrollNewPosY *= SCROLL_SLOW;
        }
    }

    protected final void updateMoveMapDirection(boolean z) {
        this.moveMapDirection = z;
        this.moveMapTime = 0L;
    }
}
