package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticBG_ID_SpecialColor extends Text_StaticBG_ID_Special {
    public int iTextWidth2;
    public String sText2;
    public Color textColor;

    public Text_StaticBG_ID_SpecialColor(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, Color color) {
        super(str, i, i2, i3, i4, i5, i6, i7);
        this.textColor = color;
        this.id = i7;
        this.sText2 = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(i), str2);
        this.iTextWidth2 = (int) Renderer.glyphLayout.width;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Special
    public void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, getPosX() + this.textPosition.getTextPosition() + i, getPosY() + ((getHeight() - CFG.TEXT_HEIGHT) / 2) + i2, getColor(z));
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText2, (((getPosX() + getWidth()) - this.iTextWidth2) - this.textPosition.getTextPosition()) + i, getPosY() + ((getHeight() - CFG.TEXT_HEIGHT) / 2) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
    protected Color getColor(boolean z) {
        return this.textColor;
    }
}
