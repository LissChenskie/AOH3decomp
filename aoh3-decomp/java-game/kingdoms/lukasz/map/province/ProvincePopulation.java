package aoc.kingdoms.lukasz.map.province;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvincePopulation {
    private int c;
    private int n;

    public ProvincePopulation() {
    }

    public ProvincePopulation(int i, int i2) {
        this.c = i;
        this.n = i2;
    }

    public final int getCivID() {
        return this.c;
    }

    public final int getPopulation() {
        return this.n;
    }

    public final void setPopulation(int i) {
        this.n = i;
    }
}
