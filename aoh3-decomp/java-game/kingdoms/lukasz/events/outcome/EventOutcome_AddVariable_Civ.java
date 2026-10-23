package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_AddVariable_Civ extends EventOutcome {
    public String addToCiv;
    public String value;

    public EventOutcome_AddVariable_Civ(String str, String str2) {
        this.addToCiv = str;
        this.value = str2;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int civID = Game.getCivID(this.addToCiv);
            if (civID > 0) {
                Game.getCiv(civID).eventsDataVariables.addVariable(this.value);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
