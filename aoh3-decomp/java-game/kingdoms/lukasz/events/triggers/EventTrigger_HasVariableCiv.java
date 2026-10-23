package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_HasVariableCiv extends EventTrigger_Value {
    public String civTAG;
    public String value;

    public EventTrigger_HasVariableCiv(String str, String str2) {
        this.civTAG = str;
        this.value = str2;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.getCiv(this.civTAG) + ", " + Game.lang.get("HasVariable") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + Game.lang.get(this.value).replace("_", " ");
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return "";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        int civID = Game.getCivID(this.civTAG);
        if (civID <= 0) {
            return false;
        }
        return Game.getCiv(civID).eventsDataVariables.hasVariable(this.value);
    }
}
