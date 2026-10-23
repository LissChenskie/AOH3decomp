package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivAdministrativeAdvisorSkillBelow extends EventTrigger_Value {
    public int value;

    public EventTrigger_CivAdministrativeAdvisorSkillBelow(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.skill;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get(GameValues.court.ADVISOR_NAME_ADMINISTRATIVE) + ", " + Game.lang.get("AdvisorSkillLevel") + " < ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        String str = Game.getCiv(Game.player.iCivID).advisorAdministration.sName;
        String str2 = LBhZogys.etQiNSPWExhoM;
        return str == null ? " [" + Game.lang.get(str2) + ": " + Game.lang.get("NoAdvisor") + "]" : " [" + Game.lang.get(str2) + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).advisorAdministration.iLevel, 1) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        return Game.getCiv(i).advisorAdministration.sName != null && Game.getCiv(i).advisorAdministration.iLevel < this.value;
    }
}
