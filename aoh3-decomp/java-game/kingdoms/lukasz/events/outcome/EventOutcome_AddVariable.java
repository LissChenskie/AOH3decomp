package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_AddVariable extends EventOutcome {
    public String value;

    public EventOutcome_AddVariable(String str) {
        this.value = str;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            Game.getCiv(i).eventsDataVariables.addVariable(this.value);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
