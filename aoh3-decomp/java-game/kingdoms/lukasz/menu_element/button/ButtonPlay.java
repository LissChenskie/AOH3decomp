package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonPlay extends ButtonMain {
    public boolean flipX;

    public ButtonPlay(String str, int i, int i2, int i3, int i4, boolean z) {
        super(str, i, i2, i3, i4, ImageManager.getImage(Images.buttonPlay).getWidth(), true);
        this.flipX = z;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonMain, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            ImageManager.getImage(Images.buttonPlay2).draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), this.flipX, false);
        } else {
            ImageManager.getImage(Images.buttonPlay).draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), this.flipX, false);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (z) {
            Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), (((getPosX() + (this.flipX ? 0 : Images.buttonPlayPADDING)) + ((getWidth() - Images.buttonPlayPADDING) / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
        } else {
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), (((getPosX() + (this.flipX ? 0 : Images.buttonPlayPADDING)) + ((getWidth() - Images.buttonPlayPADDING) / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorTopStats(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getHeight() {
        return ImageManager.getImage(Images.buttonPlay).getHeight();
    }
}
