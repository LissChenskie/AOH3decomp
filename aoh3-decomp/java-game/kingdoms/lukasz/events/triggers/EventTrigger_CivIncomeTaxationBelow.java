package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivIncomeTaxationBelow extends EventTrigger_Value {
    public float value;

    public EventTrigger_CivIncomeTaxationBelow(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.gold;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("IncomeTaxation") + " < ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get("Currently") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getIncomeTaxation(), 100) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        return Game.getCiv(i).getIncomeTaxation() < this.value;
    }
}
