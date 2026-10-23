package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_AllianceIsNotInAlliance extends EventTrigger_Value {
    public int value;

    public EventTrigger_AllianceIsNotInAlliance(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.alliance;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return this.value < Game.alliancesSpecialSize ? Game.lang.get(Game.alliancesSpecial.get(Game.getCiv(Game.player.iCivID).inAlliance.get(this.value).intValue()).Name_Alliance) + ": " : Game.lang.get("Alliance") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + Game.lang.get("Member") + ", " + Game.lang.get("NOT");
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        boolean z = false;
        if (Game.getCiv(Game.player.iCivID).inAllianceSize > 0) {
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).inAllianceSize; i++) {
                if (Game.getCiv(Game.player.iCivID).inAlliance.get(i).intValue() == this.value && Game.alliancesSpecial.get(Game.getCiv(Game.player.iCivID).inAlliance.get(i).intValue()).isInAlliance(Game.player.iCivID)) {
                    z = true;
                    break;
                }
            }
        }
        return " [" + Game.lang.get("Currently") + cIUGJCqyPXfp.GFjioEv + (true ^ z) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        if (Game.getCiv(i).inAllianceSize <= 0) {
            return true;
        }
        for (int i3 = 0; i3 < Game.getCiv(i).inAllianceSize; i3++) {
            if (Game.getCiv(i).inAlliance.get(i3).intValue() == this.value && Game.alliancesSpecial.get(Game.getCiv(i).inAlliance.get(i3).intValue()).isInAlliance(i)) {
                return false;
            }
        }
        return true;
    }
}
