package aoc.kingdoms.lukasz.jakowski.AI.Advantages;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.AdvantagesManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Advantages {
    public static final boolean takeAdvantage(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (int i3 = 0; i3 < AdvantagesManager.iAdvantagesSize; i3++) {
            if (Game.getCiv(i).getTechResearched(AdvantagesManager.advantages.get(i3).RequiredTechID) && !Game.getCiv(i).haveAdvantageMaxLvl(i3)) {
                arrayList.add(Integer.valueOf(i3));
                i2 += AdvantagesManager.advantages.get(i3).AI;
            }
        }
        if (arrayList.size() == 0) {
            return false;
        }
        if (i2 <= 0) {
            AdvantagesManager.unlockAdvantage(i, ((Integer) arrayList.get(Game.oR.nextInt(arrayList.size()))).intValue());
        } else {
            int iNextInt = Game.oR.nextInt(i2);
            int size = arrayList.size();
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                if (iNextInt < AdvantagesManager.advantages.get(((Integer) arrayList.get(i5)).intValue()).AI + i4) {
                    AdvantagesManager.unlockAdvantage(i, ((Integer) arrayList.get(i5)).intValue());
                    return true;
                }
                i4 += AdvantagesManager.advantages.get(((Integer) arrayList.get(i5)).intValue()).AI;
            }
            AdvantagesManager.unlockAdvantage(i, ((Integer) arrayList.get(0)).intValue());
        }
        return true;
    }

    public static final int takeAdvantage_Player(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (int i3 = 0; i3 < AdvantagesManager.iAdvantagesSize; i3++) {
            if (Game.getCiv(i).getTechResearched(AdvantagesManager.advantages.get(i3).RequiredTechID) && !Game.getCiv(i).haveAdvantageMaxLvl(i3)) {
                arrayList.add(Integer.valueOf(i3));
                i2 += AdvantagesManager.advantages.get(i3).AI;
            }
        }
        if (arrayList.size() == 0) {
            return -1;
        }
        if (i2 <= 0) {
            AdvantagesManager.unlockAdvantage(i, ((Integer) arrayList.get(Game.oR.nextInt(arrayList.size()))).intValue());
            return -1;
        }
        int iNextInt = Game.oR.nextInt(i2);
        int size = arrayList.size();
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            if (iNextInt < AdvantagesManager.advantages.get(((Integer) arrayList.get(i5)).intValue()).AI + i4) {
                AdvantagesManager.unlockAdvantage(i, ((Integer) arrayList.get(i5)).intValue());
                return ((Integer) arrayList.get(i5)).intValue();
            }
            i4 += AdvantagesManager.advantages.get(((Integer) arrayList.get(i5)).intValue()).AI;
        }
        AdvantagesManager.unlockAdvantage(i, ((Integer) arrayList.get(0)).intValue());
        return ((Integer) arrayList.get(0)).intValue();
    }

    public static final void takeAdvantages(int i) {
        if (Game.getCiv(i).getAdvantagePoints() > 0) {
            for (int advantagePoints = Game.getCiv(i).getAdvantagePoints() - 1; advantagePoints >= 0 && takeAdvantage(i); advantagePoints--) {
            }
        }
    }
}
