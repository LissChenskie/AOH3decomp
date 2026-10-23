package aoc.kingdoms.lukasz.events.triggers;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_AllianceIsLeader extends EventTrigger_Value {
    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.alliance;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return (Game.getCiv(Game.player.iCivID).inAllianceSize <= 0 || Game.getCiv(Game.player.iCivID).inAllianceSize <= 0) ? Game.lang.get("Alliance") + ": " : Game.lang.get(Game.alliancesSpecial.get(Game.getCiv(Game.player.iCivID).inAlliance.get(0).intValue()).Name_Alliance) + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + Game.lang.get("Leader");
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        boolean z = false;
        if (Game.getCiv(Game.player.iCivID).inAllianceSize > 0) {
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).inAllianceSize; i++) {
                if (Game.alliancesSpecial.get(Game.getCiv(Game.player.iCivID).inAlliance.get(i).intValue()).iLeaderCivID == Game.player.iCivID) {
                    z = true;
                    break;
                }
            }
        }
        return ALZmnpZHj.CShLAusXK + Game.lang.get(CoLRpi.dOAePKIGC) + ": " + z + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        if (Game.getCiv(i).inAllianceSize > 0) {
            for (int i3 = 0; i3 < Game.getCiv(i).inAllianceSize; i3++) {
                if (Game.alliancesSpecial.get(Game.getCiv(i).inAlliance.get(i3).intValue()).iLeaderCivID == i) {
                    return true;
                }
            }
        }
        return false;
    }
}
