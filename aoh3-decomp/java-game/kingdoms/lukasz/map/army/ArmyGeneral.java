package aoc.kingdoms.lukasz.map.army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ArmyGeneral {
    private int at;
    public int c;
    public int d;
    private int df;
    private int e;
    public int g;
    public String key;
    public int m;
    public String n;
    public String sI;
    public int y;

    public ArmyGeneral() {
        this.n = "";
        this.y = 0;
        this.m = 0;
        this.d = 0;
        this.g = 0;
        this.sI = null;
        this.at = 0;
        this.df = 0;
    }

    public ArmyGeneral(String str, int i, int i2, int i3, int i4, int i5, String str2) {
        this.m = 0;
        this.d = 0;
        this.n = str;
        this.g = i;
        this.sI = str2;
        this.at = i2;
        this.df = i3;
        this.y = i4;
        this.c = i5;
        this.m = Game.oR.nextInt(12) + 1;
        this.d = Game.oR.nextInt(Game_Calendar.getNumOfDaysInMonth(this.m)) + 1;
        this.e = GameValues.generals.COMBAT_EXPERIENCE_NEW_GENERAL_MIN + Game.oR.nextInt(GameValues.generals.COMBAT_EXPERIENCE_NEW_GENERAL_RANDOM);
        this.key = CFG.extraRandomTag();
    }

    public void addCombatExperience(int i) {
        int i2 = this.e + i;
        this.e = i2;
        if (i2 >= GameValues.generals.COMBAT_EXPERIENCE_MAX) {
            if (Game.oR.nextInt(100) < GameValues.generals.COMBAT_EXPERIENCE_INCREASE_ATTACK_CHANCE && this.at < GameValues.generals.COMBAT_EXPERIENCE_MAX_ATTACK) {
                this.at++;
            } else if (this.df < GameValues.generals.COMBAT_EXPERIENCE_MAX_DEFENSE) {
                this.df++;
            }
            this.e = Math.min(this.e - GameValues.generals.COMBAT_EXPERIENCE_MAX, GameValues.generals.COMBAT_EXPERIENCE_MAX / 2);
        }
    }

    public int getAttack() {
        return this.at + Game.getCiv(this.c).civBonuses.GeneralAttack;
    }

    public int getCombatExperience() {
        return this.e;
    }

    public int getDefense() {
        return this.df + Game.getCiv(this.c).civBonuses.GeneralDefense;
    }
}
