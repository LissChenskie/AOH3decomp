package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextIconScaled extends Button {
    public int imageID;
    public int imgHeight;
    public int imgWidth;

    public TextIconScaled(String str, int i, int i2, int i3, int i4, int i5) {
        init(str, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.imageID = i;
        if (ImageManager.getImage(i).getHeight() > (getHeight() - getTextH()) - (CFG.PADDING * 2)) {
            this.imgHeight = (getHeight() - getTextH()) - (CFG.PADDING * 2);
            this.imgWidth = (int) (ImageManager.getImage(i).getWidth() * (((getHeight() - getTextH()) - (CFG.PADDING * 2)) / ImageManager.getImage(i).getHeight()));
        } else {
            this.imgWidth = ImageManager.getImage(i).getWidth();
            this.imgHeight = ImageManager.getImage(i).getHeight();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), getTextH(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        Image image = ImageManager.getImage(this.imageID);
        int posX = ((getPosX() + (getWidth() / 2)) - (this.imgWidth / 2)) + i;
        int posY = getPosY() + ((getHeight() - getTextH()) / 2);
        int i3 = this.imgHeight;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, this.imgWidth, i3);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, (((getPosY() + getHeight()) - CFG.PADDING) - getTextHeight()) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorTopStatsHover(z, getIsHovered());
    }

    public int getTextH() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
    }
}
