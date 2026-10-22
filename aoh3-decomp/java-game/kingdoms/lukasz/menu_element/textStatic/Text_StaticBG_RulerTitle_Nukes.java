package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticBG_RulerTitle_Nukes extends Text_StaticBG_RulerTitle {
    public int lastValue;

    public Text_StaticBG_RulerTitle_Nukes(String str, int i, int i2, int i3, int i4) {
        super(str, i, i2, i3, i4);
        this.lastValue = -975124;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_RulerTitle, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        if (this.lastValue != Game.getCiv(Game.player.iCivID).getNukes()) {
            setText(Game.lang.get("AtomicBombs") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getNukes(), 1));
            this.lastValue = Game.getCiv(Game.player.iCivID).getNukes();
        }
        return super.getTextToDraw();
    }
}
