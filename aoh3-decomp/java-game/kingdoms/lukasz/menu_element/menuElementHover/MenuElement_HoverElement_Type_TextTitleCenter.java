package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_TextTitleCenter implements MenuElement_HoverElement_Type {
    private int fontID = 0;
    private int iTextWidth;
    private Color oColor;
    private String sText;

    public MenuElement_HoverElement_Type_TextTitleCenter(String str) {
        init(str, 0, Colors.HOVER_LEFT);
    }

    public MenuElement_HoverElement_Type_TextTitleCenter(String str, int i) {
        init(str, i, Colors.HOVER_LEFT);
    }

    public MenuElement_HoverElement_Type_TextTitleCenter(String str, int i, Color color) {
        init(str, i, color);
    }

    public MenuElement_HoverElement_Type_TextTitleCenter(String str, Color color) {
        init(str, 0, color);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.275f * f));
        Images.statsBG.draw2(spriteBatch, i - CFG.PADDING, i2, (i3 + (CFG.PADDING * 2)) - Images.statsBG2.getWidth(), getHeight() + (CFG.PADDING * 2));
        Images.statsBG2.draw2(spriteBatch, (CFG.PADDING * 2) + (((i - CFG.PADDING) + i3) - Images.statsBG2.getWidth()), i2, Images.statsBG2.getWidth(), getHeight() + (CFG.PADDING * 2), true, false);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.5f * f));
        Images.gradientXY.draw(spriteBatch, i, i2, i3, getHeight() + (CFG.PADDING * 2));
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, this.fontID, this.sText, ((i3 / 2) + i) - (this.iTextWidth / 2), i2 + (CFG.PADDING * 2), new Color(this.oColor.r, this.oColor.g, this.oColor.b, f));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.iTextWidth;
    }

    public final void init(String str, int i, Color color) {
        this.sText = str;
        this.oColor = color;
        this.fontID = i;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str);
        this.iTextWidth = (int) Renderer.glyphLayout.width;
    }
}
