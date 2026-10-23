package aoc.kingdoms.lukasz.map.diplomacy;

import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class DiplomacyEspionageMission {
    public int iCivID;
    public int iReportExpiresTurnID;
    public int iReportTurnID;

    public DiplomacyEspionageMission() {
    }

    public DiplomacyEspionageMission(int i, int i2) {
        this.iCivID = i;
        this.iReportTurnID = i2;
        this.iReportExpiresTurnID = i2 + GameValues.spy.SEND_SPY_REPORT_ACTIVE;
    }

    public boolean isActive() {
        return Game_Calendar.TURN_ID >= this.iReportTurnID;
    }
}
