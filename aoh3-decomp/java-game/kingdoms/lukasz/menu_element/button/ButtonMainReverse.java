package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonMainReverse extends ButtonMain {
    public ButtonMainReverse(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
        super(str, i, i2, i3, i4, i5, z);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonMain
    public int getButtonBG() {
        return Images.buttonMenuH;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonMain
    public int getButtonBG_Active() {
        return Images.buttonMenu;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (z) {
            return Colors.BUTTON_TEXT;
        }
        if (getIsHovered()) {
            return Colors.BUTTON_TEXT_HOVERED;
        }
        return getClickable() ? Colors.BUTTON_TEXT_ACTIVE : Colors.BUTTON_TEXT_DISABLED;
    }
}
