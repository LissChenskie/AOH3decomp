package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonMain extends Button {
    protected static final int ANIMATION_T = 750;
    protected static int animationState;
    private static final Color colorLine = new Color(0.5176471f, 0.43529412f, 0.25882354f, 0.55f);
    protected static long lTimeAnimation;

    public ButtonMain(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
        init(str, i, i2, i3, i4, i5, CFG.BUTTON_HEIGHT, z, true, false, false);
    }

    public ButtonMain(String str, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        init(str, i, i2, i3, i4, i5, CFG.BUTTON_HEIGHT, z, true, true, z2);
    }

    protected static final Color getColorLine() {
        return colorLine;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if ((z || getIsHovered()) && getClickable()) {
            spriteBatch.setColor(COLOR_BUTTON_MENU_HOVER_BG);
            Renderer.drawBox(spriteBatch, getButtonBG_Active(), getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.15f));
            spriteBatch.setColor(Color.WHITE);
            int i3 = animationState;
            if (i3 >= 0) {
                if (i3 == 0) {
                    float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 750.0f, 1.0f);
                    spriteBatch.setColor(getColorLine());
                    Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + 1 + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                    Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + getHeight()) - 2) + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                    if (lTimeAnimation < CFG.currentTimeMillis - 750) {
                        animationState++;
                        lTimeAnimation = CFG.currentTimeMillis;
                    }
                } else {
                    float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 750.0f, 1.0f);
                    spriteBatch.setColor(getColorLine());
                    Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, getPosY() + 1 + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                    Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, ((getPosY() + getHeight()) - 2) + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                    if (lTimeAnimation < CFG.currentTimeMillis - 750) {
                        animationState = 0;
                        lTimeAnimation = CFG.currentTimeMillis;
                    }
                }
                spriteBatch.setColor(Color.WHITE);
            }
        } else {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.9f));
            Renderer.drawBox(spriteBatch, getButtonBG(), getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public int getButtonBG() {
        return Images.buttonMenu;
    }

    public int getButtonBG_Active() {
        return Images.buttonMenuH;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        lTimeAnimation = CFG.currentTimeMillis;
        animationState = 0;
    }
}
