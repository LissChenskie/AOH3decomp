package aoc.kingdoms.lukasz.menu_element.button;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonGame_Style_NewArmy extends ButtonGame_Style {
    public boolean add;
    public int iArmyID;
    public int iUnitID;

    public ButtonGame_Style_NewArmy(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
        super(str, i3, i4, i5, i6, i7, i8, z2);
        this.iUnitID = i;
        this.iArmyID = i2;
        this.add = z;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Style, aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.add ? 1 : 0;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue1() {
        return this.iUnitID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue2() {
        return this.iArmyID;
    }
}
