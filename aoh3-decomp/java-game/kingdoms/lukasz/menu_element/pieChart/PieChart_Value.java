package aoc.kingdoms.lukasz.menu_element.pieChart;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PieChart_Value {
    private float fPercentage;
    private double fValue;
    private int iDataID;

    public PieChart_Value(int i, float f) {
        this.iDataID = i;
        this.fValue = f;
    }

    public final int getDataID() {
        return this.iDataID;
    }

    public final float getPercentage() {
        return this.fPercentage;
    }

    public final double getValue() {
        return this.fValue;
    }

    public final void setPercentage(float f) {
        this.fPercentage = f;
    }
}
