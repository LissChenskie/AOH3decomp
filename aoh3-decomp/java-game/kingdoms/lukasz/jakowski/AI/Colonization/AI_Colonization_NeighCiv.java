package aoc.kingdoms.lukasz.jakowski.AI.Colonization;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.province.Province;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Colonization_NeighCiv {
    public static void updateColonize() {
        try {
            if (AI_Colonization.provincesAll.isEmpty() || Game_Calendar.TURN_ID < GameValues.colonization.AI_COLONIZE_NEIGH_CIV_MIN_TURN_ID) {
                return;
            }
            for (int i = Game_Calendar.TURN_ID % GameValues.gameUpdateAI.GAME_UPDATE_AI_COLONIZE_NEIGH_CIV; i < AI_Colonization.provincesAll.size(); i += GameValues.gameUpdateAI.GAME_UPDATE_AI_COLONIZE_NEIGH_CIV) {
                if (Game.getProvince(AI_Colonization.provincesAll.get(i).intValue()).getCivID() > 0 || Game.getProvince(AI_Colonization.provincesAll.get(i).intValue()).getSeaProvince() || Game.getProvince(AI_Colonization.provincesAll.get(i).intValue()).getWasteland() >= 0) {
                    AI_Colonization.provincesAll.remove(i);
                } else {
                    ArrayList arrayList = new ArrayList();
                    Province province = Game.getProvince(AI_Colonization.provincesAll.get(i).intValue());
                    for (int i2 = 0; i2 < province.getNeighboringProvincesSize(); i2++) {
                        if (Game.getProvince(province.getNeighboringProvinces(i2)).getCivID() > 0 && Game.getCiv(Game.getProvince(province.getNeighboringProvinces(i2)).getCivID()).canColonize && !arrayList.contains(Integer.valueOf(Game.getProvince(province.getNeighboringProvinces(i2)).getCivID()))) {
                            arrayList.add(Integer.valueOf(Game.getProvince(province.getNeighboringProvinces(i2)).getCivID()));
                        }
                    }
                    if (arrayList.isEmpty()) {
                        for (int i3 = 0; i3 < province.getNeighboringSeaProvincesSize(); i3++) {
                            Province province2 = Game.getProvince(province.getNeighboringSeaProvinces(i3));
                            for (int i4 = 0; i4 < province2.getNeighboringProvincesSize(); i4++) {
                                if (Game.getProvince(province2.getNeighboringProvinces(i4)).getCivID() > 0 && Game.getCiv(Game.getProvince(province2.getNeighboringProvinces(i4)).getCivID()).canColonize && !arrayList.contains(Integer.valueOf(Game.getProvince(province2.getNeighboringProvinces(i4)).getCivID()))) {
                                    arrayList.add(Integer.valueOf(Game.getProvince(province2.getNeighboringProvinces(i4)).getCivID()));
                                }
                            }
                        }
                    }
                    while (!arrayList.isEmpty()) {
                        int iNextInt = Game.oR.nextInt(arrayList.size());
                        if (AI_Colonization.aiColonize(((Integer) arrayList.get(iNextInt)).intValue(), AI_Colonization.provincesAll.get(i).intValue())) {
                            break;
                        } else {
                            arrayList.remove(iNextInt);
                        }
                    }
                    arrayList.clear();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
