package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_ColorTitle implements MenuElement_HoverElement_Type {
    private Color oColor;
    private int offsetLeft = 0;
    private int offsetRight = 0;
    private int iHeight = 0;

    public MenuElement_HoverElement_Type_ColorTitle(Color color) {
        init(color, 0, 0, (int) (CFG.TEXT_HEIGHT * 0.9f));
    }

    public MenuElement_HoverElement_Type_ColorTitle(Color color, int i) {
        init(color, i, CFG.PADDING, (int) (CFG.TEXT_HEIGHT * 0.9f));
    }

    public MenuElement_HoverElement_Type_ColorTitle(Color color, int i, int i2) {
        init(color, i, i2, (int) (CFG.TEXT_HEIGHT * 0.9f));
    }

    public MenuElement_HoverElement_Type_ColorTitle(Color color, int i, int i2, int i3) {
        init(color, i, i2, i3);
    }

    private final void init(Color color, int i, int i2, int i3) {
        this.oColor = color;
        this.offsetLeft = i;
        this.offsetRight = i2;
        this.iHeight = i3;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(this.oColor.r, this.oColor.g, this.oColor.b, f));
        Images.pix.draw(spriteBatch, i + this.offsetLeft, i2 + (CFG.PADDING * 2), CFG.COLOR_WIDTH, CFG.TEXT_HEIGHT);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return CFG.TEXT_HEIGHT;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.offsetRight + this.offsetLeft + CFG.COLOR_WIDTH;
    }
}
