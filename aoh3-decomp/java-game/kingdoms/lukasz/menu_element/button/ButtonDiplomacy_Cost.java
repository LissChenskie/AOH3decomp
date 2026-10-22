package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonDiplomacy_Cost extends ButtonDiplomacy {
    public int iTextBonusH;
    public int iTextBonusW;
    public String sValue;

    public ButtonDiplomacy_Cost(String str, int i, int i2, int i3, int i4, int i5, String str2) {
        super(str, i, i2, i3, i4, i5);
        this.sValue = str2;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str2);
        this.iTextBonusW = (int) glyphLayout_Game.width;
        this.iTextBonusH = (int) glyphLayout_Game.height;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getClickable()) {
            ImageManager.getImage(this.imageID).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(this.imageID).getWidth() / 2)) + i, getPosY() + this.iconY + i2);
        } else {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.33f));
            ImageManager.getImage(this.imageID).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(this.imageID).getWidth() / 2)) + i, getPosY() + this.iconY + i2);
            spriteBatch.setColor(Color.WHITE);
        }
        Renderer.drawTextWithShadowRotated(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sValue, (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - this.iTextBonusH) + i, ((getPosY() + this.iconH) - CFG.PADDING) + i2, Colors.HOVER_RIGHT3, 90.0f);
        for (int i3 = 0; i3 < this.iLineSize; i3++) {
            Renderer.drawText(spriteBatch, this.fontID, this.sLines.get(i3), ((getPosX() + (getWidth() / 2)) - (this.iLinesWidth.get(i3).intValue() / 2)) + i, getPosY() + this.iY_Text + ((this.iTextHeight + (CFG.PADDING * 2)) * i3) + i2, getColor(z));
        }
    }

    public final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }
}
