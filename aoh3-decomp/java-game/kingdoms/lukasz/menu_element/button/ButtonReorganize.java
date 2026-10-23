package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonReorganize extends Button {
    public int iNumOfUnitsWidth;
    public int iconHeight;
    public int iconWidth;
    public String sNumOfUnits;

    public ButtonReorganize(String str, String str2, int i, int i2, int i3) {
        this.iNumOfUnitsWidth = 0;
        init(str, this.fontID, -1, i, i2, i3, 1, true, true, false, false);
        this.sNumOfUnits = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), str2);
        this.iNumOfUnitsWidth = (int) Renderer.glyphLayout.width;
        float imageScale = getImageScale(Game_Calendar.IMG_MANPOWER);
        this.iconWidth = (int) (ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getHeight() * imageScale);
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT_SMALL / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), false, true);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), getPosX() + this.textPosition.getTextPosition() + i, getPosY() + (CFG.PADDING * 2) + i2, getColor(z));
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sNumOfUnits, ((getPosX() + (getWidth() / 2)) - (((this.iNumOfUnitsWidth + CFG.PADDING) + this.iconWidth) / 2)) + CFG.PADDING + this.iconWidth + i, (((getPosY() + CFG.TEXT_HEIGHT) + (CFG.TEXT_HEIGHT / 2)) - (CFG.TEXT_HEIGHT_SMALL / 2)) + (CFG.PADDING * 4) + i2, Colors.HOVER_RIGHT);
        ImageManager.getImage(Game_Calendar.IMG_MANPOWER).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (((this.iNumOfUnitsWidth + CFG.PADDING) + this.iconWidth) / 2)) + i, (((getPosY() + CFG.TEXT_HEIGHT) + (CFG.TEXT_HEIGHT / 2)) - (this.iconHeight / 2)) + (CFG.PADDING * 4) + i2, this.iconWidth, this.iconHeight);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorTopStats(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getHeight() {
        return (CFG.TEXT_HEIGHT * 2) + (CFG.PADDING * 6);
    }
}
