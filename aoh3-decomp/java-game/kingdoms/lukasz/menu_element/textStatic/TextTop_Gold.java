package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextTop_Gold extends TextTop {
    public float lastValuePerMonth;

    public TextTop_Gold(int i, String str, String str2, int i2, int i3) {
        super(i, str, str2, i2, i3);
        this.lastValuePerMonth = -997654.3f;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop
    public boolean getIsActiveButton() {
        return Game.menuManager.getVisibleInGame_Budget();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextTop, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        int i;
        if (this.lastValue != Game.getCiv(Game.player.iCivID).fGold) {
            if (Game.getCiv(Game.player.iCivID).fGold >= 100000.0f) {
                setText("" + CFG.getShortNumber((int) Math.floor(Game.getCiv(Game.player.iCivID).fGold)));
            } else {
                setText("" + ((int) Math.floor(Game.getCiv(Game.player.iCivID).fGold)));
            }
            this.lastValue = Game.getCiv(Game.player.iCivID).fGold;
        }
        if (this.lastValuePerMonth != (Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(Game.player.iCivID).civBonuses.MonthlyIncome) - Game.getCiv(Game.player.iCivID).fTotalExpensesPerMonth) {
            float f = (Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(Game.player.iCivID).civBonuses.MonthlyIncome) - Game.getCiv(Game.player.iCivID).fTotalExpensesPerMonth;
            if (Game.getCiv(Game.player.iCivID).fGold >= Game.getMaxAmountOfGold(Game.player.iCivID)) {
                setText2("---");
            } else {
                StringBuilder sbAppend = new StringBuilder().append(f > 0.0f ? "+" : "");
                if (Math.abs(f) < 10.0f) {
                    i = 100;
                } else {
                    i = Math.abs(f) < 100.0f ? 10 : 1;
                }
                setText2(sbAppend.append(CFG.getPrecision2(f, i)).toString());
            }
            this.lastValuePerMonth = f;
        }
        return super.getTextToDraw();
    }
}
