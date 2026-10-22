package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menus.MainMenu;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonGame2Sparks_Hovered extends ButtonGame2 {
    public ButtonGame2Sparks_Hovered(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
        super(str, i, i2, i3, i4, i5, z);
    }

    public ButtonGame2Sparks_Hovered(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
        super(str, i, i2, i3, i4, i5, z, i6);
    }

    public ButtonGame2Sparks_Hovered(String str, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        super(str, i, i2, i3, i4, i5, z, z2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame2, aoc.kingdoms.lukasz.menu_element.button.Button
    public void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        super.drawButtonBG(spriteBatch, i, i2, z);
        if (getIsHovered() || z) {
            spriteBatch.setColor(MainMenu.sparksColors);
            MenuManager.sparksAnimationHover.draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
            spriteBatch.setColor(Color.WHITE);
        }
    }
}
