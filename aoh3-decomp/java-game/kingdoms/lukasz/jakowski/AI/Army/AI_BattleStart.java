package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.war.WarManager;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_BattleStart {
    public static void battleStarted(int i, int i2, int i3) {
        String warKey;
        if (i < 0) {
            return;
        }
        try {
            if (Game.battleManager.getBattle(i).attackingArmy.iCivID < 0 || Game.battleManager.getBattle(i).defendingArmy.iCivID < 0 || (warKey = WarManager.getWarKey(Game.battleManager.getBattle(i).attackingArmy.iCivID, Game.battleManager.getBattle(i).defendingArmy.iCivID)) == null) {
                return;
            }
            wasBattleStartRecursively(i2, i3);
            battleStarted_SeaProvinces_UpdateWas(i2);
            Game.getProvince(i2).wasBattleStart = true;
            moveArmiesRecursively(warKey, i2, i2, i3);
            battleStarted_SeaProvinces(warKey, i2);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void battleStarted_1(int i, int i2) {
        String warKey;
        if (i < 0) {
            return;
        }
        try {
            if (Game.battleManager.getBattle(i).attackingArmy.iCivID < 0 || Game.battleManager.getBattle(i).defendingArmy.iCivID < 0 || (warKey = WarManager.getWarKey(Game.battleManager.getBattle(i).attackingArmy.iCivID, Game.battleManager.getBattle(i).defendingArmy.iCivID)) == null) {
                return;
            }
            for (int i3 = 0; i3 < Game.getProvince(i2).getNeighboringProvincesSize(); i3++) {
                int neighboringProvinces = Game.getProvince(i2).getNeighboringProvinces(i3);
                if (!Game.getProvinceData4(neighboringProvinces).isUnderSiege()) {
                    moveArmies(warKey, i2, neighboringProvinces);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void battleStarted_2(int i, int i2) {
        String warKey;
        if (i < 0) {
            return;
        }
        try {
            if (Game.battleManager.getBattle(i).attackingArmy.iCivID < 0 || Game.battleManager.getBattle(i).defendingArmy.iCivID < 0 || (warKey = WarManager.getWarKey(Game.battleManager.getBattle(i).attackingArmy.iCivID, Game.battleManager.getBattle(i).defendingArmy.iCivID)) == null) {
                return;
            }
            for (int i3 = 0; i3 < Game.getProvince(i2).getNeighboringProvincesSize(); i3++) {
                Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i3)).wasBattleStart = false;
                for (int i4 = 0; i4 < Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i3)).getNeighboringProvincesSize(); i4++) {
                    Game.getProvince(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i3)).getNeighboringProvinces(i4)).wasBattleStart = false;
                }
            }
            Game.getProvince(i2).wasBattleStart = true;
            for (int i5 = 0; i5 < Game.getProvince(i2).getNeighboringProvincesSize(); i5++) {
                moveArmies(warKey, i2, Game.getProvince(i2).getNeighboringProvinces(i5));
                for (int i6 = 0; i6 < Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getNeighboringProvincesSize(); i6++) {
                    moveArmies(warKey, i2, Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getNeighboringProvinces(i6));
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void battleStarted_SeaProvinces(String str, int i) {
        for (int i2 = 0; i2 < Game.getProvince(i).getNeighboringSeaProvincesSize(); i2++) {
            moveArmies(str, i, Game.getProvince(i).getNeighboringSeaProvinces(i2));
            for (int i3 = 0; i3 < Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i2)).getNeighboringProvincesSize(); i3++) {
                moveArmies(str, i, Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i2)).getNeighboringProvinces(i3));
                for (int i4 = 0; i4 < Game.getProvince(Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i2)).getNeighboringProvinces(i3)).getNeighboringProvincesSize(); i4++) {
                    moveArmies(str, i, Game.getProvince(Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i2)).getNeighboringProvinces(i3)).getNeighboringProvinces(i4));
                }
            }
        }
    }

    public static void battleStarted_SeaProvinces_UpdateWas(int i) {
        for (int i2 = 0; i2 < Game.getProvince(i).getNeighboringSeaProvincesSize(); i2++) {
            Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i2)).wasBattleStart = false;
            for (int i3 = 0; i3 < Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i2)).getNeighboringProvincesSize(); i3++) {
                Game.getProvince(Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i2)).getNeighboringProvinces(i3)).wasBattleStart = false;
                for (int i4 = 0; i4 < Game.getProvince(Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i2)).getNeighboringProvinces(i3)).getNeighboringProvincesSize(); i4++) {
                    Game.getProvince(Game.getProvince(Game.getProvince(Game.getProvince(i).getNeighboringSeaProvinces(i2)).getNeighboringProvinces(i3)).getNeighboringProvinces(i4)).wasBattleStart = false;
                }
            }
        }
    }

    public static void moveArmies(String str, int i, int i2) {
        try {
            if (Game.getProvince(i2).wasBattleStart) {
                return;
            }
            Game.getProvince(i2).wasBattleStart = true;
            for (int i3 = 0; i3 < Game.getProvince(i2).getArmySize(); i3++) {
                if ((Game.getProvince(i2).getArmy(i3).civID != Game.player.iCivID || Game.player.allowAIMove) && !Game.getProvince(i2).getArmy(i3).inBattle && !Game.getProvince(i2).getArmy(i3).inRetreat && WarManager.lWars.get(str).isInThisWar(Game.getProvince(i2).getArmy(i3).civID) && ((!Game.getProvinceData4(i2).isUnderSiege() || (Game.getProvince(i2).getSiegeProgress() < Game.aiValuesArmies.BATTLE_START_DONT_MOVE_IF_SIEGE_OVER && Game.aiValuesArmies.BATTLE_START_DONT_MOVE_IF_SIEGE_IN_PROGRESS <= Game.oR.nextInt(100))) && Game.getProvince(i2).getArmy(i3).fMorale > Game.aiValuesArmies.BATTLE_START_DONT_MOVE_IF_MORALE_BELOW && ((Game.getCiv(Game.getProvince(i2).getArmy(i3).civID).fManpower <= 1000.0d || Game.getProvince(i2).getArmy(i3).getPercOfTotalUnits() >= Game.aiValuesArmies.BATTLE_START_DONT_MOVE_IF_ARMY_UNITS_BELOW_PERC) && (!Game.getProvince(i2).getArmy(i3).inMovement || Game.aiValuesArmies.BATTLE_START_DONT_MOVE_IF_ARMY_IS_IN_MOVEMENT <= Game.oR.nextInt(100))))) {
                    Game.getCiv(Game.getProvince(i2).getArmy(i3).civID).newMove(i2, i, Game.getProvince(i2).getArmy(i3).key, 0, false);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void moveArmiesRecursively(String str, int i, int i2, int i3) {
        if (i3 <= 0) {
            return;
        }
        Province province = Game.getProvince(i2);
        for (int i4 = 0; i4 < province.getNeighboringProvincesSize(); i4++) {
            int neighboringProvinces = province.getNeighboringProvinces(i4);
            moveArmies(str, i, neighboringProvinces);
            moveArmiesRecursively(str, i, neighboringProvinces, i3 - 1);
        }
    }

    public static void wasBattleStartRecursively(int i, int i2) {
        if (i2 <= 0) {
            return;
        }
        Province province = Game.getProvince(i);
        for (int i3 = 0; i3 < province.getNeighboringProvincesSize(); i3++) {
            int neighboringProvinces = province.getNeighboringProvinces(i3);
            Game.getProvince(neighboringProvinces).wasBattleStart = false;
            wasBattleStartRecursively(neighboringProvinces, i2 - 1);
        }
    }
}
