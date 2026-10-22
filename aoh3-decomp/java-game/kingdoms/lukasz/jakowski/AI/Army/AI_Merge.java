package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Merge {
    public List<AI_MergeTask> aiMergeTasks = new ArrayList();

    public void addMerge(int i, String str) {
        for (int size = this.aiMergeTasks.size() - 1; size >= 0; size--) {
            if (this.aiMergeTasks.get(size).iProvinceID == i) {
                this.aiMergeTasks.get(size).addKey(str);
                return;
            }
        }
        this.aiMergeTasks.add(new AI_MergeTask(i, str));
    }

    public void checkMerge(int i, String str) {
        for (int size = this.aiMergeTasks.size() - 1; size >= 0; size--) {
            if (this.aiMergeTasks.get(size).iProvinceID == i) {
                for (int i2 = 0; i2 < Game.getProvince(i).getArmySize(); i2++) {
                    for (int armySize = Game.getProvince(i).getArmySize() - 1; armySize > i2; armySize--) {
                        if (Game.getProvince(i).getArmy(i2).civID == Game.getProvince(i).getArmy(armySize).civID && mergeArmies(size, Game.getProvince(i).getArmy(i2).key, Game.getProvince(i).getArmy(armySize).key)) {
                            try {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(Game.getProvince(i).getArmy(i2).key);
                                arrayList.add(Game.getProvince(i).getArmy(armySize).key);
                                Game.getProvince(i).mergeUnits(arrayList);
                            } catch (Exception e) {
                                CFG.exceptionStack(e);
                            }
                        }
                    }
                }
            }
        }
    }

    public void checkMergeIsPossibleForArmy(int i, String str) {
        for (int size = this.aiMergeTasks.size() - 1; size >= 0; size--) {
            if (this.aiMergeTasks.get(size).keys.contains(str)) {
                this.aiMergeTasks.get(size).checkArmiesExists(i);
                if (this.aiMergeTasks.get(size).keys.size() < 2) {
                    this.aiMergeTasks.remove(size);
                }
            }
        }
    }

    public void checkMerge_ArmyExists(int i) {
        for (int size = this.aiMergeTasks.size() - 1; size >= 0; size--) {
            if (Game.getProvince(this.aiMergeTasks.get(size).iProvinceID).getCivID() != i) {
                this.aiMergeTasks.remove(size);
            } else {
                for (int size2 = this.aiMergeTasks.get(size).keys.size() - 1; size2 >= 0; size2--) {
                    Game.getCiv(i).armyExists(this.aiMergeTasks.get(size).keys.get(size2));
                }
            }
        }
    }

    public boolean isArmyMerging(int i, String str) {
        checkMergeIsPossibleForArmy(i, str);
        for (int size = this.aiMergeTasks.size() - 1; size >= 0; size--) {
            if (this.aiMergeTasks.get(size).keys.contains(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean isArmyMerging_Just(int i, String str) {
        for (int size = this.aiMergeTasks.size() - 1; size >= 0; size--) {
            if (this.aiMergeTasks.get(size).keys.contains(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean mergeArmies(int i, String str, String str2) {
        int i2 = 0;
        while (i2 < this.aiMergeTasks.get(i).keys.size()) {
            int i3 = i2 + 1;
            for (int i4 = i3; i4 < this.aiMergeTasks.get(i).keys.size(); i4++) {
                if (this.aiMergeTasks.get(i).keys.get(i2).equals(str) && this.aiMergeTasks.get(i).keys.get(i4).equals(str2)) {
                    return true;
                }
                if (this.aiMergeTasks.get(i).keys.get(i2).equals(str2) && this.aiMergeTasks.get(i).keys.get(i4).equals(str)) {
                    return true;
                }
            }
            i2 = i3;
        }
        return false;
    }
}
