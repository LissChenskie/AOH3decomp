package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.net.HttpResponseHeader;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivAdvisor_AgeOver extends EventTrigger_Value {
    public int advisorType;
    public int value;

    public EventTrigger_CivAdvisor_AgeOver(int i, int i2) {
        this.advisorType = i;
        this.value = i2;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.council;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        StringBuilder sb = new StringBuilder();
        AdvisorManager advisorManager = Game.advisorManager;
        return sb.append(AdvisorManager.getAdvisorGroupName(this.advisorType)).append(", ").append(Game.lang.get(HttpResponseHeader.Age)).append(" > ").toString();
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
        LanguageManager languageManager = Game.lang;
        int i = Game_Calendar.currentYear;
        AdvisorManager advisorManager2 = Game.advisorManager;
        return sbAppend.append(languageManager.get("XYearsOld", i - AdvisorManager.getAdvisor(Game.player.iCivID, this.advisorType).iYearOfBirth)).append("]").toString();
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        AdvisorManager advisorManager = Game.advisorManager;
        if (AdvisorManager.getAdvisor(i, this.advisorType).sName == null) {
            return false;
        }
        int i3 = Game_Calendar.currentYear;
        AdvisorManager advisorManager2 = Game.advisorManager;
        return i3 - AdvisorManager.getAdvisor(i, this.advisorType).iYearOfBirth > this.value;
    }
}
