package aoc.kingdoms.lukasz.map.civilization.stats;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationEventsData2 {
    public int b = 0;
    public int a = 0;
    public int e = 0;
    public int m = 0;
    public int c = 0;

    public void addAdministrativeBuildingsConstructed(int i) {
        this.a += i;
    }

    public void addBuildingsConstructed(int i) {
        this.b += i;
    }

    public void addCapitalBuildingsConstructed(int i) {
        this.c += i;
    }

    public void addEconomyBuildingsConstructed(int i) {
        this.e += i;
    }

    public void addMilitaryBuildingsConstructed(int i) {
        this.m += i;
    }

    public int getAdministrativeBuildingsConstructed() {
        return this.a;
    }

    public int getBuildingsConstructed() {
        return this.b;
    }

    public int getCapitalBuildingsConstructed() {
        return this.c;
    }

    public int getEconomyBuildingsConstructed() {
        return this.e;
    }

    public int getMilitaryBuildingsConstructed() {
        return this.m;
    }
}
