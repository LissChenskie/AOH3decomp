package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextTop_Nukes extends TextTop {
    public int lastValuePerMonth;

    public TextTop_Nukes(int i, String str, String str2, int i2, int i3) {
        super(i, str, str2, i2, i3);
        this.lastValuePerMonth = -997654;
        setText2("---");
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop
    public boolean getIsActiveButton() {
        return Game.menuManager.getVisibleInGame_Nukes();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        if (this.lastValuePerMonth != Game.getCiv(Game.player.iCivID).getNukes()) {
            setText(CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getNukes(), 1));
            this.lastValuePerMonth = Game.getCiv(Game.player.iCivID).getNukes();
        }
        if (Game.getCiv(Game.player.iCivID).iNukesSize > 0) {
            try {
                if (this.lastValue != Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(0).daysLeft / Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(0).investTime) {
                    setText2(CFG.getPrecision2((1.0f - (Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(0).daysLeft / Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(0).investTime)) * 100.0f, 1) + "%");
                    this.lastValue = Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(0).daysLeft / Game.getCiv(Game.player.iCivID).nukesDaysLeft.get(0).investTime;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        } else if (this.lastValue != 97948.25f) {
            setText2("---");
            this.lastValue = 97948.25f;
        }
        return super.getTextToDraw();
    }
}
