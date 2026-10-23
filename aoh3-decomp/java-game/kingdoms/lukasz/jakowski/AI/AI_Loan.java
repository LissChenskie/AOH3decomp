package aoc.kingdoms.lukasz.jakowski.AI;

import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Loan {
    public static boolean canTakeLoan(int i) {
        return Game.getCiv(i).iLoansSize < Game.aiValues.LOANS_LIMIT;
    }

    public static boolean takeLoan(int i) {
        if (Game.getCiv(i).iLoansSize >= Game.getLoanMaxNumber(i) || Game.getCiv(i).fGold > Game.aiValues.TAKE_LOAN_ONLY_IF_TREASURY_BELOW) {
            return false;
        }
        Game.getCiv(i).takeLoan();
        Game.getCiv(i).reduceInflation();
        return true;
    }

    public static boolean takeLoan_Chance(int i, int i2) {
        if (Game.oR.nextInt(100) < i2) {
            return takeLoan(i);
        }
        return false;
    }
}
