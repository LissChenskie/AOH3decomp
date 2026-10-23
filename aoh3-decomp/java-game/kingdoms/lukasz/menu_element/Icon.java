package aoc.kingdoms.lukasz.menu_element;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Icon extends Button {
    public int id;
    public int imageID;

    public Icon(int i, int i2, int i3, int i4, int i5, int i6) {
        this.imageID = i;
        this.id = i6;
        init("", CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
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
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.45f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight() / 2);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + (getHeight() / 2) + i2, getWidth(), getHeight() / 2, false, true);
        if (InGame_CourtOptions.iActiveID == this.id) {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 1.0f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + (getHeight() / 2) + i2, getWidth(), getHeight() / 2);
        }
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.85f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(getImageID()).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(getImageID()).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(getImageID()).getHeight() / 2)) + i2);
    }

    public int getImageID() {
        return this.imageID;
    }
}
