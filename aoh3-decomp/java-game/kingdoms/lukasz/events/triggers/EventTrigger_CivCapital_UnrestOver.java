package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivCapital_UnrestOver extends EventTrigger_Value {
    public float value;

    public EventTrigger_CivCapital_UnrestOver(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.revolutionRisk;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("Capital") + ", " + Game.lang.get("Unrest") + " > ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value, 10) + kfGnwGN.rnFEbLklbE;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get("Currently") + ": " + CFG.getPrecision2(Game.getProvince(Game.getCiv(Game.player.iCivID).getCapitalProvinceID()).getRevulutionaryRisk(), 10) + "%]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        try {
            return Game.getCiv(i).getCapitalProvinceID() >= 0 && Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getCivID() == i && Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getRevulutionaryRisk() > this.value;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return false;
    }
}
