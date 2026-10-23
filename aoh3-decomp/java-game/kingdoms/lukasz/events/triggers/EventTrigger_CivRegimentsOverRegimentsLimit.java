package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivRegimentsOverRegimentsLimit extends EventTrigger_Value {
    public boolean value;

    public EventTrigger_CivRegimentsOverRegimentsLimit(boolean z) {
        this.value = z;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.regimentsLimit;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("NumberOfRegiments") + (this.value ? " >= " : " < ");
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return Game.lang.get("RegimentsLimit");
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get("Currently") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getArmyRegimentSize(), 100) + " | " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).iRegimentsLimit, 100) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        if (this.value) {
            return Game.getCiv(i).getArmyRegimentSize() >= Game.getCiv(i).iRegimentsLimit;
        }
        return Game.getCiv(i).getArmyRegimentSize() < Game.getCiv(i).iRegimentsLimit;
    }
}
