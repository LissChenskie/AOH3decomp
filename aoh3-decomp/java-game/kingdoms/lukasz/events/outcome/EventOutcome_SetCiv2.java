package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_SetCiv2 extends EventOutcome {
    public String fromCivTAG;
    public String toCivTag;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.events.outcome.EventOutcome_SetCiv2$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.LoadCivilizationData loadCivilizationDataLoadCivilization = Game.loadCivilization(this.taskKey);
            Game.getCiv(this.id).updateCivilizationTAG(this.taskKey, loadCivilizationDataLoadCivilization.iR, loadCivilizationDataLoadCivilization.iG, loadCivilizationDataLoadCivilization.iB);
        }
    }

    public EventOutcome_SetCiv2(String str, String str2) {
        this.fromCivTAG = str;
        this.toCivTag = str2;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.government;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.getCiv(this.fromCivTAG) + " -> ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return Game.lang.getCiv(this.toCivTag);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int civID = Game.getCivID(this.fromCivTAG);
            if (civID > 0) {
                Game.getCiv(civID).setCivTag(this.toCivTag);
                Game.addSimpleTask(new AnonymousClass1(this.toCivTag, civID));
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
