package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_IsAtWar_DaysOver extends EventTrigger_Value {
    public int value;

    public EventTrigger_IsAtWar_DaysOver(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.war;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("IaAtWar") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return Game.lang.get("DaysX", this.value);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return "";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        for (int i3 = 0; i3 < Game.getCiv(i).diplomacy.iWarsSize; i3++) {
            try {
                if (Game_Calendar.TURN_ID - this.value > WarManager.lWars.get(Game.getCiv(i).diplomacy.lWars.get(i3)).iWarTurnID) {
                    return true;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        return false;
    }
}
