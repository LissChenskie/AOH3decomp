package aoc.kingdoms.lukasz.events.triggers;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventTrigger_CivManpower_PercOfMax_Over extends EventTrigger_Value {
    public float value;

    public EventTrigger_CivManpower_PercOfMax_Over(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public int getImage() {
        return Game_Calendar.IMG_MANPOWER;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText() {
        return Game.lang.get("Manpower") + " > ";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText2() {
        return "" + CFG.getPrecision2(this.value, 100) + CvuNnwgYwe.WthaUyAgz;
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public String getText3() {
        return " [" + Game.lang.get("Currently") + ": " + CFG.getPrecision2((Game.getCiv(Game.player.iCivID).fManpower / Game.getCiv(Game.player.iCivID).fManpowerMax) * 100.0d, 10) + "]";
    }

    @Override // aoc.kingdoms.lukasz.events.triggers.EventTrigger_Value
    public boolean outCondition(int i, int i2) {
        return (Game.getCiv(i).fManpower / Game.getCiv(i).fManpowerMax) * 100.0d > ((double) this.value);
    }
}
