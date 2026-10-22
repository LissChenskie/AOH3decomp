package aoc.kingdoms.lukasz.events.outcome.province;

import aoc.kingdoms.lukasz.events.outcome.EventOutcome;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Province_ID_CoreAdd extends EventOutcome {
    public String civA;
    public int provID;

    public EventOutcome_Province_ID_CoreAdd(int i, String str) {
        this.provID = i;
        this.civA = str;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.core;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("Core") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        int civID = Game.getCivID(this.civA);
        return civID > 0 ? Game.getCiv(civID).getCivName() : " -- ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight2(int i) {
        try {
            return Game.getProvince(this.provID).getProvinceName();
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int civID = Game.getCivID(this.civA);
            if (civID > 0) {
                Game.getProvince(this.provID).addCore(civID);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
