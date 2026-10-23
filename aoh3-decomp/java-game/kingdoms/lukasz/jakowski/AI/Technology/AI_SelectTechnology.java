package aoc.kingdoms.lukasz.jakowski.AI.Technology;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_SelectTechnology {
    public static void selectTechnology(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < TechnologyTree.iTechnologySize; i2++) {
            if (Game.getCiv(i).getAvailableToResearch(i2)) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (arrayList.size() == 0) {
            return;
        }
        if (arrayList.size() == 1) {
            Game.getCiv(i).setActiveTechResearch(((Integer) arrayList.get(0)).intValue());
            Game.getCiv(i).iAlternativeTechResearch = -1;
            return;
        }
        int i3 = 0;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            i3 += TechnologyTree.lTechnology.get(((Integer) arrayList.get(size)).intValue()).AI;
        }
        if (i3 <= 0) {
            Game.getCiv(i).setActiveTechResearch(((Integer) arrayList.get(0)).intValue());
            Game.getCiv(i).iAlternativeTechResearch = -1;
            return;
        }
        int iNextInt = Game.oR.nextInt(i3);
        int i4 = 0;
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            if (iNextInt < TechnologyTree.lTechnology.get(((Integer) arrayList.get(i5)).intValue()).AI + i4) {
                Game.getCiv(i).setActiveTechResearch(((Integer) arrayList.get(i5)).intValue());
                Game.getCiv(i).iAlternativeTechResearch = -1;
                return;
            }
            i4 += TechnologyTree.lTechnology.get(((Integer) arrayList.get(i5)).intValue()).AI;
        }
        Game.getCiv(i).setActiveTechResearch(((Integer) arrayList.get(0)).intValue());
        Game.getCiv(i).iAlternativeTechResearch = -1;
    }
}
