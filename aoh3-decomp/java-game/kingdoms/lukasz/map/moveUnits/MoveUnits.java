package aoc.kingdoms.lukasz.map.moveUnits;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.menu.Colors;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.CatmullRomSpline;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import space.earlygrey.shapedrawer.JoinType;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MoveUnits {
    public static final int PRECISION = 16;
    public Color colorLine;
    public float currentMovementProgressWidth;
    public float doneMovementProgressWidth;
    public int extraArmyY;
    public float fCurrentMovingPercentage;
    public float fMovingPercentage;
    public float fSpeed;
    private int iPrecision;
    public int iRouteSize;
    public List<Integer> iWidth;
    public boolean inBattle;
    public boolean inRetreat;
    public boolean isBelowZero;
    public String key;
    public long lCurrentMovingTime;
    public long lMovingTime;
    private List<Integer> lRoute;
    public LittleAnimation littleAnimationMainLine;
    public LittleAnimation littleAnimationMovingArmy;
    public float movementProgressOverWidth;
    private Vector2[] vPoints;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.moveUnits.MoveUnits$1, reason: invalid class name */
    class AnonymousClass1 implements LittleAnimation {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.moveUnits.MoveUnits$1$1, reason: invalid class name and collision with other inner class name */
        class C00011 implements LittleAnimation {
            C00011() {
            }

            @Override // aoc.kingdoms.lukasz.map.moveUnits.MoveUnits.LittleAnimation
            public void update() {
            }
        }

        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.moveUnits.MoveUnits.LittleAnimation
        public void update() {
            MoveUnits.this.fMovingPercentage += (CFG.currentTimeMillis - MoveUnits.this.lMovingTime) / GameValues.inGame.MOVE_UNITS_ANIMATION_DURATION;
            MoveUnits.this.lMovingTime = CFG.currentTimeMillis;
            if (MoveUnits.this.fMovingPercentage >= 1.0f) {
                MoveUnits.this.fMovingPercentage = 1.0f;
                MoveUnits.this.littleAnimationMainLine = new C00011();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.moveUnits.MoveUnits$2, reason: invalid class name */
    class AnonymousClass2 implements LittleAnimation {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.moveUnits.MoveUnits$2$1, reason: invalid class name */
        class AnonymousClass1 implements LittleAnimation {
            AnonymousClass1() {
            }

            @Override // aoc.kingdoms.lukasz.map.moveUnits.MoveUnits.LittleAnimation
            public void update() {
            }
        }

        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.moveUnits.MoveUnits.LittleAnimation
        public void update() {
            MoveUnits.this.fMovingPercentage += (CFG.currentTimeMillis - MoveUnits.this.lMovingTime) / GameValues.inGame.MOVE_UNITS_ANIMATION_DURATION;
            MoveUnits.this.lMovingTime = CFG.currentTimeMillis;
            if (MoveUnits.this.fMovingPercentage >= 1.0f) {
                MoveUnits.this.fMovingPercentage = 1.0f;
                MoveUnits.this.littleAnimationMainLine = new AnonymousClass1();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.moveUnits.MoveUnits$3, reason: invalid class name */
    class AnonymousClass3 implements LittleAnimation {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.moveUnits.MoveUnits$3$1, reason: invalid class name */
        class AnonymousClass1 implements LittleAnimation {
            AnonymousClass1() {
            }

            @Override // aoc.kingdoms.lukasz.map.moveUnits.MoveUnits.LittleAnimation
            public void update() {
            }
        }

        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.moveUnits.MoveUnits.LittleAnimation
        public void update() {
            MoveUnits.this.fCurrentMovingPercentage += (CFG.currentTimeMillis - MoveUnits.this.lCurrentMovingTime) / Game.gameThread.playSpeedTIME;
            MoveUnits.this.lCurrentMovingTime = CFG.currentTimeMillis;
            if (MoveUnits.this.fCurrentMovingPercentage >= 1.0f) {
                MoveUnits.this.fCurrentMovingPercentage = 1.0f;
                MoveUnits.this.littleAnimationMovingArmy = new AnonymousClass1();
            }
        }
    }

    public interface LittleAnimation {
        void update();
    }

    public class Node {
        float gCost;
        float hCost;
        Node parent;
        int provinceID;

        public Node(int i, Node node, float f, float f2) {
            this.provinceID = i;
            this.parent = node;
            this.gCost = f;
            this.hCost = f2;
        }

        public float getFCost() {
            return this.gCost + this.hCost;
        }
    }

    public MoveUnits(int i, int i2, int i3, String str, int i4, int i5) {
        this.lRoute = new ArrayList();
        this.iRouteSize = 0;
        this.doneMovementProgressWidth = 0.0f;
        this.currentMovementProgressWidth = 0.0f;
        this.movementProgressOverWidth = 0.0f;
        this.inBattle = false;
        this.inRetreat = false;
        this.iWidth = new ArrayList();
        this.lMovingTime = 0L;
        this.fMovingPercentage = 0.0f;
        this.lCurrentMovingTime = 0L;
        this.fCurrentMovingPercentage = 0.0f;
        this.fSpeed = 0.0f;
        this.isBelowZero = false;
        this.key = str;
        this.extraArmyY = i4;
        updateColorLine(i, this.inRetreat);
        updateSpeed(i, i2);
        buildRoute2(i, i2, i3, false);
        if (this.iRouteSize > 1) {
            ArrayList arrayList = new ArrayList();
            for (int i6 = 0; i6 < this.iRouteSize; i6++) {
                arrayList.add(this.lRoute.get(i6));
            }
            this.lRoute.clear();
            this.lRoute.add(Integer.valueOf(i5));
            for (int i7 = 0; i7 < this.iRouteSize; i7++) {
                this.lRoute.add((Integer) arrayList.get(i7));
            }
            this.iRouteSize = this.lRoute.size();
            buildMoveUnitsLine_FromToTheSameProvince(true, i);
        }
    }

    public MoveUnits(int i, int i2, int i3, String str, int i4, boolean z, boolean z2) {
        this.lRoute = new ArrayList();
        this.iRouteSize = 0;
        this.doneMovementProgressWidth = 0.0f;
        this.currentMovementProgressWidth = 0.0f;
        this.movementProgressOverWidth = 0.0f;
        this.inBattle = false;
        this.inRetreat = false;
        this.iWidth = new ArrayList();
        this.lMovingTime = 0L;
        this.fMovingPercentage = 0.0f;
        this.lCurrentMovingTime = 0L;
        this.fCurrentMovingPercentage = 0.0f;
        this.fSpeed = 0.0f;
        this.extraArmyY = 0;
        this.isBelowZero = false;
        this.key = str;
        this.extraArmyY = (ProvinceDrawArmy.getArmyHeight() * i4) + (i4 * 2);
        this.inRetreat = z;
        updateColorLine(i, z);
        updateSpeed(i, i2);
        buildRoute2(i, i2, i3, z2);
        if (this.iRouteSize > 1) {
            buildMoveUnitsLine(true, i);
            int armyKeyID = Game.getProvince(i2).getArmyKeyID(str);
            if (armyKeyID >= 0) {
                Game.getProvince(i2).getArmy(armyKeyID).iShiftX = Game.getProvince(i2).getArmy(armyKeyID).defaultShiftX();
                Game.getProvince(i2).getArmy(armyKeyID).iShiftY = Game.getProvince(i2).getArmy(armyKeyID).defaultShiftY();
            }
        }
    }

    public static boolean canBeUsedInPath(int i, int i2, boolean z, int i3) {
        if (Game.getProvince(i2).getWasteland() >= 0) {
            return false;
        }
        return z || isFriendlyProvince_OrAtWAr(i, i2) || Game.getProvince(i2).getCivID() == Game.getProvince(i3).getCivID();
    }

    public static final boolean isFriendlyProvince(int i, int i2) {
        return GameValues.move.ENABLE_MOVE_UNITS_TO_ANY_PROVINCE || Game.getProvince(i2).getCivID() == i || Game.getProvince(i2).getCivID() == 0 || Game.getProvince(i2).getSeaProvince() || Game.getCiv(i).diplomacy.haveAlliance(Game.getProvince(i2).getCivID()) || Game.getCiv(i).areInAllianceSpecial(Game.getProvince(i2).getCivID()) || Game.getCiv(i).getPuppetOfCivID() == Game.getProvince(i2).getCivID() || Game.getCiv(Game.getProvince(i2).getCivID()).getPuppetOfCivID() == i || Game.getCiv(Game.getProvince(i2).getCivID()).getPuppetOfCivID() == Game.getCiv(i).getPuppetOfCivID() || Game.getCiv(i).diplomacy.militaryAccess.containsKey(Integer.valueOf(Game.getProvince(i2).getCivID())) || i < 0;
    }

    public static final boolean isFriendlyProvince_OrAtWAr(int i, int i2) {
        return isFriendlyProvince(i, i2) || DiplomacyManager.isAtWar(i, Game.getProvince(i2).getCivID());
    }

    private static List<Integer> reconstructPath(Node node) {
        ArrayList arrayList = new ArrayList();
        while (node != null) {
            arrayList.add(Integer.valueOf(node.provinceID));
            node = node.parent;
        }
        Collections.reverse(arrayList);
        arrayList.remove(0);
        return arrayList;
    }

    public final void buildLine(int i) {
        if (i == Game.player.iCivID || Game.getCiv(i).isPlayerAlly) {
            int i2 = this.iRouteSize;
            int i3 = i2 * 16;
            this.iPrecision = i3;
            this.vPoints = new Vector2[i3];
            Vector2[] vector2Arr = new Vector2[i2 + 2];
            for (int i4 = 0; i4 < this.iRouteSize; i4++) {
                if (Game.getProvince(this.lRoute.get(i4).intValue()).getBelowZero()) {
                    this.isBelowZero = true;
                    break;
                }
            }
            if (this.isBelowZero) {
                int i5 = 0;
                while (i5 < this.iRouteSize) {
                    int i6 = i5 + 1;
                    vector2Arr[i6] = new Vector2(Game.getProvince(this.lRoute.get(i5).intValue()).iCenterShiftX + ((Game.getProvince(this.lRoute.get(i5).intValue()).getBelowZero() || Game.getProvince(this.lRoute.get(i5).intValue()).iCenterShiftX <= Game.mapBG.getWidth() / 2) ? 0 : -Game.mapBG.getWidth()), -Game.getProvince(this.lRoute.get(i5).intValue()).iCenterShiftY);
                    i5 = i6;
                }
                vector2Arr[0] = new Vector2(Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftX + ((Game.getProvince(this.lRoute.get(0).intValue()).getBelowZero() || Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftX <= Game.mapBG.getWidth() / 2) ? 0 : -Game.mapBG.getWidth()), -Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftY);
                vector2Arr[this.iRouteSize + 1] = new Vector2(Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).iCenterShiftX + ((Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).getBelowZero() || Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).iCenterShiftX <= Game.mapBG.getWidth() / 2) ? 0 : -Game.mapBG.getWidth()), -Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).iCenterShiftY);
            } else {
                int i7 = 0;
                while (i7 < this.iRouteSize) {
                    int i8 = i7 + 1;
                    vector2Arr[i8] = new Vector2(Game.getProvince(this.lRoute.get(i7).intValue()).iCenterShiftX, -Game.getProvince(this.lRoute.get(i7).intValue()).iCenterShiftY);
                    i7 = i8;
                }
                vector2Arr[0] = new Vector2(Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftX, -Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftY);
                vector2Arr[this.iRouteSize + 1] = new Vector2(Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).iCenterShiftX, -Game.getProvince(this.lRoute.get(this.iRouteSize - 1).intValue()).iCenterShiftY);
            }
            CatmullRomSpline catmullRomSpline = new CatmullRomSpline(vector2Arr, false);
            for (int i9 = 0; i9 < this.iPrecision; i9++) {
                this.vPoints[i9] = new Vector2();
                catmullRomSpline.valueAt(this.vPoints[i9], i9 / (this.iPrecision - 1.0f));
            }
        }
    }

    public final void buildMoveUnitsLine(boolean z, int i) {
        this.iWidth.clear();
        this.isBelowZero = false;
        buildWidth();
        if (z) {
            this.lMovingTime = CFG.currentTimeMillis;
            this.fMovingPercentage = 0.01f;
            this.littleAnimationMainLine = new AnonymousClass1();
        }
        updateLittleAnimationMovingArmy();
        buildLine(i);
    }

    public final void buildMoveUnitsLine_FromToTheSameProvince(boolean z, int i) {
        this.iWidth.clear();
        this.isBelowZero = false;
        buildWidth();
        if (z) {
            this.lMovingTime = CFG.currentTimeMillis;
            this.fMovingPercentage = 0.01f;
            this.littleAnimationMainLine = new AnonymousClass2();
        }
        updateLittleAnimationMovingArmy();
        buildLine(i);
    }

    protected boolean buildPath(int i, List<Integer> list, List<Integer> list2, List<List<Integer>> list3, int i2, int i3, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (z) {
            for (int i4 = 0; i4 < list2.size(); i4++) {
                for (int i5 = 0; i5 < Game.getProvince(list2.get(i4).intValue()).getNeighboringProvincesSize(); i5++) {
                    if (!getWas(Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringProvinces(i5)).getProvinceID()) && canBeUsedInPath(i, Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringProvinces(i5)).getProvinceID(), this.inRetreat, i2)) {
                        if (Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringProvinces(i5)).getProvinceID() == i3) {
                            setPath(i2, i3, list3.get(i4), i3, i2);
                            clearWas(list);
                            return true;
                        }
                        arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringProvinces(i5)).getProvinceID()));
                        ArrayList arrayList3 = new ArrayList(list3.get(i4));
                        arrayList3.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringProvinces(i5)).getProvinceID()));
                        arrayList2.add(arrayList3);
                        setWas(Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringProvinces(i5)).getProvinceID(), true);
                        list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringProvinces(i5)).getProvinceID()));
                    }
                }
                if (!z2 && !Game.getProvince(list2.get(i4).intValue()).getSeaProvince()) {
                    for (int i6 = 0; i6 < Game.getProvince(list2.get(i4).intValue()).getNeighboringSeaProvincesSize(); i6++) {
                        if (!getWas(Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringSeaProvinces(i6)).getProvinceID())) {
                            if (Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringSeaProvinces(i6)).getProvinceID() == i3) {
                                setPath(i2, i3, list3.get(i4), i3, i2);
                                clearWas(list);
                                return true;
                            }
                            arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringSeaProvinces(i6)).getProvinceID()));
                            ArrayList arrayList4 = new ArrayList(list3.get(i4));
                            arrayList4.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringSeaProvinces(i6)).getProvinceID()));
                            arrayList2.add(arrayList4);
                            setWas(Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringSeaProvinces(i6)).getProvinceID(), true);
                            list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i4).intValue()).getNeighboringSeaProvinces(i6)).getProvinceID()));
                        }
                    }
                }
            }
        } else {
            for (int i7 = 0; i7 < list2.size(); i7++) {
                for (int neighboringProvincesSize = Game.getProvince(list2.get(i7).intValue()).getNeighboringProvincesSize() - 1; neighboringProvincesSize >= 0; neighboringProvincesSize--) {
                    if (!getWas(Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()) && canBeUsedInPath(i, Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID(), this.inRetreat, i2)) {
                        if (Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID() == i3) {
                            setPath(i2, i3, list3.get(i7), i3, i2);
                            clearWas(list);
                            return true;
                        }
                        arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()));
                        ArrayList arrayList5 = new ArrayList(list3.get(i7));
                        arrayList5.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()));
                        arrayList2.add(arrayList5);
                        setWas(Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID(), true);
                        list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()));
                    }
                }
                if (!z2 && !Game.getProvince(list2.get(i7).intValue()).getSeaProvince()) {
                    for (int neighboringSeaProvincesSize = Game.getProvince(list2.get(i7).intValue()).getNeighboringSeaProvincesSize() - 1; neighboringSeaProvincesSize >= 0; neighboringSeaProvincesSize--) {
                        if (!getWas(Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID())) {
                            if (Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID() == i3) {
                                setPath(i2, i3, list3.get(i7), i3, i2);
                                clearWas(list);
                                return true;
                            }
                            arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()));
                            ArrayList arrayList6 = new ArrayList(list3.get(i7));
                            arrayList6.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()));
                            arrayList2.add(arrayList6);
                            setWas(Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID(), true);
                            list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i7).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()));
                        }
                    }
                }
            }
        }
        try {
            return buildPath(i, list, arrayList, arrayList2, i2, i3, z ? false : true, z2);
        } catch (StackOverflowError unused) {
            clearWas(list);
            return false;
        }
    }

    protected boolean buildRoute(int i, int i2, int i3, boolean z) {
        this.lRoute.clear();
        if (i2 < 0 || i3 < 0 || Game.getProvince(i3).getWasteland() >= 0) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i2));
        for (int i4 = 0; i4 < Game.getProvincesSize(); i4++) {
            setWas(i4, false);
        }
        setWas(i2, true);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Province province = Game.getProvince(i2);
        for (int i5 = 0; i5 < province.getNeighboringProvincesSize(); i5++) {
            if (canBeUsedInPath(i, province.getNeighboringProvinces(i5), this.inRetreat, i2)) {
                arrayList2.add(Integer.valueOf(Game.getProvince(province.getNeighboringProvinces(i5)).getProvinceID()));
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(Integer.valueOf(Game.getProvince(province.getNeighboringProvinces(i5)).getProvinceID()));
                arrayList3.add(arrayList4);
                arrayList.add(Integer.valueOf(Game.getProvince(province.getNeighboringProvinces(i5)).getProvinceID()));
                setWas(Game.getProvince(province.getNeighboringProvinces(i5)).getProvinceID(), true);
            }
        }
        if (!z && !province.getSeaProvince()) {
            for (int i6 = 0; i6 < province.getNeighboringSeaProvincesSize(); i6++) {
                arrayList2.add(Integer.valueOf(Game.getProvince(province.getNeighboringSeaProvinces(i6)).getProvinceID()));
                ArrayList arrayList5 = new ArrayList();
                arrayList5.add(Integer.valueOf(Game.getProvince(province.getNeighboringSeaProvinces(i6)).getProvinceID()));
                arrayList3.add(arrayList5);
                arrayList.add(Integer.valueOf(Game.getProvince(province.getNeighboringSeaProvinces(i6)).getProvinceID()));
                setWas(Game.getProvince(province.getNeighboringSeaProvinces(i6)).getProvinceID(), true);
            }
        }
        for (int i7 = 0; i7 < arrayList2.size(); i7++) {
            if (Game.getProvince(arrayList2.get(i7).intValue()).getProvinceID() == i3) {
                setPath(i2, i3, arrayList3.get(i7), i3, i2);
                clearWas(arrayList);
                return true;
            }
        }
        buildPath(i, arrayList, arrayList2, arrayList3, i2, i3, true, z);
        return true;
    }

    protected boolean buildRoute2(int i, int i2, int i3, boolean z) {
        MoveUnits moveUnits = this;
        moveUnits.lRoute.clear();
        if (i2 < 0 || i3 < 0 || Game.getProvince(i3).getWasteland() >= 0) {
            return false;
        }
        PriorityQueue priorityQueue = new PriorityQueue(Comparator.comparingDouble(new MoveUnits$$ExternalSyntheticLambda0()));
        HashMap map = new HashMap();
        Node node = new Node(i2, null, 0.0f, 0.0f);
        priorityQueue.add(node);
        map.put(Integer.valueOf(i2), node);
        while (!priorityQueue.isEmpty()) {
            Node node2 = (Node) priorityQueue.poll();
            if (node2.provinceID == i3) {
                setPath(i2, i3, reconstructPath(node2), i3, i2);
                return true;
            }
            Iterator<Integer> it = Game.getProvince(node2.provinceID).lNeighboringProvinces.iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                if (!map.containsKey(Integer.valueOf(iIntValue))) {
                    if (canBeUsedInPath(i, Game.getProvince(iIntValue).getProvinceID(), moveUnits.inRetreat, i2)) {
                        float manhattanDistance = node2.gCost + Game.getManhattanDistance(node2.provinceID, iIntValue);
                        float manhattanDistance2 = Game.getManhattanDistance(iIntValue, i3);
                        float f = manhattanDistance + manhattanDistance2;
                        Node node3 = new Node(iIntValue, node2, manhattanDistance, manhattanDistance2);
                        if (!priorityQueue.contains(node3) || f < ((Node) priorityQueue.peek()).getFCost()) {
                            if (priorityQueue.contains(node3)) {
                                priorityQueue.remove(node3);
                            }
                            priorityQueue.add(node3);
                        }
                        map.put(Integer.valueOf(iIntValue), node3);
                    } else {
                        map.put(Integer.valueOf(iIntValue), null);
                    }
                }
            }
            if (!z) {
                Iterator<Integer> it2 = Game.getProvince(node2.provinceID).lNeighboringSeaProvinces.iterator();
                while (it2.hasNext()) {
                    int iIntValue2 = it2.next().intValue();
                    if (!map.containsKey(Integer.valueOf(iIntValue2))) {
                        float distanceFromProvinceToProvince = node2.gCost + Game.getDistanceFromProvinceToProvince(node2.provinceID, iIntValue2);
                        float distanceFromProvinceToProvince2 = Game.getDistanceFromProvinceToProvince(iIntValue2, i3);
                        float f2 = distanceFromProvinceToProvince + distanceFromProvinceToProvince2;
                        Node node4 = new Node(iIntValue2, node2, distanceFromProvinceToProvince, distanceFromProvinceToProvince2);
                        if (!priorityQueue.contains(node4)) {
                            priorityQueue.add(node4);
                        } else if (f2 < ((Node) priorityQueue.peek()).getFCost()) {
                            if (priorityQueue.contains(node4)) {
                                priorityQueue.remove(node4);
                            }
                            priorityQueue.add(node4);
                        }
                        map.put(Integer.valueOf(iIntValue2), node4);
                    }
                }
            }
            moveUnits = this;
        }
        return false;
    }

    public final void buildWidth() {
        int i = 0;
        while (i < this.iRouteSize - 1) {
            try {
                Province province = Game.getProvince(this.lRoute.get(i).intValue());
                i++;
                Province province2 = Game.getProvince(this.lRoute.get(i).intValue());
                this.iWidth.add(Integer.valueOf(Math.max(1, ((int) Math.ceil(Math.sqrt(((province2.iCenterShiftX - province.iCenterShiftX) * (province2.iCenterShiftX - province.iCenterShiftX)) + ((province.iCenterShiftY - province2.iCenterShiftY) * (province.iCenterShiftY - province2.iCenterShiftY))))) / Game.mapBG.iMapScale)));
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    protected final void clearWas(List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            setWas(list.get(size).intValue(), true);
        }
        list.clear();
    }

    public void draw(SpriteBatch spriteBatch, float f) {
        try {
            Array array = new Array();
            int i = 0;
            if (!this.isBelowZero) {
                if (Game.getProvince(this.lRoute.get(0).intValue()).getDrawProvince()) {
                    for (int i2 = 0; i2 < ((int) ((this.iPrecision - 2) * this.fMovingPercentage)); i2++) {
                        array.add(new Vector2((this.vPoints[i2].x + Game.getProvince(this.lRoute.get(0).intValue()).getTranslateProvincePosX()) * f, (this.vPoints[i2].y - Game.mapCoords.getPosY()) * f));
                    }
                } else {
                    while (i < ((int) (this.iPrecision * this.fMovingPercentage))) {
                        array.add(new Vector2((this.vPoints[i].x + Game.mapCoords.getPosX()) * f, (this.vPoints[i].y - Game.mapCoords.getPosY()) * f));
                        i++;
                    }
                }
                Renderer.shapeDrawer.setColor(new Color(this.colorLine.r, this.colorLine.g, this.colorLine.b, 0.4f));
                Renderer.shapeDrawer.path((Iterable) array, ((this.fMovingPercentage * 0.75f) + 0.25f) * 3.0f, JoinType.SMOOTH, true);
                return;
            }
            if (Game.getProvince(this.lRoute.get(0).intValue()).getDrawProvince()) {
                for (int i3 = 0; i3 < ((int) ((this.iPrecision - 2) * this.fMovingPercentage)); i3++) {
                    array.add(new Vector2((this.vPoints[i3].x + Game.getProvince(this.lRoute.get(0).intValue()).getTranslateProvincePosX() + Game.mapBG.getWidth()) * f, (this.vPoints[i3].y - Game.mapCoords.getPosY()) * f));
                }
            } else {
                for (int i4 = 0; i4 < ((int) (this.iPrecision * this.fMovingPercentage)); i4++) {
                    array.add(new Vector2((this.vPoints[i4].x + Game.mapCoords.getPosX() + Game.mapBG.getWidth()) * f, (this.vPoints[i4].y - Game.mapCoords.getPosY()) * f));
                }
            }
            Renderer.shapeDrawer.setColor(new Color(this.colorLine.r, this.colorLine.g, this.colorLine.b, 0.4f));
            Renderer.shapeDrawer.path((Iterable) array, ((this.fMovingPercentage * 0.75f) + 0.25f) * 3.0f, JoinType.SMOOTH, true);
            array.clear();
            if (Game.getProvince(this.lRoute.get(0).intValue()).getDrawProvince()) {
                for (int i5 = 0; i5 < ((int) ((this.iPrecision - 2) * this.fMovingPercentage)); i5++) {
                    array.add(new Vector2((this.vPoints[i5].x + Game.getProvince(this.lRoute.get(0).intValue()).getTranslateProvincePosX()) * f, (this.vPoints[i5].y - Game.mapCoords.getPosY()) * f));
                }
            } else {
                while (i < ((int) (this.iPrecision * this.fMovingPercentage))) {
                    array.add(new Vector2((this.vPoints[i].x + Game.mapCoords.getPosX()) * f, (this.vPoints[i].y - Game.mapCoords.getPosY()) * f));
                    i++;
                }
            }
            Renderer.shapeDrawer.setColor(new Color(this.colorLine.r, this.colorLine.g, this.colorLine.b, 0.4f));
            Renderer.shapeDrawer.path((Iterable) array, ((this.fMovingPercentage * 0.75f) + 0.25f) * 3.0f, JoinType.SMOOTH, true);
        } catch (Exception unused) {
        }
    }

    public void draw_Ally(SpriteBatch spriteBatch, float f) {
        try {
            Array array = new Array();
            int i = 0;
            if (!this.isBelowZero) {
                if (Game.getProvince(this.lRoute.get(0).intValue()).getDrawProvince()) {
                    for (int i2 = 0; i2 < ((int) ((this.iPrecision - 2) * this.fMovingPercentage)); i2++) {
                        array.add(new Vector2((this.vPoints[i2].x + Game.getProvince(this.lRoute.get(0).intValue()).getTranslateProvincePosX()) * f, (this.vPoints[i2].y - Game.mapCoords.getPosY()) * f));
                    }
                } else {
                    while (i < ((int) (this.iPrecision * this.fMovingPercentage))) {
                        array.add(new Vector2((this.vPoints[i].x + Game.mapCoords.getPosX()) * f, (this.vPoints[i].y - Game.mapCoords.getPosY()) * f));
                        i++;
                    }
                }
                Renderer.shapeDrawer.setColor(new Color(this.colorLine.r, this.colorLine.g, this.colorLine.b, 0.4f));
                Renderer.shapeDrawer.path((Iterable) array, ((this.fMovingPercentage * 0.75f) + 0.25f) * 2.0f, JoinType.SMOOTH, true);
                return;
            }
            if (Game.getProvince(this.lRoute.get(0).intValue()).getDrawProvince()) {
                for (int i3 = 0; i3 < ((int) ((this.iPrecision - 2) * this.fMovingPercentage)); i3++) {
                    array.add(new Vector2((this.vPoints[i3].x + Game.getProvince(this.lRoute.get(0).intValue()).getTranslateProvincePosX() + Game.mapBG.getWidth()) * f, (this.vPoints[i3].y - Game.mapCoords.getPosY()) * f));
                }
            } else {
                for (int i4 = 0; i4 < ((int) (this.iPrecision * this.fMovingPercentage)); i4++) {
                    array.add(new Vector2((this.vPoints[i4].x + Game.mapCoords.getPosX() + Game.mapBG.getWidth()) * f, (this.vPoints[i4].y - Game.mapCoords.getPosY()) * f));
                }
            }
            Renderer.shapeDrawer.setColor(new Color(this.colorLine.r, this.colorLine.g, this.colorLine.b, 0.4f));
            Renderer.shapeDrawer.path((Iterable) array, ((this.fMovingPercentage * 0.75f) + 0.25f) * 2.0f, JoinType.SMOOTH, true);
            array.clear();
            if (Game.getProvince(this.lRoute.get(0).intValue()).getDrawProvince()) {
                for (int i5 = 0; i5 < ((int) ((this.iPrecision - 2) * this.fMovingPercentage)); i5++) {
                    array.add(new Vector2((this.vPoints[i5].x + Game.getProvince(this.lRoute.get(0).intValue()).getTranslateProvincePosX()) * f, (this.vPoints[i5].y - Game.mapCoords.getPosY()) * f));
                }
            } else {
                while (i < ((int) (this.iPrecision * this.fMovingPercentage))) {
                    array.add(new Vector2((this.vPoints[i].x + Game.mapCoords.getPosX()) * f, (this.vPoints[i].y - Game.mapCoords.getPosY()) * f));
                    i++;
                }
            }
            Renderer.shapeDrawer.setColor(new Color(this.colorLine.r, this.colorLine.g, this.colorLine.b, 0.4f));
            Renderer.shapeDrawer.path((Iterable) array, ((this.fMovingPercentage * 0.75f) + 0.25f) * 2.0f, JoinType.SMOOTH, true);
        } catch (Exception unused) {
        }
    }

    public int getFromProvinceID() {
        return this.lRoute.get(0).intValue();
    }

    public final float getProgressPerc() {
        return this.currentMovementProgressWidth / this.iWidth.get(0).intValue();
    }

    public int getToProvinceID() {
        return this.lRoute.get(1).intValue();
    }

    public int getToProvinceLastID() {
        return this.lRoute.get(this.iRouteSize - 1).intValue();
    }

    public boolean getWas(int i) {
        return Game.getProvince(i).was;
    }

    public int getWidthTotal() {
        int iIntValue = 0;
        for (int size = this.iWidth.size() - 1; size >= 0; size--) {
            iIntValue += this.iWidth.get(size).intValue();
        }
        return iIntValue;
    }

    public boolean haveSeaProvince() {
        for (int i = 0; i < this.iRouteSize; i++) {
            if (Game.getProvince(this.lRoute.get(i).intValue()).getSeaProvince()) {
                return true;
            }
        }
        return false;
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

    public void setWas(int i, boolean z) {
        Game.getProvince(i).was = z;
    }

    public void update() {
        this.littleAnimationMainLine.update();
        this.littleAnimationMovingArmy.update();
        try {
            int armyKeyID = Game.getProvince(this.lRoute.get(0).intValue()).getArmyKeyID(this.key);
            if (armyKeyID < 0) {
                return;
            }
            Province province = Game.getProvince(this.lRoute.get(0).intValue());
            Province province2 = Game.getProvince(this.lRoute.get(1).intValue());
            if ((!province.getBelowZero() && !province2.getBelowZero()) || (province.getBelowZero() && province2.getBelowZero())) {
                ArmyDivision army = province.getArmy(armyKeyID);
                float f = province2.iCenterShiftX - province.iCenterShiftX;
                float f2 = this.doneMovementProgressWidth;
                army.iShiftX_Scaled = (int) ((f * (f2 + ((this.currentMovementProgressWidth - f2) * this.fCurrentMovingPercentage))) / this.iWidth.get(0).intValue());
            } else if (province.getBelowZero()) {
                if (province2.iCenterShiftX > Game.mapBG.getWidth() / 2) {
                    ArmyDivision army2 = province.getArmy(armyKeyID);
                    float width = (province2.iCenterShiftX - Game.mapBG.getWidth()) - province.iCenterShiftX;
                    float f3 = this.doneMovementProgressWidth;
                    army2.iShiftX_Scaled = (int) ((width * (f3 + ((this.currentMovementProgressWidth - f3) * this.fCurrentMovingPercentage))) / this.iWidth.get(0).intValue());
                } else {
                    ArmyDivision army3 = province.getArmy(armyKeyID);
                    float f4 = province2.iCenterShiftX - province.iCenterShiftX;
                    float f5 = this.doneMovementProgressWidth;
                    army3.iShiftX_Scaled = (int) ((f4 * (f5 + ((this.currentMovementProgressWidth - f5) * this.fCurrentMovingPercentage))) / this.iWidth.get(0).intValue());
                }
            } else if (province.iCenterShiftX > Game.mapBG.getWidth() / 2) {
                ArmyDivision army4 = province.getArmy(armyKeyID);
                float width2 = (province2.iCenterShiftX + Game.mapBG.getWidth()) - province.iCenterShiftX;
                float f6 = this.doneMovementProgressWidth;
                army4.iShiftX_Scaled = (int) ((width2 * (f6 + ((this.currentMovementProgressWidth - f6) * this.fCurrentMovingPercentage))) / this.iWidth.get(0).intValue());
            } else {
                ArmyDivision army5 = province.getArmy(armyKeyID);
                float f7 = province2.iCenterShiftX - province.iCenterShiftX;
                float f8 = this.doneMovementProgressWidth;
                army5.iShiftX_Scaled = (int) ((f7 * (f8 + ((this.currentMovementProgressWidth - f8) * this.fCurrentMovingPercentage))) / this.iWidth.get(0).intValue());
            }
            ArmyDivision army6 = province.getArmy(armyKeyID);
            float f9 = province2.iCenterShiftY - province.iCenterShiftY;
            float f10 = this.doneMovementProgressWidth;
            army6.iShiftY_Scaled = ((int) ((f9 * (f10 + ((this.currentMovementProgressWidth - f10) * this.fCurrentMovingPercentage))) / this.iWidth.get(0).intValue())) + ((int) (this.extraArmyY / Game.mapScale.getCurrentScale()));
        } catch (Exception unused) {
        }
    }

    public void updateColorLine(int i, boolean z) {
        if (z) {
            this.colorLine = Colors.HOVER_NEGATIVE;
        } else if (i == Game.player.iCivID) {
            this.colorLine = Colors.HOVER_GOLD;
        } else {
            this.colorLine = CFG.getColorStep(Colors.HOVER_GOLD, Game.getCiv(i).getColor(1.0f), 60, 100, 0.4f);
        }
    }

    public void updateLittleAnimationMovingArmy() {
        this.lCurrentMovingTime = CFG.currentTimeMillis;
        this.fCurrentMovingPercentage = 0.01f;
        this.littleAnimationMovingArmy = new AnonymousClass3();
    }

    public void updateSpeed(int i, int i2) {
        int armyKeyID = Game.getProvince(i2).getArmyKeyID(this.key);
        this.fSpeed = GameValues.army.MIN_ARMY_MOVEMENT_SPEED;
        try {
            if (armyKeyID >= 0) {
                this.fSpeed = Math.max(GameValues.army.MIN_ARMY_MOVEMENT_SPEED, Game.getProvince(i2).getArmy(armyKeyID).getArmyMovementSpeed() * (this.inRetreat ? GameValues.army.RETREATING_ARMY_MOVEMENT_SPEED : 1.0f));
                return;
            }
            Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(i, this.key);
            if (armyPosFindArmy_FullCheck != null) {
                this.fSpeed = Math.max(GameValues.army.MIN_ARMY_MOVEMENT_SPEED, Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).getArmyMovementSpeed() * (this.inRetreat ? GameValues.army.RETREATING_ARMY_MOVEMENT_SPEED : 1.0f));
            } else if (this.fSpeed <= GameValues.army.MIN_ARMY_MOVEMENT_SPEED) {
                this.fSpeed = GameValues.army.MIN_ARMY_MOVEMENT_SPEED * (this.inRetreat ? GameValues.army.RETREATING_ARMY_MOVEMENT_SPEED : 1.0f);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
            if (this.fSpeed <= GameValues.army.MIN_ARMY_MOVEMENT_SPEED) {
                this.fSpeed = GameValues.army.MIN_ARMY_MOVEMENT_SPEED * (this.inRetreat ? GameValues.army.RETREATING_ARMY_MOVEMENT_SPEED : 1.0f);
            }
        }
    }

    public final void updateToNextProvince(int i) {
        this.lRoute.remove(0);
        this.iRouteSize = this.lRoute.size();
        buildMoveUnitsLine(false, i);
    }
}
