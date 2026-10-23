package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_Desc extends Text_Static {
    public List<String> sLines = new ArrayList();
    public int iLineSize = 0;

    public Text_Desc(String str, int i, int i2, int i3) {
        init(str, i, i2, i3, CFG.FONT_REGULAR_SMALL);
    }

    public Text_Desc(String str, int i, int i2, int i3, int i4) {
        init(str, i, i2, i3, i4);
    }

    public static final float getBoxAlpha(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return 0.2f;
        }
        if (z3) {
            return 0.85f;
        }
        return z2 ? 0.7f : 0.5f;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 0.8f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.175f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.45f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        for (int i3 = 0; i3 < this.iLineSize; i3++) {
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sLines.get(i3), getPosX() + getPadding() + i, getPosY() + getPaddingY() + ((this.iTextHeight + (CFG.PADDING * 2)) * i3) + i2, getColor(z));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
    protected Color getColor(boolean z) {
        if (z) {
            return Colors.BUTTON_TEXT_ACTIVE;
        }
        if (getIsHovered()) {
            return Colors.BUTTON_TEXT_HOVERED;
        }
        return getClickable() ? Colors.BUTTON_TEXT : Colors.BUTTON_TEXT_DISABLED;
    }

    public final int getPadding() {
        return CFG.PADDING * 2;
    }

    public final int getPaddingY() {
        return CFG.PADDING * 3;
    }

    public void init(String str, int i, int i2, int i3, int i4) {
        this.typeOfElement = MenuElement_Type.TEXT;
        this.fontID = i4;
        this.iTextPositionX = 0;
        setPosX(i);
        setPosY(i2);
        setWidth(i3);
        updateTextPosition();
        String[] strArrSplit = str.split(" ");
        int padding = i3 - (getPadding() * 2);
        int length = strArrSplit.length;
        String str2 = "";
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
            glyphLayout_Game.setText(Renderer.fontMain.get(this.fontID), strArrSplit[i6] + " ");
            this.iTextWidth = (int) glyphLayout_Game.width;
            i5 += this.iTextWidth;
            if (i5 < padding) {
                str2 = str2 + strArrSplit[i6] + " ";
            } else {
                if (str2.length() > 0) {
                    this.sLines.add(str2);
                }
                str2 = strArrSplit[i6] + " ";
                i5 = this.iTextWidth;
            }
        }
        if (str2.length() > 0) {
            this.sLines.add(str2);
        }
        if (this.sLines.size() <= 0 || this.sLines.get(0).length() <= 0) {
            GlyphLayout_Game glyphLayout_Game2 = new GlyphLayout_Game();
            glyphLayout_Game2.setText(Renderer.fontMain.get(this.fontID), "ABC");
            this.iTextHeight = (int) glyphLayout_Game2.height;
        } else {
            GlyphLayout_Game glyphLayout_Game3 = new GlyphLayout_Game();
            glyphLayout_Game3.setText(Renderer.fontMain.get(this.fontID), this.sLines.get(0));
            this.iTextHeight = (int) glyphLayout_Game3.height;
        }
        this.iLineSize = this.sLines.size();
        for (int i7 = 0; i7 < this.iLineSize; i7++) {
            GlyphLayout_Game glyphLayout_Game4 = new GlyphLayout_Game();
            glyphLayout_Game4.setText(Renderer.fontMain.get(this.fontID), this.sLines.get(i7));
            if (glyphLayout_Game4.width > getWidth()) {
                setWidth((int) glyphLayout_Game4.width);
            }
        }
        setHeight((this.iTextHeight * this.sLines.size()) + ((this.sLines.size() - 1) * CFG.PADDING * 2) + (getPaddingY() * 2));
    }
}
