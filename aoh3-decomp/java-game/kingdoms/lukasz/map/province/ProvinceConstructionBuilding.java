package aoc.kingdoms.lukasz.map.province;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceConstructionBuilding {
    private int building;
    private int buildingID;
    private int iConstructionTime;
    public int iConstructionTimeLeft;

    public ProvinceConstructionBuilding() {
    }

    public ProvinceConstructionBuilding(int i, int i2, int i3, int i4) {
        this.building = i;
        this.buildingID = i2;
        this.iConstructionTime = i3;
        this.iConstructionTimeLeft = i4;
    }

    public int getBuilding() {
        return this.building;
    }

    public int getBuildingID() {
        return this.buildingID;
    }

    public int getConstructionTime() {
        return this.iConstructionTime;
    }

    public int getConstructionTimeLeft() {
        return this.iConstructionTimeLeft;
    }

    public void setBuilding(int i) {
        this.building = i;
    }

    public void setBuildingID(int i) {
        this.buildingID = i;
    }

    public void setConstructionTime(int i) {
        this.iConstructionTime = i;
    }

    public void setConstructionTimeLeft(int i) {
        this.iConstructionTimeLeft = i;
    }
}
