package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_MainMenuIcon extends Button {
    public int imgID;

    public Button_MainMenuIcon(int i, int i2, int i3, int i4, int i5) {
        this.imgID = i;
        init("", this.fontID, this.iTextPositionX, i2, i3, i4, i5, true, true, false, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (z) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.2f));
        } else if (getIsHovered()) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.1f));
        } else {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.035f));
        }
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), true, false);
        if (z) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.75f));
        } else if (getIsHovered()) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.5f));
        } else {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.3f));
        }
        ImageManager.getImage(this.imgID).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(this.imgID).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(this.imgID).getHeight() / 2)) + i2);
        spriteBatch.setColor(Color.WHITE);
    }
}
