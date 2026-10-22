package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_ImageFull implements MenuElement_HoverElement_Type {
    private int iHeight;
    private int iImageID;
    private int iWidth;
    private int offsetLeft;
    private int offsetRight;

    public MenuElement_HoverElement_Type_ImageFull(int i) {
        init(i, 0, CFG.PADDING);
    }

    public MenuElement_HoverElement_Type_ImageFull(int i, int i2) {
        init(i, i2, CFG.PADDING);
    }

    public MenuElement_HoverElement_Type_ImageFull(int i, int i2, int i3) {
        init(i, i2, i3);
    }

    private final void init(int i, int i2, int i3) {
        this.iImageID = i;
        this.offsetLeft = i2;
        this.offsetRight = i3;
        this.iWidth = ImageManager.getImage(i).getWidth();
        this.iHeight = ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        ImageManager.getImage(this.iImageID).draw(spriteBatch, i + this.offsetLeft, i2 + CFG.PADDING + (CFG.PADDING / 2), this.iWidth, this.iHeight);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return Math.max(CFG.TEXT_HEIGHT, this.iHeight) + CFG.PADDING;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.offsetLeft + this.offsetRight + this.iWidth;
    }
}
