package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Flag implements MenuElement_HoverElement_Type {
    private int iCivID;
    private int offsetLeft;
    private int offsetRight;

    public MenuElement_HoverElement_Type_Flag(int i) {
        this.offsetRight = 0;
        this.iCivID = i;
        this.offsetLeft = 0;
        this.offsetRight = CFG.PADDING;
    }

    public MenuElement_HoverElement_Type_Flag(int i, int i2) {
        this.offsetRight = 0;
        this.iCivID = i;
        this.offsetLeft = i2;
        this.offsetRight = CFG.PADDING;
    }

    public MenuElement_HoverElement_Type_Flag(int i, int i2, int i3) {
        this.iCivID = i;
        this.offsetLeft = i2;
        this.offsetRight = i3;
    }

    private final float getImageScale() {
        return (CFG.TEXT_HEIGHT / CFG.CIV_FLAG_HEIGHT) * 1.2f;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        try {
            int i4 = this.iCivID;
            if (i4 >= 0) {
                Game.getCiv(i4).getFlag().draw(spriteBatch, i + this.offsetLeft, (((CFG.PADDING + i2) + (CFG.PADDING / 2)) + (CFG.TEXT_HEIGHT / 2)) - ((int) ((CFG.CIV_FLAG_HEIGHT * getImageScale()) / 2.0f)), (int) (CFG.CIV_FLAG_WIDTH * getImageScale()), (int) (CFG.CIV_FLAG_HEIGHT * getImageScale()));
            } else {
                ImageManager.getImage(Images.randomCivilizationFlag).draw(spriteBatch, i + this.offsetLeft, (((CFG.PADDING + i2) + (CFG.PADDING / 2)) + (CFG.TEXT_HEIGHT / 2)) - ((int) ((CFG.CIV_FLAG_HEIGHT * getImageScale()) / 2.0f)), (int) (CFG.CIV_FLAG_WIDTH * getImageScale()), (int) (CFG.CIV_FLAG_HEIGHT * getImageScale()));
            }
        } catch (IndexOutOfBoundsException unused) {
            ImageManager.getImage(Images.randomCivilizationFlag).draw(spriteBatch, i + this.offsetLeft, (((CFG.PADDING + i2) + (CFG.PADDING / 2)) + (CFG.TEXT_HEIGHT / 2)) - ((int) ((CFG.CIV_FLAG_HEIGHT * getImageScale()) / 2.0f)), (int) (CFG.CIV_FLAG_WIDTH * getImageScale()), (int) (CFG.CIV_FLAG_HEIGHT * getImageScale()));
        }
        ImageManager.getImage(Images.flag_rect).draw(spriteBatch, i + this.offsetLeft, (((i2 + CFG.PADDING) + (CFG.PADDING / 2)) + (CFG.TEXT_HEIGHT / 2)) - ((int) ((CFG.CIV_FLAG_HEIGHT * getImageScale()) / 2.0f)), (int) (CFG.CIV_FLAG_WIDTH * getImageScale()), (int) (CFG.CIV_FLAG_HEIGHT * getImageScale()));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return CFG.TEXT_HEIGHT + CFG.PADDING;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.offsetRight + this.offsetLeft + ((int) (CFG.CIV_FLAG_WIDTH * getImageScale()));
    }
}
