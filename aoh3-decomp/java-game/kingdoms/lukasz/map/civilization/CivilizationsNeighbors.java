package aoc.kingdoms.lukasz.map.civilization;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.province.Province;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationsNeighbors {
    public List<CivNeighbor> civs = new ArrayList();
    public int civsSize = 0;

    public class CivNeighbor {
        public boolean byLand;
        public int civID;

        public CivNeighbor() {
        }

        public CivNeighbor(int i, boolean z) {
            this.civID = i;
            this.byLand = z;
        }
    }

    private void addLandNeighbors(Province province, int i) {
        int neighboringProvincesSize = province.getNeighboringProvincesSize();
        for (int i2 = 0; i2 < neighboringProvincesSize; i2++) {
            int civID = Game.getProvince(province.getNeighboringProvinces(i2)).getCivID();
            if (civID > 0 && civID != i) {
                addCiv(civID, true);
            }
        }
    }

    private void addSeaNeighbors(Province province, int i) {
        int neighboringSeaProvincesSize = province.getNeighboringSeaProvincesSize();
        for (int i2 = 0; i2 < neighboringSeaProvincesSize; i2++) {
            Province province2 = Game.getProvince(province.getNeighboringSeaProvinces(i2));
            if (province2.getLevelOfPort() == -2) {
                Game.getCiv(i).haveAccessSea = true;
            }
            int neighboringProvincesSize = province2.getNeighboringProvincesSize();
            for (int i3 = 0; i3 < neighboringProvincesSize; i3++) {
                int neighboringProvinces = province2.getNeighboringProvinces(i3);
                int civID = Game.getProvince(neighboringProvinces).getCivID();
                if (civID > 0 && civID != i && !Game.getProvince(neighboringProvinces).getSeaProvince()) {
                    addCiv(civID, false);
                }
            }
        }
    }

    public void addCiv(int i, boolean z) {
        boolean z2 = true;
        for (int size = this.civs.size() - 1; size >= 0; size--) {
            if (this.civs.get(size).civID == i) {
                CivNeighbor civNeighbor = this.civs.get(size);
                if (!this.civs.get(size).byLand && !z) {
                    z2 = false;
                }
                civNeighbor.byLand = z2;
                return;
            }
        }
        this.civs.add(new CivNeighbor(i, z));
    }

    public final void buildNeighbors(int i) {
        this.civs.clear();
        this.civsSize = 0;
        Game.getCiv(i).haveAccessSea = false;
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            try {
                int provinceID = Game.getCiv(i).getProvinceID(i2);
                if (provinceID >= 0) {
                    addLandNeighbors(Game.getProvince(provinceID), i);
                    addSeaNeighbors(Game.getProvince(provinceID), i);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        this.civsSize = this.civs.size();
    }

    public boolean isNeighbor(int i) {
        return this.civs.contains(Integer.valueOf(i));
    }

    public void logCivNeighbors(int i) {
        CFG.LOG("CivNeighbors: " + Game.getCiv(i).getCivName() + " -> " + this.civsSize);
        for (int i2 = 0; i2 < this.civsSize; i2++) {
            CFG.LOG(LBhZogys.XFvHhgPpxYGsj + Game.getCiv(this.civs.get(i2).civID).getCivName());
        }
    }
}
