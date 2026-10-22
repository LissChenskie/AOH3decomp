package aoc.kingdoms.lukasz.map.province.data;

import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceData {
    public int c = 0;
    public int o = 0;
    public int w = -1;

    public int getCivID() {
        return this.c;
    }

    public int getOccupiedByCivID() {
        return this.o;
    }

    public int getWastelandLevel() {
        return this.w;
    }

    public void setCivID(int i) {
        this.c = i;
    }

    public void setOccupiedByCivID(int i, int i2) {
        this.o = i2;
        if (i2 != 0) {
            Game.getCiv(Game.getProvince(i).getCivID()).addOccupiedProvince(i);
        } else {
            Game.getCiv(Game.getProvince(i).getCivID()).removeOccupiedProvince(i);
        }
    }

    public void setWastelandLevel(int i) {
        this.w = i;
    }
}
