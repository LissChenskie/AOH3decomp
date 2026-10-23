package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextTop_Manpower extends TextTop {
    public double lastValueDouble;
    public double lastValuePerMonth;

    public TextTop_Manpower(int i, String str, String str2, int i2, int i3) {
        super(i, str, str2, i2, i3);
        this.lastValuePerMonth = -997654.3125d;
        this.lastValueDouble = -997654.3125d;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop
    public boolean getIsActiveButton() {
        return Game.menuManager.getVisibleInGame_RecruitArmy();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        if (this.lastValuePerMonth != Game.getCiv(Game.player.iCivID).fManpowerPerMonth) {
            if (Game.getCiv(Game.player.iCivID).fManpowerPerMonth < 10.0d) {
                setText2("+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fManpowerPerMonth, 100));
            } else if (Game.getCiv(Game.player.iCivID).fManpowerPerMonth < 100.0d) {
                setText2("+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fManpowerPerMonth, 10));
            } else if (Game.getCiv(Game.player.iCivID).fManpowerPerMonth > 10000.0d) {
                setText2("+" + CFG.getShortNumber((int) Game.getCiv(Game.player.iCivID).fManpowerPerMonth));
            } else {
                setText2("+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fManpowerPerMonth, 1));
            }
            this.lastValuePerMonth = Game.getCiv(Game.player.iCivID).fManpowerPerMonth;
        }
        if (this.lastValueDouble != Game.getCiv(Game.player.iCivID).fManpower) {
            if (Game.getCiv(Game.player.iCivID).fManpower >= 10000.0d) {
                setText("" + CFG.getShortNumber((int) Math.floor(Game.getCiv(Game.player.iCivID).fManpower)));
            } else {
                setText("" + ((int) Math.floor(Game.getCiv(Game.player.iCivID).fManpower)));
            }
            if (Game.getCiv(Game.player.iCivID).fManpower >= Game.getCiv(Game.player.iCivID).fManpowerMax) {
                setText2("---");
            }
            this.lastValueDouble = Game.getCiv(Game.player.iCivID).fManpower;
        }
        return super.getTextToDraw();
    }
}
