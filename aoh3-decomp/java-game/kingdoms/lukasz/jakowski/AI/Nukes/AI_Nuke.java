package aoc.kingdoms.lukasz.jakowski.AI.Nukes;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Nuke {
    public static void useNukes(int i) {
        if (Game.getCiv(i).getNukes() > 0) {
            try {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < Game.getCiv(i).diplomacy.iAtWarSize; i2++) {
                    Civilization civ = Game.getCiv(Game.getCiv(i).diplomacy.atWar.get(i2).intValue());
                    for (int i3 = 0; i3 < civ.getNumOfProvinces(); i3++) {
                        if (!Game.getProvince(civ.getProvinceID(i3)).isOccupied() && Game.getProvince(civ.getProvinceID(i3)).getDevastation() < GameValues.atomic.AI_NUKE_IF_DEVASTATION_BELOW) {
                            arrayList.add(Integer.valueOf(civ.getProvinceID(i3)));
                        }
                    }
                }
                while (Game.getCiv(i).getNukes() > 0 && !arrayList.isEmpty()) {
                    for (int i4 = 0; !arrayList.isEmpty() && i4 < Game.getProvince(((Integer) arrayList.get(0)).intValue()).getArmySize(); i4++) {
                        if (Game.getProvince(((Integer) arrayList.get(0)).intValue()).getArmy(i4).civID == i) {
                            arrayList.remove(0);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        break;
                    }
                    int i5 = 0;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        if (Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getPopulationTotal() < Game.getProvince(((Integer) arrayList.get(size)).intValue()).getPopulationTotal()) {
                            i5 = size;
                        }
                    }
                    Game.dropAtomicBomb(i, ((Integer) arrayList.get(i5)).intValue());
                    arrayList.remove(i5);
                }
                arrayList.clear();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }
}
