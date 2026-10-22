package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceSiege;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonSiegeTime extends Button {
    public int iTextWidth2;
    public int lastValue = -89594215;
    public String sText2;

    public ButtonSiegeTime(String str, int i, int i2, int i3, int i4) {
        init(str, CFG.FONT_REGULAR_SMALL, 0, i, i2, i3, i4, true, true, false, false);
        this.sText2 = Game.lang.get("MaximumSiegeTime") + ": ";
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sText2);
        this.iTextWidth2 = (int) Renderer.glyphLayout.width;
        getTextToDraw();
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

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight() * 2, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText2, ((getPosX() + (getWidth() / 2)) - ((getTextWidth() + this.iTextWidth2) / 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
        int i3 = this.fontID;
        String textToDraw = getTextToDraw();
        int posX = getPosX() + (getWidth() / 2);
        int textWidth = getTextWidth();
        int i4 = this.iTextWidth2;
        Renderer.drawTextWithShadow(spriteBatch, i3, textToDraw, (posX - ((textWidth + i4) / 2)) + i4 + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, Colors.getColorTopStats3(z, getIsHovered()));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        if (Game.battleManager.isBattleInProvince(InGame_ProvinceSiege.iProvinceID)) {
            if (this.lastValue != -999888) {
                setText(Game.lang.get("ArmyIsFightingInABattle"));
                this.lastValue = -999888;
            }
        } else if (SiegeManager.getSiegeDaysLeft(InGame_ProvinceSiege.iProvinceID) != this.lastValue) {
            this.lastValue = SiegeManager.getSiegeDaysLeft(InGame_ProvinceSiege.iProvinceID);
            setText("" + Game.lang.get("DaysX", Math.min(99999, this.lastValue)));
        }
        return super.getTextToDraw();
    }
}
