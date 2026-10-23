package aoc.kingdoms.lukasz.units;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Hitbox {
    private int iHeight;
    private int iPosX;
    private int iPosY;
    private int iWidth;

    public Hitbox(int i, int i2, int i3, int i4) {
        this.iPosX = i;
        this.iPosY = i2;
        this.iWidth = i3;
        this.iHeight = i4;
    }

    public int getHeight() {
        return this.iHeight;
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

    public void setHeight(int i) {
        this.iHeight = i;
    }

    public void setPosX(int i) {
        this.iPosX = i;
    }

    public void setPosY(int i) {
        this.iPosY = i;
    }

    public void setWidth(int i) {
        this.iWidth = i;
    }
}
