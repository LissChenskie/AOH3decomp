package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivHasResourceOver extends EventTrigger_Value {
    public int value;
    public float value_over;

    public EventTrigger_CivHasResourceOver(int i, float f) {
        this.value = i;
        this.value_over = f;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.goods;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("HasTheResource") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        int i = this.value;
        return (i < 0 || i >= ResourcesManager.iResourcesSize) ? Game.lang.get("None") : ResourcesManager.getResourceName(this.value) + ", " + Game.lang.get("Production") + " > " + CFG.getPrecision2(this.value_over, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        float producedGoods = 0.0f;
        for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
            if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getResourceID() == this.value) {
                producedGoods += ResourcesManager.getProducedGoods(Game.getCiv(Game.player.iCivID).getProvinceID(i));
            }
        }
        return " [" + Game.lang.get("Currently") + ": " + CFG.getPrecision2(producedGoods, 100) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        try {
            return ((float) Game.getCiv(i).getGoodsProduced(this.value)) > this.value_over * 100.0f;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }
}
