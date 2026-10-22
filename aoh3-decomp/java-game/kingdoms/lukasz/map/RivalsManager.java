package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class RivalsManager {
    public static final List<Integer> buildRivals(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 1; i3 < i; i3++) {
            if (!Game.getCiv(i).diplomacy.isRival(i3)) {
                float fBuildRivals_IsInDistance_Perc = buildRivals_IsInDistance_Perc(i, i3);
                if (fBuildRivals_IsInDistance_Perc >= 0.0f) {
                    arrayList.add(Integer.valueOf(i3));
                    arrayList2.add(Float.valueOf(fBuildRivals_IsInDistance_Perc));
                }
            }
        }
        for (int i4 = i + 1; i4 < Game.getCivsSize(); i4++) {
            if (!Game.getCiv(i).diplomacy.isRival(i4)) {
                float fBuildRivals_IsInDistance_Perc2 = buildRivals_IsInDistance_Perc(i, i4);
                if (fBuildRivals_IsInDistance_Perc2 >= 0.0f) {
                    arrayList.add(Integer.valueOf(i4));
                    arrayList2.add(Float.valueOf(fBuildRivals_IsInDistance_Perc2));
                }
            }
        }
        if (arrayList.size() <= i2) {
            return arrayList;
        }
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList2.size();
        for (int i5 = 0; i5 < size; i5++) {
            float fAbs = Math.abs(Game.getCiv(i).iCivRankScore - Game.getCiv(((Integer) arrayList.get(i5)).intValue()).iCivRankScore);
            arrayList2.set(i5, Float.valueOf((GameValues.rivals.RIVALS_SCORE_MIN * fAbs) + (fAbs * GameValues.rivals.RIVALS_SCORE_DISTANCE * (((Float) arrayList2.get(i5)).floatValue() / Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).RIVALS_DISTANCE))));
        }
        while (arrayList3.size() <= i2) {
            int size2 = arrayList.size();
            int i6 = 0;
            for (int i7 = 1; i7 < size2; i7++) {
                if (((Float) arrayList2.get(i7)).floatValue() < ((Float) arrayList2.get(i6)).floatValue()) {
                    i6 = i7;
                }
            }
            arrayList3.add((Integer) arrayList.get(i6));
            arrayList.remove(i6);
            arrayList2.remove(i6);
        }
        return arrayList3;
    }

    public static boolean buildRivals_IsInDistance(int i, int i2) {
        return Game.getCiv(i2).getNumOfProvinces() > 0 && Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID()) <= Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).RIVALS_DISTANCE;
    }

    public static float buildRivals_IsInDistance_Perc(int i, int i2) {
        if (Game.getCiv(i2).getNumOfProvinces() <= 0) {
            return -1.0f;
        }
        float distance_PercOfMax = Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID());
        if (distance_PercOfMax > Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).RIVALS_DISTANCE) {
            return -1.0f;
        }
        return distance_PercOfMax;
    }

    public static float getLegacy(int i, int i2) {
        return GameValues.rivals.RIVAL_LEGACY_MIN;
    }

    public static int getManpower(int i, int i2) {
        return (int) (GameValues.rivals.RIVAL_MANPOWER_MIN * Math.max(0.05f, 1.0f - Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID())));
    }

    public static List<Integer> getRivaledBy(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 1; i2 < i; i2++) {
            if (Game.getCiv(i2).getNumOfProvinces() > 0 && Game.getCiv(i2).diplomacy.isRival(i)) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        for (int i3 = i + 1; i3 < Game.getCivsSize(); i3++) {
            if (Game.getCiv(i3).getNumOfProvinces() > 0 && Game.getCiv(i3).diplomacy.isRival(i)) {
                arrayList.add(Integer.valueOf(i3));
            }
        }
        return arrayList;
    }
}
