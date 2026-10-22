package aoc.kingdoms.lukasz.map.civilization.stats;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationEventsData {
    public int e = 0;
    public int g = 0;
    public int t = 0;
    public int m = 0;
    public int d = 0;

    public void addDevelopedInfrastructure(int i) {
        this.d += i;
    }

    public void addIncreasedGrowthRate(int i) {
        this.g += i;
    }

    public void addIncreasedManpower(int i) {
        this.m += i;
    }

    public void addIncreasedTaxEfficiency(int i) {
        this.t += i;
    }

    public void addInvestedInEconomy(int i) {
        this.e += i;
    }

    public int getDevelopedInfrastructure() {
        return this.d;
    }

    public int getIncreasedGrowthRate() {
        return this.g;
    }

    public int getIncreasedManpower() {
        return this.m;
    }

    public int getIncreasedTaxEfficiency() {
        return this.t;
    }

    public int getInvestedInEconomy() {
        return this.e;
    }

    public void setDevelopedInfrastructure(int i) {
        this.d = i;
    }

    public void setIncreasedGrowthRate(int i) {
        this.g = i;
    }

    public void setIncreasedManpower(int i) {
        this.m = i;
    }

    public void setIncreasedTaxEfficiency(int i) {
        this.t = i;
    }

    public void setInvestedInEconomy(int i) {
        this.e = i;
    }
}
