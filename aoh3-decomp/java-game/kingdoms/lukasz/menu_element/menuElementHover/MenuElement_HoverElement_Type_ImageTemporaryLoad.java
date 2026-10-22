package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_ImageTemporaryLoad implements MenuElement_HoverElement_Type {
    private int iHeight;
    private int iHoverLoadedTemporaryImagesID;
    private int iWidth;
    private int offsetLeft;
    private int offsetRight;

    public MenuElement_HoverElement_Type_ImageTemporaryLoad(String str) {
        init(str, 0, CFG.PADDING);
    }

    public MenuElement_HoverElement_Type_ImageTemporaryLoad(String str, int i) {
        init(str, i, CFG.PADDING);
    }

    public MenuElement_HoverElement_Type_ImageTemporaryLoad(String str, int i, int i2) {
        init(str, i, i2);
    }

    private final Image getImage() {
        try {
            return Game.hoverManager.lHoverLoadedTemporaryImages.get(this.iHoverLoadedTemporaryImagesID);
        } catch (Exception unused) {
            return ImageManager.getImage(Images.imageNotFound);
        }
    }

    private final float getImageScale() {
        return 1.0f;
    }

    private final void init(String str, int i, int i2) {
        this.iHoverLoadedTemporaryImagesID = Game.hoverManager.loadHoverLoadedTemporaryImage(str);
        this.offsetLeft = i;
        this.offsetRight = i2;
        this.iWidth = (int) (getImage().getWidth() * getImageScale());
        this.iHeight = (int) (getImage().getHeight() * getImageScale());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        getImage().draw(spriteBatch, i + this.offsetLeft, i2 + CFG.PADDING, this.iWidth, this.iHeight);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return getImage().getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.offsetLeft + this.offsetRight + this.iWidth;
    }
}
