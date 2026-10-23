package aoc.kingdoms.lukasz.menu_element.graph;

import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class GraphLine {
    private float fAngle;
    private int iPosY;
    private int iWidth;

    protected GraphLine(int i, int i2, int i3, int i4) {
        this.iPosY = i2;
        int i5 = i3 - i;
        int i6 = i2 - i4;
        this.iWidth = (int) Math.ceil(Math.sqrt((i5 * i5) + (i6 * i6)));
        this.fAngle = (float) ((Math.atan2(i6, (-i) + i3) * 180.0d) / 3.141592653589793d);
    }

    protected void draw(SpriteBatch spriteBatch, int i, int i2, int i3) {
        Images.pix.draw(spriteBatch, i, i2 + this.iPosY, this.iWidth, 1, this.fAngle);
    }

    protected final int getPosY() {
        return this.iPosY;
    }

    protected final int getWidth() {
        return this.iWidth;
    }

    protected final void setWidth(int i) {
        this.iWidth = i;
    }
}
