package aoc.kingdoms.lukasz.map.civilization;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.zOther.Point_XY;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.CatmullRomSpline;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationRegion {
    public Point_XY centerCharXY;
    private int iProvincesSize;
    private int iRegionID;
    private List<Integer> lProvinces = new ArrayList();
    protected List<Integer> lCoastlineProvinces = new ArrayList();
    private List<Integer> shortestLine = new ArrayList();
    private int iMinX = 0;
    private int iMaxX = 0;
    private int iMinY = 0;
    private int iMaxY = 0;
    public int iAveragePointPosX = 0;
    public int iAveragePointPosY = 0;
    private float fontScale = 1.0f;
    private float fontScale2 = 1.0f;
    private float fAngle = 0.0f;
    private float fAngle_Low = 0.0f;
    private int iCharMaxWidth = 0;
    private int iCharMaxHeight = 0;
    public List<Point_XY> lPoints = new ArrayList();
    public List<Matrix4> drawMatrix4 = new ArrayList();
    protected boolean drawName = true;
    private List<Boolean> triedToUse = new ArrayList();
    private int numOfTries = 0;

    public CivilizationRegion() {
    }

    public CivilizationRegion(int i, int i2) {
        this.iRegionID = i2;
        addProvince(i);
    }

    private final void buildAveragePoint() {
        int i;
        int minX = Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).getMinX();
        int maxX = Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).getMaxX();
        int minY = Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).getMinY();
        int maxY = Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).getMaxY();
        if (Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).getMinX() < minX) {
            minX = Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).getMinX();
        }
        if (Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).getMaxX() > maxX) {
            maxX = Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).getMaxX();
        }
        if (Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).getMinY() < minY) {
            minY = Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).getMinY();
        }
        if (Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).getMaxY() > maxY) {
            maxY = Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).getMaxY();
        }
        long j = 0;
        int i2 = 0;
        long j2 = 0;
        for (int i3 = 0; i3 < getProvincesSize(); i3++) {
            if (Game.getProvince(getProvince(i3)).iCenterShiftX < minX || Game.getProvince(getProvince(i3)).iCenterShiftX > maxX) {
                if (((Game.getProvince(getProvince(i3)).getMinX() > minX && Game.getProvince(getProvince(i3)).getMinX() <= maxX) || (Game.getProvince(getProvince(i3)).getMaxX() > minX && Game.getProvince(getProvince(i3)).getMaxX() <= maxX)) && ((Game.getProvince(getProvince(i3)).getMinY() >= minY && Game.getProvince(getProvince(i3)).getMinY() <= maxY) || (Game.getProvince(getProvince(i3)).getMaxY() >= minY && Game.getProvince(getProvince(i3)).getMaxY() <= maxY))) {
                    j += (long) Game.getProvince(getProvince(i3)).iCenterShiftX;
                    i = Game.getProvince(getProvince(i3)).iCenterShiftY;
                    j2 += (long) i;
                    i2++;
                }
            } else if (Game.getProvince(getProvince(i3)).iCenterShiftY >= minY && Game.getProvince(getProvince(i3)).iCenterShiftY <= maxY) {
                j += (long) Game.getProvince(getProvince(i3)).iCenterShiftX;
                i = Game.getProvince(getProvince(i3)).iCenterShiftY;
                j2 += (long) i;
                i2++;
            }
        }
        if (i2 == 0) {
            i2 = 1;
        }
        long j3 = i2;
        this.iAveragePointPosX = (int) (j / j3);
        this.iAveragePointPosY = (int) (j2 / j3);
        int centerX = (Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).getCenterX() + Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).getCenterX()) / 2;
        int centerY = (Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).getCenterY() + Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).getCenterY()) / 2;
        this.iAveragePointPosX = (int) (centerX + ((centerX - this.iAveragePointPosX) * 0.6f));
        this.iAveragePointPosY = (int) (centerY + ((centerY - this.iAveragePointPosY) * 0.6f));
    }

    private final void buildMinMaxBounds() {
        try {
            this.iMinX = Game.getProvince(this.lProvinces.get(0).intValue()).getMinX();
            this.iMaxX = Game.getProvince(this.lProvinces.get(0).intValue()).getMaxX();
            this.iMinY = Game.getProvince(this.lProvinces.get(0).intValue()).getMinY();
            this.iMaxY = Game.getProvince(this.lProvinces.get(0).intValue()).getMaxY();
            for (int i = 1; i < this.iProvincesSize; i++) {
                if (Game.getProvince(this.lProvinces.get(i).intValue()).getMinX() < this.iMinX) {
                    this.iMinX = Game.getProvince(this.lProvinces.get(i).intValue()).getMinX();
                }
                if (Game.getProvince(this.lProvinces.get(i).intValue()).getMaxX() > this.iMaxX) {
                    this.iMaxX = Game.getProvince(this.lProvinces.get(i).intValue()).getMaxX();
                }
                if (Game.getProvince(this.lProvinces.get(i).intValue()).getMinY() < this.iMinY) {
                    this.iMinY = Game.getProvince(this.lProvinces.get(i).intValue()).getMinY();
                }
                if (Game.getProvince(this.lProvinces.get(i).intValue()).getMaxY() > this.iMaxY) {
                    this.iMaxY = Game.getProvince(this.lProvinces.get(i).intValue()).getMaxY();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    private final Point_XY canDrawTextProperly(int i, int i2) {
        int i3;
        float civNameLength;
        buildAveragePoint();
        ArrayList arrayList = new ArrayList();
        int i4 = Game.getProvince(i).iCenterShiftX;
        int i5 = Game.getProvince(i2).iCenterShiftX;
        float f = (i5 - i4) * 0.15f;
        int iAbs = (((int) Math.abs(f)) * (i4 > i5 ? -1 : 1)) + i4;
        int iAbs2 = i5 + (((int) Math.abs(f)) * (i5 > i4 ? -1 : 1));
        int i6 = Game.getProvince(i).iCenterShiftY;
        int i7 = Game.getProvince(i2).iCenterShiftY;
        float f2 = (i7 - i6) * 0.15f;
        int iAbs3 = (((int) Math.abs(f2)) * (i6 > i7 ? -1 : 1)) + i6;
        int iAbs4 = i7 + (((int) Math.abs(f2)) * (i7 <= i6 ? 1 : -1));
        int civNameLength2 = Game.getCiv(Game.getProvince(i).getCivID()).getCivNameLength() * 10;
        Vector2[] vector2Arr = new Vector2[civNameLength2];
        float f3 = iAbs;
        float f4 = iAbs3;
        float f5 = iAbs2;
        float f6 = iAbs4;
        CatmullRomSpline catmullRomSpline = new CatmullRomSpline(new Vector2[]{new Vector2(f3, f4), new Vector2(f3, f4), new Vector2(this.iAveragePointPosX, this.iAveragePointPosY), new Vector2(f5, f6), new Vector2(f5, f6)}, false);
        for (int i8 = 0; i8 < civNameLength2; i8++) {
            Vector2 vector2 = new Vector2();
            vector2Arr[i8] = vector2;
            catmullRomSpline.valueAt(vector2, i8 / (civNameLength2 - 1.0f));
        }
        float lineWidth2 = 0.0f;
        float lineWidth3 = 0.0f;
        int i9 = 0;
        while (true) {
            i3 = civNameLength2 - 1;
            if (i9 >= i3) {
                break;
            }
            int i10 = (int) vector2Arr[i9].x;
            int i11 = (int) vector2Arr[i9].y;
            i9++;
            lineWidth3 += getLineWidth2(i10, i11, (int) vector2Arr[i9].x, (int) vector2Arr[i9].y);
        }
        arrayList.add(new Point_XY((int) vector2Arr[0].x, (int) vector2Arr[0].y));
        try {
            civNameLength = lineWidth3 / (Game.getCiv(Game.getProvince(i).getCivID()).getCivNameLength() - 1);
        } catch (ArithmeticException e) {
            CFG.exceptionStack(e);
            civNameLength = 0.0f;
        }
        int i12 = 0;
        for (int i13 = 1; i13 < Game.getCiv(Game.getProvince(i).getCivID()).getCivNameLength(); i13++) {
            while (i12 < i3) {
                int i14 = i12 + 1;
                lineWidth2 += getLineWidth2((int) vector2Arr[i12].x, (int) vector2Arr[i12].y, (int) vector2Arr[i14].x, (int) vector2Arr[i14].y);
                if (lineWidth2 >= civNameLength) {
                    arrayList.add(new Point_XY((int) vector2Arr[i12].x, (int) vector2Arr[i12].y));
                    lineWidth2 = civNameLength - lineWidth2;
                    break;
                }
                i12 = i14;
            }
        }
        arrayList.add(new Point_XY((int) vector2Arr[i3].x, (int) vector2Arr[i3].y));
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            int provinceID_Point = Game.setProvinceID_Point(((Point_XY) arrayList.get(size)).getPosX(), ((Point_XY) arrayList.get(size)).getPosY());
            if (provinceID_Point >= 0 && Game.getProvince(i).getCivID() != Game.getProvince(provinceID_Point).getCivID()) {
                return (Point_XY) arrayList.get(size);
            }
        }
        int iBuildScaleOfText = (int) buildScaleOfText(0);
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            int provinceID_Point2 = Game.setProvinceID_Point(((Point_XY) arrayList.get(size2)).getPosX() + iBuildScaleOfText, ((Point_XY) arrayList.get(size2)).getPosY());
            if (provinceID_Point2 >= 0 && Game.getProvince(i).getCivID() != Game.getProvince(provinceID_Point2).getCivID()) {
                return (Point_XY) arrayList.get(size2);
            }
            int provinceID_Point3 = Game.setProvinceID_Point(((Point_XY) arrayList.get(size2)).getPosX() - iBuildScaleOfText, ((Point_XY) arrayList.get(size2)).getPosY());
            if (provinceID_Point3 >= 0 && Game.getProvince(i).getCivID() != Game.getProvince(provinceID_Point3).getCivID()) {
                return (Point_XY) arrayList.get(size2);
            }
            int provinceID_Point4 = Game.setProvinceID_Point(((Point_XY) arrayList.get(size2)).getPosX(), ((Point_XY) arrayList.get(size2)).getPosY() + iBuildScaleOfText);
            if (provinceID_Point4 >= 0 && Game.getProvince(i).getCivID() != Game.getProvince(provinceID_Point4).getCivID()) {
                return (Point_XY) arrayList.get(size2);
            }
            int provinceID_Point5 = Game.setProvinceID_Point(((Point_XY) arrayList.get(size2)).getPosX(), ((Point_XY) arrayList.get(size2)).getPosY() - iBuildScaleOfText);
            if (provinceID_Point5 >= 0 && Game.getProvince(i).getCivID() != Game.getProvince(provinceID_Point5).getCivID()) {
                return (Point_XY) arrayList.get(size2);
            }
            int provinceID_Point6 = Game.setProvinceID_Point(((Point_XY) arrayList.get(size2)).getPosX() - iBuildScaleOfText, ((Point_XY) arrayList.get(size2)).getPosY() + iBuildScaleOfText);
            if (provinceID_Point6 >= 0 && Game.getProvince(i).getCivID() != Game.getProvince(provinceID_Point6).getCivID()) {
                return (Point_XY) arrayList.get(size2);
            }
            int provinceID_Point7 = Game.setProvinceID_Point(((Point_XY) arrayList.get(size2)).getPosX() + iBuildScaleOfText, ((Point_XY) arrayList.get(size2)).getPosY() + iBuildScaleOfText);
            if (provinceID_Point7 >= 0 && Game.getProvince(i).getCivID() != Game.getProvince(provinceID_Point7).getCivID()) {
                return (Point_XY) arrayList.get(size2);
            }
            int provinceID_Point8 = Game.setProvinceID_Point(((Point_XY) arrayList.get(size2)).getPosX() - iBuildScaleOfText, ((Point_XY) arrayList.get(size2)).getPosY() - iBuildScaleOfText);
            if (provinceID_Point8 >= 0 && Game.getProvince(i).getCivID() != Game.getProvince(provinceID_Point8).getCivID()) {
                return (Point_XY) arrayList.get(size2);
            }
            int provinceID_Point9 = Game.setProvinceID_Point(((Point_XY) arrayList.get(size2)).getPosX() + iBuildScaleOfText, ((Point_XY) arrayList.get(size2)).getPosY() - iBuildScaleOfText);
            if (provinceID_Point9 >= 0 && Game.getProvince(i).getCivID() != Game.getProvince(provinceID_Point9).getCivID()) {
                return (Point_XY) arrayList.get(size2);
            }
        }
        return null;
    }

    public static int getLineWidth(int i, int i2, int i3, int i4) {
        return (int) Math.sqrt(Math.pow(i - i3, 2.0d) + Math.pow(i2 - i4, 2.0d));
    }

    public static float getLineWidth2(int i, int i2, int i3, int i4) {
        return (float) Math.sqrt(Math.pow(i - i3, 2.0d) + Math.pow(i2 - i4, 2.0d));
    }

    public static float getLineWidth3(float f, float f2, float f3, float f4) {
        return (float) Math.sqrt(Math.pow(f - f3, 2.0d) + Math.pow(f2 - f4, 2.0d));
    }

    public static float getLinesAngle(int i, int i2, int i3, int i4) {
        return (float) ((Math.atan2(i2 - i4, (-i) + i3) * 180.0d) / 3.141592653589793d);
    }

    public static float getLinesAngle2(float f, float f2, float f3, float f4) {
        return (float) ((Math.atan2(f2 - f4, (-f) + f3) * 180.0d) / 3.141592653589793d);
    }

    public final void addProvince(int i) {
        this.lProvinces.add(Integer.valueOf(i));
        this.iProvincesSize = this.lProvinces.size();
        for (int i2 = 0; i2 < Game.getProvince(i).getNeighboringSeaProvincesSize(); i2++) {
            if (Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i2)).getLevelOfPort() == -2) {
                this.lCoastlineProvinces.add(Integer.valueOf(i));
                break;
            }
        }
        Game.getProvince(i).setCivRegionID(this.iRegionID);
    }

    public final void addProvince_Just(int i) {
        this.lProvinces.add(Integer.valueOf(i));
        this.iProvincesSize = this.lProvinces.size();
    }

    public final void buildDrawData(int i) {
        int i2;
        int i3;
        float civNameLength;
        float linesAngle;
        synchronized (this) {
            Renderer.fontBorder.get(i).getData().setScale(this.fontScale);
            this.iCharMaxWidth = 1;
            this.iCharMaxHeight = 1;
            for (int i4 = 0; i4 < Game.getCiv(Game.getProvince(this.shortestLine.get(0).intValue()).getCivID()).getCivNameLength(); i4++) {
                try {
                    try {
                        try {
                            GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
                            glyphLayout_Game.setText(Renderer.fontBorder.get(i), "" + Game.getCiv(Game.getProvince(this.shortestLine.get(0).intValue()).getCivID()).getCivNameCharacter(i4));
                            if (glyphLayout_Game.width > this.iCharMaxWidth) {
                                this.iCharMaxWidth = (int) glyphLayout_Game.width;
                            }
                            if (glyphLayout_Game.height > this.iCharMaxWidth) {
                                this.iCharMaxHeight = (int) glyphLayout_Game.height;
                            }
                        } catch (IndexOutOfBoundsException e) {
                            CFG.exceptionStack(e);
                        }
                    } catch (NullPointerException e2) {
                        CFG.exceptionStack(e2);
                        try {
                            Game.getCiv(Game.getProvince(this.lProvinces.get(0).intValue()).getCivID()).setUpdateRegions(true);
                        } catch (Exception unused) {
                        }
                    }
                } catch (IllegalStateException e3) {
                    CFG.exceptionStack(e3);
                }
            }
        }
        this.fAngle = (float) ((Math.atan2(Game.getProvince(getProvince(this.shortestLine.get(0).intValue())).iCenterShiftY - Game.getProvince(getProvince(this.shortestLine.get(1).intValue())).iCenterShiftY, (-Game.getProvince(getProvince(this.shortestLine.get(0).intValue())).iCenterShiftX) + Game.getProvince(getProvince(this.shortestLine.get(1).intValue())).iCenterShiftX) * 180.0d) / 3.141592653589793d);
        int i5 = Game.getProvince(getProvince(this.shortestLine.get(0).intValue())).iCenterShiftY;
        List<Integer> list = this.shortestLine;
        double d = i5 - Game.getProvince(getProvince(list.get(list.size() - 1).intValue())).iCenterShiftY;
        int i6 = -Game.getProvince(getProvince(this.shortestLine.get(0).intValue())).iCenterShiftX;
        List<Integer> list2 = this.shortestLine;
        this.fAngle_Low = (float) ((Math.atan2(d, i6 + Game.getProvince(getProvince(list2.get(list2.size() - 1).intValue())).iCenterShiftX) * 180.0d) / 3.141592653589793d);
        this.lPoints.clear();
        this.drawMatrix4.clear();
        ArrayList arrayList = new ArrayList();
        try {
            int iIntValue = this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue();
            int iIntValue2 = this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue();
            int i7 = Game.getProvince(iIntValue).iCenterShiftX;
            int i8 = Game.getProvince(iIntValue2).iCenterShiftX;
            float f = (i8 - i7) * 0.15f;
            int i9 = -1;
            int iAbs = (((int) Math.abs(f)) * (i7 > i8 ? -1 : 1)) + i7;
            int iAbs2 = i8 + (((int) Math.abs(f)) * (i8 > i7 ? -1 : 1));
            int i10 = Game.getProvince(iIntValue).iCenterShiftY;
            int i11 = Game.getProvince(iIntValue2).iCenterShiftY;
            float f2 = (i11 - i10) * 0.15f;
            int iAbs3 = (((int) Math.abs(f2)) * (i10 > i11 ? -1 : 1)) + i10;
            int iAbs4 = (int) Math.abs(f2);
            if (i11 <= i10) {
                i9 = 1;
            }
            int i12 = i11 + (iAbs4 * i9);
            int iMax = Math.max(3, Game.getCiv(Game.getProvince(iIntValue).getCivID()).getCivNameLength()) * 100;
            Vector2[] vector2Arr = new Vector2[iMax];
            float f3 = iAbs;
            float f4 = iAbs3;
            float f5 = iAbs2;
            float f6 = i12;
            CatmullRomSpline catmullRomSpline = new CatmullRomSpline(new Vector2[]{new Vector2(f3, f4), new Vector2(f3, f4), new Vector2(this.iAveragePointPosX, this.iAveragePointPosY), new Vector2(f5, f6), new Vector2(f5, f6)}, false);
            for (int i13 = 0; i13 < iMax; i13++) {
                Vector2 vector2 = new Vector2();
                vector2Arr[i13] = vector2;
                catmullRomSpline.valueAt(vector2, i13 / (iMax - 1.0f));
            }
            int i14 = 0;
            float lineWidth2 = 0.0f;
            while (true) {
                i3 = iMax - 1;
                if (i14 >= i3) {
                    break;
                }
                int i15 = (int) vector2Arr[i14].x;
                int i16 = (int) vector2Arr[i14].y;
                i14++;
                lineWidth2 += getLineWidth2(i15, i16, (int) vector2Arr[i14].x, (int) vector2Arr[i14].y);
            }
            this.lPoints.add(new Point_XY((int) vector2Arr[0].x, (int) vector2Arr[0].y));
            try {
                civNameLength = lineWidth2 / (Game.getCiv(Game.getProvince(iIntValue).getCivID()).getCivNameLength() - 1);
            } catch (ArithmeticException e4) {
                CFG.exceptionStack(e4);
                civNameLength = 0.0f;
            }
            int i17 = 0;
            float lineWidth3 = 0.0f;
            for (int i18 = 1; i18 < Game.getCiv(Game.getProvince(iIntValue).getCivID()).getCivNameLength(); i18++) {
                while (i17 < i3) {
                    int i19 = i17 + 1;
                    lineWidth3 += getLineWidth2((int) vector2Arr[i17].x, (int) vector2Arr[i17].y, (int) vector2Arr[i19].x, (int) vector2Arr[i19].y);
                    if (lineWidth3 >= civNameLength) {
                        this.lPoints.add(new Point_XY((int) vector2Arr[i17].x, (int) vector2Arr[i17].y));
                        lineWidth3 = civNameLength - lineWidth3;
                        break;
                    }
                    i17 = i19;
                }
            }
            this.lPoints.add(new Point_XY((int) vector2Arr[i3].x, (int) vector2Arr[i3].y));
            for (int i20 = 0; i20 < Game.getCiv(Game.getProvince(iIntValue).getCivID()).getCivNameLength(); i20++) {
                try {
                    try {
                        try {
                            try {
                                if (i20 < Game.getCiv(Game.getProvince(iIntValue).getCivID()).getCivNameLength() - 1) {
                                    int i21 = i20 + 1;
                                    linesAngle = getLinesAngle(this.lPoints.get(i20).getPosX(), this.lPoints.get(i20).getPosY(), this.lPoints.get(i21).getPosX(), this.lPoints.get(i21).getPosY());
                                } else {
                                    int i22 = i20 - 1;
                                    linesAngle = i22 >= 0 ? getLinesAngle(this.lPoints.get(i22).getPosX(), this.lPoints.get(i22).getPosY(), this.lPoints.get(i20).getPosX(), this.lPoints.get(i20).getPosY()) : 0.0f;
                                }
                                arrayList.add(Float.valueOf(linesAngle));
                            } catch (IndexOutOfBoundsException unused2) {
                                if (i20 == 0) {
                                    try {
                                        int i23 = i20 + 1;
                                        arrayList.add(Float.valueOf(getLinesAngle(this.lPoints.get(i20).getPosX(), this.lPoints.get(i20).getPosY(), this.lPoints.get(i23).getPosX(), this.lPoints.get(i23).getPosY())));
                                    } catch (IndexOutOfBoundsException unused3) {
                                        arrayList.add(Float.valueOf(this.fAngle));
                                    }
                                } else {
                                    try {
                                        int i24 = i20 - 1;
                                        arrayList.add(Float.valueOf(getLinesAngle(this.lPoints.get(i24).getPosX(), this.lPoints.get(i24).getPosY(), this.lPoints.get(i20).getPosX(), this.lPoints.get(i20).getPosY())));
                                    } catch (IndexOutOfBoundsException unused4) {
                                        arrayList.add(Float.valueOf(this.fAngle));
                                    }
                                }
                            } catch (NullPointerException unused5) {
                                if (i20 == 0) {
                                    try {
                                        int i25 = i20 + 1;
                                        arrayList.add(Float.valueOf(getLinesAngle(this.lPoints.get(i20).getPosX(), this.lPoints.get(i20).getPosY(), this.lPoints.get(i25).getPosX(), this.lPoints.get(i25).getPosY())));
                                    } catch (IndexOutOfBoundsException unused6) {
                                        arrayList.add(Float.valueOf(this.fAngle));
                                    }
                                } else {
                                    try {
                                        int i26 = i20 - 1;
                                        arrayList.add(Float.valueOf(getLinesAngle(this.lPoints.get(i26).getPosX(), this.lPoints.get(i26).getPosY(), this.lPoints.get(i20).getPosX(), this.lPoints.get(i20).getPosY())));
                                    } catch (IndexOutOfBoundsException unused7) {
                                        arrayList.add(Float.valueOf(this.fAngle));
                                    }
                                }
                                try {
                                    Game.getCiv(Game.getProvince(this.lProvinces.get(0).intValue()).getCivID()).setUpdateRegions(true);
                                } catch (IndexOutOfBoundsException | NullPointerException unused8) {
                                }
                            }
                        } catch (NullPointerException e5) {
                            CFG.exceptionStack(e5);
                            try {
                                Game.getCiv(Game.getProvince(this.lProvinces.get(0).intValue()).getCivID()).setUpdateRegions(true);
                            } catch (IndexOutOfBoundsException | NullPointerException unused9) {
                            }
                        }
                    } catch (IllegalStateException e6) {
                        CFG.exceptionStack(e6);
                    }
                } catch (IndexOutOfBoundsException e7) {
                    CFG.exceptionStack(e7);
                }
            }
            int size = arrayList.size();
            float fFloatValue = 0.0f;
            for (int i27 = 0; i27 < size; i27++) {
                fFloatValue += ((Float) arrayList.get(i27)).floatValue();
            }
            float size2 = fFloatValue / arrayList.size();
            this.centerCharXY = new Point_XY((int) ((getCharMaxWidth() / 2) * (1.0f - ((90.0f - Math.min(Math.abs(size2), 90.0f)) / 90.0f))), (int) ((getCharMaxHeight() / 2) * ((90.0f - Math.min(Math.abs(size2), 90.0f)) / 90.0f)));
        } catch (Exception e8) {
            CFG.exceptionStack(e8);
        }
        int size3 = arrayList.size();
        for (i2 = 0; i2 < size3; i2++) {
            this.drawMatrix4.add(new Matrix4().rotate(Renderer.textRotatedVector3, ((Float) arrayList.get(i2)).floatValue()));
        }
    }

    public final boolean buildRegionPath() {
        int i;
        try {
            this.drawName = false;
            buildMinMaxBounds();
            if (this.lProvinces.size() == 1) {
                return false;
            }
            if (this.lProvinces.size() > 1) {
                if (!Game.settingsManager.DRAW_CIVILIZATIONS_NAMES_OVER_PROVINCES_IN_GAME) {
                    return false;
                }
                int i2 = 0;
                while (true) {
                    if (i2 >= this.iProvincesSize) {
                        i2 = -1;
                        break;
                    }
                    if (!this.triedToUse.get(i2).booleanValue()) {
                        break;
                    }
                    i2++;
                }
                if (i2 == -1) {
                    return false;
                }
                int iSqrt = (int) Math.sqrt(Math.pow(this.iMinX - Game.getProvince(this.lProvinces.get(i2).intValue()).getCenterX(), 2.0d) + Math.pow(this.iMaxY - Game.getProvince(this.lProvinces.get(i2).intValue()).getCenterY(), 2.0d));
                int iSqrt2 = (int) Math.sqrt(Math.pow(this.iMaxX - Game.getProvince(this.lProvinces.get(i2).intValue()).getCenterX(), 2.0d) + Math.pow(this.iMinY - Game.getProvince(this.lProvinces.get(i2).intValue()).getCenterY(), 2.0d));
                int iSqrt3 = (int) Math.sqrt(Math.pow(this.iMaxX - Game.getProvince(this.lProvinces.get(i2).intValue()).getCenterX(), 2.0d) + Math.pow(this.iMaxY - Game.getProvince(this.lProvinces.get(i2).intValue()).getCenterY(), 2.0d));
                int iSqrt4 = (int) Math.sqrt(Math.pow(this.iMinX - Game.getProvince(this.lProvinces.get(i2).intValue()).getCenterX(), 2.0d) + Math.pow(this.iMinY - Game.getProvince(this.lProvinces.get(i2).intValue()).getCenterY(), 2.0d));
                this.triedToUse.add(true);
                int i3 = i2;
                int i4 = i3;
                int i5 = iSqrt;
                int i6 = iSqrt2;
                int i7 = iSqrt4;
                int i8 = iSqrt3;
                int i9 = i4;
                int i10 = i9;
                int i11 = i10;
                int i12 = i11;
                int i13 = i12;
                for (int i14 = i2 + 1; i14 < this.iProvincesSize; i14++) {
                    if (!this.triedToUse.get(i14).booleanValue()) {
                        int i15 = Game.getProvince(this.lProvinces.get(i14).intValue()).iCenterShiftX;
                        int i16 = Game.getProvince(this.lProvinces.get(i14).intValue()).iCenterShiftY;
                        int i17 = i10;
                        int i18 = i11;
                        int lineWidth = getLineWidth(this.iMinX, this.iMaxY, i15, i16);
                        if (lineWidth < i5) {
                            i5 = lineWidth;
                            i2 = i14;
                        }
                        int lineWidth2 = getLineWidth(this.iMaxX, this.iMinY, i15, i16);
                        if (lineWidth2 < i6) {
                            i6 = lineWidth2;
                            i9 = i14;
                        }
                        int lineWidth3 = getLineWidth(this.iMaxX, this.iMaxY, i15, i16);
                        if (lineWidth3 < i8) {
                            i8 = lineWidth3;
                            i10 = i14;
                        } else {
                            i10 = i17;
                        }
                        int i19 = i2;
                        int lineWidth4 = getLineWidth(this.iMinX, this.iMinY, i15, i16);
                        if (lineWidth4 < i7) {
                            i7 = lineWidth4;
                            i11 = i14;
                        } else {
                            i11 = i18;
                        }
                        if (Game.getProvince(this.lProvinces.get(i12).intValue()).iCenterShiftY < i16) {
                            i12 = i14;
                        }
                        if (Game.getProvince(this.lProvinces.get(i13).intValue()).iCenterShiftY > i16) {
                            i13 = i14;
                        }
                        if (Game.getProvince(this.lProvinces.get(i3).intValue()).iCenterShiftX > i15) {
                            int i20 = this.iMinY;
                            i = i9;
                            if (i16 >= i20 + ((this.iMaxY - i20) / 2)) {
                                i3 = i14;
                            }
                        } else {
                            i = i9;
                        }
                        if (Game.getProvince(this.lProvinces.get(i4).intValue()).iCenterShiftX < i15) {
                            int i21 = this.iMinY;
                            if (i16 <= i21 + ((this.iMaxY - i21) / 2)) {
                                i4 = i14;
                            }
                        }
                        i2 = i19;
                        i9 = i;
                    }
                }
                if (getLineWidth(i2, i9) > getLineWidth(i10, i11)) {
                    if (getLineWidth(i2, i9) > getLineWidth(i12, i13)) {
                        if (getLineWidth(i2, i9) > getLineWidth(i3, i4)) {
                            this.shortestLine.add(Integer.valueOf(i2));
                            this.shortestLine.add(Integer.valueOf(i9));
                        } else {
                            this.shortestLine.add(Integer.valueOf(i3));
                            this.shortestLine.add(Integer.valueOf(i4));
                        }
                    } else if (getLineWidth(i12, i13) > getLineWidth(i3, i4)) {
                        this.shortestLine.add(Integer.valueOf(i12));
                        this.shortestLine.add(Integer.valueOf(i13));
                    } else {
                        this.shortestLine.add(Integer.valueOf(i3));
                        this.shortestLine.add(Integer.valueOf(i4));
                    }
                } else if (getLineWidth(i10, i11) > getLineWidth(i12, i13)) {
                    if (getLineWidth(i10, i11) > getLineWidth(i3, i4)) {
                        this.shortestLine.add(Integer.valueOf(i10));
                        this.shortestLine.add(Integer.valueOf(i11));
                    } else {
                        this.shortestLine.add(Integer.valueOf(i3));
                        this.shortestLine.add(Integer.valueOf(i4));
                    }
                } else if (getLineWidth(i12, i13) > getLineWidth(i3, i4)) {
                    this.shortestLine.add(Integer.valueOf(i12));
                    this.shortestLine.add(Integer.valueOf(i13));
                } else {
                    this.shortestLine.add(Integer.valueOf(i3));
                    this.shortestLine.add(Integer.valueOf(i4));
                }
                if (Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).getCenterX() > Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).getCenterX()) {
                    int iIntValue = this.shortestLine.get(0).intValue();
                    List<Integer> list = this.shortestLine;
                    list.set(0, list.get(1));
                    this.shortestLine.set(1, Integer.valueOf(iIntValue));
                }
                if (this.shortestLine.size() != 0 && this.shortestLine.get(0) != this.shortestLine.get(1)) {
                    Point_XY point_XYCanDrawTextProperly = canDrawTextProperly(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue(), this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue());
                    if (point_XYCanDrawTextProperly != null) {
                        if (getLineWidth(point_XYCanDrawTextProperly.getPosX(), point_XYCanDrawTextProperly.getPosY(), Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).iCenterShiftX, Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).iCenterShiftY) < getLineWidth(point_XYCanDrawTextProperly.getPosX(), point_XYCanDrawTextProperly.getPosY(), Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).iCenterShiftX, Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).iCenterShiftY)) {
                            this.triedToUse.set(this.shortestLine.get(0).intValue(), true);
                        } else {
                            this.triedToUse.set(this.shortestLine.get(1).intValue(), true);
                        }
                        this.shortestLine.clear();
                        int i22 = this.numOfTries;
                        this.numOfTries = i22 + 1;
                        if (i22 < 100) {
                            return buildRegionPath();
                        }
                        return false;
                    }
                    this.triedToUse.clear();
                }
                this.shortestLine.clear();
                this.triedToUse.clear();
                return false;
            }
            updateDrawRegionName();
            return true;
        } catch (StackOverflowError e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public final void buildRegionPath_TriedToUse() {
        this.triedToUse.clear();
        for (int i = 0; i < this.iProvincesSize; i++) {
            this.triedToUse.add(false);
        }
        for (int i2 = 0; i2 < this.iProvincesSize; i2++) {
            if (Game.getProvince(this.lProvinces.get(i2).intValue()).getBelowZero()) {
                this.triedToUse.set(i2, true);
            }
        }
        this.numOfTries = 0;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x017d A[Catch: IllegalStateException -> 0x0189, NullPointerException -> 0x0190, IndexOutOfBoundsException -> 0x01b2, all -> 0x01bc, PHI: r3 r6
      0x017d: PHI (r3v6 float) = (r3v5 float), (r3v7 float) binds: [B:15:0x0177, B:12:0x0129] A[DONT_GENERATE, DONT_INLINE]
      0x017d: PHI (r6v13 float) = (r6v11 float), (r6v14 float) binds: [B:15:0x0177, B:12:0x0129] A[DONT_GENERATE, DONT_INLINE], TryCatch #6 {IllegalStateException -> 0x0189, IndexOutOfBoundsException -> 0x01b2, NullPointerException -> 0x0190, blocks: (B:9:0x00d9, B:11:0x00e2, B:13:0x012b, B:17:0x017d, B:19:0x0183, B:14:0x0130, B:16:0x0179), top: B:48:0x00d9, outer: #6 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0186 A[LOOP:0: B:48:0x00d9->B:21:0x0186, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:49:0x0183 A[SYNTHETIC] */
    protected final float buildScaleOfText(int i) {
        int i2;
        float f = 1.0f;
        try {
            if (this.shortestLine.size() > 1) {
                float fSqrt = ((float) Math.sqrt(Math.pow(Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).iCenterShiftX - Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).iCenterShiftX, 2.0d) + Math.pow(Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).iCenterShiftY - Game.getProvince(this.lProvinces.get(this.shortestLine.get(1).intValue()).intValue()).iCenterShiftY, 2.0d))) * 0.95f;
                GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
                synchronized (this) {
                    try {
                        glyphLayout_Game.setText(Renderer.fontBorder.get(i), Game.getCiv(Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).getCivID()).sCivName_UpperCase);
                        float f2 = this.fontScale;
                        int i3 = 0;
                        while (true) {
                            try {
                                if (fSqrt > glyphLayout_Game.width) {
                                    f2 += 0.05f;
                                    Renderer.fontBorder.get(i).getData().setScale(f2);
                                    glyphLayout_Game.setText(Renderer.fontBorder.get(i), Game.getCiv(Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).getCivID()).sCivName_UpperCase);
                                    f = glyphLayout_Game.height;
                                    if (fSqrt < glyphLayout_Game.width) {
                                        this.fontScale = f2 - 0.05f;
                                        break;
                                    }
                                    i2 = i3 + 1;
                                    if (i3 > 999) {
                                        this.fontScale = 1.0E-4f;
                                        break;
                                    }
                                    i3 = i2;
                                } else {
                                    f2 -= 0.05f;
                                    Renderer.fontBorder.get(i).getData().setScale(f2);
                                    glyphLayout_Game.setText(Renderer.fontBorder.get(i), Game.getCiv(Game.getProvince(this.lProvinces.get(this.shortestLine.get(0).intValue()).intValue()).getCivID()).sCivName_UpperCase);
                                    f = glyphLayout_Game.height;
                                    if (fSqrt > glyphLayout_Game.width) {
                                        this.fontScale = f2 + 0.05f;
                                        break;
                                    }
                                    i2 = i3 + 1;
                                    if (i3 > 999) {
                                        this.fontScale = 1.0E-4f;
                                        break;
                                    }
                                    i3 = i2;
                                }
                            } catch (IllegalStateException e) {
                                this.fontScale = 1.0E-4f;
                                CFG.exceptionStack(e);
                            } catch (IndexOutOfBoundsException unused) {
                                this.fontScale = 1.0E-4f;
                            } catch (NullPointerException e2) {
                                this.fontScale = 1.0E-4f;
                                CFG.exceptionStack(e2);
                                try {
                                    Game.getCiv(Game.getProvince(this.lProvinces.get(0).intValue()).getCivID()).setUpdateRegions(true);
                                } catch (Exception unused2) {
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                buildAveragePoint();
                buildDrawData(i);
            }
        } catch (NullPointerException unused3) {
            this.fontScale = 1.0E-4f;
            try {
                Game.getCiv(Game.getProvince(this.lProvinces.get(0).intValue()).getCivID()).setUpdateRegions(true);
            } catch (Exception unused4) {
            }
        }
        this.fontScale2 = this.fontScale * 0.875f;
        return f;
    }

    protected final boolean containsProvince(int i) {
        for (int i2 = 0; i2 < this.iProvincesSize; i2++) {
            if (this.lProvinces.get(i2).intValue() == i) {
                return true;
            }
        }
        return false;
    }

    public final void drawCivRegion(SpriteBatch spriteBatch) {
        if (!this.drawName || getFontScale() * Game.mapScale.getCurrentScale() <= Game.settingsManager.CIV_NAMES_MIN_SCALE_OF_FONT) {
            return;
        }
        List<Integer> shortestPath = getShortestPath();
        if (shortestPath.size() > 1) {
            if (!Game.mapCoords.getSecondSideOfMap()) {
                drawCivilizationName(spriteBatch, 0, getProvince(shortestPath.get(0).intValue()), getFontScale());
            } else {
                drawCivilizationName(spriteBatch, 0, getProvince(shortestPath.get(0).intValue()), getFontScale());
                drawCivilizationName_SecondSideOfMap(spriteBatch, 0, getProvince(shortestPath.get(0).intValue()), getFontScale());
            }
        }
    }

    public final void drawCivRegion_Low(SpriteBatch spriteBatch) {
        if (!this.drawName || getFontScale() * Game.mapScale.getCurrentScale() <= Game.settingsManager.CIV_NAMES_MIN_SCALE_OF_FONT) {
            return;
        }
        List<Integer> shortestPath = getShortestPath();
        if (shortestPath.size() > 1) {
            if (Game.mapCoords.getSecondSideOfMap()) {
                drawCivilizationName_Low(spriteBatch, 0, getProvince(shortestPath.get(0).intValue()), this.fontScale2);
            } else {
                drawCivilizationName_Low(spriteBatch, 0, getProvince(shortestPath.get(0).intValue()), this.fontScale2);
            }
        }
    }

    public final synchronized void drawCivilizationName(SpriteBatch spriteBatch, int i, int i2, float f) {
        Renderer.fontBorder.get(i).getData().setScale(f);
        for (int i3 = 0; i3 < Game.getCiv(Game.getProvince(i2).getCivID()).getCivNameLength(); i3++) {
            Renderer.drawTextRotatedBorder(spriteBatch, i, Game.getCiv(Game.getProvince(i2).getCivID()).getCivNameCharacter(i3), (Game.mapCoords.getPosX() + this.lPoints.get(i3).getPosX()) - this.centerCharXY.getPosX(), (Game.mapCoords.getPosY() + this.lPoints.get(i3).getPosY()) - this.centerCharXY.getPosY(), this.drawMatrix4.get(i3));
        }
    }

    public final synchronized void drawCivilizationName_Low(SpriteBatch spriteBatch, int i, int i2, float f) {
        Renderer.fontBorder.get(i).getData().setScale(f);
        Renderer.drawTextRotatedBorder_2(spriteBatch, i, Game.getCiv(Game.getProvince(i2).getCivID()).sCivName_UpperCase, (Game.mapCoords.getPosX() + this.lPoints.get(0).getPosX()) - this.centerCharXY.getPosX(), (Game.mapCoords.getPosY() + this.lPoints.get(0).getPosY()) - this.centerCharXY.getPosY(), this.fAngle_Low);
    }

    protected final synchronized void drawCivilizationName_SecondSideOfMap(SpriteBatch spriteBatch, int i, int i2, float f) {
        if (Game.getProvince(i2).getTranslateProvincePosX() > 0) {
            Renderer.fontBorder.get(i).getData().setScale(f);
            for (int i3 = 0; i3 < Game.getCiv(Game.getProvince(i2).getCivID()).getCivNameLength(); i3++) {
                Renderer.drawTextRotatedBorder(spriteBatch, i, Game.getCiv(Game.getProvince(i2).getCivID()).getCivNameCharacter(i3), ((Game.mapCoords.getSecondSideOfMap_MoveX() + Game.mapCoords.getPosX()) + this.lPoints.get(i3).getPosX()) - this.centerCharXY.getPosX(), (Game.mapCoords.getPosY() + this.lPoints.get(i3).getPosY()) - this.centerCharXY.getPosY(), this.drawMatrix4.get(i3));
            }
        }
    }

    public final float getAngle() {
        return this.fAngle;
    }

    public final int getCharMaxHeight() {
        return this.iCharMaxHeight;
    }

    public final int getCharMaxWidth() {
        return this.iCharMaxWidth;
    }

    public final float getFontScale() {
        return this.fontScale;
    }

    protected int getLineWidth(int i, int i2) {
        return getLineWidth(Game.getProvince(this.lProvinces.get(i).intValue()).iCenterShiftX, Game.getProvince(this.lProvinces.get(i).intValue()).iCenterShiftY, Game.getProvince(this.lProvinces.get(i2).intValue()).iCenterShiftX, Game.getProvince(this.lProvinces.get(i2).intValue()).iCenterShiftY);
    }

    public final int getProvince(int i) {
        return this.lProvinces.get(i).intValue();
    }

    public final int getProvincesSize() {
        return this.iProvincesSize;
    }

    public final List<Integer> getShortestPath() {
        return this.shortestLine;
    }

    public final void removeProvince(int i) {
        Game.getProvince(this.lProvinces.get(i).intValue()).setCivRegionID(-1);
        for (int i2 = 0; i2 < this.lCoastlineProvinces.size(); i2++) {
            if (this.lCoastlineProvinces.get(i2) == this.lProvinces.get(i)) {
                this.lCoastlineProvinces.remove(i2);
                break;
            }
        }
        this.lProvinces.remove(i);
        this.iProvincesSize = this.lProvinces.size();
    }

    public final void removeProvinceID(int i) {
        for (int i2 = 0; i2 < this.iProvincesSize; i2++) {
            if (this.lProvinces.get(i2).intValue() == i) {
                this.lProvinces.remove(i2);
                this.iProvincesSize = this.lProvinces.size();
                for (int i3 = 0; i3 < this.lCoastlineProvinces.size(); i3++) {
                    if (this.lCoastlineProvinces.get(i3).intValue() == i) {
                        this.lCoastlineProvinces.remove(i3);
                        break;
                    }
                }
                Game.getProvince(i).setCivRegionID(-1);
                return;
            }
        }
    }

    protected final void updateDrawRegionName() {
        this.drawName = true;
    }
}
