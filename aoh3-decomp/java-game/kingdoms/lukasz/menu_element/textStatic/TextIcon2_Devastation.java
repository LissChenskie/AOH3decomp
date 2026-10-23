package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextIcon2_Devastation extends TextIcon2 {
    public int iProvinceID;
    public float lastValue;

    public TextIcon2_Devastation(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        super(str, i, i2, i3, i4, i5);
        this.lastValue = -997654.3f;
        this.iProvinceID = i6;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iProvinceID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        if (this.lastValue != Game.getProvince(this.iProvinceID).getDevastation()) {
            setText("" + CFG.getPrecision2(Game.getProvince(this.iProvinceID).getDevastation() * 100.0f, 10) + "%");
            this.lastValue = Game.getProvince(this.iProvinceID).getDevastation();
        }
        return super.getTextToDraw();
    }
}
