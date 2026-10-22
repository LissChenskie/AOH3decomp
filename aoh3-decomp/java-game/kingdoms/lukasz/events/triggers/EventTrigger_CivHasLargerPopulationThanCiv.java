package aoc.kingdoms.lukasz.events.triggers;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivHasLargerPopulationThanCiv extends EventTrigger_Value {
    public String civA;
    public String civB;

    public EventTrigger_CivHasLargerPopulationThanCiv(String str, String str2) {
        this.civA = str;
        this.civB = str2;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.population;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("Provinces") + XjthpFh.LRzNRauGtCCL;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + Game.lang.getCiv(this.civA) + " > " + Game.lang.getCiv(this.civB);
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return CoLRpi.epcephpypHAfLLs;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        int civID = Game.getCivID(this.civA);
        int civID2 = Game.getCivID(this.civB);
        return civID > 0 && civID2 > 0 && Game.getCiv(civID).getPopulationTotal() > Game.getCiv(civID2).getPopulationTotal();
    }
}
