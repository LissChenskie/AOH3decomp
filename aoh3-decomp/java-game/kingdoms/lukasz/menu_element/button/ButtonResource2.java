package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonResource2 extends Button {
    public int imgHeight;
    public int imgWidth;
    public int resourceID;

    public ButtonResource2(int i, int i2, int i3, int i4, int i5) {
        this.resourceID = i;
        init(ResourcesManager.getResourceName(i), CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, i4, i5, true, true, false, false);
        if (i >= 0) {
            if (ImageManager.getImage(Images.population).getHeight() < ResourcesManager.resourceImages.get(i).getHeight()) {
                float height = ImageManager.getImage(Images.population).getHeight() / ResourcesManager.resourceImages.get(i).getHeight();
                this.imgWidth = (int) (ResourcesManager.resourceImages.get(i).getWidth() * height);
                this.imgHeight = (int) (ResourcesManager.resourceImages.get(i).getHeight() * height);
            } else {
                this.imgWidth = ResourcesManager.resourceImages.get(i).getWidth();
                this.imgHeight = ResourcesManager.resourceImages.get(i).getHeight();
            }
        } else if (ImageManager.getImage(Images.population).getHeight() < ImageManager.getImage(Images.resourceNone).getHeight()) {
            float height2 = ImageManager.getImage(Images.population).getHeight() / ImageManager.getImage(Images.resourceNone).getHeight();
            this.imgWidth = (int) (ImageManager.getImage(Images.resourceNone).getWidth() * height2);
            this.imgHeight = (int) (ImageManager.getImage(Images.resourceNone).getHeight() * height2);
        } else {
            this.imgWidth = ImageManager.getImage(Images.resourceNone).getWidth();
            this.imgHeight = ImageManager.getImage(Images.resourceNone).getHeight();
        }
        int i6 = 0;
        while (this.iTextWidth > getWidth() - CFG.PADDING && getText().length() > 5 && (i6 = i6 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    public static int getTextHeightBG() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(TextIcon2.getColor_gradientXY());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextHeightBG()) + i2, getWidth(), getTextHeightBG());
        spriteBatch.setColor(TextIcon2.getColor_gradientFull());
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextHeightBG()) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (this.resourceID < 0) {
            Image image = ImageManager.getImage(Images.resourceNone);
            int posX = ((getPosX() + (getWidth() / 2)) - (this.imgWidth / 2)) + i;
            int posY = getPosY() + ((getHeight() - getTextHeightBG()) / 2);
            int i3 = this.imgHeight;
            image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, this.imgWidth, i3);
        } else {
            Image image2 = ResourcesManager.resourceImages.get(this.resourceID);
            int posX2 = ((getPosX() + (getWidth() / 2)) - (this.imgWidth / 2)) + i;
            int posY2 = getPosY() + ((getHeight() - getTextHeightBG()) / 2);
            int i4 = this.imgHeight;
            image2.draw(spriteBatch, posX2, (posY2 - (i4 / 2)) + i2, this.imgWidth, i4);
        }
        Renderer.drawText(spriteBatch, this.fontID, getText(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, ((((getPosY() + getHeight()) - CFG.PADDING) - (CFG.TEXT_HEIGHT / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }
}
