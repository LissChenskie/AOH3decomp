package aoc.kingdoms.lukasz.events.outcome.province;

import aoc.kingdoms.lukasz.events.outcome.EventOutcome;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Province_Infrastructure_ID extends EventOutcome {
    public int provID;
    public int value;

    public EventOutcome_Province_Infrastructure_ID(int i, int i2) {
        this.provID = i;
        this.value = i2;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.infrastructure;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("Infrastructure") + TGqtTWl.JVU;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return (this.value > 0 ? "+" : "") + CFG.getPrecision2(this.value, 100);
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
            Game.getProvince(this.provID).setInfrastructure(Game.getProvince(this.provID).getInfrastructure() + this.value);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
