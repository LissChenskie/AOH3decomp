package aoc.kingdoms.lukasz.map.province;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceConstructedBuilding {
    private int b0;
    private int b1;

    public ProvinceConstructedBuilding(int i, int i2) {
        this.b0 = i;
        this.b1 = i2;
    }

    public int getBuilding() {
        return this.b0;
    }

    public int getBuildingID() {
        return this.b1;
    }

    public void setBuilding(int i) {
        this.b0 = i;
    }

    public void setBuildingID(int i) {
        this.b1 = i;
    }
}
