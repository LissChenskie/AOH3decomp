package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_ImageTitle_BG implements MenuElement_HoverElement_Type {
    private int iHeight;
    private int iImageID;
    private int iWidth;
    private int offsetLeft;
    private int offsetRight;

    public MenuElement_HoverElement_Type_ImageTitle_BG(int i) {
        init(i, 0, CFG.PADDING);
    }

    public MenuElement_HoverElement_Type_ImageTitle_BG(int i, int i2) {
        init(i, i2, CFG.PADDING);
    }

    public MenuElement_HoverElement_Type_ImageTitle_BG(int i, int i2, int i3) {
        init(i, i2, i3);
    }

    private final float getImageScale() {
        return getHeight() / ImageManager.getImage(this.iImageID).getHeight();
    }

    private final void init(int i, int i2, int i3) {
        this.iImageID = i;
        this.offsetLeft = i2;
        this.offsetRight = i3;
        this.iWidth = (int) (ImageManager.getImage(i).getWidth() * getImageScale());
        this.iHeight = (int) (ImageManager.getImage(i).getHeight() * getImageScale());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        Image image = ImageManager.getImage(this.iImageID);
        int i4 = i + this.offsetLeft;
        int i5 = i2 + (CFG.PADDING * 2) + (CFG.PADDING / 2);
        int i6 = CFG.TEXT_HEIGHT;
        int i7 = this.iHeight;
        image.draw(spriteBatch, i4, i5 + ((i6 - i7) / 2), this.iWidth, i7);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return CFG.TEXT_HEIGHT + ((CFG.PADDING * 3) / 4);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.offsetLeft + this.offsetRight + this.iWidth;
    }
}
