package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Alliance extends EventOutcome {
    public String fromCivTAG;
    public String toCivTag;

    public EventOutcome_Alliance(String str, String str2) {
        this.fromCivTAG = str;
        this.toCivTag = str2;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.alliance;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("Alliance") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return Game.lang.getCiv(this.fromCivTAG) + " - " + Game.lang.getCiv(this.toCivTag);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int civID = Game.getCivID(this.fromCivTAG);
            int civID2 = Game.getCivID(this.toCivTag);
            if (civID <= 0 || civID2 <= 0 || DiplomacyManager.isAtWar(civID, civID2)) {
                return;
            }
            DiplomacyManager.addAlliance(civID, civID2);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
