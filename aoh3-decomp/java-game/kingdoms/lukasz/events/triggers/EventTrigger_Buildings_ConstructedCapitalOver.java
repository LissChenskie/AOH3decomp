package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_Buildings_ConstructedCapitalOver extends EventTrigger_Value {
    public int value;

    public EventTrigger_Buildings_ConstructedCapitalOver(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.buildings;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("UniqueCapitalBuildingsConstructed") + " > ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return SwmJtrccN.woRnVhl + Game.lang.get("Currently") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData2.getCapitalBuildingsConstructed(), 1) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        return Game.getCiv(i).eventsData2.getCapitalBuildingsConstructed() > this.value;
    }
}
