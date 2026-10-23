package aoc.kingdoms.lukasz.map.province.data;

import aoc.kingdoms.lukasz.map.province.ProvincePopulation;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceData_Population {
    private List<ProvincePopulation> p = new ArrayList();

    public ProvincePopulation getPopulation(int i) {
        return this.p.get(i);
    }

    public List<ProvincePopulation> getPopulation() {
        return this.p;
    }
}
