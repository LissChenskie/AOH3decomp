package aoc.kingdoms.lukasz.events.outcome.province;

import aoc.kingdoms.lukasz.events.outcome.EventOutcome;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Province_TaxEfficiency extends EventOutcome {
    public float value;

    public EventOutcome_Province_TaxEfficiency(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.tax;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("TaxEfficiency") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return (this.value > 0.0f ? "+" : "") + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight2(int i) {
        try {
            return Game.getProvince(Game.getCiv(Game.player.iCivID).eventProvinceID).getProvinceName();
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateProvince(int i) {
        try {
            Game.getProvince(i).setTaxEfficiency(Game.getProvince(i).getTaxEfficiency() + this.value);
            Game.getProvince(i).updateProvinceIncome();
            Game.getCiv(Game.getProvince(i).getCivID()).updateTotalIncomePerMonth();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
