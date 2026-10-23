package aoc.kingdoms.lukasz.units;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Unit {
    private float fPosX;
    private float fPosY;
    private int iHP;
    private int iDirection = 0;
    private int currentFrameID = 0;
    public Path movePath = null;
    private long ANIMATION_LAST_UPDATE_TIME = CFG.currentTimeMillis;

    public Unit(int i, int i2) {
        this.iHP = 1;
        this.fPosX = i;
        this.fPosY = i2;
        this.iHP = getUnitType().getMaxHP();
    }

    public Animation_Unit currentAnimation() {
        return this.movePath != null ? getUnitType().getAnimation_Walk() : getUnitType().getAnimation_Idle(0);
    }

    public final void drawHP(SpriteBatch spriteBatch) {
        spriteBatch.setColor(Color.WHITE);
        Images.pix.draw(spriteBatch, (getPosX() + Game.mapCoords.getPosX()) - (getHP_Width() / 2), ((getPosY() + Game.mapCoords.getPosY()) - getHP_Height()) - (CFG.PADDING * 2), getHP_Width(), CFG.PADDING);
        spriteBatch.setColor(Color.GREEN);
        Images.pix.draw(spriteBatch, (getPosX() + Game.mapCoords.getPosX()) - (getHP_Width() / 2), ((getPosY() + Game.mapCoords.getPosY()) - getHP_Height()) - (CFG.PADDING * 2), (int) (getHP_Width() * 0.68f), CFG.PADDING);
        spriteBatch.setColor(Color.WHITE);
    }

    public final void drawHitBoxes(SpriteBatch spriteBatch) {
        currentAnimation().drawFrameHitboxes(spriteBatch, getPosX(), getPosY());
    }

    public final void drawUnit(SpriteBatch spriteBatch) {
        drawHitBoxes(spriteBatch);
        drawHP(spriteBatch);
        currentAnimation().drawFrame(spriteBatch, getPosX(), getPosY(), this.iDirection, this.currentFrameID);
    }

    public final int getDirection() {
        return this.iDirection;
    }

    public final int getHP() {
        return this.iHP;
    }

    public final int getHP_Height() {
        return currentAnimation().hitbox.getHeight();
    }

    public final int getHP_Width() {
        return currentAnimation().hitbox.getWidth();
    }

    public int getMaxHP() {
        return getUnitType().getMaxHP();
    }

    public final int getPosX() {
        return (int) this.fPosX;
    }

    public final int getPosY() {
        return (int) this.fPosY;
    }

    public final float getSpeed() {
        return getUnitType().getUnitSpeed();
    }

    public UnitType getUnitType() {
        return null;
    }

    public final void movePosX(float f) {
        this.fPosX += f * Game.deltaTime;
    }

    public final void movePosY(float f) {
        this.fPosY += f * Game.deltaTime;
    }

    public final void resetAnimation() {
        this.currentFrameID = 0;
        this.ANIMATION_LAST_UPDATE_TIME = CFG.currentTimeMillis;
    }

    public final void setDirection(int i) {
        if (this.iDirection != i) {
            this.iDirection = i;
            resetAnimation();
        }
    }

    public final void setHP(int i) {
        this.iHP = i;
    }

    public final void setPosX(int i) {
        this.fPosX = i;
    }

    public final void setPosY(int i) {
        this.fPosY = i;
    }

    public void update() {
        updatePath();
        if (CFG.currentTimeMillis > this.ANIMATION_LAST_UPDATE_TIME + ((long) currentAnimation().ANIMATION_FRAME_TIME)) {
            int i = this.currentFrameID + 1;
            this.currentFrameID = i;
            if (i >= currentAnimation().getNumOfFrames()) {
                this.currentFrameID = 0;
            }
            this.ANIMATION_LAST_UPDATE_TIME = CFG.currentTimeMillis;
        }
    }

    protected final void updatePath() {
        Path path = this.movePath;
        if (path != null) {
            if (path.pathPoints.get(0).X > getPosX()) {
                if (this.movePath.pathPoints.get(0).Y < getPosY()) {
                    setDirection(5);
                    return;
                } else if (this.movePath.pathPoints.get(0).Y > getPosY()) {
                    setDirection(7);
                    return;
                } else {
                    setDirection(6);
                    return;
                }
            }
            if (this.movePath.pathPoints.get(0).X < getPosX()) {
                if (this.movePath.pathPoints.get(0).Y < getPosY()) {
                    setDirection(3);
                    return;
                } else if (this.movePath.pathPoints.get(0).Y > getPosY()) {
                    setDirection(1);
                    return;
                } else {
                    setDirection(2);
                    return;
                }
            }
            if (this.movePath.pathPoints.get(0).Y > getPosY()) {
                if (this.movePath.pathPoints.get(0).X > getPosX()) {
                    setDirection(7);
                    return;
                } else if (this.movePath.pathPoints.get(0).X < getPosX()) {
                    setDirection(1);
                    return;
                } else {
                    setDirection(0);
                    return;
                }
            }
            if (this.movePath.pathPoints.get(0).Y < getPosY()) {
                if (this.movePath.pathPoints.get(0).X > getPosX()) {
                    setDirection(5);
                    return;
                } else if (this.movePath.pathPoints.get(0).X < getPosX()) {
                    setDirection(3);
                    return;
                } else {
                    setDirection(4);
                    return;
                }
            }
        }
        this.movePath = null;
    }
}
