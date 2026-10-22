package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_ProvinceInfrastructureOver extends EventTrigger_Value {
    public int provID;
    public float value;

    public EventTrigger_ProvinceInfrastructureOver(int i, float f) {
        this.provID = i;
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.infrastructure;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.getProvince(this.provID).getProvinceName() + ", " + Game.lang.get("Infrastructure") + " > ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get("Currently") + ": " + CFG.getPrecision2(Game.getProvince(this.provID).getInfrastructure(), 100) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        int i3 = this.provID;
        return i3 >= 0 && ((float) Game.getProvince(i3).getInfrastructure()) > this.value;
    }
}
