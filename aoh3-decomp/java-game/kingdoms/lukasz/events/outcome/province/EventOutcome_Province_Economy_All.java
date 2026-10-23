package aoc.kingdoms.lukasz.events.outcome.province;

import aoc.kingdoms.lukasz.events.outcome.EventOutcome;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Province_Economy_All extends EventOutcome {
    public float value;

    public EventOutcome_Province_Economy_All(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Game_Calendar.IMG_ECONOMY;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get(gpVDKipRURuzw.AgzQBuKgdshI) + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return (this.value > 0.0f ? "+" : "") + CFG.getPrecision2(this.value, 100);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight2(int i) {
        return Game.lang.get("AllProvinces");
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
            try {
                Game.getProvince(Game.getCiv(i).getProvinceID(i3)).setEconomy(Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getEconomy() + this.value);
                Game.getProvince(Game.getCiv(i).getProvinceID(i3)).updateAfterEconomyChange();
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        Game.getCiv(i).updateTotalIncomePerMonth();
    }
}
