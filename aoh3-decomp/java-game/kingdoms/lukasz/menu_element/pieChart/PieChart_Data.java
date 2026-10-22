package aoc.kingdoms.lukasz.menu_element.pieChart;

import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PieChart_Data {
    private List<PieChart_Value> pieChartValues = new ArrayList();
    private int pieChartValuesSize = 0;

    public final void addPieChartValues(PieChart_Value pieChart_Value) {
        this.pieChartValues.add(pieChart_Value);
        this.pieChartValuesSize = this.pieChartValues.size();
    }

    public int getCivID(int i) {
        return getPieChartValue(i).getDataID();
    }

    public final PieChart_Value getPieChartValue(int i) {
        return this.pieChartValues.get(i);
    }

    public float getPieChartValue_ColorB(int i) {
        return Game.getCiv(getPieChartValue(i).getDataID()).getB();
    }

    public float getPieChartValue_ColorG(int i) {
        return Game.getCiv(getPieChartValue(i).getDataID()).getG();
    }

    public float getPieChartValue_ColorR(int i) {
        return Game.getCiv(getPieChartValue(i).getDataID()).getR();
    }

    public final int getPieChartValuesSize() {
        return this.pieChartValuesSize;
    }

    public final void sortAndBuild_PieChartValues() {
        ArrayList arrayList = new ArrayList();
        float value = 0.0f;
        for (int i = 0; i < getPieChartValuesSize(); i++) {
            arrayList.add(getPieChartValue(i));
            value = (float) (((double) value) + getPieChartValue(i).getValue());
        }
        this.pieChartValues.clear();
        while (arrayList.size() > 0) {
            int i2 = 0;
            for (int i3 = 1; i3 < arrayList.size(); i3++) {
                if (((PieChart_Value) arrayList.get(i2)).getValue() < ((PieChart_Value) arrayList.get(i3)).getValue()) {
                    i2 = i3;
                }
            }
            this.pieChartValues.add((PieChart_Value) arrayList.get(i2));
            arrayList.remove(i2);
        }
        for (int i4 = 0; i4 < getPieChartValuesSize(); i4++) {
            getPieChartValue(i4).setPercentage((float) ((getPieChartValue(i4).getValue() * 100.0d) / ((double) value)));
        }
    }
}
