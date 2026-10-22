package aoc.kingdoms.lukasz.events.outcome.province;

import aoc.kingdoms.lukasz.events.outcome.EventOutcome;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Province_Economy extends EventOutcome {
    public float value;

    public EventOutcome_Province_Economy(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Game_Calendar.IMG_ECONOMY;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("Economy") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return (this.value > 0.0f ? "+" : "") + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight2(int i) {
        try {
            return Game.getProvince(Game.getCiv(Game.player.iCivID).eventProvinceID).getProvinceName();
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateProvince(int i) {
        try {
            Game.getProvince(i).setEconomy(Game.getProvince(i).getEconomy() + this.value);
            Game.getProvince(i).updateAfterEconomyChange();
            Game.getCiv(Game.getProvince(i).getCivID()).updateTotalIncomePerMonth();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
