package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonMainDescripted extends ButtonMain {
    private String sDesc;

    public ButtonMainDescripted(String str, String str2, int i, int i2, int i3, int i4, int i5, boolean z) {
        super(str, i, i2, i3, i4, i5, z);
        this.sDesc = str2;
    }

    public ButtonMainDescripted(String str, String str2, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        super(str, i, i2, i3, i4, i5, z, z2);
        this.sDesc = str2;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR, getText(), getPosX() + getTextPos() + i, ((getPosY() + (getHeight() / 2)) - CFG.TEXT_HEIGHT) + i2, getColor(z));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sDesc, getPosX() + getTextPos() + i, getPosY() + (getHeight() / 2) + CFG.PADDING + i2, Colors.HOVER_RIGHT);
    }
}
