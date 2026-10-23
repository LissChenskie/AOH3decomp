package aoc.kingdoms.lukasz.events.outcome.province;

import aoc.kingdoms.lukasz.events.outcome.EventOutcome;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_Province_Devastation_All extends EventOutcome {
    public float value;

    public EventOutcome_Province_Devastation_All(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.devastation;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("Devastation") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return (this.value > 0.0f ? "+" : "") + CFG.getPrecision2(this.value, 100) + "%";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight2(int i) {
        return Game.lang.get("AllProvinces");
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
            try {
                Game.getProvince(Game.getCiv(i).getProvinceID(i3)).setDevastation(Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getDevastation() + (this.value / 100.0f));
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }
}
