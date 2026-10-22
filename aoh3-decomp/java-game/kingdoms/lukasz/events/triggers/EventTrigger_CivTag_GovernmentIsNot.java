package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivTag_GovernmentIsNot extends EventTrigger_Value {
    public String civA;
    public int value;

    public EventTrigger_CivTag_GovernmentIsNot(String str, int i) {
        this.civA = str;
        this.value = i;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.government;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        int civID = Game.getCivID(this.civA);
        return civID > 0 ? Game.getCiv(civID).getCivName() + ", " + Game.lang.get("Government") + ", " + Game.lang.get("NOT") + ": " : Game.lang.get("Government") + " == ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return MQYGMkZOAcS.McKcnEDlHCN + Game.ideologiesManager.getIdeology(this.value).Name;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return "";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        int civID = Game.getCivID(this.civA);
        return civID > 0 && Game.getCiv(civID).getIdeologyID() != this.value;
    }
}
