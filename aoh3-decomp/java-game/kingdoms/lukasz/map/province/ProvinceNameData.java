package aoc.kingdoms.lukasz.map.province;

import aoc.kingdoms.lukasz.jakowski.zOther.Point_XY;
import com.badlogic.gdx.math.Matrix4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceNameData {
    public float fCenterX;
    public float fCenterY;
    public float fX;
    public float fX2;
    public float fY;
    public float fY2;
    public List<Point_XY> drawPoints = new ArrayList();
    public float drawAngleLow = 0.0f;
    public List<Matrix4> drawMatrix4 = new ArrayList();
    public float fontScale = 1.0f;
}
