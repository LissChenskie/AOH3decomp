package aoc.kingdoms.lukasz.menusInGame.DrawOver;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGameDrawOver {
    public static boolean drawAllTheTime;
    public int fontID;
    public int iPosY;
    public int iTextHeight;
    public int iTextWidth;
    public String sText = Game.lang.get("Paused");

    public InGameDrawOver() {
        this.fontID = 0;
        this.fontID = CFG.FONT_REGULAR_SMALL;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sText);
        this.iTextWidth = (int) Renderer.glyphLayout.width;
        this.iTextHeight = (int) Renderer.glyphLayout.height;
        this.iPosY = ButtonFlag.getButtonHeight() + CFG.PADDING;
        drawAllTheTime = false;
    }

    public void draw(SpriteBatch spriteBatch, int i, int i2) {
        if (!Game.gameThread.play || drawAllTheTime) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
            Renderer.drawBoxCorner2(spriteBatch, (((CFG.GAME_WIDTH / 2) - (this.iTextWidth / 2)) - (CFG.PADDING * 7)) + i, (this.iPosY - (CFG.PADDING * 2)) + i2, this.iTextWidth + (CFG.PADDING * 14), this.iTextHeight + (CFG.PADDING * 4));
            spriteBatch.setColor(Color.WHITE);
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, ((CFG.GAME_WIDTH / 2) - (this.iTextWidth / 2)) + i, this.iPosY + CFG.PADDING + i2, Colors.COLOR_TOP_STATS3);
        }
    }
}
