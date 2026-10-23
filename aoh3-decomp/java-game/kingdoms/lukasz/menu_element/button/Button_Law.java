package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.LawsManager;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_Law extends Button {
    public int imageID;

    public Button_Law(int i, int i2, int i3) {
        init("", CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i, i2, getButtonWidth(), getButtonHeight(), true, true, false, false);
        this.imageID = i3;
    }

    public static int getButtonHeight() {
        return LawsManager.lawsImages.get(0).getHeight();
    }

    public static int getButtonWidth() {
        return LawsManager.lawsImages.get(0).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        LawsManager.lawsImages.get(this.imageID).draw(spriteBatch, getPosX() + i, getPosY() + i2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }
}
