package aoc.kingdoms.lukasz.jakowski.AI.Colonization;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.ColonizationManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Colonization {
    public static List<Integer> provinces = new ArrayList();
    public static List<Integer> provincesAll = new ArrayList();

    public static boolean aiColonize(int i, int i2) {
        if (Game.getCiv(i).fManpower >= Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE && Game.getProvince(i2).getCivID() == 0 && Game.getProvince(i2).getWasteland() < 0 && !Game.getProvince(i2).getSeaProvince()) {
            int iMax = (int) Math.max(Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, Math.min(Game.getCiv(i).fManpower, Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * (Game.oR.nextInt(Game.aiValues.COLONIZE_X_REGIMENTS_RANDOM) + 1)));
            if (ColonizationManager.establishSettlement(i, i2, iMax)) {
                Game.getCiv(i).fGold -= iMax / 100;
                Game.getCiv(i).setManpower(Game.getCiv(i).fManpower - ((double) iMax));
                removeProvinceID(i2);
                removeProvinceID_All(i2);
                return Game.getCiv(i).fManpower >= ((double) Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE);
            }
        }
        return false;
    }

    public static void colonize(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            for (int i3 = 0; i3 < Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvincesSize(); i3++) {
                if (Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).getCivID() == 0 && Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).getWasteland() < 0) {
                    float f = Game.continents.lContinents.get(Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).getContinent()).prioritizeColonization ? Game.aiValues.COLONIZE_SCORE_PRIORITIZE_CONTINENT_MODIFIER : 1.0f;
                    if (arrayList.contains(Integer.valueOf(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)))) {
                        Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).aiInvestScore += Game.aiValues.COLONIZE_SCORE_PER_NEIGH_PROVINCE * f;
                    } else {
                        arrayList.add(Integer.valueOf(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)));
                        Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).aiInvestScore = (Game.aiValues.COLONIZE_SCORE_PER_NEIGH_PROVINCE + Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).getGrowthRateWithBonuses()) * f;
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            for (int i4 = 0; i4 < Game.getCiv(i).getNumOfProvinces(); i4++) {
                int provinceID = Game.getCiv(i).getProvinceID(i4);
                for (int i5 = 0; i5 < Game.getProvince(provinceID).getNeighboringProvincesSize(); i5++) {
                    int neighboringProvinces = Game.getProvince(provinceID).getNeighboringProvinces(i5);
                    float f2 = Game.continents.lContinents.get(Game.getProvince(neighboringProvinces).getContinent()).prioritizeColonization ? Game.aiValues.COLONIZE_SCORE_PRIORITIZE_CONTINENT_MODIFIER : 1.0f;
                    if (Game.getProvince(neighboringProvinces).getCivID() == 0 && Game.getProvince(neighboringProvinces).getWasteland() < 0) {
                        if (arrayList.contains(Integer.valueOf(neighboringProvinces))) {
                            Game.getProvince(neighboringProvinces).aiInvestScore += Game.aiValues.COLONIZE_SCORE_PER_NEIGH_PROVINCE * f2;
                        } else {
                            arrayList.add(Integer.valueOf(neighboringProvinces));
                            Game.getProvince(neighboringProvinces).aiInvestScore = (Game.aiValues.COLONIZE_SCORE_PER_NEIGH_PROVINCE + Game.getProvince(neighboringProvinces).getGrowthRateWithBonuses()) * f2;
                        }
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            for (int i6 = 0; i6 < Game.aiValues.COLONIZE_PROVINCES_LIMIT && arrayList.size() > 0; i6++) {
                int i7 = 0;
                for (int size = arrayList.size() - 1; size > 0; size--) {
                    if (Game.getProvince(((Integer) arrayList.get(i7)).intValue()).aiInvestScore < Game.getProvince(((Integer) arrayList.get(size)).intValue()).aiInvestScore) {
                        i7 = size;
                    }
                }
                if (!aiColonize(i, ((Integer) arrayList.get(i7)).intValue())) {
                    arrayList.clear();
                    return;
                }
                arrayList.remove(i7);
            }
            arrayList.clear();
            return;
        }
        if (!Game.getCiv(i).haveAccessSea || provinces.isEmpty()) {
            return;
        }
        for (int size2 = provinces.size() - 1; size2 > 0; size2--) {
            Game.getProvince(provinces.get(size2).intValue()).aiInvestScore *= Math.max(0.05f, 1.0f - Game.getDistanceFromProvinceToProvince(Game.getCiv(i).getCapitalProvinceID(), provinces.get(size2).intValue()));
        }
        for (int i8 = 0; i8 < Game.aiValues.COLONIZE_PROVINCES_LIMIT_SEA && provinces.size() > 0; i8++) {
            int i9 = 0;
            for (int size3 = provinces.size() - 1; size3 > 0; size3--) {
                if (Game.getProvince(provinces.get(i9).intValue()).aiInvestScore < Game.getProvince(provinces.get(size3).intValue()).aiInvestScore) {
                    i9 = size3;
                }
            }
            if (!aiColonize(i, provinces.get(i9).intValue())) {
                return;
            }
        }
    }

    public static void initData() {
        provinces.clear();
        provincesAll.clear();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() == 0 && Game.getProvince(i).getWasteland() < 0 && !Game.getProvince(i).getSeaProvince()) {
                if (Game.getProvince(i).accessToMainSea) {
                    provinces.add(Integer.valueOf(i));
                }
                provincesAll.add(Integer.valueOf(i));
            }
        }
    }

    public static void removeProvinceID(int i) {
        for (int size = provinces.size() - 1; size >= 0; size--) {
            if (provinces.get(size).intValue() == i) {
                provinces.remove(size);
                return;
            }
        }
    }

    public static void removeProvinceID_All(int i) {
        for (int size = provincesAll.size() - 1; size >= 0; size--) {
            if (provincesAll.get(size).intValue() == i) {
                provincesAll.remove(size);
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0088 A[Catch: Exception -> 0x00e7, TryCatch #0 {Exception -> 0x00e7, blocks: (B:2:0x0000, B:4:0x0008, B:5:0x0011, B:7:0x0017, B:9:0x0021, B:11:0x0029, B:13:0x0035, B:15:0x0041, B:17:0x0050, B:19:0x006e, B:20:0x0071, B:21:0x0077, B:23:0x007d, B:24:0x0081, B:25:0x0082, B:27:0x0088, B:29:0x0092, B:31:0x009a, B:33:0x00a6, B:35:0x00b2, B:37:0x00c1, B:39:0x00df, B:40:0x00e2), top: B:45:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0092 A[Catch: Exception -> 0x00e7, TryCatch #0 {Exception -> 0x00e7, blocks: (B:2:0x0000, B:4:0x0008, B:5:0x0011, B:7:0x0017, B:9:0x0021, B:11:0x0029, B:13:0x0035, B:15:0x0041, B:17:0x0050, B:19:0x006e, B:20:0x0071, B:21:0x0077, B:23:0x007d, B:24:0x0081, B:25:0x0082, B:27:0x0088, B:29:0x0092, B:31:0x009a, B:33:0x00a6, B:35:0x00b2, B:37:0x00c1, B:39:0x00df, B:40:0x00e2), top: B:45:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00e2 -> B:24:0x0081). Please report as a decompilation issue!!! */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public static void updateColonize() {
        /*
            Method dump skipped, instruction units count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.AI.Colonization.AI_Colonization.updateColonize():void");
    }
}
