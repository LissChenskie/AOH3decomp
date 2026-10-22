package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_AnnexCivilization extends EventOutcome {
    public String annexCivTag;

    public EventOutcome_AnnexCivilization(String str) {
        this.annexCivTag = str;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.provinces;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("Annexation") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        int civID = Game.getCivID(this.annexCivTag);
        return (civID <= 0 || Game.getCiv(civID).getNumOfProvinces() <= 0) ? Game.lang.get("None") : Game.getCiv(civID).getCivName();
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        int civID = Game.getCivID(this.annexCivTag);
        if (civID == i || civID <= 0) {
            return;
        }
        for (int numOfProvinces = Game.getCiv(civID).getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
            try {
                int provinceID = Game.getCiv(civID).getProvinceID(numOfProvinces);
                Game.getProvince(provinceID).setCivID(i);
                Game.getProvince(provinceID).removeArmyCivID(civID);
                Game.getProvince(provinceID).addCore(i);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }
}
