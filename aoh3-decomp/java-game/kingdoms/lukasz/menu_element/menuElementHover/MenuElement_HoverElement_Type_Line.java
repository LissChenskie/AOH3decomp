package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Line implements MenuElement_HoverElement_Type {
    private int iWidth = CFG.PADDING * 3;
    private int iHeight = CFG.PADDING * 2;

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(Colors.HOVER_LINE1.r, Colors.HOVER_LINE1.g, Colors.HOVER_LINE1.b, Colors.HOVER_LINE1.a * f));
        Images.pix.draw(spriteBatch, i + (CFG.PADDING * 2), CFG.PADDING + i2 + (CFG.PADDING / 2) + 1, i3 - (CFG.PADDING * 4), 1);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, CFG.PADDING + i2 + (CFG.PADDING / 2) + 1, CFG.PADDING * 2, 1, true, false);
        int i4 = i + i3;
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i4 - (CFG.PADDING * 2), CFG.PADDING + i2 + (CFG.PADDING / 2) + 1, CFG.PADDING * 2, 1);
        spriteBatch.setColor(new Color(Colors.HOVER_LINE2.r, Colors.HOVER_LINE2.g, Colors.HOVER_LINE2.b, Colors.HOVER_LINE2.a * f));
        Images.pix.draw(spriteBatch, i + (CFG.PADDING * 2), CFG.PADDING + i2 + (CFG.PADDING / 2) + 2, i3 - (CFG.PADDING * 4), 1);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i, CFG.PADDING + i2 + (CFG.PADDING / 2) + 2, CFG.PADDING * 2, 1, true, false);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, i4 - (CFG.PADDING * 2), CFG.PADDING + i2 + (CFG.PADDING / 2) + 2, CFG.PADDING * 2, 1);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return this.iHeight;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.iWidth;
    }
}
