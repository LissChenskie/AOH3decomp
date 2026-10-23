package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Text implements MenuElement_HoverElement_Type {
    private int fontID = 0;
    private int iTextWidth;
    private Color oColor;
    private String sText;

    public MenuElement_HoverElement_Type_Text(String str) {
        init(str, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT);
    }

    public MenuElement_HoverElement_Type_Text(String str, int i) {
        init(str, i, Colors.HOVER_LEFT);
    }

    public MenuElement_HoverElement_Type_Text(String str, int i, Color color) {
        init(str, i, color);
    }

    public MenuElement_HoverElement_Type_Text(String str, Color color) {
        init(str, CFG.FONT_BOLD_SMALL, color);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        Renderer.drawText(spriteBatch, this.fontID, this.sText, i, i2 + CFG.PADDING + (CFG.PADDING / 2) + ((int) ((CFG.TEXT_HEIGHT - (CFG.TEXT_HEIGHT * 0.9f)) / 2.0f)), new Color(this.oColor.r, this.oColor.g, this.oColor.b, f));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return CFG.TEXT_HEIGHT + CFG.PADDING;
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
