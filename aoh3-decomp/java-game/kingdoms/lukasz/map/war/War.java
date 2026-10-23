package aoc.kingdoms.lukasz.map.war;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.PeaceTreaty;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class War {
    public boolean conquerVassal;
    public int iWarTurnID;
    public boolean isCoalition;
    public String key;
    public List<WarCivilization> lAggressors;
    public List<WarCivilization> lDefenders;
    public int lastFight_TurnID;
    public float tickingWarScore;
    public float warScore;
    public float warScoreFromBattles;
    public float warScoreFromOccupiedProvinces;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.war.War$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.aiManager.update_ReorganizeArmiesAtPeace(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.war.War$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.aiManager.update_ReorganizeArmiesAtPeace(this.id);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.war.War$3, reason: invalid class name */
    class AnonymousClass3 extends Game.SimpleTask {
        AnonymousClass3(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceBorderManager.updateProvinceBorder();
        }
    }

    public War() {
        this.iWarTurnID = 0;
        this.lastFight_TurnID = 0;
        this.warScore = 0.0f;
        this.warScoreFromBattles = 0.0f;
        this.warScoreFromOccupiedProvinces = 0.0f;
        this.tickingWarScore = 0.0f;
        this.lAggressors = new ArrayList();
        this.lDefenders = new ArrayList();
        this.conquerVassal = false;
        this.isCoalition = false;
    }

    public War(int i, int i2, String str, boolean z, boolean z2) {
        this.iWarTurnID = 0;
        this.lastFight_TurnID = 0;
        this.warScore = 0.0f;
        this.warScoreFromBattles = 0.0f;
        this.warScoreFromOccupiedProvinces = 0.0f;
        this.tickingWarScore = 0.0f;
        this.lAggressors = new ArrayList();
        this.lDefenders = new ArrayList();
        this.conquerVassal = false;
        this.isCoalition = false;
        this.key = str;
        this.iWarTurnID = Game_Calendar.TURN_ID;
        this.lastFight_TurnID = Game_Calendar.TURN_ID;
        this.warScore = 0.0f;
        this.conquerVassal = z;
        this.isCoalition = z2;
        addAggressor(i);
        addDefender(i2);
    }

    public final void addAggressor(int i) {
        for (int i2 = 0; i2 < this.lDefenders.size(); i2++) {
            if (this.lDefenders.get(i2).iCivID == i) {
                return;
            }
        }
        for (int i3 = 0; i3 < this.lAggressors.size(); i3++) {
            if (this.lAggressors.get(i3).iCivID == i) {
                return;
            }
        }
        this.lAggressors.add(new WarCivilization(i));
        Game.getCiv(i).diplomacy.addWar(this.key, i);
        if (i == Game.player.iCivID) {
            Game.player.playerStats.numOfWars++;
            Game.stats.civStats.nw++;
        }
        Game.getCiv(i).eventsData3.addNumOfWars(1);
        for (int i4 = 0; i4 < this.lDefenders.size(); i4++) {
            if (!DiplomacyManager.isAtWar(i, this.lDefenders.get(i4).iCivID)) {
                DiplomacyManager.declareWar_UpdateRelation(this.lDefenders.get(i4).iCivID, i);
            }
        }
        if (this.lAggressors.size() <= 1 || Game.getCiv(i).getPuppetOfCivID() != this.lAggressors.get(0).iCivID || DiplomacyManager.isAlly_AllianceCheck(Game.getCiv(i).getPuppetOfCivID(), this.lAggressors.get(0).iCivID)) {
            return;
        }
        Game.getCiv(this.lAggressors.get(0).iCivID).diplomacy.setLibertyDesire_Change(i, GameValues.vassal.LIBERTY_DESIRE_LORD_CALL_TO_WAR);
    }

    public final void addCasualties(int i, int i2) {
        this.lastFight_TurnID = Game_Calendar.TURN_ID;
        for (int i3 = 0; i3 < this.lDefenders.size(); i3++) {
            if (this.lDefenders.get(i3).iCivID == i) {
                this.lDefenders.get(i3).iCasualties += i2;
                return;
            }
        }
        for (int i4 = 0; i4 < this.lAggressors.size(); i4++) {
            if (this.lAggressors.get(i4).iCivID == i) {
                this.lAggressors.get(i4).iCasualties += i2;
                return;
            }
        }
    }

    public final void addDefender(int i) {
        for (int i2 = 0; i2 < this.lDefenders.size(); i2++) {
            if (this.lDefenders.get(i2).iCivID == i) {
                return;
            }
        }
        for (int i3 = 0; i3 < this.lAggressors.size(); i3++) {
            if (this.lAggressors.get(i3).iCivID == i) {
                return;
            }
        }
        this.lDefenders.add(new WarCivilization(i));
        Game.getCiv(i).diplomacy.addWar(this.key, i);
        if (i == Game.player.iCivID) {
            Game.player.playerStats.numOfWars++;
            Game.stats.civStats.nw++;
        }
        Game.getCiv(i).eventsData3.addNumOfWars(1);
        for (int i4 = 0; i4 < this.lAggressors.size(); i4++) {
            if (!DiplomacyManager.isAtWar(i, this.lAggressors.get(i4).iCivID)) {
                DiplomacyManager.declareWar_UpdateRelation(this.lAggressors.get(i4).iCivID, i);
            }
        }
        if (this.lDefenders.size() <= 1 || Game.getCiv(i).getPuppetOfCivID() != this.lDefenders.get(0).iCivID || DiplomacyManager.isAlly_AllianceCheck(Game.getCiv(i).getPuppetOfCivID(), this.lDefenders.get(0).iCivID)) {
            return;
        }
        Game.getCiv(this.lDefenders.get(0).iCivID).diplomacy.setLibertyDesire_Change(i, GameValues.vassal.LIBERTY_DESIRE_LORD_CALL_TO_WAR);
    }

    public final void addWarScore(float f, int i, int i2) {
        this.warScore += addWarScore_ValueToAdd(f, i, i2);
    }

    public final void addWarScore_Just(float f) {
        this.warScore += f;
    }

    public final float addWarScore_ValueToAdd(float f, int i, int i2) {
        return ((i == this.lAggressors.get(0).iCivID && i2 == this.lDefenders.get(0).iCivID) || (i2 == this.lAggressors.get(0).iCivID && i == this.lDefenders.get(0).iCivID)) ? f : f * GameValues.war.WAR_SCORE_ALLIES;
    }

    public final float addWarScore_ValueToAdd_Province(float f, int i, int i2, int i3) {
        if (i == this.lAggressors.get(0).iCivID && i2 == this.lDefenders.get(0).iCivID) {
            return f;
        }
        return ((i2 == this.lAggressors.get(0).iCivID && i == this.lDefenders.get(0).iCivID) || Game.getProvince(i3).getCivID() == this.lDefenders.get(0).iCivID || Game.getProvince(i3).getCivID() == this.lAggressors.get(0).iCivID) ? f : f * GameValues.war.WAR_SCORE_ALLIES;
    }

    public final boolean areInThisWar(int i, int i2) {
        if (isAggressor(i) && isDefender(i2)) {
            return true;
        }
        return isAggressor(i2) && isDefender(i);
    }

    public final int getCasualties_Aggressors() {
        int i = 0;
        for (int i2 = 0; i2 < this.lAggressors.size(); i2++) {
            i += this.lAggressors.get(i2).iCasualties;
        }
        return i;
    }

    public final int getCasualties_Defenders() {
        int i = 0;
        for (int i2 = 0; i2 < this.lDefenders.size(); i2++) {
            i += this.lDefenders.get(i2).iCasualties;
        }
        return i;
    }

    public int getWarScore_Side(int i) {
        return isAggressor(i) ? -1 : 1;
    }

    public final boolean isAggressor(int i) {
        for (int i2 = 0; i2 < this.lAggressors.size(); i2++) {
            if (this.lAggressors.get(i2).iCivID == i) {
                return true;
            }
        }
        return false;
    }

    public final boolean isDefender(int i) {
        for (int i2 = 0; i2 < this.lDefenders.size(); i2++) {
            if (this.lDefenders.get(i2).iCivID == i) {
                return true;
            }
        }
        return false;
    }

    public final boolean isInThisWar(int i) {
        return isAggressor(i) || isDefender(i);
    }

    public boolean isWarLeader(int i) {
        return this.lAggressors.get(0).iCivID == i || this.lDefenders.get(0).iCivID == i;
    }

    public final void loadSave_AddInWar() {
        for (int i = 0; i < this.lDefenders.size(); i++) {
            Game.getCiv(this.lDefenders.get(i).iCivID).diplomacy.addWar(this.key, this.lDefenders.get(i).iCivID);
        }
        for (int i2 = 0; i2 < this.lAggressors.size(); i2++) {
            Game.getCiv(this.lAggressors.get(i2).iCivID).diplomacy.addWar(this.key, this.lAggressors.get(i2).iCivID);
        }
    }

    public final void peaceTreaty() {
        int size;
        boolean zIsInThisWar = isInThisWar(Game.player.iCivID);
        Game.getCiv(this.lDefenders.get(0).iCivID).diplomacy.addTruce(this.lAggressors.get(0).iCivID, Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_DAYS);
        Game.getCiv(this.lAggressors.get(0).iCivID).diplomacy.addTruce(this.lDefenders.get(0).iCivID, Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_DAYS);
        for (int size2 = this.lAggressors.size() - 1; size2 > 0; size2--) {
            Game.getCiv(this.lDefenders.get(0).iCivID).diplomacy.addTruce(this.lAggressors.get(size2).iCivID, Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_DAYS);
            Game.getCiv(this.lAggressors.get(size2).iCivID).diplomacy.addTruce(this.lDefenders.get(0).iCivID, Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_DAYS);
        }
        for (int size3 = this.lDefenders.size() - 1; size3 > 0; size3--) {
            Game.getCiv(this.lAggressors.get(0).iCivID).diplomacy.addTruce(this.lDefenders.get(size3).iCivID, Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_DAYS);
            Game.getCiv(this.lDefenders.get(size3).iCivID).diplomacy.addTruce(this.lAggressors.get(0).iCivID, Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_DAYS);
        }
        Game.battleManager.stopAllBattles_PeaceTreaty(this.key);
        try {
            for (int size4 = this.lAggressors.size() - 1; size4 >= 0; size4--) {
                Civilization civ = Game.getCiv(this.lAggressors.get(size4).iCivID);
                if (civ.getCivID() != Game.player.iCivID) {
                    for (int moveUnitsSize = civ.getMoveUnitsSize() - 1; moveUnitsSize >= 0; moveUnitsSize--) {
                        int civID = Game.getProvince(civ.getMoveUnits(moveUnitsSize).getToProvinceLastID()).getCivID();
                        for (int size5 = this.lDefenders.size() - 1; size5 >= 0; size5--) {
                            if (this.lDefenders.get(size5).iCivID == civID) {
                                civ.removeMove(moveUnitsSize);
                                break;
                            }
                        }
                    }
                }
            }
            for (int size6 = this.lDefenders.size() - 1; size6 >= 0; size6--) {
                Civilization civ2 = Game.getCiv(this.lDefenders.get(size6).iCivID);
                if (civ2.getCivID() != Game.player.iCivID) {
                    for (int moveUnitsSize2 = civ2.getMoveUnitsSize() - 1; moveUnitsSize2 >= 0; moveUnitsSize2--) {
                        int civID2 = Game.getProvince(civ2.getMoveUnits(moveUnitsSize2).getToProvinceLastID()).getCivID();
                        for (int size7 = this.lAggressors.size() - 1; size7 >= 0; size7--) {
                            if (this.lAggressors.get(size7).iCivID == civID2) {
                                civ2.removeMove(moveUnitsSize2);
                                break;
                            }
                        }
                    }
                }
            }
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                if (Game.getCiv(this.lAggressors.get(size).iCivID).getNumOfProvinces() <= 0) {
                    Game.getCiv(this.lAggressors.get(size).iCivID).removeAllArmies();
                } else {
                    PeaceTreaty.moveAllArmiesToOwnTerritory(this.lAggressors.get(size).iCivID);
                    if (this.lAggressors.get(size).iCivID != Game.player.iCivID && !Game.getCiv(this.lAggressors.get(size).iCivID).diplomacy.isAtWar()) {
                        Game.gameThread.addAI_SimpleTask(new AnonymousClass1("update_ReorganizeArmiesAtPeace" + this.lAggressors.get(size).iCivID, this.lAggressors.get(size).iCivID));
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        for (int size8 = this.lAggressors.size() - 1; size8 >= 0; size8--) {
            for (int size9 = this.lDefenders.size() - 1; size9 >= 0; size9--) {
                try {
                    DiplomacyManager.declareWar_UpdateRelation_Peace(this.lAggressors.get(size8).iCivID, this.lDefenders.get(size9).iCivID, this.key);
                    retakeOccupiedProvinces(this.lAggressors.get(size8).iCivID, this.lDefenders.get(size9).iCivID);
                    retakeOccupiedProvinces(this.lDefenders.get(size9).iCivID, this.lAggressors.get(size8).iCivID);
                    if (this.lAggressors.get(size8).iCivID == Game.player.iCivID) {
                        Game.getCiv(this.lDefenders.get(size9).iCivID).updateArmyImgID();
                    } else if (this.lDefenders.get(size9).iCivID == Game.player.iCivID) {
                        Game.getCiv(this.lAggressors.get(size8).iCivID).updateArmyImgID();
                    }
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
        }
        size = this.lAggressors.size();
        for (int size10 = this.lDefenders.size() - 1; size10 >= 0; size10--) {
            if (Game.getCiv(this.lDefenders.get(size10).iCivID).getNumOfProvinces() <= 0) {
                Game.getCiv(this.lDefenders.get(size10).iCivID).removeAllArmies();
            } else {
                PeaceTreaty.moveAllArmiesToOwnTerritory(this.lDefenders.get(size10).iCivID);
            }
            if (this.lDefenders.get(size10).iCivID != Game.player.iCivID && !Game.getCiv(this.lDefenders.get(size10).iCivID).diplomacy.isAtWar()) {
                Game.gameThread.addAI_SimpleTask(new AnonymousClass2("update_ReorganizeArmiesAtPeace" + this.lDefenders.get(size10).iCivID, this.lDefenders.get(size10).iCivID));
            }
        }
        this.lAggressors.clear();
        this.lDefenders.clear();
        if (zIsInThisWar && GameValues.provinceBorderWar.ENABLE_WAR_BORDER) {
            Game.addSimpleTask(new AnonymousClass3("updateProvinceBorder"));
        }
    }

    public final void removeAggressor(int i) {
        for (int i2 = 0; i2 < this.lAggressors.size(); i2++) {
            if (this.lAggressors.get(i2).iCivID == i) {
                this.lAggressors.remove(i2);
                return;
            }
        }
    }

    public final void removeCiv(int i) {
        for (int i2 = 0; i2 < this.lDefenders.size(); i2++) {
            if (this.lDefenders.get(i2).iCivID == i) {
                this.lDefenders.remove(i2);
                return;
            }
        }
        for (int i3 = 0; i3 < this.lAggressors.size(); i3++) {
            if (this.lAggressors.get(i3).iCivID == i) {
                this.lAggressors.remove(i3);
                return;
            }
        }
    }

    public final void removeDefender(int i) {
        for (int i2 = 0; i2 < this.lDefenders.size(); i2++) {
            if (this.lDefenders.get(i2).iCivID == i) {
                this.lDefenders.remove(i2);
                return;
            }
        }
    }

    public final void retakeOccupiedProvinces(int i, int i2) {
        for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
            if (Game.getProvince(Game.getCiv(i).getProvinceID(i3)).isOccupied() && Game.getProvinceData(Game.getCiv(i).getProvinceID(i3)).getOccupiedByCivID() == i2) {
                Game.getProvince(Game.getCiv(i).getProvinceID(i3)).retakeOccupiedProvince_Peace();
            }
        }
    }

    public final void updateCapitalProvinceID() {
        try {
            for (int size = this.lDefenders.size() - 1; size >= 0; size--) {
                if (Game.getCiv(this.lDefenders.get(size).iCivID).getCapitalProvinceID() < 0) {
                    Game.getCiv(this.lDefenders.get(size).iCivID).moveCapital_ToLargestProvince();
                } else if (Game.getProvince(Game.getCiv(this.lDefenders.get(size).iCivID).getCapitalProvinceID()).getCivID() != this.lDefenders.get(size).iCivID) {
                    Game.getCiv(this.lDefenders.get(size).iCivID).moveCapital_ToLargestProvince();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            for (int size2 = this.lAggressors.size() - 1; size2 >= 0; size2--) {
                if (Game.getCiv(this.lAggressors.get(size2).iCivID).getCapitalProvinceID() < 0) {
                    Game.getCiv(this.lAggressors.get(size2).iCivID).moveCapital_ToLargestProvince();
                } else if (Game.getProvince(Game.getCiv(this.lAggressors.get(size2).iCivID).getCapitalProvinceID()).getCivID() != this.lAggressors.get(size2).iCivID) {
                    Game.getCiv(this.lAggressors.get(size2).iCivID).moveCapital_ToLargestProvince();
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public final void updateWars_AllProvincesOccupied() {
        boolean z;
        boolean z2 = false;
        Civilization civ = Game.getCiv(this.lDefenders.get(0).iCivID);
        int i = 0;
        while (true) {
            if (i >= civ.getNumOfProvinces()) {
                z = true;
                break;
            } else {
                if (Game.getProvinceData(civ.getProvinceID(i)).getOccupiedByCivID() == 0) {
                    z = false;
                    break;
                }
                i++;
            }
        }
        if (z) {
            this.tickingWarScore += GameValues.war.TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED;
            this.warScore += GameValues.war.TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED;
            return;
        }
        Civilization civ2 = Game.getCiv(this.lAggressors.get(0).iCivID);
        int i2 = 0;
        while (true) {
            if (i2 >= civ2.getNumOfProvinces()) {
                z2 = true;
                break;
            } else if (Game.getProvinceData(civ2.getProvinceID(i2)).getOccupiedByCivID() == 0) {
                break;
            } else {
                i2++;
            }
        }
        if (z2) {
            this.tickingWarScore -= GameValues.war.TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED;
            this.warScore -= GameValues.war.TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED;
        }
    }

    public final void updateWars_TickingWarScore() {
        float f = (this.warScoreFromOccupiedProvinces + this.warScoreFromBattles) * GameValues.war.TICKING_WAR_SCORE_EACH_MONTH;
        float warWeariness = f * (((f > 0.0f ? Game.getCiv(this.lDefenders.get(0).iCivID).getWarWeariness() : Game.getCiv(this.lAggressors.get(0).iCivID).getWarWeariness()) / 100.0f) + 1.0f);
        if (warWeariness > 0.0f) {
            if (this.tickingWarScore + warWeariness > GameValues.war.TICKING_WAR_SCORE_LIMIT) {
                warWeariness = Math.max(0.0f, GameValues.war.TICKING_WAR_SCORE_LIMIT - this.tickingWarScore);
            }
        } else if (this.tickingWarScore + warWeariness < (-GameValues.war.TICKING_WAR_SCORE_LIMIT)) {
            warWeariness = -Math.max(0.0f, GameValues.war.TICKING_WAR_SCORE_LIMIT + this.tickingWarScore);
        }
        float f2 = this.warScore + warWeariness;
        this.warScore = f2;
        float f3 = this.tickingWarScore + warWeariness;
        this.tickingWarScore = f3;
        if (f2 > 0.0f && f3 < 0.0f) {
            this.warScore = f2 - f3;
            this.tickingWarScore = 0.0f;
        } else {
            if (f2 >= 0.0f || f3 <= 0.0f) {
                return;
            }
            this.warScore = f2 + f3;
            this.tickingWarScore = 0.0f;
        }
    }
}
