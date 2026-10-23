package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_BattleEnd {
    public static void battleEnded(int i) {
        boolean z;
        boolean z2;
        int i2 = 0;
        while (true) {
            try {
                z = true;
                if (i2 >= Game.getProvince(i).getArmySize()) {
                    z2 = false;
                    break;
                }
                if (!Game.getProvince(i).getArmy(i2).inRetreat && !Game.getProvince(i).getArmy(i2).inBattle && !Game.getProvince(i).getArmy(i2).inMovement && Game.getProvince(i).getArmy(i2).civID > 0 && (Game.getProvince(i).getArmy(i2).civID != Game.player.iCivID || Game.player.allowAIMove)) {
                    z2 = true;
                    break;
                }
                i2++;
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        if (z2) {
            Game.getProvince(i).wasBattleEnded = true;
            for (int i3 = 0; i3 < Game.getProvince(i).getNeighboringProvincesSize(); i3++) {
                Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i3)).wasBattleEnded = false;
                for (int i4 = 0; i4 < Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i3)).getNeighboringProvincesSize(); i4++) {
                    Game.getProvince(Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i3)).getNeighboringProvinces(i4)).wasBattleEnded = false;
                }
            }
            for (int i5 = 0; i5 < Game.getProvince(i).getNeighboringProvincesSize(); i5++) {
                moveArmiesToBattle(i, Game.getProvince(i).getNeighboringProvinces(i5));
                for (int i6 = 0; i6 < Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i5)).getNeighboringProvincesSize(); i6++) {
                    moveArmiesToBattle(i, Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i5)).getNeighboringProvinces(i6));
                }
            }
            int i7 = 0;
            while (true) {
                if (i7 >= Game.getProvince(i).getArmySize()) {
                    z = false;
                    break;
                }
                if (!Game.getProvince(i).getArmy(i7).inRetreat && !Game.getProvince(i).getArmy(i7).inBattle && !Game.getProvince(i).getArmy(i7).inMovement && Game.getProvince(i).getArmy(i7).civID > 0 && (Game.getProvince(i).getArmy(i7).civID != Game.player.iCivID || Game.player.allowAIMove)) {
                    break;
                    break;
                }
                i7++;
            }
            if (z) {
                for (int i8 = 0; i8 < Game.getProvince(i).getNeighboringProvincesSize(); i8++) {
                    moveArmiesToEnemyArmy(i, Game.getProvince(i).getNeighboringProvinces(i8));
                }
            }
        }
    }

    public static void moveArmiesToBattle(int i, int i2) {
        try {
            if (Game.getProvince(i2).wasBattleEnded) {
                return;
            }
            Game.getProvince(i2).wasBattleEnded = true;
            if (Game.battleManager.isBattleInProvince(i2) && Game.getProvince(i2).getArmySize() > 0) {
                for (int i3 = 0; i3 < Game.getProvince(i).getArmySize(); i3++) {
                    if (!Game.getProvince(i).getArmy(i3).inRetreat && !Game.getProvince(i).getArmy(i3).inBattle && !Game.getProvince(i).getArmy(i3).inMovement && Game.getProvince(i).getArmy(i3).civID > 0 && (Game.getProvince(i).getArmy(i3).civID != Game.player.iCivID || Game.player.allowAIMove)) {
                        for (int i4 = 0; i4 < Game.getProvince(i2).getArmySize(); i4++) {
                            if (DiplomacyManager.isAtWar(Game.getProvince(i).getArmy(i3).civID, Game.getProvince(i2).getArmy(i4).civID)) {
                                Game.getCiv(Game.getProvince(i).getArmy(i3).civID).newMove(i, i2, Game.getProvince(i).getArmy(i3).key, 0, false);
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void moveArmiesToEnemyArmy(int i, int i2) {
        try {
            if (Game.getProvince(i2).getArmySize() > 0) {
                for (int i3 = 0; i3 < Game.getProvince(i).getArmySize(); i3++) {
                    if (!Game.getProvince(i).getArmy(i3).inRetreat && !Game.getProvince(i).getArmy(i3).inBattle && !Game.getProvince(i).getArmy(i3).inMovement && Game.getProvince(i).getArmy(i3).civID > 0 && (Game.getProvince(i).getArmy(i3).civID != Game.player.iCivID || Game.player.allowAIMove)) {
                        for (int i4 = 0; i4 < Game.getProvince(i2).getArmySize(); i4++) {
                            if (DiplomacyManager.isAtWar(Game.getProvince(i).getArmy(i3).civID, Game.getProvince(i2).getArmy(i4).civID) && Game.getProvince(i).getArmy(i3).iArmy > Game.getProvince(i2).getArmy(i4).civID) {
                                Game.getCiv(Game.getProvince(i).getArmy(i3).civID).newMove(i, i2, Game.getProvince(i).getArmy(i3).key, 0, false);
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
