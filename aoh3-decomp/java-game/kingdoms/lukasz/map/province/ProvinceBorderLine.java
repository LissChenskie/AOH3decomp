package aoc.kingdoms.lukasz.map.province;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceBorderLine {
    private float fAngle;
    private int iPosX;
    private int iPosY;
    private int iWidth;

    public ProvinceBorderLine(int i, int i2, int i3, int i4) {
        this.iPosX = i;
        this.iPosY = i2;
        int i5 = i3 - i;
        int i6 = i2 - i4;
        this.iWidth = (int) Math.ceil(Math.sqrt((i5 * i5) + (i6 * i6)));
        this.fAngle = (float) ((Math.atan2(i6, (-i) + i3) * 180.0d) / 3.141592653589793d);
    }

    public float getAngle() {
        return this.fAngle;
    }

    public int getPosX() {
        return this.iPosX;
    }

    public int getPosY() {
        return this.iPosY;
    }

    public int getWidth() {
        return this.iWidth;
    }
}
