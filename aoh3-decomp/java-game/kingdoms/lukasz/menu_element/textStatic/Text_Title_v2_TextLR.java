package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_Title_v2_TextLR extends Text_Title_v2 {
    public int iTextRightWidth;
    public String sTextRight;

    public Text_Title_v2_TextLR(String str, int i, int i2, int i3, int i4, int i5, int i6, String str2) {
        super(str, i2, i3, i4, i5, i6);
        this.fontID = i;
        this.sTextRight = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str2);
        this.iTextRightWidth = (int) Renderer.glyphLayout.width;
    }

    public Text_Title_v2_TextLR(String str, int i, int i2, int i3, int i4, int i5, String str2) {
        super(str, i, i2, i3, i4, i5);
        this.sTextRight = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str2);
        this.iTextRightWidth = (int) Renderer.glyphLayout.width;
    }

    public Text_Title_v2_TextLR(String str, String str2, int i, int i2, int i3, int i4, int i5) {
        super(str, i, i2, i3, i4, i5);
        this.sTextRight = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str2);
        this.iTextRightWidth = (int) Renderer.glyphLayout.width;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2
    public void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sTextRight, (((getPosX() + getWidth()) - this.textPosition.getTextPosition()) - this.iTextRightWidth) + i, getPosY() + ((getHeight() - getTextHeight()) / 2) + i2, getColor2(z));
        super.drawText(spriteBatch, i, i2, z, z2);
    }

    protected Color getColor2(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }
}
