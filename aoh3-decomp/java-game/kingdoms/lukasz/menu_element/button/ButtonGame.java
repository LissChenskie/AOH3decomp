package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonGame extends Button {
    public static final int ANIMATION_T = 1000;
    public static int animationState;
    private static final Color colorLine = new Color(0.5176471f, 0.43529412f, 0.25882354f, 0.55f);
    public static long lTimeAnimation;
    public int iCurrent = 0;

    public ButtonGame(String str, int i, int i2, int i3, int i4) {
        init(str, CFG.FONT_REGULAR, -1, i, i2, i3, CFG.BUTTON_HEIGHT2, true, true, false, false);
    }

    public ButtonGame(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        init(str, i, i2, i3, i4, i5, i6, z, true, false, false);
    }

    public ButtonGame(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
        init(str, i, i2, i3, i4, i5, CFG.BUTTON_HEIGHT2, z, true, false, false);
    }

    public ButtonGame(String str, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        init(str, i, i2, i3, i4, i5, CFG.BUTTON_HEIGHT2, z, true, true, z2);
    }

    public static final Color getColorLine() {
        return colorLine;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    public void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3;
        if ((z || getIsHovered()) && getClickable()) {
            Renderer.drawBox(spriteBatch, getButtonBG_Active(), getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Colors.COLOR_GRADIENT_HOVER);
        } else {
            Renderer.drawBox(spriteBatch, getButtonBG(), getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Colors.COLOR_GRADIENT);
        }
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + 2 + i2, getWidth(), getHeight() - 4);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.35f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 3) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (getClickable() && getIsHovered() && (i3 = animationState) >= 0) {
            if (i3 == 0) {
                float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + 1 + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + getHeight()) - 2) + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState++;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, getPosY() + 1 + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, ((getPosY() + getHeight()) - 2) + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState = 0;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
    }

    public int getButtonBG() {
        return Images.buttonGame;
    }

    public int getButtonBG_Active() {
        return Images.buttonGameH;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iCurrent;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setCurrent(int i) {
        this.iCurrent = i;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        lTimeAnimation = CFG.currentTimeMillis;
        animationState = 0;
    }
}
