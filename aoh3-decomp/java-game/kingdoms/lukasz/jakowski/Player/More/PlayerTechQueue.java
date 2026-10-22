package aoc.kingdoms.lukasz.jakowski.Player.More;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PlayerTechQueue {
    public List<Integer> lTechQueue = new ArrayList();

    private final boolean addTechQueue(int i) {
        if (i < 0) {
            return false;
        }
        for (int size = this.lTechQueue.size() - 1; size >= 0; size--) {
            if (this.lTechQueue.get(size).intValue() == i) {
                return false;
            }
        }
        this.lTechQueue.add(Integer.valueOf(i));
        return true;
    }

    private final void buildTechQueue1(int i) {
        if (TechnologyTree.lTechnology.get(i).RequiredTech < 0 || Game.getCiv(Game.player.iCivID).getTechResearched(TechnologyTree.lTechnology.get(i).RequiredTech)) {
            return;
        }
        addTechQueue(TechnologyTree.lTechnology.get(i).RequiredTech);
        buildTechQueue1(TechnologyTree.lTechnology.get(i).RequiredTech);
        buildTechQueue2(TechnologyTree.lTechnology.get(i).RequiredTech);
    }

    private final void buildTechQueue2(int i) {
        if (TechnologyTree.lTechnology.get(i).RequiredTech2 < 0 || Game.getCiv(Game.player.iCivID).getTechResearched(TechnologyTree.lTechnology.get(i).RequiredTech2)) {
            return;
        }
        addTechQueue(TechnologyTree.lTechnology.get(i).RequiredTech2);
        buildTechQueue1(TechnologyTree.lTechnology.get(i).RequiredTech2);
        buildTechQueue2(TechnologyTree.lTechnology.get(i).RequiredTech2);
    }

    public final void buildTechQueue(int i) {
        this.lTechQueue.clear();
        this.lTechQueue.add(Integer.valueOf(i));
        buildTechQueue1(i);
        buildTechQueue2(i);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int size = this.lTechQueue.size() - 1; size >= 0; size--) {
            if (Game.getCiv(Game.player.iCivID).getAvailableToResearch(this.lTechQueue.get(size).intValue())) {
                arrayList2.add(this.lTechQueue.get(size));
                this.lTechQueue.remove(size);
            }
        }
        while (true) {
            int i2 = 0;
            if (arrayList2.size() <= 0) {
                break;
            }
            for (int size2 = arrayList2.size() - 1; size2 > 0; size2--) {
                if (TechnologyTree.lTechnology.get(((Integer) arrayList2.get(size2)).intValue()).getResearchCost() < TechnologyTree.lTechnology.get(((Integer) arrayList2.get(i2)).intValue()).getResearchCost() || TechnologyTree.lTechnology.get(((Integer) arrayList2.get(size2)).intValue()).TreeColumn < TechnologyTree.lTechnology.get(((Integer) arrayList2.get(i2)).intValue()).TreeColumn) {
                    i2 = size2;
                }
            }
            arrayList.add((Integer) arrayList2.get(i2));
            arrayList2.remove(i2);
        }
        while (this.lTechQueue.size() > 0) {
            int i3 = 0;
            for (int size3 = this.lTechQueue.size() - 1; size3 > 0; size3--) {
                if (TechnologyTree.lTechnology.get(this.lTechQueue.get(size3).intValue()).TreeColumn < TechnologyTree.lTechnology.get(this.lTechQueue.get(i3).intValue()).TreeColumn) {
                    i3 = size3;
                }
            }
            arrayList.add(this.lTechQueue.get(i3));
            this.lTechQueue.remove(i3);
        }
        this.lTechQueue = arrayList;
    }

    public void clearTechQueue() {
        this.lTechQueue.clear();
    }

    public int getTechIsInQueue(int i) {
        for (int size = this.lTechQueue.size() - 1; size >= 0; size--) {
            if (this.lTechQueue.get(size).intValue() == i) {
                return size;
            }
        }
        return -1;
    }

    public final int getTechQueue() {
        ArrayList arrayList = new ArrayList();
        for (int size = this.lTechQueue.size() - 1; size >= 0; size--) {
            if (Game.getCiv(Game.player.iCivID).getAvailableToResearch(this.lTechQueue.get(size).intValue()) && !Game.getCiv(Game.player.iCivID).getTechResearched(this.lTechQueue.get(size).intValue())) {
                arrayList.add(this.lTechQueue.get(size));
            }
        }
        if (arrayList.size() <= 0) {
            return -1;
        }
        int i = 0;
        for (int size2 = arrayList.size() - 1; size2 >= 1; size2--) {
            if (TechnologyTree.lTechnology.get(((Integer) arrayList.get(size2)).intValue()).getResearchCost() < TechnologyTree.lTechnology.get(((Integer) arrayList.get(i)).intValue()).getResearchCost() || TechnologyTree.lTechnology.get(((Integer) arrayList.get(size2)).intValue()).TreeColumn < TechnologyTree.lTechnology.get(((Integer) arrayList.get(i)).intValue()).TreeColumn) {
                i = size2;
            }
        }
        for (int size3 = this.lTechQueue.size() - 1; size3 >= 0; size3--) {
            if (this.lTechQueue.get(size3) == arrayList.get(i)) {
                this.lTechQueue.remove(size3);
                break;
            }
        }
        return ((Integer) arrayList.get(i)).intValue();
    }
}
