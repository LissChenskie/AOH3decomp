package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonCurrentSituation extends Button {
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public int maxIconWidth;
    public boolean row;

    public ButtonCurrentSituation(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        init(str, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.imageID = i;
        this.row = z;
        this.maxIconWidth = i6;
        this.iconWidth = ImageManager.getImage(i).getWidth();
        this.iconHeight = ImageManager.getImage(i).getHeight();
    }

    private final float getImageScale(int i) {
        return (CFG.TEXT_HEIGHT + CFG.PADDING) / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, (CFG.PADDING * 2) + this.maxIconWidth, getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.75f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, (CFG.PADDING * 2) + this.maxIconWidth, getHeight());
        spriteBatch.setColor(Color.WHITE);
        if (this.row) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.4f));
            Images.line_32_off1.draw(spriteBatch, getPosX() + i, ((getPosY() + 1) - Images.line_32_off1.getHeight()) + i2, getWidth(), 1);
            Images.line_32_off1.draw(spriteBatch, getPosX() + i, (((getPosY() + getHeight()) - 2) - Images.line_32_off1.getHeight()) + i2, getWidth(), 1, false, true);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_TITLE_BLUE.r, Colors.COLOR_GRADIENT_TITLE_BLUE.g, Colors.COLOR_GRADIENT_TITLE_BLUE.b, 0.35f));
            Images.line_32_off1.draw(spriteBatch, getPosX() + i, (getPosY() - Images.line_32_off1.getHeight()) + i2, getWidth(), 1);
            Images.line_32_off1.draw(spriteBatch, getPosX() + i, (((getPosY() + getHeight()) - 1) - Images.line_32_off1.getHeight()) + i2, getWidth(), 1, false, true);
        } else {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.4f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
            Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        }
        if (z || getIsHovered()) {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.325f));
            ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, CFG.PADDING * 2, getHeight());
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + this.maxIconWidth + i, getPosY() + i2, CFG.PADDING * 2, getHeight(), true, false);
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + this.maxIconWidth + (CFG.PADDING * 2) + i, getPosY() + i2, CFG.PADDING * 2, getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_BOX_GOLD.r, Colors.COLOR_BOX_GOLD.g, Colors.COLOR_BOX_GOLD.b, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + 1 + i, getPosY() + i2, 1, getHeight() / 2, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + 1 + i, getPosY() + (getHeight() / 2) + i2, 1, getHeight() / 2);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, (((getPosX() + this.maxIconWidth) + (CFG.PADDING * 2)) - 2) + i, getPosY() + i2, 1, getHeight() / 2, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, (((getPosX() + this.maxIconWidth) + (CFG.PADDING * 2)) - 2) + i, getPosY() + (getHeight() / 2) + i2, 1, getHeight() / 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.4f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + 2 + i, getPosY() + i2, 1, getHeight() / 2, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + 2 + i, getPosY() + (getHeight() / 2) + i2, 1, getHeight() / 2);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, (((getPosX() + this.maxIconWidth) + (CFG.PADDING * 2)) - 3) + i, getPosY() + i2, 1, getHeight() / 2, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, (((getPosX() + this.maxIconWidth) + (CFG.PADDING * 2)) - 3) + i, getPosY() + (getHeight() / 2) + i2, 1, getHeight() / 2);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Image image = ImageManager.getImage(this.imageID);
        int posX = (((getPosX() + CFG.PADDING) + (this.maxIconWidth / 2)) - (this.iconWidth / 2)) + i;
        int posY = getPosY();
        int height = getHeight();
        int i3 = this.iconHeight;
        image.draw(spriteBatch, posX, posY + ((height - i3) / 2) + i2, this.iconWidth, i3);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), getPosX() + (CFG.PADDING * 2) + this.maxIconWidth + (CFG.PADDING * 2) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    public final float getBoxAlpha(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return 0.2f;
        }
        if (z3) {
            return 0.85f;
        }
        return z2 ? 0.7f : 0.5f;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }
}
