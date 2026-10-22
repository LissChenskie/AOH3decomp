package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_Desc_SimpleNewGame extends Text_Desc {
    public Text_Desc_SimpleNewGame(String str, int i, int i2, int i3) {
        super(str, i, i2, i3);
        if (NewGameCiv.expandCivDesc) {
            return;
        }
        if (this.iLineSize > 3) {
            this.iLineSize = Math.min(this.iLineSize, 3);
            this.sLines.set(this.iLineSize - 1, this.sLines.get(this.iLineSize - 1) + "..");
        }
        setHeight((this.iTextHeight * this.iLineSize) + ((this.iLineSize - 1) * CFG.PADDING * 2) + (getPaddingY() * 2));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 0.8f);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.75f));
        ImageManager.getImage(Images.activeSort).draw(spriteBatch, (((getPosX() + getWidth()) - ImageManager.getImage(Images.activeSort).getWidth()) - (ImageManager.getImage(Images.activeSort).getWidth() / 2)) + i, ((getPosY() + getHeight()) - (ImageManager.getImage(Images.activeSort).getHeight() / 2)) + i2, false, NewGameCiv.expandCivDesc);
        spriteBatch.setColor(Color.WHITE);
        for (int i3 = 0; i3 < this.iLineSize; i3++) {
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sLines.get(i3), getPosX() + getPadding() + i, getPosY() + getPaddingY() + ((this.iTextHeight + (CFG.PADDING * 2)) * i3) + i2, getColor(z));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
    protected Color getColor(boolean z) {
        if (z) {
            return Colors.BUTTON_TEXT_ACTIVE;
        }
        if (getIsHovered()) {
            return Colors.BUTTON_TEXT_HOVERED;
        }
        return getClickable() ? Colors.BUTTON_TEXT_DESC_SIMPLE : Colors.BUTTON_TEXT_DISABLED;
    }
}
