package aoc.kingdoms.lukasz.events.outcome.civilizationBonus;

import aoc.kingdoms.lukasz.events.outcome.EventOutcome;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_BonusArmyMaintenance extends EventOutcome {
    public float value;

    public EventOutcome_BonusArmyMaintenance(float f) {
        this.value = f;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.armyMaintenance;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("ArmyMaintenance") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return (this.value > 0.0f ? "+" : aBEBOpwLZcQFCZ.ItMnxfuNBBQqU) + CFG.getPrecision2(this.value, 100) + "%";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight2(int i) {
        return Game.lang.get(ATsAGKCnv.xKWzGUzOGhoEy, i);
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            CivilizationBonuses civilizationBonuses = new CivilizationBonuses();
            civilizationBonuses.ArmyMaintenance = this.value;
            civilizationBonuses.TempTurnID = Game_Calendar.TURN_ID + (i2 * Game_Calendar.NUM_OF_DAYS);
            Game.getCiv(i).addCivilizationBonus_Temporary(civilizationBonuses);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
