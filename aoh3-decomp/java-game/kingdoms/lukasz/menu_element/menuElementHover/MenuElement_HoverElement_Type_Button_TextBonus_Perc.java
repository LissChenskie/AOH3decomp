package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Button_TextBonus_Perc extends MenuElement_HoverElement_Type_Button_TextBonus {
    public float perc;

    public MenuElement_HoverElement_Type_Button_TextBonus_Perc(String str, String str2, int i, int i2, int i3, Color color, float f) {
        super(str, str2, i, i2, i3, color);
        this.perc = Math.max(0.05f, Math.min(1.0f, f));
    }

    public MenuElement_HoverElement_Type_Button_TextBonus_Perc(String str, String str2, int i, int i2, int i3, Color color, Color color2, float f) {
        super(str, str2, i, i2, i3, color, color2);
        this.perc = Math.max(0.05f, Math.min(1.0f, f));
    }

    public MenuElement_HoverElement_Type_Button_TextBonus_Perc(String str, String str2, int i, int i2, Color color, float f) {
        super(str, str2, i, i2, color);
        this.perc = Math.max(0.05f, Math.min(1.0f, f));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus, aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        int paddingY = i2 + getPaddingY();
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f * f));
        float f2 = f * 1.0f;
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i, paddingY, i3, getHeight2(), f2);
        spriteBatch.setColor(Color.WHITE);
        float f3 = f * 0.35f;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, f3));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i, paddingY, (CFG.PADDING * 2) + this.maxIconWidth, getHeight2(), f2);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, f3));
        Images.gradientFull.draw(spriteBatch, i, paddingY, (CFG.PADDING * 2) + this.maxIconWidth, getHeight2());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f * f));
        Images.gradientXY.draw(spriteBatch, i, paddingY, (CFG.PADDING * 2) + this.maxIconWidth, getHeight2());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, i, (getHeight2() + paddingY) - 1, (CFG.PADDING * 2) + this.maxIconWidth, 1);
        Images.gradientFull.draw(spriteBatch, i, paddingY, (CFG.PADDING * 2) + this.maxIconWidth, 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.9f * f));
        Images.gradientFull.draw(spriteBatch, i, (getHeight2() + paddingY) - 2, (CFG.PADDING * 2) + this.maxIconWidth, 1);
        Images.gradientFull.draw(spriteBatch, i, paddingY + 1, (CFG.PADDING * 2) + this.maxIconWidth, 1);
        spriteBatch.setColor(new Color(Colors.HOVER_POSITIVE.r, Colors.HOVER_POSITIVE.g, Colors.HOVER_POSITIVE.b, 0.25f));
        float f4 = i3;
        Renderer.drawBoxProgress(spriteBatch, Images.statsRectBG, i, paddingY, (int) (this.perc * f4), getHeight2(), (int) (f4 * this.perc));
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        ImageManager.getImage(this.imageID).draw(spriteBatch, (i + ((this.maxIconWidth + (CFG.PADDING * 2)) / 2)) - (this.iconWidth / 2), paddingY + ((getHeight2() - this.iconHeight) / 2), this.iconWidth, this.iconHeight);
        Renderer.drawText(spriteBatch, this.fontID, this.sText, (CFG.PADDING * 4) + i + this.maxIconWidth, paddingY + ((getHeight2() - this.iTextHeight) / 2), new Color(this.oColor.r, this.oColor.g, this.oColor.b, f));
        Renderer.drawText(spriteBatch, this.fontID2, this.sText2, (CFG.PADDING * 4) + i + this.maxIconWidth + this.iTextWidth, paddingY + ((getHeight2() - this.iTextHeight) / 2), new Color(this.oColorBonus.r, this.oColorBonus.g, this.oColorBonus.b, f));
        spriteBatch.setColor(Color.WHITE);
    }
}
