package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_KillRuler_Chance extends EventOutcome {
    public float value;

    public EventOutcome_KillRuler_Chance(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.council;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get(hQfu.pLmlCu) + ": " + CFG.getPrecision2(this.value, 10) + "%, " + Game.lang.get("DeathOfALeader") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return Game.getCiv(Game.player.iCivID).ruler.Name;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            if (Game.oR.nextInt(1000) / 10.0f < this.value) {
                RulersManager.deathOfRuler(i);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
