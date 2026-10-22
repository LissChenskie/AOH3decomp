package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_BattleRegimentEmpty implements MenuElement_HoverElement_Type {
    public int iCivID;
    public int iImageID;
    public int offsetLeft;
    public int offsetRight;

    public MenuElement_HoverElement_Type_BattleRegimentEmpty(int i, int i2) {
        init(i, i2, 0, CFG.PADDING / 2);
    }

    public MenuElement_HoverElement_Type_BattleRegimentEmpty(int i, int i2, int i3) {
        init(i, i2, i3, CFG.PADDING / 2);
    }

    public MenuElement_HoverElement_Type_BattleRegimentEmpty(int i, int i2, int i3, int i4) {
        init(i, i2, i3, i4);
    }

    private final void init(int i, int i2, int i3, int i4) {
        this.iCivID = i;
        this.iImageID = i2;
        this.offsetLeft = i3;
        this.offsetRight = i4;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(Game.getCiv(this.iCivID).getR(), Game.getCiv(this.iCivID).getG(), Game.getCiv(this.iCivID).getB(), 0.225f * f));
        Images.pix.draw(spriteBatch, i + this.offsetLeft, i2 + (CFG.PADDING / 2), ImageManager.getImage(this.iImageID).getWidth(), ImageManager.getImage(this.iImageID).getHeight());
        float f2 = f * 0.4f;
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f2));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i + this.offsetLeft, i2 + (CFG.PADDING / 2), ImageManager.getImage(this.iImageID).getWidth(), ImageManager.getImage(this.iImageID).getHeight());
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f2));
        ImageManager.getImage(this.iImageID).draw(spriteBatch, i + this.offsetLeft, i2 + (CFG.PADDING / 2));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return ImageManager.getImage(this.iImageID).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.offsetLeft + this.offsetRight + ImageManager.getImage(this.iImageID).getWidth();
    }
}
