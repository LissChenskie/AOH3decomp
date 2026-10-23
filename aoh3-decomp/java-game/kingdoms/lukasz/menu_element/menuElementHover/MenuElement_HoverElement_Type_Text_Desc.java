package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Text_Desc implements MenuElement_HoverElement_Type {
    private Color oColor;
    public List<String> sLines = new ArrayList();
    public int iLineSize = 0;
    public int iTextWidth = 0;
    public int iTextHeight = 0;
    private int fontID = 0;

    public MenuElement_HoverElement_Type_Text_Desc(String str) {
        init(str, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT);
    }

    public MenuElement_HoverElement_Type_Text_Desc(String str, int i) {
        init(str, i, Colors.HOVER_LEFT);
    }

    public MenuElement_HoverElement_Type_Text_Desc(String str, int i, Color color) {
        init(str, i, color);
    }

    public MenuElement_HoverElement_Type_Text_Desc(String str, Color color) {
        init(str, CFG.FONT_BOLD_SMALL, color);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        for (int i4 = 0; i4 < this.iLineSize; i4++) {
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sLines.get(i4), i, CFG.PADDING + i2 + (CFG.PADDING / 2) + ((int) ((CFG.TEXT_HEIGHT - (CFG.TEXT_HEIGHT * 0.9f)) / 2.0f)) + ((this.iTextHeight + (CFG.PADDING * 2)) * i4), new Color(this.oColor.r, this.oColor.g, this.oColor.b, f));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return CFG.PADDING + (CFG.TEXT_HEIGHT_SMALL * this.iLineSize) + (CFG.PADDING * 2 * (this.iLineSize - 1));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.iTextWidth;
    }

    public final void init(String str, int i, Color color) {
        this.oColor = color;
        this.fontID = i;
        String[] strArrSplit = str.split(" ");
        int width = (int) (ImageManager.getImage(Images.title1Red).getWidth() * 0.85f);
        int length = strArrSplit.length;
        String str2 = "";
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), strArrSplit[i3] + " ");
            int i4 = (int) Renderer.glyphLayout.width;
            i2 += i4;
            if (i2 < width) {
                str2 = str2 + strArrSplit[i3] + " ";
                this.iTextWidth = Math.max(this.iTextWidth, Math.min(i2, width));
            } else {
                this.sLines.add(str2);
                str2 = strArrSplit[i3] + " ";
                i2 = i4;
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
        for (int i5 = 0; i5 < this.iLineSize; i5++) {
            GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
            glyphLayout_Game.setText(Renderer.fontMain.get(this.fontID), this.sLines.get(i5));
            if (glyphLayout_Game.width > this.iTextWidth) {
                this.iTextWidth = (int) glyphLayout_Game.width;
            }
        }
    }
}
