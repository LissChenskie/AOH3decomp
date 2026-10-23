package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.zOther.Point_XY;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CoalitionManager {
    public static void createCoalition(int i) {
        int i2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Civilization civ = Game.getCiv(i);
        int i3 = 0;
        for (int i4 = 0; i4 < civ.civNeighbors.civsSize; i4++) {
            int i5 = civ.civNeighbors.civs.get(i4).civID;
            if (!DiplomacyManager.isAlly(i, i5) && !Game.getCiv(i).diplomacy.haveDefensivePact(i5) && !DiplomacyManager.isAtWar(i, i5) && !arrayList.contains(Integer.valueOf(i5))) {
                arrayList.add(Integer.valueOf(i5));
                i3 += Game.getCiv(i5).iRegiments;
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        List<Integer> listDeclareWar_AlliesDefender = DiplomacyManager.declareWar_AlliesDefender(i, ((Integer) arrayList.get(0)).intValue());
        int armyRegimentSize = Game.getCiv(i).iRegiments;
        try {
            for (int size = listDeclareWar_AlliesDefender.size() - 1; size >= 0; size--) {
                armyRegimentSize += Game.getCiv(listDeclareWar_AlliesDefender.get(size).intValue()).getArmyRegimentSize();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        float f = armyRegimentSize;
        if (i3 < GameValues.aggressiveExpansion.COALITION_ARMY_OVER_PERC * f) {
            int i6 = 0;
            while (i6 < civ.civNeighbors.civsSize) {
                int i7 = civ.civNeighbors.civs.get(i6).civID;
                for (int i8 = 0; i8 < Game.getCiv(i7).civNeighbors.civsSize; i8++) {
                    if (!DiplomacyManager.isAlly(i, Game.getCiv(i7).civNeighbors.civs.get(i8).civID) && !Game.getCiv(i).diplomacy.haveDefensivePact(Game.getCiv(i7).civNeighbors.civs.get(i8).civID) && !DiplomacyManager.isAtWar(i, Game.getCiv(i7).civNeighbors.civs.get(i8).civID) && i != Game.getCiv(i7).civNeighbors.civs.get(i8).civID && !arrayList.contains(Game.getCiv(i7).civNeighbors.civs.get(i8))) {
                        arrayList.add(Integer.valueOf(Game.getCiv(i7).civNeighbors.civs.get(i8).civID));
                        i3 += Game.getCiv(Game.getCiv(i7).civNeighbors.civs.get(i8).civID).iRegiments;
                        arrayList2.add(new Point_XY(Game.getCiv(i7).civNeighbors.civs.get(i8).civID, i7));
                        if (i3 > GameValues.aggressiveExpansion.COALITION_ARMY_OVER_PERC * f) {
                            i6 = civ.civNeighbors.civsSize;
                            break;
                        }
                    }
                }
                i6++;
            }
        }
        if (i3 > armyRegimentSize) {
            if (((Integer) arrayList.get(0)).intValue() != Game.player.iCivID) {
                i2 = 0;
            } else if (arrayList.size() == 1) {
                return;
            } else {
                i2 = 1;
            }
            for (int i9 = 1; i9 < arrayList.size(); i9++) {
                if (Game.getCiv(((Integer) arrayList.get(i2)).intValue()).iRegiments < Game.getCiv(((Integer) arrayList.get(i9)).intValue()).iRegiments && ((Integer) arrayList.get(i9)).intValue() != Game.player.iCivID) {
                    i2 = i9;
                }
            }
            if (DiplomacyManager.declareWar(((Integer) arrayList.get(i2)).intValue(), i, false, arrayList, true)) {
                Game.getCiv(i).setAggressiveExpansion(Game.getCiv(i).getAggressiveExpansion() * GameValues.aggressiveExpansion.COALITION_STARTED_REDUCE_AGGRESSIVE_EXPANSION);
                for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                    DiplomacyManager.addMilitaryAccess(((Point_XY) arrayList2.get(size2)).getPosX(), ((Point_XY) arrayList2.get(size2)).getPosY());
                }
            }
        }
    }

    public static final void updateCreateCoalition() {
        for (int i = (Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_COALITION) + 1; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_COALITION) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    updateCreateCoalition(i);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        }
    }

    public static final void updateCreateCoalition(int i) {
        if (Game.getCiv(i).getAggressiveExpansion() > GameValues.aggressiveExpansion.START_COALITION_IF_AE_OVER) {
            if (i != Game.player.iCivID) {
                createCoalition(i);
            } else if (Game.difficultyID >= GameValues.difficulty.NORMAL_ID) {
                createCoalition(i);
            }
        }
    }
}
