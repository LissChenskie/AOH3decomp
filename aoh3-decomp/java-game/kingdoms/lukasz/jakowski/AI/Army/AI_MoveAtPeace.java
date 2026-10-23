package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyPosition;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_MoveAtPeace {

    public static class ArmyDivision_TempData {
        public ArmyPosition armyPosition;
        public float distance;
        public int iRegiments;

        public ArmyDivision_TempData(ArmyPosition armyPosition, int i) {
            this.armyPosition = armyPosition;
            this.iRegiments = i;
        }
    }

    public static void moveAtPeace(int i) {
        ArmyDivision army;
        try {
            if (Game.getCiv(i).underSiegeSize > 0 || Game.getCiv(i).occupiedProvincesSize > 0) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < Game.getCiv(i).iArmyPositionSize; i2++) {
                    if (Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).isOccupied() && !Game.getProvinceData4(Game.getCiv(i).getArmyPosition(i2)).isUnderSiege()) {
                        SiegeManager.checkForSiege(Game.getCiv(i).getArmyPosition(i2));
                    }
                    if (!Game.getProvinceData4(Game.getCiv(i).getArmyPosition(i2)).isUnderSiege() && (army = Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getArmy(Game.getCiv(i).getArmyPositionKey(i2))) != null) {
                        if (army.inMovement) {
                            if (!Game.getCiv(i).isInMoveUnits_ArmyKey(army.key)) {
                                army.inMovement = false;
                                army.inRetreat = false;
                            }
                        } else if (!army.inBattle) {
                            arrayList.add(new ArmyDivision_TempData(Game.getCiv(i).armyPosition.get(i2), army.iArmyRegimentSize));
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    if (Game.getCiv(i).getArmyRegimentSize() < 6) {
                        AI_RecruitMercenaries.recruitMercenaries(i);
                        return;
                    }
                    return;
                }
                ArrayList arrayList2 = new ArrayList();
                for (int i3 = Game.getCiv(i).underSiegeSize - 1; i3 >= 0; i3--) {
                    if (Game.getProvinceData4(Game.getCiv(i).underSiege.get(i3).intValue()).isUnderSiege()) {
                        arrayList2.add(Game.getCiv(i).underSiege.get(i3));
                    } else {
                        Game.getCiv(i).underSiege.remove(i3);
                        Game.getCiv(i).underSiegeSize = Game.getCiv(i).underSiege.size();
                    }
                }
                while (arrayList2.size() > 0) {
                    int iNextInt = Game.oR.nextInt(arrayList2.size());
                    int i4 = 0;
                    for (int i5 = 0; i5 < Game.getProvince(((Integer) arrayList2.get(iNextInt)).intValue()).getArmySize(); i5++) {
                        if (DiplomacyManager.isAtWar(i, Game.getProvince(((Integer) arrayList2.get(iNextInt)).intValue()).getArmy(i5).civID)) {
                            i4 += Game.getProvince(((Integer) arrayList2.get(iNextInt)).intValue()).getArmy(i5).iArmyRegimentSize;
                        }
                    }
                    int iArmyMovingToProvince_MoveUnits = i4 - Game.getCiv(i).armyMovingToProvince_MoveUnits(((Integer) arrayList2.get(iNextInt)).intValue());
                    if (iArmyMovingToProvince_MoveUnits > 0 && Game.getCiv(i).getArmyRegimentSize() >= iArmyMovingToProvince_MoveUnits) {
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            ((ArmyDivision_TempData) arrayList.get(size)).distance = Game.getDistanceFromProvinceToProvince(((Integer) arrayList2.get(iNextInt)).intValue(), ((ArmyDivision_TempData) arrayList.get(size)).armyPosition.provinceID);
                        }
                        while (iArmyMovingToProvince_MoveUnits > 0 && arrayList.size() > 0) {
                            int i6 = 0;
                            for (int size2 = arrayList.size() - 1; size2 > 0; size2--) {
                                if (((ArmyDivision_TempData) arrayList.get(i6)).distance > ((ArmyDivision_TempData) arrayList.get(size2)).distance) {
                                    i6 = size2;
                                }
                            }
                            if (((ArmyDivision_TempData) arrayList.get(i6)).distance == 100000.0f) {
                                break;
                            }
                            if (Game.getCiv(i).newMove(((ArmyDivision_TempData) arrayList.get(i6)).armyPosition.provinceID, ((Integer) arrayList2.get(iNextInt)).intValue(), ((ArmyDivision_TempData) arrayList.get(i6)).armyPosition.key, 0, false)) {
                                iArmyMovingToProvince_MoveUnits -= ((ArmyDivision_TempData) arrayList.get(i6)).iRegiments;
                                arrayList.remove(i6);
                            } else {
                                ((ArmyDivision_TempData) arrayList.get(i6)).distance = 100000.0f;
                            }
                        }
                    }
                    arrayList2.remove(iNextInt);
                }
                arrayList2.clear();
                if (arrayList.size() == 0) {
                    return;
                }
                for (int i7 = Game.getCiv(i).occupiedProvincesSize - 1; i7 >= 0; i7--) {
                    if (Game.getProvinceData(Game.getCiv(i).occupiedProvinces.get(i7).intValue()).getOccupiedByCivID() != 0) {
                        arrayList2.add(Game.getCiv(i).occupiedProvinces.get(i7));
                    } else {
                        Game.getCiv(i).occupiedProvinces.remove(i7);
                        Game.getCiv(i).occupiedProvincesSize = Game.getCiv(i).occupiedProvinces.size();
                    }
                }
                while (!arrayList2.isEmpty()) {
                    int iNextInt2 = Game.oR.nextInt(arrayList2.size());
                    if (Game.getProvince(((Integer) arrayList2.get(iNextInt2)).intValue()).getFortLevel() <= 0) {
                        int i8 = 0;
                        for (int i9 = 0; i9 < Game.getProvince(((Integer) arrayList2.get(iNextInt2)).intValue()).getNeighboringProvincesSize(); i9++) {
                            if (Game.getProvince(Game.getProvince(((Integer) arrayList2.get(iNextInt2)).intValue()).getNeighboringProvinces(i9)).getCivID() == i && Game.getProvinceData(Game.getProvince(((Integer) arrayList2.get(iNextInt2)).intValue()).getNeighboringProvinces(i9)).getOccupiedByCivID() != 0) {
                                i8++;
                            }
                        }
                        for (int i10 = 0; i10 < Game.getProvince(((Integer) arrayList2.get(iNextInt2)).intValue()).getNeighboringProvincesSize(); i10++) {
                            int i11 = 0;
                            for (int i12 = 0; i12 < Game.getProvince(Game.getProvince(((Integer) arrayList2.get(iNextInt2)).intValue()).getNeighboringProvinces(i10)).getNeighboringProvincesSize(); i12++) {
                                if (Game.getProvince(Game.getProvince(Game.getProvince(((Integer) arrayList2.get(iNextInt2)).intValue()).getNeighboringProvinces(i10)).getNeighboringProvinces(i12)).getCivID() == i && Game.getProvinceData(Game.getProvince(Game.getProvince(((Integer) arrayList2.get(iNextInt2)).intValue()).getNeighboringProvinces(i10)).getNeighboringProvinces(i12)).getOccupiedByCivID() != 0) {
                                    i11++;
                                }
                            }
                            if (i8 < i11) {
                                for (int size3 = arrayList2.size() - 1; size3 >= 0; size3--) {
                                    if (((Integer) arrayList2.get(size3)).intValue() == Game.getProvince(((Integer) arrayList2.get(iNextInt2)).intValue()).getNeighboringProvinces(i10)) {
                                        iNextInt2 = size3;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    int i13 = GameValues.siege.SIEGE_REGIMENTS_MIN + 1;
                    for (int i14 = 0; i14 < Game.getProvince(((Integer) arrayList2.get(iNextInt2)).intValue()).getArmySize(); i14++) {
                        if (DiplomacyManager.isAtWar(i, Game.getProvince(((Integer) arrayList2.get(iNextInt2)).intValue()).getArmy(i14).civID)) {
                            i13 += Game.getProvince(((Integer) arrayList2.get(iNextInt2)).intValue()).getArmy(i14).iArmyRegimentSize;
                        }
                    }
                    int iArmyMovingToProvince_MoveUnits2 = i13 - Game.getCiv(i).armyMovingToProvince_MoveUnits(((Integer) arrayList2.get(iNextInt2)).intValue());
                    if (iArmyMovingToProvince_MoveUnits2 > 0) {
                        for (int size4 = arrayList.size() - 1; size4 >= 0; size4--) {
                            ((ArmyDivision_TempData) arrayList.get(size4)).distance = Game.getDistanceFromProvinceToProvince(((Integer) arrayList2.get(iNextInt2)).intValue(), ((ArmyDivision_TempData) arrayList.get(size4)).armyPosition.provinceID);
                        }
                        while (iArmyMovingToProvince_MoveUnits2 > 0 && arrayList.size() > 0) {
                            int i15 = 0;
                            for (int size5 = arrayList.size() - 1; size5 > 0; size5--) {
                                if (((ArmyDivision_TempData) arrayList.get(i15)).distance > ((ArmyDivision_TempData) arrayList.get(size5)).distance) {
                                    i15 = size5;
                                }
                            }
                            if (((ArmyDivision_TempData) arrayList.get(i15)).distance == 100000.0f) {
                                break;
                            }
                            if (Game.getCiv(i).newMove(((ArmyDivision_TempData) arrayList.get(i15)).armyPosition.provinceID, ((Integer) arrayList2.get(iNextInt2)).intValue(), ((ArmyDivision_TempData) arrayList.get(i15)).armyPosition.key, 0, false)) {
                                iArmyMovingToProvince_MoveUnits2 -= ((ArmyDivision_TempData) arrayList.get(i15)).iRegiments;
                                arrayList.remove(i15);
                            } else {
                                ((ArmyDivision_TempData) arrayList.get(i15)).distance = 100000.0f;
                            }
                        }
                    }
                    arrayList2.remove(iNextInt2);
                }
                arrayList.clear();
                arrayList2.clear();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
