package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Explode extends EventOutcome {
    public String civTAG;

    public class ExplodeProvince {
        public int civID;
        public int provinceID;

        public ExplodeProvince(int i, int i2) {
            this.civID = i;
            this.provinceID = i2;
        }
    }

    public EventOutcome_Explode(String str) {
        this.civTAG = str;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.revolutionRisk;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("RevolutionaryMovements");
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return "";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
    }
}
