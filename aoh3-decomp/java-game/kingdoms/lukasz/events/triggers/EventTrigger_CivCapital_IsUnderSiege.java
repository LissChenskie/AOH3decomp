package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivCapital_IsUnderSiege extends EventTrigger_Value {
    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Game_Calendar.IMG_FORT_DEFENSE;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("Capital") + ", " + Game.lang.get("UnderSiege");
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return "";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        try {
            if (Game.getCiv(i).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getCivID() != i) {
                return false;
            }
            return Game.getProvinceData4(Game.getCiv(i).getCapitalProvinceID()).isUnderSiege();
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }
}
