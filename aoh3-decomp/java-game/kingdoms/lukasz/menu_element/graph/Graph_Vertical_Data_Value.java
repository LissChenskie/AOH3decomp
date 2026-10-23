package aoc.kingdoms.lukasz.menu_element.graph;

import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Graph_Vertical_Data_Value {
    protected static final float ALPHA = 0.35f;
    protected static final float ALPHA_GRADIENT = 0.7f;
    protected static final float ALPHA_GRADIENT2 = 0.35f;
    protected static final Color COLOR_VALUE_BORDER = new Color(0.9f, 0.9f, 0.9f, 0.1f);
    protected int iColorDataID;
    protected int iHeight;
    protected int iValue;

    protected Graph_Vertical_Data_Value(int i, int i2) {
        this.iValue = i;
        this.iColorDataID = i2;
    }

    private void drawData(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, Color color) {
        spriteBatch.setColor(new Color(color.r, color.g, color.b, 0.35f));
        int i6 = (i2 - i4) - i5;
        Images.pix.draw(spriteBatch, i, i6, i3, i5);
        spriteBatch.setColor(new Color(color.r, color.g, color.b, 0.7f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, i6, i3, i5, false, true);
        spriteBatch.setColor(new Color(color.r, color.g, color.b, 0.35f));
        int i7 = i3 / 3;
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, i6, i7, i5, false, false);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, (i + i3) - i7, i6, i7, i5, true, false);
    }

    protected void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, Color color) {
        drawData(spriteBatch, i, i2, i3, i4, i5, color);
    }

    protected void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, Color color) {
        drawData(spriteBatch, i, i2, i3, i4, this.iHeight, color);
    }

    protected final int getDataTypeID() {
        return this.iColorDataID;
    }

    protected final int getHeight() {
        return this.iHeight;
    }

    protected final int getValue() {
        return this.iValue;
    }

    protected final void setHeight(int i) {
        this.iHeight = i;
        if (i < 1) {
            this.iHeight = 1;
        }
    }
}
