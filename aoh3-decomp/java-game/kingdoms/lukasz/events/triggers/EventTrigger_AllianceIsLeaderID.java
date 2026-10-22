package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_AllianceIsLeaderID extends EventTrigger_Value {
    public int value;

    public EventTrigger_AllianceIsLeaderID(int i) {
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.alliance;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return this.value < Game.alliancesSpecialSize ? Game.lang.get(Game.alliancesSpecial.get(this.value).Name_Alliance) + ": " : Game.lang.get("Alliance") + ": ";
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
                if (Game.getCiv(Game.player.iCivID).inAlliance.get(i).intValue() == this.value && Game.alliancesSpecial.get(Game.getCiv(Game.player.iCivID).inAlliance.get(i).intValue()).iLeaderCivID == Game.player.iCivID) {
                    z = true;
                    break;
                }
            }
        }
        return " [" + Game.lang.get("Currently") + ": " + z + CvuNnwgYwe.auXLdUfiiH;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        if (Game.getCiv(i).inAllianceSize > 0) {
            for (int i3 = 0; i3 < Game.getCiv(i).inAllianceSize; i3++) {
                if (Game.getCiv(i).inAlliance.get(i3).intValue() == this.value && Game.alliancesSpecial.get(Game.getCiv(i).inAlliance.get(i3).intValue()).iLeaderCivID == i) {
                    return true;
                }
            }
        }
        return false;
    }
}
