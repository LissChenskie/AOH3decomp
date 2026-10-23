package aoc.kingdoms.lukasz.map.war;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class WarCivilization {
    public int iCasualties;
    public int iCivID;

    public WarCivilization() {
        this.iCivID = 0;
        this.iCasualties = 0;
    }

    public WarCivilization(int i) {
        this.iCasualties = 0;
        this.iCivID = i;
    }

    public WarCivilization(int i, int i2) {
        this.iCivID = i;
        this.iCasualties = i2;
    }
}
