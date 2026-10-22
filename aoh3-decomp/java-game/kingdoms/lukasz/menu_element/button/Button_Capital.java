package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_Capital extends Button {
    public Button_Capital(int i, int i2) {
        init("", CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i, i2, ImageManager.getImage(Images.buildingCapital.get(Math.min(Game.getCiv(Game.player.iCivID).getCapitalLevel(), GameValues.capital.CAPITAL_IMAGES - 1)).intValue()).getWidth(), getButtonHeight(), true, true, false, false);
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.buildingCapital.get(Math.min(Game.getCiv(Game.player.iCivID).getCapitalLevel(), GameValues.capital.CAPITAL_IMAGES - 1)).intValue()).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = InGame_Court_Government.getHoverCapitalCity();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.buildingCapital.get(Math.min(Game.getCiv(Game.player.iCivID).getCapitalLevel(), GameValues.capital.CAPITAL_IMAGES - 1)).intValue()).getWidth(), ImageManager.getImage(Images.buildingCapital.get(Math.min(Game.getCiv(Game.player.iCivID).getCapitalLevel(), GameValues.capital.CAPITAL_IMAGES - 1)).intValue()).getHeight());
        }
        ImageManager.getImage(Images.buildingCapital.get(Math.min(Game.getCiv(Game.player.iCivID).getCapitalLevel(), GameValues.capital.CAPITAL_IMAGES - 1)).intValue()).draw(spriteBatch, getPosX() + i, getPosY() + i2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }
}
