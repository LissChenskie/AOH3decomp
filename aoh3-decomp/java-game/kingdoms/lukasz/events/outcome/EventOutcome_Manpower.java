package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Manpower extends EventOutcome {
    public int value;

    public EventOutcome_Manpower(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Game_Calendar.IMG_MANPOWER;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("Manpower") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return (this.value > 0 ? "+" : "") + CFG.getPrecision2(this.value, 1);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            Game.getCiv(i).setManpower(Game.getCiv(i).fManpower + ((double) this.value));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
