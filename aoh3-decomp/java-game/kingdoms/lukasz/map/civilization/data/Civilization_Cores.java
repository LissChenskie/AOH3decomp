package aoc.kingdoms.lukasz.map.civilization.data;

import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Civilization_Cores {
    public List<Integer> provinces = new ArrayList();
    public int provincesSize = 0;

    public final void addProvince(int i) {
        if (this.provinces.contains(Integer.valueOf(i))) {
            return;
        }
        this.provinces.add(Integer.valueOf(i));
        this.provincesSize = this.provinces.size();
    }

    public final void buildProvincesNonCore(int i) {
        this.provinces.clear();
        this.provincesSize = 0;
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            if (!Game.getProvince(Game.getCiv(i).getProvinceID(i2)).haveACore && Game.getProvince(Game.getCiv(i).getProvinceID(i2)).coreCreation == null) {
                this.provinces.add(Integer.valueOf(Game.getCiv(i).getProvinceID(i2)));
            }
        }
        this.provincesSize = this.provinces.size();
    }

    public final void checkProvince(int i, int i2) {
        if (Game.getProvince(i).getCivID() != i2) {
            removeProvince(i);
            return;
        }
        if (Game.getProvince(i).haveACore) {
            removeProvince(i);
        } else {
            if (this.provinces.contains(Integer.valueOf(i))) {
                return;
            }
            this.provinces.add(Integer.valueOf(i));
            this.provincesSize = this.provinces.size();
        }
    }

    public final void checkProvince_Full(int i, int i2) {
        if (Game.getProvince(i).getCivID() != i2) {
            removeProvince(i);
            return;
        }
        if (Game.getProvince(i).haveACore(i2)) {
            removeProvince(i);
        } else {
            if (this.provinces.contains(Integer.valueOf(i))) {
                return;
            }
            this.provinces.add(Integer.valueOf(i));
            this.provincesSize = this.provinces.size();
        }
    }

    public final void removeProvince(int i) {
        for (int i2 = 0; i2 < this.provincesSize; i2++) {
            if (this.provinces.get(i2).intValue() == i) {
                this.provinces.remove(i2);
                this.provincesSize = this.provinces.size();
                return;
            }
        }
    }
}
