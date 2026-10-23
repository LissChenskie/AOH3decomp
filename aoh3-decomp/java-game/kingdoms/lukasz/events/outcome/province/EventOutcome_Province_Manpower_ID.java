package aoc.kingdoms.lukasz.events.outcome.province;

import aoc.kingdoms.lukasz.events.outcome.EventOutcome;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Province_Manpower_ID extends EventOutcome {
    public int provID;
    public float value;

    public EventOutcome_Province_Manpower_ID(int i, float f) {
        this.provID = i;
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Game_Calendar.IMG_MANPOWER;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("LocalManpower") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return (this.value > 0.0f ? "+" : aBEBOpwLZcQFCZ.XITbesuJjIc) + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight2(int i) {
        try {
            return Game.getProvince(this.provID).getProvinceName();
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateProvince(int i) {
        try {
            Game.getProvince(this.provID).setManpower(Game.getProvince(this.provID).getManpower() + this.value);
            Game.gameThreadTurns.addCivUpdateMaxManpower(Game.getProvince(this.provID).getCivID());
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
