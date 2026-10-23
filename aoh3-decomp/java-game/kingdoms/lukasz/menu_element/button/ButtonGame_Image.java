package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonGame_Image extends ButtonGame {
    public int iconHeight;
    public int iconWidth;
    public int imageID;

    public ButtonGame_Image(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7) {
        super(str, i, i2, i3, i4, i5, i6, z);
        this.imageID = i7;
        float imageScale = getImageScale(i7) * 1.25f;
        this.iconWidth = (int) (ImageManager.getImage(i7).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i7).getHeight() * imageScale);
    }

    public ButtonGame_Image(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
        super(str, i, i2, i3, i4, i5, z);
        this.imageID = i6;
        float imageScale = getImageScale(i6) * 1.25f;
        this.iconWidth = (int) (ImageManager.getImage(i6).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i6).getHeight() * imageScale);
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Image image = ImageManager.getImage(this.imageID);
        int posX = ((getPosX() + (getWidth() / 2)) - (((this.iTextWidth + (CFG.PADDING * 2)) + this.iconWidth) / 2)) + i;
        int posY = getPosY() + (getHeight() / 2);
        int i3 = this.iconHeight;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, this.iconWidth, i3);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (((this.iTextWidth + (CFG.PADDING * 2)) + this.iconWidth) / 2)) + (CFG.PADDING * 2) + this.iconWidth + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }
}
