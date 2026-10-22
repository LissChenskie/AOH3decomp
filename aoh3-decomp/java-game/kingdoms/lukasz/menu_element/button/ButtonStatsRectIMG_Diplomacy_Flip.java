package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsRectIMG_Diplomacy_Flip extends ButtonStatsRectIMG_Active {
    public ButtonStatsRectIMG_Diplomacy_Flip(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        super(str, i, i2, i3, i4, i5, i6 + CFG.PADDING, i7, CFG.FONT_REGULAR);
        this.iconWidth = ImageManager.getImage(i).getWidth();
        this.iconHeight = ImageManager.getImage(i).getHeight();
    }

    public ButtonStatsRectIMG_Diplomacy_Flip(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        super(str, i, i2, i3, i4, i5, i6 + CFG.PADDING, i7, i8);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 0.65f : 0.35f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, ((getPosX() + getWidth()) - ((CFG.PADDING * 2) + this.maxIconWidth)) + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.25f));
        Images.gradientFull.draw(spriteBatch, ((getPosX() + getWidth()) - ((CFG.PADDING * 2) + this.maxIconWidth)) + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.15f));
        Images.gradientXY.draw(spriteBatch, ((getPosX() + getWidth()) - ((CFG.PADDING * 2) + this.maxIconWidth)) + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, ((getPosX() + getWidth()) - ((CFG.PADDING * 2) + this.maxIconWidth)) + i, ((getPosY() + getHeight()) - 1) + i2, this.maxIconWidth + (CFG.PADDING * 2), 1);
        Images.gradientFull.draw(spriteBatch, ((getPosX() + getWidth()) - ((CFG.PADDING * 2) + this.maxIconWidth)) + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, ((getPosX() + getWidth()) - ((CFG.PADDING * 2) + this.maxIconWidth)) + i, ((getPosY() + getHeight()) - 2) + i2, this.maxIconWidth + (CFG.PADDING * 2), 1);
        Images.gradientFull.draw(spriteBatch, ((getPosX() + getWidth()) - ((CFG.PADDING * 2) + this.maxIconWidth)) + i, getPosY() + 1 + i2, this.maxIconWidth + (CFG.PADDING * 2), 1);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        ImageManager.getImage(this.imageID).draw(spriteBatch, ((((getPosX() + getWidth()) - ((CFG.PADDING * 2) + this.maxIconWidth)) + ((this.maxIconWidth + (CFG.PADDING * 2)) / 2)) - (this.iconWidth / 2)) + i, getPosY() + ((getHeight() - this.iconHeight) / 2) + i2, this.iconWidth, this.iconHeight);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + ((getWidth() - ((CFG.PADDING * 2) + this.maxIconWidth)) / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (z) {
            return Colors.BUTTON_TEXT_ACTIVE;
        }
        if (getIsHovered()) {
            return Colors.BUTTON_TEXT_HOVERED;
        }
        return getClickable() ? Colors.BUTTON_TEXT : Colors.BUTTON_TEXT_DISABLED;
    }
}
