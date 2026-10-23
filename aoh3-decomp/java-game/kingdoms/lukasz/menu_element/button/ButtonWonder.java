package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.menusInGame.InGame_Wonder;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonWonder extends Button {
    public ButtonWonder(int i, int i2) {
        init("", CFG.FONT_REGULAR, 0, i, i2, InGame_Wonder.wonderIMG.getWidth(), InGame_Wonder.wonderIMG.getHeight(), true, true, false, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        try {
            InGame_Wonder.wonderIMG.draw(spriteBatch, getPosX() + i, getPosY() + i2);
        } catch (Exception unused) {
        }
    }
}
