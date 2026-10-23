package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.Province;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_SiegeStart {
    public static int countEnemyArmy(int i) {
        Province province = Game.getProvince(i);
        int i2 = 0;
        for (int i3 = 0; i3 < province.getArmySize(); i3++) {
            if (DiplomacyManager.isAtWar(province.getCivID(), province.getArmy(i3).civID)) {
                i2 += province.getArmy(i3).iArmy;
            }
        }
        for (int i4 = 0; i4 < province.getNeighboringProvincesSize(); i4++) {
            for (int i5 = 0; i5 < Game.getProvince(province.getNeighboringProvinces(i4)).getArmySize(); i5++) {
                if (DiplomacyManager.isAtWar(province.getCivID(), Game.getProvince(province.getNeighboringProvinces(i4)).getArmy(i5).civID)) {
                    i2 += Game.getProvince(province.getNeighboringProvinces(i4)).getArmy(i5).iArmy;
                }
            }
        }
        return i2;
    }

    public static void siegeStarted_Attacker(int i) {
        boolean z;
        int i2;
        try {
            if (Game.getProvince(i).getFortLevel() <= 0 && !Game.battleManager.isBattleInProvince(i)) {
                ArrayList arrayList = new ArrayList();
                Province province = Game.getProvince(i);
                for (int i3 = 0; i3 < province.getArmySize(); i3++) {
                    if (province.getArmy(i3).civID > 0 && ((province.getArmy(i3).civID != Game.player.iCivID || Game.player.allowAIMove) && !arrayList.contains(Integer.valueOf(province.getArmy(i3).civID)))) {
                        arrayList.add(Integer.valueOf(province.getArmy(i3).civID));
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                ArrayList arrayList2 = new ArrayList();
                for (int i4 = 0; i4 < province.getNeighboringProvincesSize(); i4++) {
                    if (Game.getProvinceData4(province.getNeighboringProvinces(i4)).isUnderSiege() && province.getCivID() == Game.getProvince(province.getNeighboringProvinces(i4)).getCivID()) {
                        boolean z2 = false;
                        for (int i5 = 0; i5 < Game.getProvince(province.getNeighboringProvinces(i4)).getArmySize(); i5++) {
                            for (int size = arrayList.size() - 1; size >= 0; size--) {
                                if (DiplomacyManager.isAlly(((Integer) arrayList.get(size)).intValue(), Game.getProvince(province.getNeighboringProvinces(i4)).getArmy(i5).civID)) {
                                    z2 = true;
                                    break;
                                }
                            }
                            if (z2) {
                                break;
                            }
                        }
                        if (z2) {
                            arrayList2.add(Integer.valueOf(province.getNeighboringProvinces(i4)));
                        }
                    }
                }
                if (arrayList2.size() > 0) {
                    z = false;
                    i2 = 0;
                    for (int armySize = province.getArmySize() - 1; armySize >= 0; armySize--) {
                        if ((province.getArmy(armySize).civID != Game.player.iCivID || Game.player.allowAIMove) && arrayList.contains(Integer.valueOf(province.getArmy(armySize).civID)) && !province.getArmy(armySize).inRetreat && !province.getArmy(armySize).inBattle) {
                            int iIntValue = ((Integer) arrayList2.get(Game.oR.nextInt(arrayList2.size()))).intValue();
                            if (DiplomacyManager.isAtWar(province.getArmy(armySize).civID, Game.getProvince(iIntValue).getCivID())) {
                                Game.getCiv(province.getArmy(armySize).civID).newMove(i, iIntValue, province.getArmy(armySize).key, i2, false);
                                i2++;
                            }
                            z = true;
                        }
                    }
                } else {
                    z = false;
                    i2 = 0;
                }
                arrayList2.clear();
                if (z) {
                    arrayList.clear();
                    return;
                }
                for (int i6 = 0; i6 < province.getNeighboringProvincesSize(); i6++) {
                    if (!Game.battleManager.isBattleInProvince(province.getNeighboringProvinces(i6)) && !Game.getProvinceData4(province.getNeighboringProvinces(i6)).isUnderSiege()) {
                        for (int i7 = 0; i7 < Game.getProvince(province.getNeighboringProvinces(i6)).getArmySize(); i7++) {
                            if (Game.getProvince(province.getNeighboringProvinces(i6)).getArmy(i7).civID > 0 && ((Game.getProvince(province.getNeighboringProvinces(i6)).getArmy(i7).civID != Game.player.iCivID || Game.player.allowAIMove) && !Game.getProvince(province.getNeighboringProvinces(i6)).getArmy(i7).inRetreat)) {
                                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                    if (DiplomacyManager.isAlly(((Integer) arrayList.get(size2)).intValue(), Game.getProvince(province.getNeighboringProvinces(i6)).getArmy(i7).civID)) {
                                        if (!DiplomacyManager.isAtWar(province.getCivID(), Game.getProvince(province.getNeighboringProvinces(i6)).getArmy(i7).civID)) {
                                            break;
                                        }
                                        Game.getCiv(Game.getProvince(province.getNeighboringProvinces(i6)).getArmy(i7).civID).newMove(province.getNeighboringProvinces(i6), i, Game.getProvince(province.getNeighboringProvinces(i6)).getArmy(i7).key, i2, false);
                                        i2++;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
                arrayList.clear();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void siegeStarted_Defend(int i) {
        try {
            Province province = Game.getProvince(i);
            if (province.getCivID() > 0) {
                if ((province.getCivID() != Game.player.iCivID || Game.player.allowAIMove) && !province.isOccupied() && province.isCapital && Game.getCiv(province.getCivID()).getCapitalProvinceID() == i) {
                    if (Game.oR.nextInt(100) < Game.aiValuesArmies.AT_WAR_MOVE_ARMY_TO_DEFEND_CAPITAL_RANDOM || Game.getCiv(province.getCivID()).getNumOfProvinces() < Game.aiValuesArmies.AT_WAR_MOVE_ARMY_TO_DEFEND_CAPITAL_IF_NUM_OF_PROVINCES_BELOW) {
                        int iCountEnemyArmy = countEnemyArmy(i);
                        int civID = province.getCivID();
                        if (Game.getCiv(civID).getArmyRegimentSize() * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE >= iCountEnemyArmy * 0.95f || Game.getCiv(province.getCivID()).getNumOfProvinces() < Game.aiValuesArmies.AT_WAR_MOVE_ARMY_TO_DEFEND_CAPITAL_IF_NUM_OF_PROVINCES_BELOW) {
                            ArrayList arrayList = new ArrayList();
                            ArrayList arrayList2 = new ArrayList();
                            for (int i2 = 0; i2 < Game.getCiv(civID).iArmyPositionSize; i2++) {
                                arrayList.add(Integer.valueOf(Game.getCiv(civID).getArmyPosition(i2)));
                                arrayList2.add(Float.valueOf(Game.getDistanceFromProvinceToProvince(i, Game.getCiv(civID).getArmyPosition(i2))));
                            }
                            while (arrayList.size() > 0 && iCountEnemyArmy > 0) {
                                int i3 = 0;
                                for (int size = arrayList2.size() - 1; size > 0; size--) {
                                    if (((Float) arrayList2.get(size)).floatValue() < ((Float) arrayList2.get(i3)).floatValue()) {
                                        i3 = size;
                                    }
                                }
                                for (int armySize = Game.getProvince(((Integer) arrayList.get(i3)).intValue()).getArmySize() - 1; armySize >= 0; armySize--) {
                                    if (Game.getProvince(((Integer) arrayList.get(i3)).intValue()).getArmy(armySize).civID == civID && Game.getCiv(civID).newMove(((Integer) arrayList.get(i3)).intValue(), i, Game.getProvince(((Integer) arrayList.get(i3)).intValue()).getArmy(armySize).key, 0, false)) {
                                        iCountEnemyArmy -= Game.getProvince(((Integer) arrayList.get(i3)).intValue()).getArmy(armySize).iArmyRegimentSize;
                                    }
                                }
                                arrayList.remove(i3);
                                arrayList2.remove(i3);
                            }
                            arrayList.clear();
                            arrayList2.clear();
                        }
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
