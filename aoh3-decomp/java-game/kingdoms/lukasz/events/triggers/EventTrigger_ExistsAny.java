package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_ExistsAny extends EventTrigger_Value {
    public String value;

    public EventTrigger_ExistsAny(String str) {
        this.value = str;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("CivilizationExist") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + Game.lang.getCiv(Game.ideologiesManager.getRealTag(this.value));
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return "";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        for (int i3 = 1; i3 < Game.getCivsSize(); i3++) {
            try {
                if (Game.getCiv(i3).getNumOfProvinces() > 0 && Game.getCiv(i3).getCivTag().indexOf(this.value) >= 0 && Game.getCiv(i3).realTag.equals(this.value)) {
                    return true;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return false;
            }
        }
        return false;
    }
}
