package aoc.kingdoms.lukasz.map.army;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ArmyRecruit {
    public int armyID;
    public int cost;
    public int provinceID;
    public int timeLeft;
    public String toArmyKey;
    public int unitID;

    public ArmyRecruit() {
        this.toArmyKey = null;
    }

    public ArmyRecruit(int i, int i2, int i3, String str) {
        this.provinceID = i;
        this.unitID = i2;
        this.armyID = i3;
        this.toArmyKey = str;
    }
}
