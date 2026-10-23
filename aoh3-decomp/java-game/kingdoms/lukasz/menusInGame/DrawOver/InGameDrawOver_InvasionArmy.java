package aoc.kingdoms.lukasz.menusInGame.DrawOver;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGameDrawOver_InvasionArmy extends InGameDrawOver {
    public InGameDrawOver_InvasionArmy() {
        this.fontID = CFG.FONT_BOLD_SMALL;
        this.sText = Game.lang.get("SelectProvincesToConquer");
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sText);
        this.iTextWidth = (int) Renderer.glyphLayout.width;
        this.iTextHeight = (int) Renderer.glyphLayout.height;
        this.iPosY = ButtonFlag.getButtonHeight() + CFG.PADDING;
        drawAllTheTime = true;
    }

    @Override // aoc.kingdoms.lukasz.menusInGame.DrawOver.InGameDrawOver
    public void draw(SpriteBatch spriteBatch, int i, int i2) {
        if (drawAllTheTime) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
            Renderer.drawBoxCorner2(spriteBatch, (((CFG.GAME_WIDTH / 2) - (this.iTextWidth / 2)) - (CFG.PADDING * 7)) + i, (this.iPosY - (CFG.PADDING * 2)) + i2, this.iTextWidth + (CFG.PADDING * 14), this.iTextHeight + (CFG.PADDING * 4));
            spriteBatch.setColor(Color.WHITE);
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, ((CFG.GAME_WIDTH / 2) - (this.iTextWidth / 2)) + i, this.iPosY + CFG.PADDING + i2, Colors.COLOR_TOP_STATS3);
        }
    }
}
