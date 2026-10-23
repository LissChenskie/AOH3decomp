package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStats_WarScore2 extends Button {
    public float fPerc = 0.35f;
    private int iAggressor;
    private int iDefender;

    public ButtonStats_WarScore2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        init(str, CFG.FONT_REGULAR_SMALL, 0, i, i2, i3, i4, true, true, false, false);
        this.iAggressor = i5;
        this.iDefender = i6;
    }

    public static final float getBoxAlpha(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return 0.2f;
        }
        if (z3) {
            return 0.85f;
        }
        return z2 ? 0.7f : 0.5f;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.3f));
        Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(Game.getCiv(this.iAggressor).getColor(0.45f));
        Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i2, (int) (getWidth() * this.fPerc), getHeight(), false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, (int) (getWidth() * this.fPerc), CFG.PADDING, false, false);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - CFG.PADDING) + i2, (int) (getWidth() * this.fPerc), CFG.PADDING, false, true);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, getPosY() + i2, (int) (getWidth() * this.fPerc), getHeight(), true, true);
        spriteBatch.setColor(Game.getCiv(this.iDefender).getColor(0.45f));
        Images.pix.draw(spriteBatch, getPosX() + ((int) (getWidth() * this.fPerc)) + i, getPosY() + i2, getWidth() - ((int) (getWidth() * this.fPerc)), getHeight(), false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + ((int) (getWidth() * this.fPerc)) + i, getPosY() + i2, getWidth() - ((int) (getWidth() * this.fPerc)), CFG.PADDING, false, false);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + ((int) (getWidth() * this.fPerc)) + i, ((getPosY() + getHeight()) - CFG.PADDING) + i2, getWidth() - ((int) (getWidth() * this.fPerc)), CFG.PADDING, false, true);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + ((int) (getWidth() * this.fPerc)) + i, getPosY() + i2, getWidth() - ((int) (getWidth() * this.fPerc)), getHeight(), false, true);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.785f));
        Images.pix.draw(spriteBatch, getPosX() + ((int) (getWidth() * this.fPerc)) + i, getPosY() + i2, 1, getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.95f));
        Images.pix.draw(spriteBatch, getPosX() + i, ((getPosY() + getWidth()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }
}
