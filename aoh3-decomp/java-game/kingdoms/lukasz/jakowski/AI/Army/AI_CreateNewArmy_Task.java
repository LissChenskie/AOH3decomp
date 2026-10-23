package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.army.ArmyRecruit;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_CreateNewArmy_Task {
    public List<AI_CreateNewArmy> cre;
    public String key;
    public int rL;
    public int t;

    public AI_CreateNewArmy_Task() {
        this.cre = new ArrayList();
        this.rL = 0;
        this.t = 0;
    }

    public AI_CreateNewArmy_Task(String str, List<AI_CreateNewArmy> list, int i) {
        new ArrayList();
        this.rL = 0;
        this.key = str;
        this.cre = list;
        this.t = i;
        for (int size = list.size() - 1; size >= 0; size--) {
            this.rL += this.cre.get(size).n;
        }
    }

    public boolean recruitArmy(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            if (!Game.getProvince(Game.getCiv(i).getProvinceID(i2)).isOccupied()) {
                arrayList.add(Integer.valueOf(Game.getCiv(i).getProvinceID(i2)));
            }
        }
        int size = arrayList.size();
        if (arrayList.size() > 0) {
            while (true) {
                int size2 = this.cre.size();
                if (size2 <= 0) {
                    break;
                }
                int iNextInt = Game.oR.nextInt(size2);
                if (!Game.getCiv(i).recruitArmy(new ArmyRecruit(((Integer) arrayList.get(Game.oR.nextInt(size))).intValue(), this.cre.get(iNextInt).u, this.cre.get(iNextInt).a, this.key))) {
                    break;
                }
                this.cre.get(iNextInt).n--;
                this.rL--;
                if (this.cre.get(iNextInt).n <= 0) {
                    this.cre.remove(iNextInt);
                }
            }
        }
        arrayList.clear();
        return this.cre.size() <= 0;
    }
}
