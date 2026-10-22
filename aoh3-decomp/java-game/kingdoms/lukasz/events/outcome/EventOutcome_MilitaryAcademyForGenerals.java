package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_MilitaryAcademyForGenerals extends EventOutcome {
    public int value;

    public EventOutcome_MilitaryAcademyForGenerals(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.armyMilitaryAcademy;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("MilitaryAcademyForGenerals") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return (this.value > 0 ? "+" : "") + CFG.getPrecision2(this.value, 1);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            Game.getCiv(i).setMilitaryAcademyForGeneralsLevel(Math.max(0, Game.getCiv(i).getMilitaryAcademyForGeneralsLevel() + this.value));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
