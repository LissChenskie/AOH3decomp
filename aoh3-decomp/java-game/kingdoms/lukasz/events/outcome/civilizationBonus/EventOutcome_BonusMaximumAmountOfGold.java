package aoc.kingdoms.lukasz.events.outcome.civilizationBonus;

import aoc.kingdoms.lukasz.events.outcome.EventOutcome;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_BonusMaximumAmountOfGold extends EventOutcome {
    public float value;

    public EventOutcome_BonusMaximumAmountOfGold(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.gold;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("MaximumAmountOfGold") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return (this.value > 0.0f ? "+" : uNBYrZVGzy.PSzAZ) + CFG.getPrecision2(this.value, 1);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight2(int i) {
        return Game.lang.get("YearsX", i);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            CivilizationBonuses civilizationBonuses = new CivilizationBonuses();
            civilizationBonuses.MaximumAmountOfGold = this.value;
            civilizationBonuses.TempTurnID = Game_Calendar.TURN_ID + (i2 * Game_Calendar.NUM_OF_DAYS);
            Game.getCiv(i).addCivilizationBonus_Temporary(civilizationBonuses);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
