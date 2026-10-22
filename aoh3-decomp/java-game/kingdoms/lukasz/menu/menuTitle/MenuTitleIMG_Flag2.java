package aoc.kingdoms.lukasz.menu.menuTitle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu_element.Status;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuTitleIMG_Flag2 extends MenuTitleIMG_Flag {
    public int iTextWidth3;
    public String sText3;

    public MenuTitleIMG_Flag2(String str, String str2, String str3, boolean z, boolean z2, int i) {
        super(str, str2, z, z2, i);
        this.sText3 = str3;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str3);
        this.iTextWidth3 = (int) glyphLayout_Game.width;
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_Flag, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void drawText(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        int i4 = i2 + 1;
        Renderer.drawText(spriteBatch, this.fontID, getText(), CFG.PADDING + i + this.flagWidth, ((getHeight() / 2) - getTextHeight()) + (i4 - getHeight()), getColorText(status));
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sText2, i + this.flagWidth + CFG.PADDING, (i4 - getHeight()) + (getHeight() / 2) + CFG.PADDING, MenuTitle.colorHovered);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sText3, ((i + i3) - this.iTextWidth3) - CFG.PADDING, (i4 - getHeight()) + (getHeight() / 2) + CFG.PADDING, MenuTitle.colorHovered);
    }
}
