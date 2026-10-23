package aoc.kingdoms.lukasz.menu_element;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Empty extends MenuElement {
    public Empty(int i, int i2, int i3, int i4) {
        this.typeOfElement = MenuElement_Type.TRANSPARENT_BACKGROUND;
        setPosX(i);
        setPosY(i2);
        setWidth(i3);
        setHeight(i4);
        setClickable(false);
        setVisible(true);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean playSFX_Hovered() {
        return false;
    }
}
