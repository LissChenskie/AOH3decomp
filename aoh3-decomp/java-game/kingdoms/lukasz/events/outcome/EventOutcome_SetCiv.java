package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_SetCiv extends EventOutcome {
    public String value;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.events.outcome.EventOutcome_SetCiv$1, reason: invalid class name */
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

    public EventOutcome_SetCiv(String str) {
        this.value = str;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.government;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get(ATsAGKCnv.ACkwT) + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return Game.lang.getCiv(this.value);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            Game.getCiv(i).setCivTag(this.value);
            Game.addSimpleTask(new AnonymousClass1(this.value, i));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
