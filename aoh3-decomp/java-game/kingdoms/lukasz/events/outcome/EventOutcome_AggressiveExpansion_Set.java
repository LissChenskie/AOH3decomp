package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_AggressiveExpansion_Set extends EventOutcome {
    public float value;

    public EventOutcome_AggressiveExpansion_Set(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.aggressiveExpansion;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("AggressiveExpansion") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return "" + CFG.getPrecision2(this.value, 1);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            Game.getCiv(i).setAggressiveExpansion(this.value);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
