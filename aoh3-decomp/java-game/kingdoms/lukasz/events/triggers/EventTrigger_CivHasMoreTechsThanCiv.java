package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivHasMoreTechsThanCiv extends EventTrigger_Value {
    public String civA;
    public String civB;

    public EventTrigger_CivHasMoreTechsThanCiv(String str, String str2) {
        this.civA = str;
        this.civB = str2;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Game_Calendar.IMG_TECHNOLOGY;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("UnlockedTechnologies") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return PZBvyl.VqXBIGuO + Game.lang.getCiv(this.civA) + " > " + Game.lang.getCiv(this.civB);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return "";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        int civID = Game.getCivID(this.civA);
        int civID2 = Game.getCivID(this.civB);
        return civID > 0 && civID2 > 0 && Game.getCiv(civID).getResearchedTechnologies() > Game.getCiv(civID2).getResearchedTechnologies();
    }
}
