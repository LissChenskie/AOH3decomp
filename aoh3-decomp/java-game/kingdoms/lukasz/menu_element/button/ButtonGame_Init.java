package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonGame_Init extends ButtonGame {
    public static final float INIT_ANIMATION_TIME = 750.0f;
    public static long INIT_TIME;

    public ButtonGame_Init(String str, int i, int i2, int i3, int i4) {
        super(str, i, i2, i3, i4);
        INIT_TIME = CFG.currentTimeMillis;
    }

    public ButtonGame_Init(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        super(str, i, i2, i3, i4, i5, i6, z);
        INIT_TIME = CFG.currentTimeMillis;
    }

    public ButtonGame_Init(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
        super(str, i, i2, i3, i4, i5, z);
        INIT_TIME = CFG.currentTimeMillis;
    }

    public ButtonGame_Init(String str, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        super(str, i, i2, i3, i4, i5, z, z2);
        INIT_TIME = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame, aoc.kingdoms.lukasz.menu_element.button.Button
    public void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        super.drawButtonBG(spriteBatch, i, i2, z);
        float f = 1.0f - ((CFG.currentTimeMillis - INIT_TIME) / 750.0f);
        if (f > 0.0f) {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + 2 + i2, getWidth(), getHeight() - 4, false, true);
            Images.gradientFull.draw(spriteBatch, getPosX() + (((int) (getWidth() * (1.0f - f))) / 2) + i, getPosY() + 2 + i2, (int) (getWidth() * f), getHeight() - 4);
            spriteBatch.setColor(Color.WHITE);
        }
    }
}
