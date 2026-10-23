package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonWonder2 extends Button {
    public int iProvinceID;
    public int wonderID;

    public ButtonWonder2(int i, int i2, int i3, int i4) {
        this.wonderID = i3;
        this.iProvinceID = i4;
        init(null, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i, i2, getButtonWidth(), getButtonHeight(), true, true, false, false);
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.wonderFrame).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.wonderFrame).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = ButtonWonderProvince.getHoverWonder(this.iProvinceID, this.wonderID, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        WondersManager.wonderImages.get(WondersManager.wonders.get(this.wonderID).ImageID).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.wonderFrame).getWidth(), ImageManager.getImage(Images.wonderFrame).getHeight());
        ImageManager.getImage(Images.wonderFrame).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.setColor(Color.WHITE);
        if (Game.getProvince(this.iProvinceID).wonderConstruction != null) {
            float f = Game.getProvince(this.iProvinceID).wonderConstruction.daysLeft / Game.getProvince(this.iProvinceID).wonderConstruction.investTime;
            if (f < 0.0f) {
                f = 0.0f;
            }
            spriteBatch.setColor(new Color(ProvinceDraw.progressBarBG));
            ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getWidth() / 2)) + i, ((((getPosY() - CFG.PADDING) + getHeight()) - (ImageManager.getImage(Images.progressBarFrame).getHeight() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getHeight() / 2)) + i2);
            spriteBatch.setColor(new Color(ProvinceDraw.progressBar));
            ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getWidth() / 2)) + i, ((((getPosY() - CFG.PADDING) + getHeight()) - (ImageManager.getImage(Images.progressBarFrame).getHeight() / 2)) - (ImageManager.getImage(Images.progressBarFrameMask).getHeight() / 2)) + i2, (int) (ImageManager.getImage(Images.progressBarFrameMask).getWidth() * (1.0f - f)), ImageManager.getImage(Images.progressBarFrameMask).getHeight());
            spriteBatch.setColor(Color.WHITE);
            ImageManager.getImage(Images.progressBarFrame).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarFrame).getWidth() / 2)) + i, (((getPosY() - CFG.PADDING) + getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight()) + i2);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }
}
