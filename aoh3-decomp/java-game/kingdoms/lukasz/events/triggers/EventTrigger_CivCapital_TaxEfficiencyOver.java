package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivCapital_TaxEfficiencyOver extends EventTrigger_Value {
    public float value;

    public EventTrigger_CivCapital_TaxEfficiencyOver(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.tax;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("Capital") + ", " + Game.lang.get("TaxEfficiency") + " > ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value, 1) + "%";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get("Currently") + ": " + CFG.getPrecision2(Game.getProvince(Game.getCiv(Game.player.iCivID).getCapitalProvinceID()).getTaxEfficiencyWithBonuses(), 1) + "%]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        try {
            return Game.getCiv(i).getCapitalProvinceID() >= 0 && Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getCivID() == i && Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getTaxEfficiencyWithBonuses() > this.value;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return false;
    }
}
