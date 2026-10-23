package aoc.kingdoms.lukasz.map.province.data;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceData9 {
    public int s = -1;
    public int e = 0;

    public int getColonizationGrowthRateExtra() {
        return this.e;
    }

    public int getColonizationStartedTurnID() {
        return this.s;
    }

    public void setColonizationGrowthRateExtra(int i) {
        this.e = i;
    }

    public void setColonizationStartedTurnID(int i) {
        this.s = i;
    }
}
