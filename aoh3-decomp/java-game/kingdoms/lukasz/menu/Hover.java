package aoc.kingdoms.lukasz.menu;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public interface Hover {
    void draw(SpriteBatch spriteBatch, int i, int i2);

    void drawAlwaysBelow(SpriteBatch spriteBatch, int i, int i2);

    void drawAlwaysOver(SpriteBatch spriteBatch, int i, int i2);

    void drawAlwaysOver_Mobile(SpriteBatch spriteBatch, int i, int i2);

    void drawProvinceInfo(SpriteBatch spriteBatch, int i, int i2);

    void draw_Hover(SpriteBatch spriteBatch, int i, int i2);

    void draw_HoverWithoutAnimation(SpriteBatch spriteBatch, int i, int i2);
}
