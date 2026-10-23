package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button32 extends Button {
    protected static final int ANIMATION_T = 750;
    protected static int animationState;
    protected static long lTimeAnimation;
    public int iconImageID;
    private static final Color colorLine = new Color(0.5176471f, 0.43529412f, 0.25882354f, 0.55f);
    public static final Color buttonColor = new Color(0.627451f, 0.50980395f, 0.29411766f, 1.0f);

    public Button32(int i) {
        this.iconImageID = i;
        init(this.sText, this.fontID, this.iTextPositionX, 0, 0, ImageManager.getImage(i).getWidth(), ImageManager.getImage(i).getHeight(), true, true, false, false);
    }

    public Button32(int i, int i2, int i3) {
        this.iconImageID = i;
        init(this.sText, this.fontID, this.iTextPositionX, i2, i3, ImageManager.getImage(i).getWidth(), ImageManager.getImage(i).getHeight(), true, true, false, false);
    }

    protected static final Color getColorLine() {
        return colorLine;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        if ((z || getIsHovered()) && getClickable()) {
            spriteBatch.setColor(COLOR_BUTTON_MENU_HOVER_BG);
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
        }
        spriteBatch.setColor(getColor(z));
        ImageManager.getImage(this.iconImageID).draw(spriteBatch, getPosX() + i, getPosY() + i2, false, getFlipY());
        spriteBatch.setColor(Color.WHITE);
    }

    public int getButtonBG() {
        return Images.buttonMenu;
    }

    public int getButtonBG_Active() {
        return Images.buttonMenuH;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (z) {
            return Colors.COLOR_TOP_STATS_ACTIVE;
        }
        if (getIsHovered()) {
            return Colors.COLOR_TOP_STATS_HOVER;
        }
        return isActiveView() ? Colors.COLOR_TOP_STATS : buttonColor;
    }

    public boolean getFlipY() {
        return false;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getHeight() {
        return ImageManager.getImage(this.iconImageID).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getWidth() {
        return ImageManager.getImage(this.iconImageID).getWidth();
    }

    public boolean isActiveView() {
        return false;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        lTimeAnimation = CFG.currentTimeMillis;
        animationState = 0;
    }
}
