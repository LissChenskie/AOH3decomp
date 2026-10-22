package aoc.kingdoms.lukasz.jakowski.Player.More;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyEspionageMission;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PlayerEspionage {
    public List<DiplomacyEspionageMission> espionageMissions = new ArrayList();
    public int iEspionageMissionsSize = 0;

    public final void addEspionageMission(int i) {
        for (int i2 = 0; i2 < this.iEspionageMissionsSize; i2++) {
            if (this.espionageMissions.get(i2).iCivID == i) {
                return;
            }
        }
        this.espionageMissions.add(new DiplomacyEspionageMission(i, Game_Calendar.TURN_ID + DiplomacyManager.sendSpyTime(Game.player.iCivID, i)));
        this.iEspionageMissionsSize = this.espionageMissions.size();
    }

    public final void clearEspionageMissions() {
        this.espionageMissions.clear();
        this.iEspionageMissionsSize = 0;
    }

    public final boolean espionageMission_IsAdded(int i) {
        for (int i2 = 0; i2 < this.iEspionageMissionsSize; i2++) {
            if (this.espionageMissions.get(i2).iCivID == i) {
                return true;
            }
        }
        return false;
    }

    public final int espionageMission_ReportEndTurn(int i) {
        for (int i2 = 0; i2 < this.iEspionageMissionsSize; i2++) {
            if (this.espionageMissions.get(i2).iCivID == i) {
                return this.espionageMissions.get(i2).iReportExpiresTurnID;
            }
        }
        return 0;
    }

    public final void removeEspionageMission(int i) {
        for (int i2 = 0; i2 < this.iEspionageMissionsSize; i2++) {
            if (this.espionageMissions.get(i2).iCivID == i) {
                this.espionageMissions.remove(i2);
                return;
            }
        }
    }

    public final void removeExpiredEspionageMissions() {
        int i = this.iEspionageMissionsSize;
        if (i > 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (this.espionageMissions.get(i2).iReportExpiresTurnID <= Game_Calendar.TURN_ID) {
                    this.espionageMissions.remove(i2);
                }
            }
            this.iEspionageMissionsSize = this.espionageMissions.size();
        }
    }
}
