package aoc.kingdoms.lukasz.map.battles;

import aoc.kingdoms.lukasz.map.army.ArmyRegiment;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class BattleRegiment {
    public String aK;
    public ArmyRegiment aR;
    public int c;
    public int ca;
    public int re;
    public int rn;
    public int cL = 0;
    public int rL = 0;
    public int d = 0;
    public byte f = 0;
    public byte l = 0;

    public BattleRegiment() {
    }

    public BattleRegiment(int i, ArmyRegiment armyRegiment, String str) {
        this.c = i;
        this.aR = armyRegiment;
        this.aK = str;
    }
}
