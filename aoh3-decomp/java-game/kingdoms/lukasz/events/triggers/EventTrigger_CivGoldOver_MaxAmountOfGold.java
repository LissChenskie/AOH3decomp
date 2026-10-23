package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivGoldOver_MaxAmountOfGold extends EventTrigger_Value {
    public boolean value;

    public EventTrigger_CivGoldOver_MaxAmountOfGold(boolean z) {
        this.value = z;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.gold;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("Gold") + (this.value ? " >= " : " < ");
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + Game.lang.get("MaximumAmountOfGold");
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get("Currently") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fGold, 1) + " | " + Game.getMaxAmountOfGold(Game.player.iCivID) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        if (this.value) {
            return Game.getCiv(i).fGold >= ((float) Game.getMaxAmountOfGold(i));
        }
        return Game.getCiv(i).fGold < ((float) Game.getMaxAmountOfGold(i));
    }
}
