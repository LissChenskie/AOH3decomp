package aoc.kingdoms.lukasz.jakowski.Player.More;

import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PlayerStats2 {
    public List<Integer> income = new ArrayList();
    public List<Integer> balance = new ArrayList();

    public void addBalance() {
        this.balance.add(Integer.valueOf((int) Math.ceil(((Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(Game.player.iCivID).civBonuses.MonthlyIncome) - Game.getCiv(Game.player.iCivID).fTotalExpensesPerMonth) * 100.0f)));
    }

    public void addIncome() {
        this.income.add(Integer.valueOf((int) Math.ceil((Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(Game.player.iCivID).civBonuses.MonthlyIncome) * 100.0f)));
    }

    public final void updateData() {
        addIncome();
        addBalance();
    }
}
