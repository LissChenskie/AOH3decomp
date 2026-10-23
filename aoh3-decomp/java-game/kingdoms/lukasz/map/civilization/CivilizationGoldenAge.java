package aoc.kingdoms.lukasz.map.civilization;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationGoldenAge {
    private int p = 0;
    private int m = 0;
    private int s = 0;

    public int getGoldenAgeMilitary() {
        return this.m;
    }

    public int getGoldenAgeProsperity() {
        return this.p;
    }

    public int getGoldenAgeScience() {
        return this.s;
    }

    public void setGoldenAgeMilitary(int i) {
        this.m = i;
    }

    public void setGoldenAgeProsperity(int i) {
        this.p = i;
    }

    public void setGoldenAgeScience(int i) {
        this.s = i;
    }
}
