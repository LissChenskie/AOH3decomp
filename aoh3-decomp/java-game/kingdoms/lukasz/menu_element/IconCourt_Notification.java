package aoc.kingdoms.lukasz.menu_element;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class IconCourt_Notification extends IconCourt {
    public int boxH;
    public int boxW;
    public int numH;
    public int numW;
    public String number;
    public int value;

    public IconCourt_Notification(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        super(str, i, i2, i3, i4, i5, i6, i7);
        this.number = "";
        this.boxW = 0;
        this.boxH = 0;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.IconCourt, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        super.drawButtonBG(spriteBatch, i, i2, z);
        updateValue();
        if (this.value > 0) {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, (getIsHovered() || z) ? 0.6f : 0.5f));
            Image image = Images.statsRectBG;
            int posX = getPosX() + CFG.PADDING + i;
            int posY = (getPosY() + getHeight()) - CFG.PADDING;
            int i3 = this.boxH;
            Renderer.drawBox(spriteBatch, image, posX, (posY - i3) + i2, this.boxW, i3, 1.0f);
            spriteBatch.setColor(Color.WHITE);
            Renderer.drawText(spriteBatch, this.fontID, this.number, (((getPosX() + CFG.PADDING) + (this.boxW / 2)) - (this.numW / 2)) + i, ((((getPosY() + getHeight()) - CFG.PADDING) - (this.boxH / 2)) - (this.numH / 2)) + i2, getColor(z));
        }
    }

    public void setNumber(int i) {
        this.value = i;
        if (i <= 0) {
            this.boxH = 0;
            this.boxW = 0;
            return;
        }
        String str = ALZmnpZHj.reuYdg + Math.min(GameValues.court.SIDEBAR_MAX_NUMBER, this.value);
        this.number = str;
        try {
            if (str != null) {
                GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
                glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.number);
                this.numW = (int) glyphLayout_Game.width;
                this.numH = (int) glyphLayout_Game.height;
            } else {
                this.numH = 0;
                this.numW = 0;
            }
        } catch (Exception unused) {
        }
        this.boxW = this.numW + (CFG.PADDING * 2);
        this.boxH = this.numH + (CFG.PADDING * 2);
    }

    public void updateValue() {
    }
}
