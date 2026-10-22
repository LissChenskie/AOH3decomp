package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivAdvisor_ConstructionCostOver extends EventTrigger_Value {
    public int advisorType;
    public float value;

    public EventTrigger_CivAdvisor_ConstructionCostOver(int i, float f) {
        this.advisorType = i;
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.construction;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        StringBuilder sb = new StringBuilder();
        AdvisorManager advisorManager = Game.advisorManager;
        return sb.append(AdvisorManager.getAdvisorGroupName(this.advisorType)).append(", ").append(Game.lang.get("ConstructionCost")).append(" < ").toString();
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        AdvisorManager advisorManager = Game.advisorManager;
        if (AdvisorManager.getAdvisor(Game.player.iCivID, this.advisorType).sName == null) {
            return " [" + Game.lang.get("Currently") + ": " + Game.lang.get("NoAdvisor") + "]";
        }
        StringBuilder sbAppend = new StringBuilder(" [").append(Game.lang.get("Currently")).append(": ");
        AdvisorManager advisorManager2 = Game.advisorManager;
        return sbAppend.append(CFG.getPrecision2(AdvisorManager.getAdvisor(Game.player.iCivID, this.advisorType).ConstructionCost * 100.0f, 100)).append("%]").toString();
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        AdvisorManager advisorManager = Game.advisorManager;
        if (AdvisorManager.getAdvisor(i, this.advisorType).sName == null) {
            return false;
        }
        AdvisorManager advisorManager2 = Game.advisorManager;
        return AdvisorManager.getAdvisor(i, this.advisorType).ConstructionCost * 100.0f < this.value;
    }
}
