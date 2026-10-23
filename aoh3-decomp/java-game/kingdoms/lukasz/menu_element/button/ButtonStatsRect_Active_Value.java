package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsRect_Active_Value extends ButtonStatsRect_Active {
    public int id;

    public ButtonStatsRect_Active_Value(String str, int i, int i2, int i3, int i4, int i5) {
        super(str, CFG.PADDING * 2, i, i2, i3, i4, CFG.FONT_REGULAR_SMALL);
        this.id = i5;
    }

    public ButtonStatsRect_Active_Value(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        super(str, i6, i, i2, i3, i4, CFG.FONT_REGULAR_SMALL);
        this.id = i5;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.id;
    }
}
