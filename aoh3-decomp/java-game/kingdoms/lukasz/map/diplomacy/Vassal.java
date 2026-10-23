package aoc.kingdoms.lukasz.map.diplomacy;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Vassal {
    public int c;
    public boolean cW;
    public float lD;
    public int mL;
    public int tL;

    public Vassal() {
        this.lD = 0.0f;
    }

    public Vassal(int i) {
        this.lD = 0.0f;
        this.c = i;
        this.tL = 1;
        setManpower(Game.oR.nextInt(GameValues.vassal.VASSAL_MANPOWER_TO_LORD.length));
        if (this.mL == 0) {
            setTribute(GameValues.vassal.VASSAL_INCOME_TO_LORD.length - 1);
        }
        this.cW = GameValues.vassal.VASSAL_CAN_DECLARE_WAR_DEFAULT;
    }

    public void setLibertyDesire_Change(float f) {
        this.lD = Math.min(Math.max(GameValues.vassal.LIBERTY_DESIRE_MIN, this.lD + f), GameValues.vassal.LIBERTY_DESIRE_MAX);
    }

    public final void setManpower(int i) {
        this.mL = Math.max(0, Math.min(GameValues.vassal.VASSAL_MANPOWER_TO_LORD.length - 1, i));
        if (i == 2) {
            this.tL = 0;
        } else if (i == 1) {
            this.tL = Math.min(1, this.tL);
        }
    }

    public final void setTribute(int i) {
        int iMax = Math.max(0, Math.min(GameValues.vassal.VASSAL_INCOME_TO_LORD.length - 1, i));
        this.tL = iMax;
        if (iMax == 2) {
            this.mL = 0;
        } else if (iMax == 1) {
            this.mL = Math.min(1, this.mL);
        }
    }
}
