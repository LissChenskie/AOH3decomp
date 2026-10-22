package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextBGBot extends Button {
    public TextBGBot(String str, int i, int i2, int i3, int i4) {
        init(str, CFG.FONT_REGULAR_SMALL, i, i2, i3, 20, i4, true, true, false, false);
        setWidth(getTextWidth() + (CFG.PADDING * 4));
    }

    public TextBGBot(String str, int i, int i2, int i3, int i4, int i5) {
        init(str, CFG.FONT_REGULAR_SMALL, i, i2, i3, i4, i5, true, true, false, false);
        int i6 = 0;
        while (this.iTextWidth > i4 - (CFG.PADDING * 2) && getText().length() > 5 && (i6 = i6 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBoxBOT(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + this.textPosition.getTextPosition() + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }
}
