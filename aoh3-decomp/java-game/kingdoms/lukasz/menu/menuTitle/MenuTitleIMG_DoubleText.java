package aoc.kingdoms.lukasz.menu.menuTitle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu_element.Status;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuTitleIMG_DoubleText extends MenuTitleIMG {
    public int iText2Width;
    public String sText2;

    public MenuTitleIMG_DoubleText(String str, String str2, boolean z, boolean z2, int i) {
        super(str, z, z2, i);
        this.iText2Width = 0;
        this.fontID = CFG.FONT_BOLD;
        this.sText2 = str2;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str2);
        this.iText2Width = (int) glyphLayout_Game.width;
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void drawText(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        int i4 = i + (i3 / 2);
        int i5 = i2 + 1;
        Renderer.drawText(spriteBatch, this.fontID, getText(), i4 - (getTextWidth() / 2), ((getHeight() / 2) - getTextHeight()) + (i5 - getHeight()), getColorText(status));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sText2, i4 - (this.iText2Width / 2), (i5 - getHeight()) + (getHeight() / 2) + CFG.PADDING, MenuTitle.colorHovered);
    }
}
