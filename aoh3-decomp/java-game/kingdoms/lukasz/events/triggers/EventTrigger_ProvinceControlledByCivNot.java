package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_ProvinceControlledByCivNot extends EventTrigger_Value {
    public String civA;
    public int provID;

    public EventTrigger_ProvinceControlledByCivNot(int i, String str) {
        this.provID = i;
        this.civA = str;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.provinces;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        StringBuilder sbAppend = new StringBuilder().append(Game.getProvince(this.provID).getProvinceName());
        String str = fTNtCctcBZcqKK.BIAbOXpHCoC;
        return sbAppend.append(str).append(Game.lang.get("ControlledBy")).append(str).append(Game.lang.get("NOT")).append(": ").toString();
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        int civID = Game.getCivID(this.civA);
        return civID > 0 ? Game.getCiv(civID).getCivName() : " -- ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get("Currently") + ": " + Game.getCiv(Game.getProvince(this.provID).getCivID()).getCivName() + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        int civID = Game.getCivID(this.civA);
        return civID > 0 && Game.getProvince(this.provID).getCivID() != civID;
    }
}
