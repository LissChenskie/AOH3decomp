package aoc.kingdoms.lukasz.units;

import aoc.kingdoms.lukasz.jakowski.zOther.XY;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Path {
    public int moveToPosX;
    public int moveToPosY;
    public List<XY> pathPoints;

    public Path(int i, int i2, int i3, int i4) {
        ArrayList arrayList = new ArrayList();
        this.pathPoints = arrayList;
        this.moveToPosX = i3;
        this.moveToPosY = i4;
        arrayList.add(new XY(i3, i4));
    }

    public void update(int i) {
    }
}
