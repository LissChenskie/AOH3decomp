package aoc.kingdoms.lukasz.events.outcome;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.Ruler;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventOutcome_AddRuler extends EventOutcome {
    public int BornDay;
    public int BornMonth;
    public int BornYear;
    public String imageID;
    public String sName;
    public String sSurname;

    public EventOutcome_AddRuler(String str, String str2, String str3, int i, int i2, int i3) {
        this.sName = str;
        this.sSurname = str2;
        this.imageID = str3;
        this.BornDay = i;
        this.BornMonth = i2;
        this.BornYear = i3;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public int getImage() {
        return Images.council;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringLeft() {
        return Game.lang.get("Ruler") + ": ";
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public String getStringRight() {
        return "" + this.sName + "  " + this.sSurname;
    }

    @Override // aoc.kingdoms.lukasz.events.outcome.EventOutcome
    public void updateCiv(int i, int i2) {
        try {
            int iNextInt = this.BornYear;
            if (Game_Calendar.currentYear - iNextInt < 10 || Game_Calendar.currentYear - iNextInt > 99) {
                iNextInt = (Game_Calendar.currentYear - GameValues.generals.GENERAL_YEARS_OLD_MIN) - Game.oR.nextInt(GameValues.generals.GENERAL_YEARS_OLD_RANDOM);
            }
            Game.getCiv(i).ruler = new Ruler(i, this.sName + " " + this.sSurname, "" + this.imageID, this.BornDay, this.BornMonth, iNextInt, Game_Calendar.currentYear, false, false);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
