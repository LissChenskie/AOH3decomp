package aoc.kingdoms.lukasz.events.triggers;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_IsLargestProducer extends EventTrigger_Value {
    public int resourceID;

    public EventTrigger_IsLargestProducer(int i) {
        this.resourceID = i;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.goods;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return ResourcesManager.getResourceName(this.resourceID) + ": " + Game.lang.get(qIuEvFbUtcea.dSzwcipzG);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get("Currently") + ": " + Game.getCiv(ResourcesManager.worldResources_LargestProducer.get(this.resourceID).intValue()).getCivName() + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        try {
            return ResourcesManager.worldResources_LargestProducer.get(this.resourceID).intValue() == i;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }
}
