package aoc.kingdoms.lukasz.events.triggers;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivLegacyOver extends EventTrigger_Value {
    public int value;

    public EventTrigger_CivLegacyOver(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.legacy;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("Legacy") + " > ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return CoLRpi.lknoHJLhT + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get("Currently") + aBEBOpwLZcQFCZ.bHUjT + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fLegacy, 100) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        return Game.getCiv(i).fLegacy > ((float) this.value);
    }
}
