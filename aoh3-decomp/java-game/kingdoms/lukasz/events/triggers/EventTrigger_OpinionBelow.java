package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_OpinionBelow extends EventTrigger_Value {
    public String civA;
    public String civB;
    public float value;

    public EventTrigger_OpinionBelow(String str, String str2, float f) {
        this.civA = str;
        this.civB = str2;
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Images.relations;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("Opinion") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return Game.lang.getCiv(this.civA) + " - " + Game.lang.getCiv(this.civB) + " < " + this.value;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        int civID = Game.getCivID(this.civA);
        int civID2 = Game.getCivID(this.civB);
        return (civID <= 0 || civID2 <= 0) ? aBEBOpwLZcQFCZ.TCEznOF : " [" + Game.lang.get("Currently") + lJxd.QsIj + CFG.getPrecision2(Game.getCiv(civID).diplomacy.getRelation(civID2), 1) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        int civID = Game.getCivID(this.civA);
        int civID2 = Game.getCivID(this.civB);
        return civID > 0 && civID2 > 0 && Game.getCiv(civID).diplomacy.getRelation(civID2) < this.value;
    }
}
