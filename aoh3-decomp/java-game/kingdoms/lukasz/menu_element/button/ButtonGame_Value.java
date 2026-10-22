package aoc.kingdoms.lukasz.menu_element.button;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonGame_Value extends ButtonGame {
    public int id;

    public ButtonGame_Value(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
        super(str, i, i2, i3, i4, i5, z);
        this.id = i6;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame, aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.id;
    }
}
