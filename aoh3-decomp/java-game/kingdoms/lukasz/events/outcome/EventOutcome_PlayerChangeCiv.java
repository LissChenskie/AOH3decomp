package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_PlayerChangeCiv extends EventOutcome {
    public String value;

    public EventOutcome_PlayerChangeCiv(String str) {
        this.value = str;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.play;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("Player") + ", " + Game.lang.get("Civilization") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        int civID = Game.getCivID(this.value);
        return civID > 0 ? Game.getCiv(civID).getCivName() : " -- ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int civID = Game.getCivID(this.value);
            if (civID <= 0 || i == civID || Game.getCiv(civID).getNumOfProvinces() <= 0) {
                return;
            }
            InGame_Sandbox.setPlayerCiv(civID);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
