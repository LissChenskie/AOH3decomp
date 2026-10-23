package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_LargestProducer_ProductionOver extends EventTrigger_Value {
    public int resourceID;
    public int value;

    public EventTrigger_LargestProducer_ProductionOver(int i, int i2) {
        this.resourceID = i;
        this.value = i2;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.goods;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return ResourcesManager.getResourceName(this.resourceID) + ": " + Game.lang.get("LargestProducer") + ", " + Game.lang.get("Production") + " > ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get("Currently") + CvuNnwgYwe.HCMGx + CFG.getPrecision2(ResourcesManager.worldResources_LargestProducer_Amount.get(this.resourceID).intValue(), 100) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        try {
            return ResourcesManager.worldResources_LargestProducer_Amount.get(this.resourceID).intValue() > this.value * 100;
        } catch (Exception unused) {
            return false;
        }
    }
}
