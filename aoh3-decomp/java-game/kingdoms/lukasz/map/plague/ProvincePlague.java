package aoc.kingdoms.lukasz.map.plague;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvincePlague {
    public int deaths;
    public int id;
    public int sinceTurnID;
    public float turnsLeft;

    public ProvincePlague() {
        this.id = 0;
        this.sinceTurnID = 0;
        this.deaths = 0;
        this.turnsLeft = 0.0f;
    }

    public ProvincePlague(int i, int i2, float f, int i3) {
        this.id = i;
        this.sinceTurnID = i2;
        this.turnsLeft = f;
        this.deaths = i3;
    }
}
