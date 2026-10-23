package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_IsNotVassal extends EventTrigger_Value {
    public String value;

    public EventTrigger_IsNotVassal(String str) {
        this.value = str;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return "[" + Game.lang.get("NOT") + "] " + Game.lang.get("IsAVassal") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + Game.lang.getCiv(this.value);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return "";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        int i3 = 1;
        while (i3 < Game.getCivsSize()) {
            try {
                if (Game.getCiv(i3).getNumOfProvinces() > 0 && Game.getCiv(i3).getCivTag().indexOf(this.value) >= 0 && Game.getCiv(i3).getCivTag().equals(this.value)) {
                    return Game.getCiv(i3).getPuppetOfCivID() != i3;
                }
                i3++;
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        return false;
    }
}
