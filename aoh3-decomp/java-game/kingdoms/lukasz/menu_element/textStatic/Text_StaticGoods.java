package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticGoods extends Text_Static {
    public Text_StaticGoods(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.typeOfElement = MenuElement_Type.TEXT;
        this.iCurrent = i7;
        this.fontID = i;
        this.iTextPositionX = i2;
        setPosX(i3);
        setPosY(i4);
        setWidth(i5);
        setHeight(i6);
        setText(str);
        updateTextPosition();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        drawBG(spriteBatch, i, i2, z);
        Renderer.drawText(spriteBatch, this.fontID, this.sText, getPosX() + this.textPosition.getTextPosition() + i, getPosY() + ((getHeight() - this.iTextHeight) / 2) + i2, getColor(z));
    }

    public void drawBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, (getPosX() - 1) + getWidth() + i, getPosY() + 1 + i2, 1, getHeight() / 2, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, (getPosX() - 1) + getWidth() + i, (getPosY() - 1) + (getHeight() / 2) + i2, 1, getHeight() / 2);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + 1 + getWidth() + i, getPosY() + 1 + i2, 1, getHeight() / 2, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + 1 + getWidth() + i, (getPosY() - 1) + (getHeight() / 2) + i2, 1, getHeight() / 2);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE3.r, Colors.COLOR_GRADIENT_OVER_BLUE3.g, Colors.COLOR_GRADIENT_OVER_BLUE3.b, 0.9f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + getWidth() + i, getPosY() + 1 + i2, 1, getHeight() / 2, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + getWidth() + i, (getPosY() - 1) + (getHeight() / 2) + i2, 1, getHeight() / 2);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }
}
