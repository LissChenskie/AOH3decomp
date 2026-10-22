package aoc.kingdoms.lukasz.map.civilization.stats;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationEventsData3 {
    public int a = 0;
    public int p = 0;
    public int w = 0;

    public void addConqueredProvinces(int i) {
        this.p += i;
    }

    public void addNumOfWars(int i) {
        this.w += i;
    }

    public void addRecruitedAdvisors(int i) {
        this.a += i;
    }

    public int getConqueredProvinces() {
        return this.p;
    }

    public int getNumOfWars() {
        return this.w;
    }

    public int getRecruitedAdvisors() {
        return this.a;
    }
}
