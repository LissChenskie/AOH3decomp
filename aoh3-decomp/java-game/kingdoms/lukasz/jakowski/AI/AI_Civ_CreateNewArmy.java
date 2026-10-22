package aoc.kingdoms.lukasz.jakowski.AI;

import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_CreateNewArmy_Task;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Civ_CreateNewArmy {
    public List<AI_CreateNewArmy_Task> cNA = new ArrayList();

    public int createNewArmy_RegimentsLeft() {
        int i = 0;
        for (int size = this.cNA.size() - 1; size >= 0; size--) {
            i += this.cNA.get(size).rL;
        }
        return i;
    }

    public int getCreateNewArmy_RegimentsInQueue(String str) {
        int i = 0;
        for (int size = this.cNA.size() - 1; size >= 0; size--) {
            if (this.cNA.get(size).key.equals(str)) {
                i += this.cNA.get(size).rL;
            }
        }
        return i;
    }

    public final void runCreateNewArmy_Expired(int i) {
        int i2 = 0;
        while (i2 < this.cNA.size()) {
            if (this.cNA.get(i2).t < Game_Calendar.TURN_ID) {
                this.cNA.remove(i2);
                i2--;
            }
            i2++;
        }
    }

    public final void runCreateNewArmy_Task(int i) {
        int i2 = 0;
        while (i2 < this.cNA.size()) {
            if (runCreateNewArmy_Task(i, i2)) {
                i2--;
            } else if (this.cNA.get(i2).t < Game_Calendar.TURN_ID) {
                this.cNA.remove(i2);
                i2--;
            }
            i2++;
        }
    }

    public final boolean runCreateNewArmy_Task(int i, int i2) {
        if (!this.cNA.get(i2).recruitArmy(i)) {
            return false;
        }
        this.cNA.remove(i2);
        return true;
    }
}
