package aoc.kingdoms.lukasz.jakowski.AI.Colonization;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_ColonizationTribal {
    public static boolean canColonize(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            for (int i3 = 0; i3 < Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvincesSize(); i3++) {
                if (Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).getCivID() == 0 && Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).getWasteland() < 0) {
                    return true;
                }
            }
        }
        for (int i4 = 0; i4 < Game.getCiv(i).getNumOfProvinces(); i4++) {
            for (int i5 = 0; i5 < Game.getProvince(Game.getCiv(i).getProvinceID(i4)).getNeighboringSeaProvincesSize(); i5++) {
                for (int i6 = 0; i6 < Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i4)).getNeighboringSeaProvinces(i5)).getNeighboringProvincesSize(); i6++) {
                    int neighboringProvinces = Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i4)).getNeighboringSeaProvinces(i5)).getNeighboringProvinces(i6);
                    if (!Game.getProvince(neighboringProvinces).getSeaProvince() && Game.getProvince(neighboringProvinces).getCivID() == 0 && Game.getProvince(neighboringProvinces).getWasteland() < 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean colonize(int i) {
        if (Game.getCiv(i).fGold > Game.aiValues.COLONIZE_MIN_GOLD && Game.getCiv(i).fManpower > Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * Game.aiValues.COLONIZE_MIN_MANPOWER_X_REGIMENTS_TRIBAL) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
                for (int i3 = 0; i3 < Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvincesSize(); i3++) {
                    if (Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).getCivID() == 0 && Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).getWasteland() < 0 && !arrayList.contains(Integer.valueOf(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)))) {
                        arrayList.add(Integer.valueOf(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)));
                        Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).aiInvestScore = Game.aiValues.COLONIZE_SCORE_PER_NEIGH_PROVINCE + Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).getGrowthRateWithBonuses();
                    }
                }
            }
            if (arrayList.isEmpty() || Game.oR.nextInt(100) < Game.aiValues.COLONIZE_OVER_SEA_CHANCE) {
                for (int i4 = 0; i4 < Game.getCiv(i).getNumOfProvinces(); i4++) {
                    for (int i5 = 0; i5 < Game.getProvince(Game.getCiv(i).getProvinceID(i4)).getNeighboringSeaProvincesSize(); i5++) {
                        for (int i6 = 0; i6 < Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i4)).getNeighboringSeaProvinces(i5)).getNeighboringProvincesSize(); i6++) {
                            int neighboringProvinces = Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i4)).getNeighboringSeaProvinces(i5)).getNeighboringProvinces(i6);
                            if (!Game.getProvince(neighboringProvinces).getSeaProvince() && Game.getProvince(neighboringProvinces).getCivID() == 0 && Game.getProvince(neighboringProvinces).getWasteland() < 0) {
                                arrayList.add(Integer.valueOf(neighboringProvinces));
                                Game.getProvince(neighboringProvinces).aiInvestScore = Game.aiValues.COLONIZE_SCORE_PER_NEIGH_PROVINCE + Game.getProvince(neighboringProvinces).getGrowthRateWithBonuses();
                            }
                        }
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                for (int i7 = 0; i7 < Game.aiValues.COLONIZE_PROVINCES_LIMIT_TRIBAL && arrayList.size() > 0; i7++) {
                    int i8 = 0;
                    for (int size = arrayList.size() - 1; size > 0; size--) {
                        if (Game.getProvince(((Integer) arrayList.get(i8)).intValue()).aiInvestScore < Game.getProvince(((Integer) arrayList.get(size)).intValue()).aiInvestScore) {
                            i8 = size;
                        }
                    }
                    if (!AI_Colonization.aiColonize(i, ((Integer) arrayList.get(i8)).intValue())) {
                        arrayList.clear();
                        return true;
                    }
                    arrayList.remove(i8);
                }
                arrayList.clear();
                return true;
            }
            arrayList.clear();
        }
        return true;
    }
}
