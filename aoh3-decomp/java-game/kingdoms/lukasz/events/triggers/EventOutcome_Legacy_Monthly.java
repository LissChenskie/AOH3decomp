package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.events.outcome.EventOutcome;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Legacy_Monthly extends EventOutcome {
    public float value;

    public EventOutcome_Legacy_Monthly(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.legacy;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("Legacy") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return (this.value > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getLegacyPerMonth() * this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            Game.getCiv(i).addLegacy(Game.getCiv(i).getLegacyPerMonth() * this.value);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
