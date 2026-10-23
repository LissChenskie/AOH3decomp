package aoc.kingdoms.lukasz.map.civilization.save;

import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivData2 {
    public int d;
    public int g;
    public int l;
    public int m;

    public CivData2() {
        this.g = 0;
        this.l = 0;
        this.m = 0;
        this.d = 0;
    }

    public CivData2(int i) {
        this.g = 0;
        this.l = 0;
        this.m = 0;
        this.d = 0;
        this.g = (int) (Game.getCiv(i).fGold * 100.0f);
        this.l = (int) (Game.getCiv(i).fLegacy * 100.0f);
        this.m = (int) (Game.getCiv(i).fManpower * 100.0d);
        this.d = (int) (Game.getCiv(i).fDiplomacy * 100.0f);
    }

    public void update(int i) {
        Game.getCiv(i).fGold = this.g / 100.0f;
        Game.getCiv(i).fLegacy = this.l / 100.0f;
        Game.getCiv(i).fManpower = this.m / 100.0f;
        Game.getCiv(i).fDiplomacy = this.d / 100.0f;
    }
}
