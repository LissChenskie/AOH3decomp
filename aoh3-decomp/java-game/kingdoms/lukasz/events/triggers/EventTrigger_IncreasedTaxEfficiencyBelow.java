package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_IncreasedTaxEfficiencyBelow extends EventTrigger_Value {
    public int value;

    public EventTrigger_IncreasedTaxEfficiencyBelow(int i) {
        this.value = i * 100;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.tax;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("IncreasedTaxEfficiency") + " < ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value / 100.0f, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get(PxHJ.GkzMAz) + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData.getIncreasedTaxEfficiency() / 100.0f, 100) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        return Game.getCiv(i).eventsData.getIncreasedTaxEfficiency() < this.value;
    }
}
