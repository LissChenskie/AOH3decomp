package aoc.kingdoms.lukasz.jakowski.Player.More;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PlayerActiveEvent {
    public int eventType;
    public int iTurnID;
    public int id;
    public int value1;
    public float value2;

    public PlayerActiveEvent() {
    }

    public PlayerActiveEvent(int i, int i2, int i3) {
        this.eventType = i;
        this.id = i2;
        this.iTurnID = i3;
    }

    public PlayerActiveEvent(int i, int i2, int i3, int i4, float f) {
        this.eventType = i;
        this.id = i2;
        this.iTurnID = i3;
        this.value1 = i4;
        this.value2 = f;
    }
}
