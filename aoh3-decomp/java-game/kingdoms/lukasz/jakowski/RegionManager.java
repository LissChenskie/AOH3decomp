package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import com.badlogic.gdx.Gdx;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class RegionManager {
    public List<Region> lRegions = new ArrayList();
    public int iRegionsSize = 0;

    public final void disposeRegions() {
        this.lRegions.clear();
        this.iRegionsSize = 0;
    }

    public final int getRegionID(int i) {
        for (int i2 = 0; i2 < this.iRegionsSize; i2++) {
            for (int i3 = 0; i3 < this.lRegions.get(i2).getProvincesSize(); i3++) {
                if (this.lRegions.get(i2).getProvince(i3) == i) {
                    return i2;
                }
            }
        }
        Gdx.app.log("AoC", fTNtCctcBZcqKK.zDohjhxaUcYgOdG + i);
        return 0;
    }

    public final void loadRegions() {
        this.lRegions.clear();
        this.iRegionsSize = 0;
        if (!FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/ProvinceOptimizationRegions.txt").exists()) {
            Region region = new Region();
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                region.addProvince(i);
            }
            this.lRegions.add(region);
            this.lRegions.get(0).buildRegionBounds();
            this.iRegionsSize = this.lRegions.size();
            return;
        }
        String[] strArrSplit = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/ProvinceOptimizationRegions.txt").readString().split("\n");
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
            arrayList.add(false);
        }
        for (int i3 = 0; i3 < strArrSplit.length; i3++) {
            String[] strArrSplit2 = strArrSplit[i3].split(";");
            Region region2 = new Region();
            for (String str : strArrSplit2) {
                region2.addProvince(Integer.parseInt(str));
            }
            for (int i4 = 0; i4 < strArrSplit2.length; i4++) {
                arrayList.set(region2.getProvince(i4), true);
            }
            this.lRegions.add(region2);
            this.lRegions.get(i3).buildRegionBounds();
        }
        Region region3 = new Region();
        for (int i5 = 0; i5 < Game.getProvincesSize(); i5++) {
            if (!((Boolean) arrayList.get(i5)).booleanValue()) {
                region3.addProvince(i5);
            }
        }
        if (region3.getProvincesSize2() > 0) {
            this.lRegions.add(region3);
            List<Region> list = this.lRegions;
            list.get(list.size() - 1).buildRegionBounds();
        }
        this.iRegionsSize = this.lRegions.size();
    }

    public final void updateRegionsSize() {
        this.iRegionsSize = this.lRegions.size();
    }
}
