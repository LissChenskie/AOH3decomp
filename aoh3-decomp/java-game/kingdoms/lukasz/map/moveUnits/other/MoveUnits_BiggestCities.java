package aoc.kingdoms.lukasz.map.moveUnits.other;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.moveUnits.MoveUnits;
import aoc.kingdoms.lukasz.menu.Colors;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.CatmullRomSpline;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import java.util.ArrayList;
import java.util.List;
import space.earlygrey.shapedrawer.JoinType;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MoveUnits_BiggestCities {
    public static final int PRECISION = 15;
    public Color ColorLine2;
    public int iPrecision;
    MoveUnits.LittleAnimation littleAnimationMainLine;
    public Vector2[] vPoints;
    public List<Integer> lRoute = new ArrayList();
    public int iRouteSize = 0;
    public long lMovingTime = 0;
    public float fMovingPercentage = 0.0f;
    public Color ColorLine = new Color(0.57254905f, 0.50980395f, 0.4509804f, 1.0f);

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities$1, reason: invalid class name */
    class AnonymousClass1 implements MoveUnits.LittleAnimation {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_BiggestCities$1$1, reason: invalid class name and collision with other inner class name */
        class C00021 implements MoveUnits.LittleAnimation {
            C00021() {
            }

            @Override // aoc.kingdoms.lukasz.map.moveUnits.MoveUnits.LittleAnimation
            public void update() {
            }
        }

        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.moveUnits.MoveUnits.LittleAnimation
        public void update() {
            MoveUnits_BiggestCities.this.fMovingPercentage += (CFG.currentTimeMillis - MoveUnits_BiggestCities.this.lMovingTime) / GameValues.inGame.DIPLOMACY_LINES_ANIMATION_DURATION;
            MoveUnits_BiggestCities.this.lMovingTime = CFG.currentTimeMillis;
            if (MoveUnits_BiggestCities.this.fMovingPercentage >= 1.0f) {
                MoveUnits_BiggestCities.this.fMovingPercentage = 1.0f;
                MoveUnits_BiggestCities.this.littleAnimationMainLine = new C00021();
            }
        }
    }

    interface LittleAnimation {
        void update();
    }

    public MoveUnits_BiggestCities(int i, int i2, int i3) {
        this.ColorLine2 = new Color(0.04f, 0.04f, 0.04f, 1.0f);
        buildRoute(i, i2, i3);
        if (this.iRouteSize > 1) {
            buildMoveUnitsLine(true);
            this.ColorLine2 = CFG.getColorStep(Colors.HOVER_GOLD, Game.getCiv(Game.getProvince(this.lRoute.get(0).intValue()).getCivID()).getColor(1.0f), 50, 100, 0.4f);
        }
    }

    public void buildAnimation(boolean z) {
        if (z) {
            this.lMovingTime = CFG.currentTimeMillis;
            this.fMovingPercentage = 0.01f;
            this.littleAnimationMainLine = new AnonymousClass1();
        }
    }

    public void buildMoveUnitsLine(boolean z) {
        buildAnimation(z);
        int i = this.iRouteSize;
        int i2 = i * 15;
        this.iPrecision = i2;
        this.vPoints = new Vector2[i2];
        Vector2[] vector2Arr = new Vector2[i + 2];
        for (int i3 = 0; i3 < this.iRouteSize; i3++) {
            if (Game.getProvince(this.lRoute.get(i3).intValue()).getCitiesSize() > 0) {
                vector2Arr[i3 + 1] = new Vector2(Game.getProvince(this.lRoute.get(i3).intValue()).getCity(0).getPosX(), -Game.getProvince(this.lRoute.get(i3).intValue()).getCity(0).getPosY());
            } else {
                vector2Arr[i3 + 1] = new Vector2(Game.getProvince(this.lRoute.get(i3).intValue()).iCenterShiftX, -Game.getProvince(this.lRoute.get(i3).intValue()).iCenterShiftY);
            }
        }
        if (Game.getProvince(this.lRoute.get(0).intValue()).getCitiesSize() > 0) {
            vector2Arr[0] = new Vector2(Game.getProvince(this.lRoute.get(0).intValue()).getCity(0).getPosX() + getShiftPosXY(), -(Game.getProvince(this.lRoute.get(0).intValue()).getCity(0).getPosY() + getShiftPosXY()));
        } else {
            vector2Arr[0] = new Vector2(Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftX + getShiftPosXY(), -(Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftY + getShiftPosXY()));
        }
        if (Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).getCitiesSize() > 0) {
            vector2Arr[this.iRouteSize + 1] = new Vector2(Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).getCity(0).getPosX(), -Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).getCity(0).getPosY());
        } else {
            vector2Arr[this.iRouteSize + 1] = new Vector2(Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).iCenterShiftX, -Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).iCenterShiftY);
        }
        CatmullRomSpline catmullRomSpline = new CatmullRomSpline(vector2Arr, false);
        for (int i4 = 0; i4 < this.iPrecision; i4++) {
            this.vPoints[i4] = new Vector2();
            catmullRomSpline.valueAt(this.vPoints[i4], i4 / (this.iPrecision - 1.0f));
        }
    }

    protected boolean buildPath(int i, List<Integer> list, List<Integer> list2, List<List<Integer>> list3, int i2, int i3, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i4 = 0; i4 < list2.size(); i4++) {
            if (Game.getProvince(list2.get(i4).intValue()).getProvinceID() == i3) {
                setPath(i2, i3, list3.get(i4), i3, i2);
                clearWas(list);
                return true;
            }
        }
        if (z) {
            for (int i5 = 0; i5 < list2.size(); i5++) {
                for (int i6 = 0; i6 < Game.getProvince(list2.get(i5).intValue()).getNeighboringProvincesSize(); i6++) {
                    if (canBeUsedInPath(i, Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID(), isFriendlyProvince(i, i3), i3) && !Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()).wasCities) {
                        if (Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID() == i3) {
                            setPath(i2, i3, list3.get(i5), i3, i2);
                            clearWas(list);
                            return true;
                        }
                        arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()));
                        ArrayList arrayList3 = new ArrayList();
                        for (int i7 = 0; i7 < list3.get(i5).size(); i7++) {
                            arrayList3.add(list3.get(i5).get(i7));
                        }
                        arrayList3.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()));
                        arrayList2.add(arrayList3);
                        Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()).wasCities = true;
                        list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()));
                    }
                }
                if (!Game.getProvince(list2.get(i5).intValue()).getSeaProvince()) {
                    for (int i8 = 0; i8 < Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvincesSize(); i8++) {
                        if (!Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()).wasCities) {
                            if (Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID() == i3) {
                                setPath(i2, i3, list3.get(i5), i3, i2);
                                clearWas(list);
                                return true;
                            }
                            arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()));
                            ArrayList arrayList4 = new ArrayList();
                            for (int i9 = 0; i9 < list3.get(i5).size(); i9++) {
                                arrayList4.add(list3.get(i5).get(i9));
                            }
                            arrayList4.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()));
                            arrayList2.add(arrayList4);
                            Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()).wasCities = true;
                            list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()));
                        }
                    }
                }
            }
        } else {
            for (int i10 = 0; i10 < list2.size(); i10++) {
                for (int neighboringProvincesSize = Game.getProvince(list2.get(i10).intValue()).getNeighboringProvincesSize() - 1; neighboringProvincesSize >= 0; neighboringProvincesSize--) {
                    if (canBeUsedInPath(i, Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID(), isFriendlyProvince(i, i3), i3) && !Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()).wasCities) {
                        if (Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID() == i3) {
                            setPath(i2, i3, list3.get(i10), i3, i2);
                            clearWas(list);
                            return true;
                        }
                        arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()));
                        ArrayList arrayList5 = new ArrayList();
                        for (int i11 = 0; i11 < list3.get(i10).size(); i11++) {
                            arrayList5.add(list3.get(i10).get(i11));
                        }
                        arrayList5.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()));
                        arrayList2.add(arrayList5);
                        Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()).wasCities = true;
                        list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()));
                    }
                }
                if (!Game.getProvince(list2.get(i10).intValue()).getSeaProvince()) {
                    for (int neighboringSeaProvincesSize = Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvincesSize() - 1; neighboringSeaProvincesSize >= 0; neighboringSeaProvincesSize--) {
                        if (!Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()).wasCities) {
                            if (Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID() == i3) {
                                setPath(i2, i3, list3.get(i10), i3, i2);
                                clearWas(list);
                                return true;
                            }
                            arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()));
                            ArrayList arrayList6 = new ArrayList();
                            for (int i12 = 0; i12 < list3.get(i10).size(); i12++) {
                                arrayList6.add(list3.get(i10).get(i12));
                            }
                            arrayList6.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()));
                            arrayList2.add(arrayList6);
                            Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()).wasCities = true;
                            list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()));
                        }
                    }
                }
            }
        }
        try {
            return buildPath(i, list, arrayList, arrayList2, i2, i3, !z);
        } catch (StackOverflowError unused) {
            clearWas(list);
            return false;
        }
    }

    protected boolean buildRoute(int i, int i2, int i3) {
        this.lRoute.clear();
        if (i2 < 0 || i3 < 0 || Game.getProvince(i3).getWasteland() >= 0) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i2));
        for (int i4 = 0; i4 < Game.getProvincesSize(); i4++) {
            Game.getProvince(i4).wasCities = false;
        }
        Game.getProvince(i2).wasCities = true;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i5 = 0; i5 < Game.getProvince(i2).getNeighboringProvincesSize(); i5++) {
            if (canBeUsedInPath(i, Game.getProvince(i2).getNeighboringProvinces(i5), isFriendlyProvince(i, i3), i3)) {
                arrayList2.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getProvinceID()));
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getProvinceID()));
                arrayList3.add(arrayList4);
                arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getProvinceID()));
                Game.getProvince(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getProvinceID()).wasCities = true;
            }
        }
        if (!Game.getProvince(i2).getSeaProvince()) {
            for (int i6 = 0; i6 < Game.getProvince(i2).getNeighboringSeaProvincesSize(); i6++) {
                arrayList2.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i6)).getProvinceID()));
                ArrayList arrayList5 = new ArrayList();
                arrayList5.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i6)).getProvinceID()));
                arrayList3.add(arrayList5);
                arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i6)).getProvinceID()));
                Game.getProvince(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i6)).getProvinceID()).wasCities = true;
            }
        }
        buildPath(i, arrayList, arrayList2, arrayList3, i2, i3, true);
        return true;
    }

    public boolean canBeUsedInPath(int i, int i2, boolean z, int i3) {
        return Game.getProvince(i2).getWasteland() < 0 && Game.getProvince(i2).getCivID() == i;
    }

    protected final void clearWas(List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            Game.getProvince(list.get(size).intValue()).wasCities = false;
        }
    }

    public void draw(SpriteBatch spriteBatch, float f) {
        try {
            if (this.iRouteSize > 0) {
                Array array = new Array();
                if (Game.getProvince(this.lRoute.get(0).intValue()).getDrawProvince()) {
                    for (int i = 0; i < ((int) ((this.iPrecision - 2) * this.fMovingPercentage)); i++) {
                        array.add(new Vector2((this.vPoints[i].x + Game.getProvince(this.lRoute.get(0).intValue()).getTranslateProvincePosX()) * f, (this.vPoints[i].y - Game.mapCoords.getPosY()) * f));
                    }
                } else {
                    for (int i2 = 0; i2 < ((int) (this.iPrecision * this.fMovingPercentage)); i2++) {
                        array.add(new Vector2((this.vPoints[i2].x + Game.mapCoords.getPosX()) * f, (this.vPoints[i2].y - Game.mapCoords.getPosY()) * f));
                    }
                }
                if (this.fMovingPercentage < 0.99f) {
                    Renderer.shapeDrawer.setColor(CFG.getColorStep(Colors.HOVER_GOLD, this.ColorLine2, (int) (this.fMovingPercentage * 100.0f), 100, 0.4f));
                } else {
                    Renderer.shapeDrawer.setColor(new Color(this.ColorLine2.r, this.ColorLine2.g, this.ColorLine2.b, 0.4f));
                }
                Renderer.shapeDrawer.path((Iterable) array, ((this.fMovingPercentage * 0.75f) + 0.25f) * 3.0f, JoinType.SMOOTH, true);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public boolean draw2(SpriteBatch spriteBatch, float f) {
        return false;
    }

    public int getFromProvinceID() {
        return this.lRoute.get(0).intValue();
    }

    public int getShiftPosXY() {
        return Game.oR.nextInt(31) - 15;
    }

    public int getToProvinceID() {
        return this.lRoute.get(1).intValue();
    }

    public int getToProvinceLastID() {
        return this.lRoute.get(this.iRouteSize - 1).intValue();
    }

    public boolean isFriendlyProvince(int i, int i2) {
        return Game.getProvince(i2).getCivID() == i;
    }

    protected final void setPath(int i, int i2, List<Integer> list, int i3, int i4) {
        this.lRoute.add(Integer.valueOf(i4));
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.lRoute.add(list.get(i5));
        }
        List<Integer> list2 = this.lRoute;
        if (i3 != list2.get(list2.size() - 1).intValue()) {
            this.lRoute.add(Integer.valueOf(i3));
        }
        this.iRouteSize = this.lRoute.size();
    }

    public void update() {
        this.littleAnimationMainLine.update();
    }
}
