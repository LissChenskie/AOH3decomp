package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Space implements MenuElement_HoverElement_Type {
    private static final String SPACE_TEXT = "-----";
    private int iTextWidth;

    public MenuElement_HoverElement_Type_Space() {
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD_SMALL), SPACE_TEXT);
        this.iTextWidth = (int) Renderer.glyphLayout.width;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        Renderer.drawText(spriteBatch, CFG.FONT_BOLD_SMALL, SPACE_TEXT, i, i2 + CFG.PADDING + ((int) ((CFG.TEXT_HEIGHT - (CFG.TEXT_HEIGHT * 0.9f)) / 2.0f)), new Color(Colors.HOVER_RIGHT2.r, Colors.HOVER_RIGHT2.g, Colors.HOVER_RIGHT2.b, f));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return CFG.TEXT_HEIGHT;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.iTextWidth;
    }
}
