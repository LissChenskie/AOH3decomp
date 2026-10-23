package aoc.kingdoms.lukasz.map.map.Ship;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.textures.Image;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Ship2 {
    public static final int IMG_WH = 32;
    public int angle;
    public boolean isInView;
    public float posX;
    public float posY;
    public int shipIMGID;
    public int shipLineID;
    public float speed;
    public float currentWidth = 0.0f;
    public int tID = 0;
    public boolean movingBack = false;
    public boolean remove = false;

    public Ship2(int i) {
        this.shipLineID = i;
        randomize();
    }

    public void draw(SpriteBatch spriteBatch, int i) {
        if (this.isInView) {
            Image image = ShipManager.shipImg.get(i).get(this.shipIMGID);
            int posX = ((int) ((this.posX + Game.mapCoords.getPosX()) * Game.mapScale.getCurrentScale())) + CFG.rotateXMoveUnits[this.angle];
            int posY = (int) ((this.posY + Game.mapCoords.getPosY()) * Game.mapScale.getCurrentScale());
            int[] iArr = CFG.rotateYMoveUnits;
            int i2 = this.angle;
            image.draw2(spriteBatch, posX, posY + iArr[i2], 32, 32, i2, true, false);
        }
    }

    public void drawCurrentScale(SpriteBatch spriteBatch, int i) {
        if (this.isInView) {
            Image image = ShipManager.shipImg.get(i).get(this.shipIMGID);
            int posX = ((int) (this.posX + Game.mapCoords.getPosX())) + CFG.rotateXMoveUnits[this.angle];
            int posY = (int) (this.posY + Game.mapCoords.getPosY());
            int[] iArr = CFG.rotateYMoveUnits;
            int i2 = this.angle;
            image.draw2(spriteBatch, posX, posY + iArr[i2], 32, 32, i2, true, false);
        }
    }

    public final boolean inViewX() {
        return ((float) (Game.inViewX_CordsX_Width + 32)) >= this.posX && ((float) (Game.inViewX_CordsX + (-32))) <= this.posX + 32.0f;
    }

    public final boolean inViewX2() {
        return ((float) (Game.inViewX_CordsX_Width + 32)) >= this.posX + ((float) Game.mapBG.getWidth()) && ((float) (Game.inViewX_CordsX + (-32))) <= (this.posX + ((float) Game.mapBG.getWidth())) + 32.0f;
    }

    public final boolean inViewY() {
        return ((float) (Game.inViewY_CordsY_Height + 32)) >= this.posY && ((float) (Game.inViewY_CordsY + (-32))) <= this.posY + 32.0f;
    }

    public final void randomize() {
        this.shipIMGID = Game.oR.nextInt(GameValues.ships.SHIP_IMAGES);
        this.speed = GameValues.ships.SHIP_SPEED_MIN + (Game.oR.nextInt(GameValues.ships.SHIP_SPEED_RANDOM) / 100.0f);
    }

    public final void update() {
        float f = this.currentWidth + this.speed;
        this.currentWidth = f;
        if (this.movingBack) {
            if (f >= ShipManager.shipLines.get(this.shipLineID).width.get(this.tID - 1).intValue()) {
                int i = this.tID - 1;
                this.tID = i;
                if (i < 1) {
                    this.tID = 0;
                    this.movingBack = false;
                    randomize();
                    this.currentWidth = 0.0f;
                    this.remove = true;
                    return;
                }
                this.currentWidth -= ShipManager.shipLines.get(this.shipLineID).width.get(this.tID).intValue();
            }
            this.posX = ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID].x + ((ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID - 1].x - ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID].x) * (this.currentWidth / ShipManager.shipLines.get(this.shipLineID).width.get(this.tID).intValue()));
            this.posY = ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID].y + ((ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID - 1].y - ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID].y) * (this.currentWidth / ShipManager.shipLines.get(this.shipLineID).width.get(this.tID).intValue()));
            updateIsInView();
            if (this.isInView) {
                this.angle = ((int) Math.abs(((Math.atan2(ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID].y - ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID - 1].y, (-ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID].x) + ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID - 1].x) * 180.0d) / 3.141592653589793d) + 360.0d)) % 360;
                return;
            }
            return;
        }
        if (f >= ShipManager.shipLines.get(this.shipLineID).width.get(this.tID).intValue()) {
            int i2 = this.tID + 1;
            this.tID = i2;
            if (i2 > GameValues.ships.SHIP_LINE_PRECISION - 2) {
                this.tID = GameValues.ships.SHIP_LINE_PRECISION - 1;
                this.movingBack = true;
                randomize();
                this.currentWidth = 0.0f;
                this.remove = true;
                return;
            }
            this.currentWidth -= ShipManager.shipLines.get(this.shipLineID).width.get(this.tID).intValue();
        }
        this.posX = ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID].x + ((ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID + 1].x - ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID].x) * (this.currentWidth / ShipManager.shipLines.get(this.shipLineID).width.get(this.tID).intValue()));
        this.posY = ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID].y + ((ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID + 1].y - ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID].y) * (this.currentWidth / ShipManager.shipLines.get(this.shipLineID).width.get(this.tID).intValue()));
        updateIsInView();
        if (this.isInView) {
            this.angle = ((int) Math.abs(((Math.atan2(ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID].y - ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID + 1].y, (-ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID].x) + ShipManager.shipLines.get(this.shipLineID).vPoints[this.tID + 1].x) * 180.0d) / 3.141592653589793d) + 360.0d)) % 360;
        }
    }

    public final void updateIsInView() {
        if (inViewY() && inViewX()) {
            this.isInView = true;
        } else {
            this.isInView = false;
        }
    }
}
