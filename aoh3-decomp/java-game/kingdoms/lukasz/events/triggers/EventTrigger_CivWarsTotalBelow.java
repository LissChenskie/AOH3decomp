package aoc.kingdoms.lukasz.events.triggers;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivWarsTotalBelow extends EventTrigger_Value {
    public int value;

    public EventTrigger_CivWarsTotalBelow(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.war;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("Wars") + IwYCCQBuFGwl.GjhCxvBjWH;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return uNBYrZVGzy.uDwCwerk + Game.lang.get("Currently") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).eventsData3.getNumOfWars(), 100) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        return Game.getCiv(i).eventsData3.getNumOfWars() < this.value;
    }
}
