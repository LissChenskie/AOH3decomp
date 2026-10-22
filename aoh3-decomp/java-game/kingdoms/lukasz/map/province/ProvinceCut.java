package aoc.kingdoms.lukasz.map.province;

import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceCut {
    public int iMaxX;
    public int iMaxY;
    public int iMinX;
    public int iMinY;
    private int iPointsSize;
    private List<Short> lPointsX;
    private List<Short> lPointsY;

    public ProvinceCut(List<Short> list, List<Short> list2) {
        this.iMinX = 0;
        this.iMaxX = 0;
        this.iMinY = 0;
        this.iMaxY = 0;
        this.lPointsX = list;
        this.lPointsY = list2;
        int size = list.size();
        this.iPointsSize = size;
        if (size > 0) {
            this.iMinX = this.lPointsX.get(0).shortValue();
            this.iMaxX = this.lPointsX.get(0).shortValue();
            this.iMinY = this.lPointsY.get(0).shortValue();
            this.iMaxY = this.lPointsY.get(0).shortValue();
            for (int i = 1; i < this.iPointsSize; i++) {
                if (this.lPointsX.get(i).shortValue() > this.iMaxX) {
                    this.iMaxX = this.lPointsX.get(i).shortValue();
                }
                if (this.lPointsX.get(i).shortValue() < this.iMinX) {
                    this.iMinX = this.lPointsX.get(i).shortValue();
                }
                if (this.lPointsY.get(i).shortValue() > this.iMaxY) {
                    this.iMaxY = this.lPointsY.get(i).shortValue();
                }
                if (this.lPointsY.get(i).shortValue() < this.iMinY) {
                    this.iMinY = this.lPointsY.get(i).shortValue();
                }
            }
        }
    }

    public final int getPointsSize() {
        return this.iPointsSize;
    }

    public final int getPointsX(int i) {
        return this.lPointsX.get(i).shortValue() * Game.mapBG.iMapScale;
    }

    public final int getPointsY(int i) {
        return this.lPointsY.get(i).shortValue() * Game.mapBG.iMapScale;
    }
}
