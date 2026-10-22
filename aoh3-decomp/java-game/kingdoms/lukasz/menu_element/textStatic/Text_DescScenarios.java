package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_DescScenarios extends Text_Desc {
    public Text_DescScenarios(String str, int i, int i2, int i3) {
        super(str, i, i2, i3);
        this.typeOfElement = MenuElement_Type.TRANSPARENT_BACKGROUND;
    }

    public Text_DescScenarios(String str, int i, int i2, int i3, int i4) {
        super(str, i, i2, i3, i4);
        this.typeOfElement = MenuElement_Type.TRANSPARENT_BACKGROUND;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        for (int i3 = 0; i3 < this.iLineSize; i3++) {
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sLines.get(i3), getPosX() + getPadding() + i, getPosY() + getPaddingY() + ((this.iTextHeight + (CFG.PADDING * 2)) * i3) + i2, getColor(z));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText(String str) {
        updateTextPosition();
        this.sLines.clear();
        this.iLineSize = 0;
        this.iTextWidth = 0;
        String[] strArrSplit = str.split(" ");
        int width = getWidth() - (getPadding() * 2);
        int length = strArrSplit.length;
        String str2 = "";
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), strArrSplit[i2] + " ");
            this.iTextWidth = (int) Renderer.glyphLayout.width;
            i += this.iTextWidth;
            if (i < width) {
                str2 = str2 + strArrSplit[i2] + " ";
            } else {
                this.sLines.add(str2);
                str2 = strArrSplit[i2] + " ";
                i = this.iTextWidth;
            }
        }
        if (str2.length() > 0) {
            this.sLines.add(str2);
        }
        if (this.sLines.size() > 0 && this.sLines.get(0).length() > 0) {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sLines.get(0));
            this.iTextHeight = (int) Renderer.glyphLayout.height;
        }
        this.iLineSize = this.sLines.size();
        setHeight((this.iTextHeight * this.sLines.size()) + ((this.sLines.size() - 1) * CFG.PADDING * 2) + (getPaddingY() * 2));
    }
}
