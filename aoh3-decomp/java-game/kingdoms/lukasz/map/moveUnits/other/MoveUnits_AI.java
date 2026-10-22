package aoc.kingdoms.lukasz.map.moveUnits.other;

import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MoveUnits_AI {
    public List<Integer> lRoute = new ArrayList();
    public int iRouteSize = 0;

    public MoveUnits_AI(int i, int i2, int i3) {
        buildRoute(i, i2, i3);
    }

    protected boolean buildPath(int i, List<Integer> list, List<Integer> list2, List<List<Integer>> list3, int i2, int i3, boolean z, List<Integer> list4, List<List<Integer>> list5) {
        list4.clear();
        list5.clear();
        int i4 = 0;
        while (true) {
            if (i4 >= list2.size()) {
                if (z) {
                    for (int i5 = 0; i5 < list2.size(); i5++) {
                        for (int i6 = 0; i6 < Game.getProvince(list2.get(i5).intValue()).getNeighboringProvincesSize(); i6++) {
                            if (canBeUsedInPath(i, Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()) && !Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()).wasAI) {
                                if (Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID() == i3) {
                                    setPath(i2, i3, list3.get(i5), i3, i2);
                                    clearWas(list);
                                    return true;
                                }
                                list4.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()));
                                ArrayList arrayList = new ArrayList();
                                for (int i7 = 0; i7 < list3.get(i5).size(); i7++) {
                                    arrayList.add(list3.get(i5).get(i7));
                                }
                                arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()));
                                list5.add(arrayList);
                                Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()).wasAI = true;
                                list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()));
                            }
                        }
                        if (!Game.getProvince(list2.get(i5).intValue()).getSeaProvince()) {
                            for (int i8 = 0; i8 < Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvincesSize(); i8++) {
                                if (!Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()).wasAI) {
                                    if (Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID() == i3) {
                                        setPath(i2, i3, list3.get(i5), i3, i2);
                                        clearWas(list);
                                        return true;
                                    }
                                    list4.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()));
                                    ArrayList arrayList2 = new ArrayList();
                                    for (int i9 = 0; i9 < list3.get(i5).size(); i9++) {
                                        arrayList2.add(list3.get(i5).get(i9));
                                    }
                                    arrayList2.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()));
                                    list5.add(arrayList2);
                                    Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()).wasAI = true;
                                    list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()));
                                }
                            }
                        }
                    }
                } else {
                    for (int i10 = 0; i10 < list2.size(); i10++) {
                        for (int neighboringProvincesSize = Game.getProvince(list2.get(i10).intValue()).getNeighboringProvincesSize() - 1; neighboringProvincesSize >= 0; neighboringProvincesSize--) {
                            if (canBeUsedInPath(i, Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()) && !Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()).wasAI) {
                                if (Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID() == i3) {
                                    setPath(i2, i3, list3.get(i10), i3, i2);
                                    clearWas(list);
                                    return true;
                                }
                                list4.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()));
                                ArrayList arrayList3 = new ArrayList();
                                for (int i11 = 0; i11 < list3.get(i10).size(); i11++) {
                                    arrayList3.add(list3.get(i10).get(i11));
                                }
                                arrayList3.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()));
                                list5.add(arrayList3);
                                Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()).wasAI = true;
                                list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringProvinces(neighboringProvincesSize)).getProvinceID()));
                            }
                        }
                        if (!Game.getProvince(list2.get(i10).intValue()).getSeaProvince()) {
                            for (int neighboringSeaProvincesSize = Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvincesSize() - 1; neighboringSeaProvincesSize >= 0; neighboringSeaProvincesSize--) {
                                if (!Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()).wasAI) {
                                    if (Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID() == i3) {
                                        setPath(i2, i3, list3.get(i10), i3, i2);
                                        clearWas(list);
                                        return true;
                                    }
                                    list4.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()));
                                    ArrayList arrayList4 = new ArrayList();
                                    for (int i12 = 0; i12 < list3.get(i10).size(); i12++) {
                                        arrayList4.add(list3.get(i10).get(i12));
                                    }
                                    arrayList4.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()));
                                    list5.add(arrayList4);
                                    Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()).wasAI = true;
                                    list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i10).intValue()).getNeighboringSeaProvinces(neighboringSeaProvincesSize)).getProvinceID()));
                                }
                            }
                        }
                    }
                }
                if (list4.isEmpty()) {
                    return false;
                }
                try {
                    return buildPath(i, list, list4, list5, i2, i3, z ? false : true, list2, list3);
                } catch (StackOverflowError unused) {
                    clearWas(list);
                    return false;
                }
            }
            if (Game.getProvince(list2.get(i4).intValue()).getProvinceID() == i3) {
                setPath(i2, i3, list3.get(i4), i3, i2);
                clearWas(list);
                return true;
            }
            i4++;
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
            Game.getProvince(i4).wasAI = false;
        }
        Game.getProvince(i2).wasAI = true;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i5 = 0; i5 < Game.getProvince(i2).getNeighboringProvincesSize(); i5++) {
            if (canBeUsedInPath(i, Game.getProvince(i2).getNeighboringProvinces(i5))) {
                arrayList2.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getProvinceID()));
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getProvinceID()));
                arrayList3.add(arrayList4);
                arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getProvinceID()));
                Game.getProvince(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getProvinceID()).wasAI = true;
            }
        }
        if (!Game.getProvince(i2).getSeaProvince()) {
            for (int i6 = 0; i6 < Game.getProvince(i2).getNeighboringSeaProvincesSize(); i6++) {
                arrayList2.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i6)).getProvinceID()));
                ArrayList arrayList5 = new ArrayList();
                arrayList5.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i6)).getProvinceID()));
                arrayList3.add(arrayList5);
                arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i6)).getProvinceID()));
                Game.getProvince(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i6)).getProvinceID()).wasAI = true;
            }
        }
        buildPath(i, arrayList, arrayList2, arrayList3, i2, i3, true, new ArrayList(), new ArrayList());
        return true;
    }

    public boolean canBeUsedInPath(int i, int i2) {
        return !Game.getCiv(Game.getProvince(i2).getCivID()).diplomacy.isRival(i) && Game.getProvince(i2).getWasteland() < 0;
    }

    protected final void clearWas(List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            Game.getProvince(list.get(size).intValue()).wasAI = false;
        }
        list.clear();
    }

    public int getFromProvinceID() {
        return this.lRoute.get(0).intValue();
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
}
