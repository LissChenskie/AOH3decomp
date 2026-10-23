package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageDemandMilitaryAccess;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.moveUnits.other.MoveUnits_AI;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData;
import aoc.kingdoms.lukasz.map.war.War;
import aoc.kingdoms.lukasz.map.war.WarCivilization;
import aoc.kingdoms.lukasz.map.war.WarManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_MoveAtWar {
    public static float warScore;
    public static List<ArmyDivision> armies = new ArrayList();
    public static List<ArmyDivision> armiesInMove = new ArrayList();
    public static List<ArmyDivision> armiesSiege = new ArrayList();
    public static List<ArmyDivision> armiesLowMoraleManpower = new ArrayList();
    public static List<ArmyDivision> armiesToMerge = new ArrayList();
    public static List<EnemyArmy> enemyArmies = new ArrayList();
    public static List<Integer> possibleProvinces = new ArrayList();
    public static List<Integer> possibleProvincesDefend = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AI.Army.AI_MoveAtWar$1, reason: invalid class name */
    class AnonymousClass1 implements Comparator<EnemyArmy> {
        AnonymousClass1() {
        }

        @Override // java.util.Comparator
        public int compare(EnemyArmy enemyArmy, EnemyArmy enemyArmy2) {
            return Float.compare(enemyArmy.distance, enemyArmy2.distance);
        }
    }

    public static class EnemyArmy {
        public int army;
        public float distance;
        public int provinceID;

        public EnemyArmy(int i, int i2) {
            this.provinceID = i;
            this.army = i2;
        }
    }

    public static void addAlliedProvincesFromWars(Civilization civilization, int i) {
        for (int i2 = 0; i2 < civilization.diplomacy.iWarsSize; i2++) {
            War war = WarManager.lWars.get(civilization.diplomacy.lWars.get(i2));
            if (war != null) {
                float f = war.isWarLeader(i) ? Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_ALLIES_WAR_LEADER : Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_ALLIES_NOT_WAR_LEADER;
                List<WarCivilization> list = war.isAggressor(i) ? war.lAggressors : war.lDefenders;
                List<WarCivilization> list2 = war.isAggressor(i) ? war.lDefenders : war.lAggressors;
                for (WarCivilization warCivilization : list) {
                    if (i != warCivilization.iCivID) {
                        int size = Game.getCiv(warCivilization.iCivID).occupiedProvinces.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            int iIntValue = Game.getCiv(warCivilization.iCivID).occupiedProvinces.get(i3).intValue();
                            ProvinceData provinceData = Game.getProvinceData(iIntValue);
                            if (provinceData.getOccupiedByCivID() < 0) {
                                possibleProvinces.add(Integer.valueOf(iIntValue));
                                Game.getProvince(iIntValue).aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_ALLIES_OCCUPIED_BY_REBELS;
                            } else if (DiplomacyManager.isAtWar(i, provinceData.getOccupiedByCivID())) {
                                possibleProvinces.add(Integer.valueOf(iIntValue));
                                Game.getProvince(iIntValue).aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_ALLIES_OCCUPIED_BY_ENEMY_CIV;
                            }
                        }
                        int size2 = Game.getCiv(warCivilization.iCivID).underSiege.size();
                        for (int i4 = 0; i4 < size2; i4++) {
                            int iIntValue2 = Game.getCiv(warCivilization.iCivID).underSiege.get(i4).intValue();
                            for (int i5 = 0; i5 < Game.getProvince(iIntValue2).getArmySize(); i5++) {
                                if (DiplomacyManager.isAtWar(i, Game.getProvince(iIntValue2).getArmy(i5).civID)) {
                                    possibleProvinces.add(Integer.valueOf(iIntValue2));
                                    Game.getProvince(iIntValue2).aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_ALLIES_UNDER_SIEGE;
                                    break;
                                }
                            }
                        }
                    }
                }
                int i6 = list2.get(0).iCivID;
                for (int i7 = 0; i7 < Game.getCiv(i6).getNumOfProvinces(); i7++) {
                    int provinceID = Game.getCiv(i6).getProvinceID(i7);
                    if (!Game.getProvince(provinceID).isOccupied()) {
                        possibleProvinces.add(Integer.valueOf(provinceID));
                        Game.getProvince(provinceID).aiMoveArmyAtWarScore = f;
                    } else if (Game.getProvinceData4(provinceID).isUnderSiege()) {
                        possibleProvinces.add(Integer.valueOf(provinceID));
                        Game.getProvince(provinceID).aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_ENEMY_WAR_LEADER_OCCUPIED_UNDER_SIEGE;
                    } else {
                        possibleProvincesDefend.add(Integer.valueOf(provinceID));
                        Game.getProvince(provinceID).aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_ENEMY_WAR_LEADER_OCCUPIED;
                    }
                }
                for (int size3 = list2.size() - 1; size3 > 0; size3--) {
                    int i8 = list2.get(size3).iCivID;
                    for (int i9 = 0; i9 < Game.getCiv(i8).getNumOfProvinces(); i9++) {
                        if (!Game.getProvince(Game.getCiv(i8).getProvinceID(i9)).isOccupied()) {
                            possibleProvinces.add(Integer.valueOf(Game.getCiv(i8).getProvinceID(i9)));
                            Game.getProvince(Game.getCiv(i8).getProvinceID(i9)).aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_ENEMY_ALLIES_PROVINCES;
                        }
                    }
                }
            }
        }
    }

    public static void addAlliedProvincesFromWars_Defensive(Civilization civilization, int i) {
        for (int i2 = 0; i2 < civilization.diplomacy.iWarsSize; i2++) {
            War war = WarManager.lWars.get(civilization.diplomacy.lWars.get(i2));
            if (war != null) {
                for (WarCivilization warCivilization : war.isAggressor(i) ? war.lAggressors : war.lDefenders) {
                    if (i != warCivilization.iCivID) {
                        int size = Game.getCiv(warCivilization.iCivID).occupiedProvinces.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            int iIntValue = Game.getCiv(warCivilization.iCivID).occupiedProvinces.get(i3).intValue();
                            ProvinceData provinceData = Game.getProvinceData(iIntValue);
                            if (provinceData.getOccupiedByCivID() < 0) {
                                possibleProvinces.add(Integer.valueOf(iIntValue));
                                Game.getProvince(iIntValue).aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_DEFEND_OCCUPIED_BY_REBELS;
                            } else if (DiplomacyManager.isAtWar(i, provinceData.getOccupiedByCivID())) {
                                possibleProvinces.add(Integer.valueOf(iIntValue));
                                Game.getProvince(iIntValue).aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_DEFEND_OCCUPIED_BY_ENEMY_CIV;
                            }
                        }
                        int size2 = Game.getCiv(warCivilization.iCivID).underSiege.size();
                        for (int i4 = 0; i4 < size2; i4++) {
                            int iIntValue2 = Game.getCiv(warCivilization.iCivID).underSiege.get(i4).intValue();
                            for (int i5 = 0; i5 < Game.getProvince(iIntValue2).getArmySize(); i5++) {
                                if (DiplomacyManager.isAtWar(i, Game.getProvince(iIntValue2).getArmy(i5).civID)) {
                                    possibleProvinces.add(Integer.valueOf(iIntValue2));
                                    Game.getProvince(iIntValue2).aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_DEFEND_ENEMY_ARMY_IN_PROVINCE;
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static void addOccupiedProvinces(Civilization civilization) {
        boolean z;
        for (int i = 0; i < civilization.getNumOfProvinces(); i++) {
            Province province = Game.getProvince(civilization.getProvinceID(i));
            if (province.isOccupied()) {
                possibleProvinces.add(Integer.valueOf(civilization.getProvinceID(i)));
                if (Game.getProvinceData(civilization.getProvinceID(i)).getOccupiedByCivID() < 0) {
                    province.aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_SCORE_OCCUPIED_BY_REBELS;
                } else {
                    province.aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_SCORE_OCCUPIED_BY_ENEMY_CIV;
                }
            } else if (Game.getProvinceData4(civilization.getProvinceID(i)).isUnderSiege()) {
                int i2 = 0;
                while (true) {
                    if (i2 >= Game.getProvince(civilization.getProvinceID(i)).getArmySize()) {
                        z = false;
                        break;
                    } else {
                        if (Game.getProvince(civilization.getProvinceID(i)).getArmy(i2).civID < 0) {
                            z = true;
                            break;
                        }
                        i2++;
                    }
                }
                possibleProvinces.add(Integer.valueOf(civilization.getProvinceID(i)));
                if (z) {
                    province.aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_SCORE_UNDER_SIEGE_BY_REBELS;
                } else {
                    province.aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_SCORE_UNDER_SIEGE_BY_ENEMY_CIV;
                }
            } else {
                possibleProvincesDefend.add(Integer.valueOf(civilization.getProvinceID(i)));
                province.aiMoveArmyAtWarScore = Game.aiValuesArmies.AT_WAR_MOVE_PROVINCE_SCORE_DEFAULT;
            }
        }
    }

    public static void buildEnemyArmy(Civilization civilization, int i) {
        boolean z;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < civilization.diplomacy.iWarsSize; i2++) {
            try {
                War war = WarManager.lWars.get(civilization.diplomacy.lWars.get(i2));
                if (war != null) {
                    List<WarCivilization> list = war.isAggressor(i) ? war.lAggressors : war.lDefenders;
                    if ((Game.getCiv(list.get(0).iCivID).iRegiments > Game.getCiv((war.isAggressor(i) ? war.lDefenders : war.lAggressors).get(0).iCivID).iRegiments || (-((int) war.warScore)) * war.getWarScore_Side(i) < Game.aiValuesArmies.AT_WAR_MOVE_ARMY_TO_ENEMY_ARMIES_AT_ANY_COST_IF_WARSCORE_BELOW) && !arrayList.contains(Integer.valueOf(list.get(0).iCivID))) {
                        arrayList.add(Integer.valueOf(list.get(0).iCivID));
                        int i3 = list.get(0).iCivID;
                        for (int i4 = 0; i4 < Game.getCiv(i3).getNumOfProvinces(); i4++) {
                            Province province = Game.getProvince(Game.getCiv(i3).getProvinceID(i4));
                            if (province.getArmySize() > 0) {
                                for (int i5 = 0; i5 < province.getArmySize(); i5++) {
                                    if (!province.getArmy(i5).inRetreat && i != province.getArmy(i5).civID && DiplomacyManager.isAtWar(i, province.getArmy(i5).civID)) {
                                        int size = enemyArmies.size() - 1;
                                        while (true) {
                                            if (size < 0) {
                                                z2 = true;
                                                break;
                                            } else {
                                                if (enemyArmies.get(size).provinceID == province.getProvinceID()) {
                                                    enemyArmies.get(size).army += province.getArmy(i5).iArmy;
                                                    z2 = false;
                                                    break;
                                                }
                                                size--;
                                            }
                                        }
                                        if (z2) {
                                            enemyArmies.add(new EnemyArmy(province.getProvinceID(), province.getArmy(i5).iArmy));
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        if (!arrayList.contains(Integer.valueOf(i))) {
            for (int i6 = 0; i6 < civilization.getNumOfProvinces(); i6++) {
                Province province2 = Game.getProvince(civilization.getProvinceID(i6));
                if (province2.getArmySize() > 0) {
                    for (int i7 = 0; i7 < province2.getArmySize(); i7++) {
                        if (!province2.getArmy(i7).inRetreat && i != province2.getArmy(i7).civID && DiplomacyManager.isAtWar(i, province2.getArmy(i7).civID)) {
                            int size2 = enemyArmies.size() - 1;
                            while (true) {
                                if (size2 < 0) {
                                    z = true;
                                    break;
                                } else {
                                    if (enemyArmies.get(size2).provinceID == province2.getProvinceID()) {
                                        enemyArmies.get(size2).army += province2.getArmy(i7).iArmy;
                                        z = false;
                                        break;
                                    }
                                    size2--;
                                }
                            }
                            if (z) {
                                enemyArmies.add(new EnemyArmy(province2.getProvinceID(), province2.getArmy(i7).iArmy));
                            }
                        }
                    }
                }
            }
        }
        arrayList.clear();
    }

    public static void calculateProvinceScores() {
        Iterator<Integer> it = possibleProvinces.iterator();
        while (it.hasNext()) {
            Province province = Game.getProvince(it.next().intValue());
            province.aiMoveArmyAtWarScore *= province.fProvinceValue;
        }
    }

    public static void determinePossibleProvinces(Civilization civilization, int i) {
        addOccupiedProvinces(civilization);
        addAlliedProvincesFromWars(civilization, i);
    }

    public static void determinePossibleProvinces_Defensive(Civilization civilization, int i) {
        addOccupiedProvinces(civilization);
        addAlliedProvincesFromWars_Defensive(civilization, i);
    }

    public static void mergeArmies(int i) {
        for (int size = armiesToMerge.size() - 1; size >= 0; size--) {
            mergeArmy(i, armiesToMerge.get(size).provinceID, armiesToMerge.get(size).key);
            armiesToMerge.remove(size);
        }
    }

    public static void mergeArmy(int i, int i2, String str) {
        ArmyDivision army;
        try {
            if (Game.getCiv(i).aiMerge.isArmyMerging_Just(i, str)) {
                return;
            }
            for (int i3 = 0; i3 < Game.getProvince(i2).getArmySize(); i3++) {
                if (Game.getProvince(i2).getArmy(i3).civID == i && !Game.getProvince(i2).getArmy(i3).key.equals(str)) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Game.getProvince(i2).getArmy(i3).key);
                    arrayList.add(str);
                    Game.getProvince(i2).mergeUnits(arrayList);
                    return;
                }
            }
            int i4 = -1;
            float f = 999999.0f;
            for (int i5 = 0; i5 < Game.getCiv(i).iArmyPositionSize; i5++) {
                if (Game.getCiv(i).getArmyPosition(i5) != i2) {
                    float distanceFromProvinceToProvince = Game.getDistanceFromProvinceToProvince(i2, Game.getCiv(i).getArmyPosition(i5));
                    if (distanceFromProvinceToProvince < f && (army = Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).getArmy(Game.getCiv(i).getArmyPositionKey(i5))) != null && !army.inMovement) {
                        i4 = i5;
                        f = distanceFromProvinceToProvince;
                    }
                }
            }
            if (i4 < 0) {
                Game.getCiv(i).newMove(i2, Game.getCiv(i).getCapitalProvinceID(), str, 0, false);
            } else if (Game.getCiv(i).newMove(i2, Game.getCiv(i).getArmyPosition(i4), str, 0, false)) {
                Game.getCiv(i).aiMerge.addMerge(Game.getCiv(i).getArmyPosition(i4), Game.getCiv(i).getArmyPositionKey(i4));
                Game.getCiv(i).aiMerge.addMerge(Game.getCiv(i).getArmyPosition(i4), str);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void mergeArmy_InProvince(int i, int i2, String str) {
        int i3 = -1;
        for (int i4 = 0; i4 < Game.getProvince(i2).getArmySize(); i4++) {
            try {
                if (Game.getProvince(i2).getArmy(i4).civID == i && !Game.getProvince(i2).getArmy(i4).key.equals(str) && (i3 < 0 || Game.getProvince(i2).getArmy(i4).iArmyRegimentSize > Game.getProvince(i2).getArmy(i3).iArmyRegimentSize)) {
                    i3 = i4;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        if (i3 >= 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Game.getProvince(i2).getArmy(i3).key);
            arrayList.add(str);
            Game.getProvince(i2).mergeUnits(arrayList);
        }
    }

    public static void moveArmiesLowMoraleManpower(int i) {
        try {
            for (int size = armiesLowMoraleManpower.size() - 1; size >= 0; size--) {
                int i2 = 0;
                if (Game.getProvince(armiesLowMoraleManpower.get(size).provinceID).getCivID() != i) {
                    int iNextInt = Game.oR.nextInt(100);
                    if (iNextInt >= Game.aiValuesArmies.AT_WAR_DEFEND_IN_ENEMY_TERRITORY_DO_NOTHING) {
                        if (iNextInt < Game.aiValuesArmies.AT_WAR_DEFEND_IN_ENEMY_TERRITORY_MOVE_TO_CLOSEST_PROVINCE) {
                            int capitalProvinceID = Game.getCiv(i).getCapitalProvinceID();
                            float distanceFromProvinceToProvince = Game.getDistanceFromProvinceToProvince(armiesLowMoraleManpower.get(size).provinceID, capitalProvinceID);
                            int provinceID = capitalProvinceID;
                            while (i2 < Game.getCiv(i).getNumOfProvinces()) {
                                float distanceFromProvinceToProvince2 = Game.getDistanceFromProvinceToProvince(armiesLowMoraleManpower.get(size).provinceID, Game.getCiv(i).getProvinceID(i2));
                                if (distanceFromProvinceToProvince2 < distanceFromProvinceToProvince) {
                                    provinceID = Game.getCiv(i).getProvinceID(i2);
                                    distanceFromProvinceToProvince = distanceFromProvinceToProvince2;
                                }
                                i2++;
                            }
                            Game.getCiv(i).newMove(armiesLowMoraleManpower.get(size).provinceID, provinceID, armiesLowMoraleManpower.get(size).key, 0, false);
                        } else if (iNextInt < Game.aiValuesArmies.AT_WAR_DEFEND_IN_ENEMY_TERRITORY_MOVE_TO_CAPITAL) {
                            Game.getCiv(i).newMove(armiesLowMoraleManpower.get(size).provinceID, Game.getCiv(i).getCapitalProvinceID(), armiesLowMoraleManpower.get(size).key, 0, false);
                        } else {
                            Game.getCiv(i).newMove(armiesLowMoraleManpower.get(size).provinceID, Game.getCiv(i).getProvinceID(Game.oR.nextInt(Game.getCiv(i).getNumOfProvinces())), armiesLowMoraleManpower.get(size).key, 0, false);
                        }
                    }
                } else {
                    int iNextInt2 = Game.oR.nextInt(100);
                    if (iNextInt2 < Game.aiValuesArmies.AT_WAR_DEFEND_IN_OWN_TERRITORY_MOVE_TO_NEIGHBORING_PROVINCE) {
                        Province province = Game.getProvince(armiesLowMoraleManpower.get(size).provinceID);
                        ArrayList arrayList = new ArrayList();
                        while (i2 < province.getNeighboringProvincesSize()) {
                            if (Game.getProvince(province.getNeighboringProvinces(i2)).getCivID() == i && !Game.getProvince(province.getNeighboringProvinces(i2)).isEnemyArmyInProvince(i)) {
                                arrayList.add(Integer.valueOf(province.getNeighboringProvinces(i2)));
                            }
                            i2++;
                        }
                        if (!arrayList.isEmpty()) {
                            Game.getCiv(i).newMove(armiesLowMoraleManpower.get(size).provinceID, ((Integer) arrayList.get(Game.oR.nextInt(arrayList.size()))).intValue(), armiesLowMoraleManpower.get(size).key, 0, false);
                        }
                        arrayList.clear();
                    } else if (iNextInt2 < Game.aiValuesArmies.AT_WAR_DEFEND_IN_OWN_TERRITORY_MOVE_TO_CAPITAL) {
                        Game.getCiv(i).newMove(armiesLowMoraleManpower.get(size).provinceID, Game.getCiv(i).getCapitalProvinceID(), armiesLowMoraleManpower.get(size).key, 0, false);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void moveArmiesToProvinces(int i) {
        for (ArmyDivision armyDivision : armies) {
            int iSelectBestProvince = selectBestProvince(i, selectBestProvince(armyDivision.provinceID));
            if (armyDivision.provinceID == iSelectBestProvince) {
                SiegeManager.checkForSiege(iSelectBestProvince);
            } else if (Game.getCiv(i).noConnectionMoveUnits.contains(armyDivision.provinceID, iSelectBestProvince)) {
                moveArmiesToProvinces_Defend(i, armyDivision);
            } else if (Game.getCiv(i).newMove(armyDivision.provinceID, iSelectBestProvince, armyDivision.key, 0, false)) {
                Game.getProvince(iSelectBestProvince).aiMoveArmyAtWarScore *= Game.aiValuesArmies.AT_WAR_AFTER_MOVE_SCORE;
            } else {
                MoveUnits_AI moveUnits_AI = new MoveUnits_AI(i, armyDivision.provinceID, iSelectBestProvince);
                boolean z = false;
                if (moveUnits_AI.iRouteSize > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < moveUnits_AI.iRouteSize; i2++) {
                        if (!arrayList.contains(Integer.valueOf(Game.getProvince(moveUnits_AI.lRoute.get(i2).intValue()).getCivID()))) {
                            arrayList.add(Integer.valueOf(Game.getProvince(moveUnits_AI.lRoute.get(i2).intValue()).getCivID()));
                        }
                    }
                    boolean z2 = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        if (((Integer) arrayList.get(size)).intValue() == 0 || ((Integer) arrayList.get(size)).intValue() == i || DiplomacyManager.isAtWar(i, ((Integer) arrayList.get(size)).intValue()) || DiplomacyManager.isAlly(i, ((Integer) arrayList.get(size)).intValue())) {
                            arrayList.remove(size);
                        } else if (((Integer) arrayList.get(size)).intValue() == Game.player.iCivID) {
                            arrayList.remove(size);
                            z2 = true;
                        }
                    }
                    if (z2) {
                        Game.player.addMessage(new PMessageDemandMilitaryAccess(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
                        Game.getCiv(i).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_DEMAND_MILITARY_ACCESS_COST * Game.aiValuesDiplomacy.AI_DEMAND_MILITARY_ACCESS_COST_MODIFIER;
                    }
                    for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                        if (DiplomacyManager.addMilitaryAccess(i, ((Integer) arrayList.get(size2)).intValue())) {
                            Game.getCiv(i).fDiplomacy -= GameValues.diplomacy.DIPLOMACY_DEMAND_MILITARY_ACCESS_COST * Game.aiValuesDiplomacy.AI_DEMAND_MILITARY_ACCESS_COST_MODIFIER;
                        }
                    }
                    arrayList.clear();
                }
                Game.getCiv(i).noConnectionMoveUnits.addProvince(armyDivision.provinceID, iSelectBestProvince);
                int iMin = Math.min(Game.aiValuesArmies.AT_WAR_MOVE_ARMY_CANT_REACH_RANDOM_PROVINCES_LIMIT, possibleProvinces.size()) - 1;
                while (true) {
                    if (iMin < 0) {
                        z = true;
                        break;
                    }
                    int iSelectBestProvince2 = selectBestProvince(i, selectBestProvince_Random(armyDivision.provinceID));
                    if (armyDivision.provinceID != iSelectBestProvince2) {
                        if (!Game.getCiv(i).noConnectionMoveUnits.contains(armyDivision.provinceID, iSelectBestProvince2) && Game.getCiv(i).newMove(armyDivision.provinceID, iSelectBestProvince2, armyDivision.key, 0, false)) {
                            Game.getProvince(iSelectBestProvince2).aiMoveArmyAtWarScore *= Game.aiValuesArmies.AT_WAR_AFTER_MOVE_SCORE;
                            break;
                        }
                    } else {
                        SiegeManager.checkForSiege(iSelectBestProvince2);
                    }
                    iMin--;
                }
                if (z) {
                    moveArmiesToProvinces_Defend(i, armyDivision);
                }
            }
        }
    }

    public static void moveArmiesToProvinces_Defend(int i, ArmyDivision armyDivision) {
        if (possibleProvincesDefend.isEmpty() || Game.oR.nextInt(100) >= Game.aiValuesArmies.AT_WAR_NO_CONNECTIONS_DEFEND_CHANCE) {
            return;
        }
        int iSelectBestProvince_Defend = selectBestProvince_Defend(armyDivision.provinceID);
        if (armyDivision.provinceID == iSelectBestProvince_Defend) {
            SiegeManager.checkForSiege(iSelectBestProvince_Defend);
        }
        if (Game.getCiv(i).newMove(armyDivision.provinceID, iSelectBestProvince_Defend, armyDivision.key, 0, false)) {
            Game.getProvince(iSelectBestProvince_Defend).aiMoveArmyAtWarScore *= Game.aiValuesArmies.AT_WAR_AFTER_MOVE_DEFEND_SCORE;
        }
    }

    public static void moveAtWar(int i) {
        try {
            armies.clear();
            armiesInMove.clear();
            armiesLowMoraleManpower.clear();
            armiesToMerge.clear();
            armiesSiege.clear();
            enemyArmies.clear();
            possibleProvinces.clear();
            possibleProvincesDefend.clear();
            warScore = 1000.0f;
            Civilization civ = Game.getCiv(i);
            int i2 = civ.aiUpdateID;
            civ.aiUpdateID = i2 + 1;
            if (i2 > 14) {
                civ.aiUpdateID = 0;
                AI_Generals.recruitGenerals(i);
                processArmyPositions(civ);
            } else {
                processArmyPositions_Just(civ);
            }
            if ((updateMinWarscore(civ, i, percentageOfCivProvincesThatAreOccupied(civ) < Game.aiValuesArmies.AT_WAR_MOVE_ARMY_TO_ENEMY_ARMIES_IF_PERC_OF_PROVINCES_THAT_ARE_OCCUPIED) || warScore < Game.aiValuesArmies.AT_WAR_MOVE_ARMY_TO_ENEMY_ARMIES_IF_WARSCORE_BELOW || warScore < Game.aiValuesArmies.AT_WAR_MOVE_ARMY_TO_ENEMY_ARMIES_AT_ANY_COST_IF_WARSCORE_BELOW) && (!armies.isEmpty() || !armiesInMove.isEmpty() || !armiesSiege.isEmpty())) {
                buildEnemyArmy(civ, i);
                if (!enemyArmies.isEmpty()) {
                    moveToEnemyArmies(i);
                }
            }
            mergeArmies(i);
            if (!armiesLowMoraleManpower.isEmpty()) {
                moveArmiesLowMoraleManpower(i);
            }
            if (armies.isEmpty()) {
                return;
            }
            if (civ.getWarPlayDefensiveUntilTurnID() > Game_Calendar.TURN_ID) {
                determinePossibleProvinces_Defensive(civ, i);
                if (possibleProvinces.isEmpty()) {
                    return;
                }
                moveArmiesToProvinces(i);
                return;
            }
            determinePossibleProvinces(civ, i);
            if (possibleProvinces.isEmpty()) {
                return;
            }
            moveArmiesToProvinces(i);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void moveToEnemyArmies(int i) {
        moveToEnemyArmies_SortEnemyArmies(i);
        List<ArmyDivision> listMoveToEnemyArmies_GetOwnArmies = moveToEnemyArmies_GetOwnArmies();
        for (int i2 = 0; i2 < enemyArmies.size(); i2++) {
            List<Float> listMoveToEnemyArmies_MoveDistance = moveToEnemyArmies_MoveDistance(enemyArmies.get(i2).provinceID, listMoveToEnemyArmies_GetOwnArmies);
            ArrayList arrayList = new ArrayList();
            int i3 = 0;
            while (!listMoveToEnemyArmies_GetOwnArmies.isEmpty()) {
                int i4 = 0;
                for (int size = listMoveToEnemyArmies_MoveDistance.size() - 1; size > 0; size--) {
                    if (listMoveToEnemyArmies_MoveDistance.get(i4).floatValue() > listMoveToEnemyArmies_MoveDistance.get(size).floatValue()) {
                        i4 = size;
                    }
                }
                arrayList.add(listMoveToEnemyArmies_GetOwnArmies.get(i4));
                i3 += listMoveToEnemyArmies_GetOwnArmies.get(i4).iArmy;
                listMoveToEnemyArmies_GetOwnArmies.remove(i4);
                listMoveToEnemyArmies_MoveDistance.remove(i4);
                if (i3 > enemyArmies.get(i2).army) {
                    for (int i5 = 0; i5 < arrayList.size(); i5++) {
                        Game.getCiv(i).newMove(((ArmyDivision) arrayList.get(i5)).provinceID, enemyArmies.get(i2).provinceID, ((ArmyDivision) arrayList.get(i5)).key, 0, false);
                    }
                    arrayList.clear();
                    break;
                }
                if (listMoveToEnemyArmies_GetOwnArmies.isEmpty()) {
                    if (warScore >= Game.aiValuesArmies.AT_WAR_MOVE_ARMY_TO_ENEMY_ARMIES_AT_ANY_COST_IF_WARSCORE_BELOW) {
                        break;
                    }
                    for (int i6 = 0; i6 < arrayList.size(); i6++) {
                        Game.getCiv(i).newMove(((ArmyDivision) arrayList.get(i6)).provinceID, enemyArmies.get(i2).provinceID, ((ArmyDivision) arrayList.get(i6)).key, 0, false);
                    }
                    break;
                }
            }
        }
    }

    public static List<ArmyDivision> moveToEnemyArmies_GetOwnArmies() {
        ArrayList arrayList = new ArrayList();
        for (int size = armies.size() - 1; size >= 0; size--) {
            arrayList.add(armies.get(size));
        }
        for (int size2 = armiesInMove.size() - 1; size2 >= 0; size2--) {
            arrayList.add(armiesInMove.get(size2));
        }
        for (int size3 = armiesSiege.size() - 1; size3 >= 0; size3--) {
            arrayList.add(armiesSiege.get(size3));
        }
        return arrayList;
    }

    public static List<Float> moveToEnemyArmies_MoveDistance(int i, List<ArmyDivision> list) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(Float.valueOf(Game.getManhattanDistance(i, list.get(i2).provinceID)));
        }
        return arrayList;
    }

    public static void moveToEnemyArmies_SortEnemyArmies(int i) {
        for (int size = enemyArmies.size() - 1; size >= 0; size--) {
            enemyArmies.get(size).distance = Game.getManhattanDistance(Game.getCiv(i).getCapitalProvinceID(), enemyArmies.get(size).provinceID);
        }
        Collections.sort(enemyArmies, new AnonymousClass1());
    }

    public static float percentageOfCivProvincesThatAreOccupied(Civilization civilization) {
        float f = 0.0f;
        for (int i = 0; i < civilization.getNumOfProvinces(); i++) {
            if (Game.getProvince(civilization.getProvinceID(i)).isOccupied()) {
                f += 1.0f;
            }
        }
        return f / civilization.getNumOfProvinces();
    }

    public static void processArmyPositions(Civilization civilization) {
        for (int i = 0; i < civilization.iArmyPositionSize; i++) {
            ArmyDivision army = Game.getProvince(civilization.getArmyPosition(i)).getArmy(civilization.getArmyPositionKey(i));
            if (army != null && !army.inBattle) {
                if (Game.getProvinceData4(army.provinceID).isUnderSiege()) {
                    if (SiegeManager.isProvinceUnderSiege(army.provinceID)) {
                        armiesSiege.add(army);
                    } else {
                        Game.getProvinceData4(army.provinceID).setIsUnderSiege_Just(false);
                    }
                } else if (army.iArmyRegimentSize < Game.aiValuesArmies.AT_WAR_WAIT_IF_IN_RECRUITMENT_AND_REGIMENTS_BELOW && civilization.getCivID() != Game.player.iCivID && civilization.isRecruitArmyInProgress(army.key)) {
                    armiesLowMoraleManpower.add(army);
                } else if (army.inMovement || army.inRetreat) {
                    if (!army.inRetreat) {
                        armiesInMove.add(army);
                    }
                    if (!civilization.isInMoveUnits_ArmyKey(army.key)) {
                        army.inMovement = false;
                        army.inRetreat = false;
                    }
                } else if (army.iArmyRegimentSize > 0) {
                    if (shouldMergeArmy(civilization, army)) {
                        armiesToMerge.add(army);
                    } else if (army.fMorale < Game.aiValuesArmies.AT_WAR_DEFEND_IF_ARMY_MORALE_BELOW) {
                        armiesLowMoraleManpower.add(army);
                    } else if (civilization.fManpower > Game.aiValuesArmies.AT_WAR_DEFEND_IF_CIV_MANPOWER_OVER && army.iArmy / (army.iArmyRegimentSize * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE) < Game.aiValuesArmies.AT_WAR_DEFEND_IF_ARMY_MANPOWER_BELOW) {
                        armiesLowMoraleManpower.add(army);
                    } else if (army.iArmyRegimentSize < Game.aiValuesArmies.AT_WAR_DEFEND_IF_NUM_OF_REGIMENTS_BELOW) {
                        armiesLowMoraleManpower.add(army);
                    } else {
                        armies.add(army);
                    }
                }
            }
        }
    }

    public static void processArmyPositions_Just(Civilization civilization) {
        for (int i = 0; i < civilization.iArmyPositionSize; i++) {
            ArmyDivision army = Game.getProvince(civilization.getArmyPosition(i)).getArmy(civilization.getArmyPositionKey(i));
            if (army != null && !army.inBattle) {
                if (Game.getProvinceData4(army.provinceID).isUnderSiege()) {
                    if (SiegeManager.isProvinceUnderSiege(army.provinceID)) {
                        armiesSiege.add(army);
                    } else {
                        Game.getProvinceData4(army.provinceID).setIsUnderSiege_Just(false);
                    }
                } else if (army.iArmyRegimentSize < Game.aiValuesArmies.AT_WAR_WAIT_IF_IN_RECRUITMENT_AND_REGIMENTS_BELOW && civilization.getCivID() != Game.player.iCivID && civilization.isRecruitArmyInProgress(army.key)) {
                    armiesLowMoraleManpower.add(army);
                } else if (army.inMovement || army.inRetreat) {
                    if (!army.inRetreat) {
                        armiesInMove.add(army);
                    }
                } else if (army.iArmyRegimentSize > 0) {
                    if (shouldMergeArmy(civilization, army)) {
                        if (!civilization.aiMerge.isArmyMerging(civilization.getCivID(), civilization.getArmyPositionKey(i))) {
                            armiesToMerge.add(army);
                        }
                    } else if (army.fMorale < Game.aiValuesArmies.AT_WAR_DEFEND_IF_ARMY_MORALE_BELOW) {
                        armiesLowMoraleManpower.add(army);
                    } else if (civilization.fManpower > Game.aiValuesArmies.AT_WAR_DEFEND_IF_CIV_MANPOWER_OVER && army.iArmy / (army.iArmyRegimentSize * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE) < Game.aiValuesArmies.AT_WAR_DEFEND_IF_ARMY_MANPOWER_BELOW) {
                        armiesLowMoraleManpower.add(army);
                    } else if (army.iArmyRegimentSize < Game.aiValuesArmies.AT_WAR_DEFEND_IF_NUM_OF_REGIMENTS_BELOW) {
                        armiesLowMoraleManpower.add(army);
                    } else {
                        armies.add(army);
                    }
                }
            }
        }
    }

    public static int selectBestProvince(int i) {
        for (int size = possibleProvinces.size() - 1; size >= 0; size--) {
            Game.getProvince(possibleProvinces.get(size).intValue()).aiMoveArmyAtWarScore_DistanceFromArmy = Game.getProvince(possibleProvinces.get(size).intValue()).aiMoveArmyAtWarScore * (1.0f - Game.getManhattanDistance_PercOfMax(i, possibleProvinces.get(size).intValue()));
        }
        Game.getProvince(i).aiMoveArmyAtWarScore_DistanceFromArmy = -999999.0f;
        int i2 = 0;
        if (Game.oR.nextInt(100) < Game.aiValuesArmies.AT_WAR_MOVE_ARMY_CHOOSE_BEST_PROVINCE_CHANCE) {
            for (int size2 = possibleProvinces.size() - 1; size2 > 0; size2--) {
                if (Game.getProvince(possibleProvinces.get(size2).intValue()).aiMoveArmyAtWarScore_DistanceFromArmy > Game.getProvince(possibleProvinces.get(i2).intValue()).aiMoveArmyAtWarScore_DistanceFromArmy) {
                    i2 = size2;
                }
            }
            return possibleProvinces.get(i2).intValue();
        }
        ArrayList arrayList = new ArrayList();
        int iMin = Math.min(possibleProvinces.size(), Game.aiValuesArmies.AT_WAR_MOVE_ARMY_BEST_PROVINCES_LIMIT + Game.getProvince(i).getArmySize());
        for (int i3 = 0; i3 < iMin; i3++) {
            int i4 = 0;
            for (int size3 = possibleProvinces.size() - 1; size3 > 0; size3--) {
                if (Game.getProvince(possibleProvinces.get(size3).intValue()).aiMoveArmyAtWarScore_DistanceFromArmy > Game.getProvince(possibleProvinces.get(i4).intValue()).aiMoveArmyAtWarScore_DistanceFromArmy) {
                    i4 = size3;
                }
            }
            if (Game.getProvince(possibleProvinces.get(i4).intValue()).aiMoveArmyAtWarScore_DistanceFromArmy == -999999.0f) {
                break;
            }
            arrayList.add(possibleProvinces.get(i4));
            Game.getProvince(possibleProvinces.get(i4).intValue()).aiMoveArmyAtWarScore_DistanceFromArmy = -999999.0f;
        }
        return arrayList.isEmpty() ? i : ((Integer) arrayList.get(Game.oR.nextInt(arrayList.size()))).intValue();
    }

    public static int selectBestProvince(int i, int i2) {
        Province province = Game.getProvince(i2);
        ProvinceData provinceData = Game.getProvinceData(i2);
        if (province.getFortLevel() > 0 || Game.getProvinceData4(i2).isUnderSiege()) {
            return i2;
        }
        boolean zIsOccupied = province.isOccupied();
        int occupiedByCivID = provinceData.getOccupiedByCivID();
        int i3 = i2;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < province.getNeighboringProvincesSize(); i6++) {
            int neighboringProvinces = province.getNeighboringProvinces(i6);
            Province province2 = Game.getProvince(neighboringProvinces);
            if (!zIsOccupied ? province2.isOccupied() || province2.getCivID() != province.getCivID() : Game.getProvinceData(neighboringProvinces).getOccupiedByCivID() != occupiedByCivID) {
                i4++;
                int i7 = 0;
                for (int i8 = 0; i8 < province2.getNeighboringProvincesSize(); i8++) {
                    int neighboringProvinces2 = province2.getNeighboringProvinces(i8);
                    Province province3 = Game.getProvince(neighboringProvinces2);
                    if (!zIsOccupied ? province3.isOccupied() || province3.getCivID() != province.getCivID() : Game.getProvinceData(neighboringProvinces2).getOccupiedByCivID() != occupiedByCivID) {
                        i7++;
                    }
                }
                if (i7 > i5) {
                    i3 = neighboringProvinces;
                    i5 = i7;
                }
            }
        }
        return i4 >= i5 ? i2 : i3;
    }

    public static int selectBestProvince_Defend(int i) {
        for (int size = possibleProvincesDefend.size() - 1; size >= 0; size--) {
            Province province = Game.getProvince(possibleProvincesDefend.get(size).intValue());
            province.aiMoveArmyAtWarScore_DistanceFromArmy = province.fProvinceValue * province.aiMoveArmyAtWarScore * (1.0f - Game.getManhattanDistance_PercOfMax(i, possibleProvincesDefend.get(size).intValue()));
        }
        Game.getProvince(i).aiMoveArmyAtWarScore_DistanceFromArmy = -999999.0f;
        int i2 = 0;
        for (int size2 = possibleProvincesDefend.size() - 1; size2 > 0; size2--) {
            if (Game.getProvince(possibleProvincesDefend.get(size2).intValue()).aiMoveArmyAtWarScore_DistanceFromArmy > Game.getProvince(possibleProvincesDefend.get(i2).intValue()).aiMoveArmyAtWarScore_DistanceFromArmy) {
                i2 = size2;
            }
        }
        return possibleProvincesDefend.get(i2).intValue();
    }

    public static int selectBestProvince_Random(int i) {
        return possibleProvinces.get(Game.oR.nextInt(possibleProvinces.size())).intValue();
    }

    public static boolean shouldMergeArmy(Civilization civilization, ArmyDivision armyDivision) {
        return civilization.getArmyRegimentSize() >= Game.aiValuesArmies.AT_WAR_MERGE_ALL_ARMIES_WITH_REGIMENTS_BELOW * 2 && armyDivision.iArmyRegimentSize < Game.aiValuesArmies.AT_WAR_MERGE_ALL_ARMIES_WITH_REGIMENTS_BELOW;
    }

    public static boolean updateMinWarscore(Civilization civilization, int i, boolean z) {
        for (int i2 = 0; i2 < civilization.diplomacy.iWarsSize; i2++) {
            try {
                War war = WarManager.lWars.get(civilization.diplomacy.lWars.get(i2));
                if (war != null) {
                    warScore = Math.min(warScore, (-((int) war.warScore)) * war.getWarScore_Side(i));
                    if (!z) {
                        if (war.isAggressor(i)) {
                            if (Game.getCiv(war.lAggressors.get(0).iCivID).iRegiments > Game.getCiv(war.lDefenders.get(0).iCivID).iRegiments) {
                                z = true;
                            }
                        } else if (Game.getCiv(war.lDefenders.get(0).iCivID).iRegiments > Game.getCiv(war.lAggressors.get(0).iCivID).iRegiments) {
                            z = true;
                        }
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        return z;
    }
}
