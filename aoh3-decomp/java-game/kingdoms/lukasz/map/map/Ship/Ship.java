package aoc.kingdoms.lukasz.map.map.Ship;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.CatmullRomSpline;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.net.HttpStatus;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Ship {
    public float angle;
    public float moveToX;
    public float moveToY;
    public float posX;
    public float posY;
    public List<Integer> width = new ArrayList();
    public float speed = 2.0f;
    public float currentWidth = 0.0f;
    public int iPrecision = HttpStatus.SC_OK;
    int tID = 0;
    public Vector2[] vPoints = new Vector2[HttpStatus.SC_OK];

    public Ship(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = 0;
        float f = i;
        this.posX = f;
        float f2 = i2;
        this.posY = f2;
        float f3 = i3;
        this.moveToX = f3;
        float f4 = i4;
        this.moveToY = f4;
        CatmullRomSpline catmullRomSpline = new CatmullRomSpline(new Vector2[]{new Vector2(f, f2), new Vector2(f, f2), new Vector2(i5, i6), new Vector2(f3, f4), new Vector2(f3, f4)}, false);
        for (int i8 = 0; i8 < this.iPrecision; i8++) {
            this.vPoints[i8] = new Vector2();
            catmullRomSpline.valueAt(this.vPoints[i8], i8 / (this.iPrecision - 1.0f));
        }
        while (i7 < this.iPrecision - 1) {
            int i9 = i7 + 1;
            this.width.add(Integer.valueOf((int) Math.ceil(Math.sqrt(((this.vPoints[i9].x - this.vPoints[i7].x) * (this.vPoints[i9].x - this.vPoints[i7].x)) + ((this.vPoints[i7].y - this.vPoints[i9].y) * (this.vPoints[i7].y - this.vPoints[i9].y))))));
            i7 = i9;
        }
    }

    public void draw(SpriteBatch spriteBatch) {
        float f = this.currentWidth + this.speed;
        this.currentWidth = f;
        if (f >= this.width.get(this.tID).intValue()) {
            this.currentWidth -= this.width.get(this.tID).intValue();
            int i = this.tID;
            this.tID = i + 1;
            if (i > 198) {
                this.tID = 0;
            }
        }
        this.posX = this.vPoints[this.tID].x + ((this.vPoints[this.tID + 1].x - this.vPoints[this.tID].x) * (this.currentWidth / this.width.get(this.tID).intValue()));
        this.posY = this.vPoints[this.tID].y + ((this.vPoints[this.tID + 1].y - this.vPoints[this.tID].y) * (this.currentWidth / this.width.get(this.tID).intValue()));
        this.angle = ((int) Math.abs(((Math.atan2(this.vPoints[this.tID].y - this.vPoints[this.tID + 1].y, (-this.vPoints[this.tID].x) + this.vPoints[this.tID + 1].x) * 180.0d) / 3.141592653589793d) + 360.0d)) % 360;
    }

    public void drawCurrentScale(SpriteBatch spriteBatch) {
        float f = this.currentWidth + this.speed;
        this.currentWidth = f;
        if (f >= this.width.get(this.tID).intValue()) {
            this.currentWidth -= this.width.get(this.tID).intValue();
            int i = this.tID + 1;
            this.tID = i;
            if (i > 198) {
                this.tID = 0;
            }
        }
        this.posX = this.vPoints[this.tID].x + ((this.vPoints[this.tID + 1].x - this.vPoints[this.tID].x) * (this.currentWidth / this.width.get(this.tID).intValue()));
        this.posY = this.vPoints[this.tID].y + ((this.vPoints[this.tID + 1].y - this.vPoints[this.tID].y) * (this.currentWidth / this.width.get(this.tID).intValue()));
        this.angle = ((int) Math.abs(((Math.atan2(this.vPoints[this.tID].y - this.vPoints[this.tID + 1].y, (-this.vPoints[this.tID].x) + this.vPoints[this.tID + 1].x) * 180.0d) / 3.141592653589793d) + 360.0d)) % 360;
    }
}
