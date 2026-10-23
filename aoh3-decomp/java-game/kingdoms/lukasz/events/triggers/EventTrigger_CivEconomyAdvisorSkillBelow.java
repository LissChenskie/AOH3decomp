package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivEconomyAdvisorSkillBelow extends EventTrigger_Value {
    public int value;

    public EventTrigger_CivEconomyAdvisorSkillBelow(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.skill;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get(GameValues.court.ADVISOR_NAME_ECONOMIC) + PxHJ.URcBN + Game.lang.get("AdvisorSkillLevel") + " < ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return Game.getCiv(Game.player.iCivID).advisorEconomy.sName == null ? " [" + Game.lang.get("Currently") + ": " + Game.lang.get("NoAdvisor") + "]" : " [" + Game.lang.get("Currently") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).advisorEconomy.iLevel, 1) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        return Game.getCiv(i).advisorEconomy.sName != null && Game.getCiv(i).advisorEconomy.iLevel < this.value;
    }
}
