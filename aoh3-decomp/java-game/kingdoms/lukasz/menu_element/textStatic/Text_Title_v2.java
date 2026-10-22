package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_Title_v2 extends Text_Static {
    public Text_Title_v2(String str, int i, int i2, int i3, int i4, int i5) {
        this.typeOfElement = MenuElement_Type.TEXT;
        this.fontID = CFG.FONT_REGULAR_SMALL;
        this.iTextPositionX = i;
        setPosX(i2);
        setPosY(i3);
        setWidth(i4);
        setHeight(i5);
        setText(str);
        updateTextPosition();
    }

    public Text_Title_v2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        this.typeOfElement = MenuElement_Type.TEXT;
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
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.9f));
        Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.75f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 1.0f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 1.0f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.75f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + getHeight() + i2, getWidth(), CFG.PADDING);
        spriteBatch.setColor(Color.WHITE);
        drawText(spriteBatch, i, i2, z, z2);
    }

    public void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, getPosX() + this.textPosition.getTextPosition() + i, getPosY() + ((getHeight() - getTextHeight()) / 2) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
    protected Color getColor(boolean z) {
        return Colors.getColorTopStats2(z, getIsHovered());
    }
}
