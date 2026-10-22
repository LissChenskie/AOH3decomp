package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_ProvinceCivHasCore extends EventTrigger_Value {
    public String civA;
    public int provID;

    public EventTrigger_ProvinceCivHasCore(int i, String str) {
        this.provID = i;
        this.civA = str;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.core;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        int civID = Game.getCivID(this.civA);
        return civID > 0 ? Game.getCiv(civID).getCivName() + ", " + Game.lang.get("HaveACore") + ": " : " -- ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return Game.getProvince(this.provID).getProvinceName();
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        int civID = Game.getCivID(this.civA);
        return civID > 0 ? " [" + Game.lang.get("Currently") + ": " + Game.getProvince(this.provID).haveACore(civID) + "]" : " --";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        int civID = Game.getCivID(this.civA);
        if (civID > 0) {
            return Game.getProvince(this.provID).haveACore(civID);
        }
        return false;
    }
}
