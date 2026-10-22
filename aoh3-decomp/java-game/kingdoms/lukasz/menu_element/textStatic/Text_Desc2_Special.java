package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_Desc2_Special extends Text_Desc {
    public Text_Desc2_Special(String str, int i, int i2, int i3) {
        super(str, i, i2, i3);
    }

    public Text_Desc2_Special(String str, int i, int i2, int i3, int i4) {
        super(str, i, i2, i3, i4);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG.r, Colors.COLOR_NOTIFICATION_BG.g, Colors.COLOR_NOTIFICATION_BG.b, (getIsHovered() || z) ? 0.5f : 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.3f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.35f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG.r, Colors.COLOR_NOTIFICATION_BG.g, Colors.COLOR_NOTIFICATION_BG.b, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, (getPosX() - 1) + i, (getPosY() - 1) + i2, getWidth() + 2, getHeight() + 2, 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.85f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER.r, Colors.COLOR_NOTIFICATION_OVER.g, Colors.COLOR_NOTIFICATION_OVER.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        for (int i3 = 0; i3 < this.iLineSize; i3++) {
            Renderer.drawText(spriteBatch, this.fontID, this.sLines.get(i3), getPosX() + getPadding() + i, getPosY() + getPaddingY() + ((this.iTextHeight + (CFG.PADDING * 2)) * i3) + i2, getColor(z));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }
}
