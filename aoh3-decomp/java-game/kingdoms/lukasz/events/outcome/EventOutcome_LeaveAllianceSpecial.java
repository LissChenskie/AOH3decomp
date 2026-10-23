package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_LeaveAllianceSpecial extends EventOutcome {
    public int value;

    public EventOutcome_LeaveAllianceSpecial(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.alliance;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("LeaveAlliance") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return this.value < Game.alliancesSpecialSize ? Game.lang.get(Game.alliancesSpecial.get(this.value).Name_Alliance) : "--";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            if (this.value < Game.alliancesSpecialSize) {
                Game.alliancesSpecial.get(this.value).removeCiv(i);
                Game.getCiv(i).removeInAllianceSpecial(this.value);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
