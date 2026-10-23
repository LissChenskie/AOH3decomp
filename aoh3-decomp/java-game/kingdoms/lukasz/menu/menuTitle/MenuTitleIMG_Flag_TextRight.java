package aoc.kingdoms.lukasz.menu.menuTitle;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuTitleIMG_Flag_TextRight extends MenuTitleIMG_Flag {
    public int iTextRightWidth;
    public String sRight;

    public MenuTitleIMG_Flag_TextRight(String str, String str2, boolean z, boolean z2, int i, String str3) {
        super(str, str2, z, z2, i);
        this.sRight = str3;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str3);
        this.iTextRightWidth = (int) glyphLayout_Game.width;
    }

    @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_Flag, aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
    public void drawText(SpriteBatch spriteBatch, int i, int i2, int i3, Status status) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        int i4 = i + i3;
        int i5 = i2 + 1;
        Renderer.drawBox(spriteBatch, Images.statsRectBG, ((i4 - (CFG.PADDING * 3)) - Images.boxTitleBORDERWIDTH) - this.iTextRightWidth, ((i5 - getHeight()) + ((getHeight() / 2) + CFG.PADDING)) - CFG.PADDING, this.iTextRightWidth + (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 2), 1.0f);
        super.drawText(spriteBatch, i, i2, i3, status);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sRight, ((i4 - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH) - this.iTextRightWidth, (i5 - getHeight()) + (getHeight() / 2) + CFG.PADDING, MenuTitle.colorHovered);
    }
}
