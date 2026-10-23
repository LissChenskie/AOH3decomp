package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsRect_ArmyPlayer extends Button {
    public int id;
    public int imgID;

    public ButtonStatsRect_ArmyPlayer(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        init(str, CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i3, i4, i5, i6, true, true, false, false);
        this.id = i;
        this.imgID = i2;
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

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        Game.player.playerData.armyImgID = this.id;
        Game.getCiv(Game.player.iCivID).updateArmyImgID_Player();
        Game.menuManager.addToastGold(Game.lang.get("Done"), Images.v);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        int iMin = Math.min(ImageManager.getImage(this.imgID).getWidth() / 2, getWidth() / 4);
        ImageManager.getImage(this.imgID).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (iMin / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(this.imgID).getHeight() / 2)) + i2, iMin, ImageManager.getImage(this.imgID).getHeight(), true, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + this.textPosition.getTextPosition() + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (z) {
            return Colors.BUTTON_TEXT_ACTIVE;
        }
        return getIsHovered() ? Colors.BUTTON_TEXT_HOVERED : Colors.HOVER_RIGHT2;
    }
}
