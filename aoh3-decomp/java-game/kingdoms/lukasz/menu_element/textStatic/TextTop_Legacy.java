package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextTop_Legacy extends TextTop {
    public float lastValuePerMonth;

    public TextTop_Legacy(int i, String str, String str2, int i2, int i3) {
        super(i, str, str2, i2, i3);
        this.lastValuePerMonth = -997654.3f;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        int i;
        int i2 = 1;
        if (this.lastValue != Game.getCiv(Game.player.iCivID).fLegacy) {
            if (Game.getCiv(Game.player.iCivID).fLegacy >= 10000.0f) {
                setText("" + CFG.getShortNumber((int) Math.floor(Game.getCiv(Game.player.iCivID).fLegacy)));
            } else {
                float f = Game.getCiv(Game.player.iCivID).fLegacy;
                if (Game.getCiv(Game.player.iCivID).fLegacy < 100.0f) {
                    float f2 = Game.getCiv(Game.player.iCivID).fLegacy;
                    i = 10;
                } else {
                    i = 1;
                }
                setText(CFG.getPrecision2(f, i));
            }
            this.lastValue = Game.getCiv(Game.player.iCivID).fLegacy;
        }
        if (this.lastValuePerMonth != Game.getCiv(Game.player.iCivID).getLegacyPerMonth()) {
            this.lastValuePerMonth = Game.getCiv(Game.player.iCivID).getLegacyPerMonth();
            StringBuilder sbAppend = new StringBuilder().append(this.lastValuePerMonth > 0.0f ? "+" : "");
            float f3 = this.lastValuePerMonth;
            if (f3 < 100.0f) {
                i2 = f3 < 10.0f ? 100 : 10;
            }
            setText2(sbAppend.append(CFG.getPrecision2(f3, i2)).toString());
        }
        return super.getTextToDraw();
    }
}
