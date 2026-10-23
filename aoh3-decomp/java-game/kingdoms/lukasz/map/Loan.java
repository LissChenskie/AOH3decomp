package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Loan {
    public float fInterestPerMonth;
    public float fLoanValue;
    public int iExpires_TurnID;

    public Loan(float f) {
        this.fLoanValue = f;
        this.iExpires_TurnID = Game_Calendar.TURN_ID + Game.getLoanExpires();
        this.fInterestPerMonth = Game.getLoanMonthlyExpenses(f);
    }

    public Loan(SaveGameManager.Save_Civ_Loan save_Civ_Loan) {
        this.fLoanValue = save_Civ_Loan.l;
        this.iExpires_TurnID = save_Civ_Loan.e;
        this.fInterestPerMonth = save_Civ_Loan.n;
    }

    public float getLoanValueLeft() {
        return this.fLoanValue * (1.0f - Math.min(1.0f, (this.iExpires_TurnID - Game_Calendar.TURN_ID) / Game.getLoanExpires()));
    }
}
