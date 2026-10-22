package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menusInGame.InGame_Generals;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_MilitaryAcademyForGenerals extends Button {
    public Button_MilitaryAcademyForGenerals(int i, int i2) {
        init("", CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i, i2, ImageManager.getImage(Images.armyGeneralAcademy).getWidth(), getButtonHeight(), true, true, false, false);
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.armyGeneralAcademy).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        this.menuElementHover = InGame_Generals.getHoverMilitaryAcademyForGenerals();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.armyGeneralAcademy).getWidth(), ImageManager.getImage(Images.armyGeneralAcademy).getHeight());
        }
        ImageManager.getImage(Images.armyGeneralAcademy).draw(spriteBatch, getPosX() + i, getPosY() + i2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }
}
