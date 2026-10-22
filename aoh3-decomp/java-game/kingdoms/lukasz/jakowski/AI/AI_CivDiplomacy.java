package aoc.kingdoms.lukasz.jakowski.AI;

import aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_PrepareForWar_Data;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_CivDiplomacy {
    public List<AI_PrepareForWar_Data> w = new ArrayList();
    public List<AI_PrepareForWar_Data> p = new ArrayList();

    public boolean addPrepareForAlliance(int i) {
        for (int size = this.p.size() - 1; size >= 0; size--) {
            if (this.p.get(size).c == i) {
                return false;
            }
        }
        this.p.add(new AI_PrepareForWar_Data(i, Game_Calendar.TURN_ID + Game.aiValuesDiplomacy.AI_FIND_ALLY_EXPIRE));
        return true;
    }

    public boolean addPrepareForWar(int i) {
        for (int size = this.w.size() - 1; size >= 0; size--) {
            if (this.w.get(size).c == i) {
                return false;
            }
        }
        this.w.add(new AI_PrepareForWar_Data(i, Game_Calendar.TURN_ID + Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_TURNS_MIN + Game.oR.nextInt(Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_TURNS_RANDOM)));
        return true;
    }

    public void clearPrepareForAlliance() {
        this.p.clear();
    }

    public void clearPrepareForWar() {
        this.w.clear();
    }

    public boolean isPreparingForAllianceWithCivID(int i) {
        for (int size = this.p.size() - 1; size >= 0; size--) {
            if (this.p.get(size).c == i) {
                return true;
            }
        }
        return false;
    }

    public boolean isPreparingForWarWithCivID(int i) {
        for (int size = this.w.size() - 1; size >= 0; size--) {
            if (this.w.get(size).c == i) {
                return true;
            }
        }
        return false;
    }

    public void removePreparingForAllianceWithCivID(int i) {
        for (int size = this.p.size() - 1; size >= 0; size--) {
            if (this.p.get(size).c == i) {
                this.p.remove(size);
                return;
            }
        }
    }
}
