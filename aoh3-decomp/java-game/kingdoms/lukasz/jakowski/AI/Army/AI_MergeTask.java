package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_MergeTask {
    public int iProvinceID;
    public List<String> keys;

    public AI_MergeTask() {
        this.keys = new ArrayList();
    }

    public AI_MergeTask(int i, String str) {
        ArrayList arrayList = new ArrayList();
        this.keys = arrayList;
        this.iProvinceID = i;
        arrayList.add(str);
    }

    public void addKey(String str) {
        if (this.keys.contains(str)) {
            return;
        }
        this.keys.add(str);
    }

    public void checkArmiesExists(int i) {
        for (int size = this.keys.size() - 1; size >= 0; size--) {
            if (!Game.getCiv(i).armyExists(this.keys.get(size))) {
                this.keys.remove(size);
            } else if (Game.getProvince(this.iProvinceID).getArmyKeyID(this.keys.get(size), i) < 0 && !Game.getCiv(i).isArmyMovingToProvince(this.keys.get(size), this.iProvinceID)) {
                this.keys.remove(size);
            }
        }
    }

    public void removeKey(String str) {
        for (int size = this.keys.size() - 1; size > 0; size--) {
            if (this.keys.get(size).equals(str)) {
                this.keys.remove(size);
                return;
            }
        }
    }
}
