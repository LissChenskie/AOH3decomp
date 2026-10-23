package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.CharactersManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_AddAdvisor_Character extends EventOutcome {
    public int advisorTypeID;
    public String sName;

    public EventOutcome_AddAdvisor_Character(String str, int i) {
        this.sName = str;
        this.advisorTypeID = i;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.council;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("HireAdvisor") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return "" + this.sName + " - " + AdvisorManager.getAdvisorGroupName(this.advisorTypeID);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            CharactersManager.loadAdvisor(i, this.sName, this.advisorTypeID);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
