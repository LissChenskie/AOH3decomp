package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.textures.Image;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Resource implements MenuElement_HoverElement_Type {
    private int iHeight;
    private int iResourceID;
    private int iWidth;
    private int offsetLeft;
    private int offsetRight;

    public MenuElement_HoverElement_Type_Resource(int i, int i2, int i3) {
        this.iWidth = 0;
        this.iHeight = 0;
        this.iResourceID = i;
        this.offsetLeft = i2;
        this.offsetRight = i3;
        this.iWidth = (int) ((ResourcesManager.resourceImages.get(i).getWidth() * (CFG.CIV_FLAG_HEIGHT * getImageScale())) / ResourcesManager.resourceImages.get(i).getHeight());
        this.iHeight = (int) ((ResourcesManager.resourceImages.get(i).getHeight() * (CFG.CIV_FLAG_HEIGHT * getImageScale())) / ResourcesManager.resourceImages.get(i).getHeight());
    }

    private final float getImageScale() {
        return (CFG.TEXT_HEIGHT / CFG.CIV_FLAG_HEIGHT) * 1.2f;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        Image image = ResourcesManager.resourceImages.get(this.iResourceID);
        int i4 = i + this.offsetLeft;
        int i5 = i2 + CFG.PADDING + (CFG.PADDING / 2) + (CFG.TEXT_HEIGHT / 2);
        int i6 = this.iHeight;
        image.draw(spriteBatch, i4, i5 - (i6 / 2), this.iWidth, i6);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return CFG.TEXT_HEIGHT + CFG.PADDING;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.offsetRight + this.offsetLeft + this.iWidth;
    }
}
