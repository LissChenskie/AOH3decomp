package aoc.kingdoms.lukasz.map.province.data;

import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceData4 {
    public boolean u = false;
    public float s = 0.0f;

    public float getSiegeProgress() {
        return this.s;
    }

    public boolean isUnderSiege() {
        return this.u;
    }

    public void setIsUnderSiege(int i, boolean z) {
        this.u = z;
        if (z) {
            Game.getCiv(Game.getProvince(i).getCivID()).addUnderSiege(i);
        } else {
            Game.getCiv(Game.getProvince(i).getCivID()).removeUnderSiege(i);
        }
    }

    public void setIsUnderSiege_Just(boolean z) {
        this.u = z;
    }

    public void setSiegeProgress(float f) {
        this.s = f;
    }
}
