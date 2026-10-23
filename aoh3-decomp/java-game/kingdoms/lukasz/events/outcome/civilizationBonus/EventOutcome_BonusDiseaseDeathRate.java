package aoc.kingdoms.lukasz.events.outcome.civilizationBonus;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_BonusDiseaseDeathRate extends EventOutcome {
    public float value;

    public EventOutcome_BonusDiseaseDeathRate(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.disease;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("DiseasesDeathRate") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return (this.value > 0.0f ? "+" : "") + CFG.getPrecision2(this.value, 100) + IwYCCQBuFGwl.jNRKAvBoPHPsu;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight2(int i) {
        return Game.lang.get("YearsX", i);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            CivilizationBonuses civilizationBonuses = new CivilizationBonuses();
            civilizationBonuses.DiseaseDeathRate = this.value / 100.0f;
            civilizationBonuses.TempTurnID = Game_Calendar.TURN_ID + (i2 * Game_Calendar.NUM_OF_DAYS);
            Game.getCiv(i).addCivilizationBonus_Temporary(civilizationBonuses);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
