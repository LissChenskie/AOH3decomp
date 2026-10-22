package aoc.kingdoms.lukasz.jakowski;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Region {
    private int iMaxX;
    private int iMaxY;
    private int iMinX;
    private int iMinY;
    private int iProvincesSize = 0;
    private boolean belowZero = false;
    private List<Integer> lProvinces = new ArrayList();

    public final void addProvince(int i) {
        this.lProvinces.add(Integer.valueOf(i));
    }

    public final void buildRegionBounds() {
        if (this.lProvinces.size() > 0) {
            this.iMinX = Game.getProvince(this.lProvinces.get(0).intValue()).getMinX();
            this.iMaxX = Game.getProvince(this.lProvinces.get(0).intValue()).getMaxX();
            this.iMinY = Game.getProvince(this.lProvinces.get(0).intValue()).getMinY();
            this.iMaxY = Game.getProvince(this.lProvinces.get(0).intValue()).getMaxY();
            this.iProvincesSize = this.lProvinces.size();
            for (int i = 1; i < this.iProvincesSize; i++) {
                if (Game.getProvince(this.lProvinces.get(i).intValue()).getMinX() < this.iMinX) {
                    this.iMinX = Game.getProvince(this.lProvinces.get(i).intValue()).getMinX();
                }
                if (Game.getProvince(this.lProvinces.get(i).intValue()).getMaxX() > this.iMaxX) {
                    this.iMaxX = Game.getProvince(this.lProvinces.get(i).intValue()).getMaxX();
                }
                if (Game.getProvince(this.lProvinces.get(i).intValue()).getMinY() < this.iMinY) {
                    this.iMinY = Game.getProvince(this.lProvinces.get(i).intValue()).getMinY();
                }
                if (Game.getProvince(this.lProvinces.get(i).intValue()).getMaxY() > this.iMaxY) {
                    this.iMaxY = Game.getProvince(this.lProvinces.get(i).intValue()).getMaxY();
                }
            }
            this.belowZero = this.iMinX < 0;
        }
    }

    public final boolean getBelowZero() {
        return this.belowZero;
    }

    public final int getMaxX() {
        return this.iMaxX;
    }

    public final int getMaxY() {
        return this.iMaxY;
    }

    public final int getMinX() {
        return this.iMinX;
    }

    public final int getMinY() {
        return this.iMinY;
    }

    public final int getProvince(int i) {
        return this.lProvinces.get(i).intValue();
    }

    public final int getProvincesSize() {
        return this.iProvincesSize;
    }

    public final int getProvincesSize2() {
        return this.lProvinces.size();
    }

    public final void removeProvince(int i) {
        this.lProvinces.remove(i);
        this.iProvincesSize = this.lProvinces.size();
    }
}
