package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivMilitaryAdvisorSkillOver extends EventTrigger_Value {
    public int value;

    public EventTrigger_CivMilitaryAdvisorSkillOver(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.skill;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get(GameValues.court.ADVISOR_NAME_MILITARY) + ", " + Game.lang.get("AdvisorSkillLevel") + " > ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return Game.getCiv(Game.player.iCivID).advisorMilitary.sName == null ? " [" + Game.lang.get("Currently") + ": " + Game.lang.get("NoAdvisor") + "]" : " [" + Game.lang.get("Currently") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).advisorMilitary.iLevel, 1) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        return Game.getCiv(i).advisorMilitary.sName != null && Game.getCiv(i).advisorMilitary.iLevel > this.value;
    }
}
