package aoc.kingdoms.lukasz.map.technology;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TechnologyResearch {
    public float fProgress;
    public int iTechID;

    public TechnologyResearch(int i) {
        this.fProgress = 0.0f;
        this.iTechID = i;
    }

    public TechnologyResearch(int i, float f) {
        this.iTechID = i;
        this.fProgress = f;
    }
}
