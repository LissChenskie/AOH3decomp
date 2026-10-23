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
public class TextIcon2_Rank extends Button {
    public static final float rankScale = 0.8f;
    public int iRankH;
    public int iRankW;
    public int imageID;
    public String sRank;

    public TextIcon2_Rank(String str, String str2, int i, int i2, int i3, int i4, int i5) {
        init(str2, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.imageID = i;
        this.sRank = str;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sRank);
        this.iRankW = (int) (Renderer.glyphLayout.width * 0.8f);
        this.iRankH = (int) (Renderer.glyphLayout.height * 0.8f);
    }

    public static Color getColor_gradientFull() {
        return new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.45f);
    }

    public static Color getColor_gradientXY() {
        return new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.7f);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, (getIsHovered() || z) ? 0.6f : 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), getTextH(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(getColor_gradientXY());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), getTextH());
        spriteBatch.setColor(getColor_gradientFull());
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
        ImageManager.getImage(getImageID()).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(getImageID()).getWidth() / 2)) + i, ((getPosY() + ((getHeight() - getTextH()) / 2)) - (ImageManager.getImage(getImageID()).getHeight() / 2)) + i2);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.65f));
        Image image = Images.statsRectBG;
        int posX = ((((getPosX() + getWidth()) - CFG.PADDING) - this.iRankW) - 2) + i;
        int posY = ((getPosY() + getHeight()) - getTextH()) - CFG.PADDING;
        int i3 = this.iRankH;
        Renderer.drawBox(spriteBatch, image, posX, ((posY - i3) - 2) + i2, this.iRankW + 4, i3 + 4, 1.0f);
        spriteBatch.setColor(Color.WHITE);
        Renderer.fontMain.get(this.fontID).getData().setScale(0.8f);
        Renderer.drawText(spriteBatch, this.fontID, this.sRank, (((getPosX() + getWidth()) - CFG.PADDING) - this.iRankW) + i, ((((getPosY() + getHeight()) - getTextH()) - CFG.PADDING) - this.iRankH) + i2, Colors.BUTTON_TEXT_BRIGHT);
        Renderer.fontMain.get(this.fontID).getData().setScale(1.0f);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, (((getPosY() + getHeight()) - (getTextH() / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }

    public int getImageID() {
        return this.imageID;
    }

    public int getTextH() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
    }
}
