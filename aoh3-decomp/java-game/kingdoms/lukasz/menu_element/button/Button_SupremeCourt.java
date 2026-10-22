package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_SupremeCourt extends Button {
    public Button_SupremeCourt(int i, int i2) {
        init("", CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i, i2, ImageManager.getImage(Images.supremeCourt).getWidth(), getButtonHeight(), true, true, false, false);
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.supremeCourt).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = InGame_Court_IncreaseTaxEfficiency.getHoverSupremeCourt();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.supremeCourt).getWidth(), ImageManager.getImage(Images.supremeCourt).getHeight());
        }
        ImageManager.getImage(Images.supremeCourt).draw(spriteBatch, getPosX() + i, getPosY() + i2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }
}
