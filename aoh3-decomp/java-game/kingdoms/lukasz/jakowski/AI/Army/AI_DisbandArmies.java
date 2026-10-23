package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.army.ArmyRegiment;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_DisbandArmies {
    public static void updateDisbandArmies() {
        int i = (Game_Calendar.TURN_ID % GameValues.gameUpdateAI.GAME_UPDATE_AI_DISBAND_ARMIES) + 1;
        while (i < Game.player.iCivID) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    updateDisbandArmies(i);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_DISBAND_ARMIES;
        }
        if (i == Game.player.iCivID) {
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_DISBAND_ARMIES;
        }
        while (i < Game.getCivsSize()) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                try {
                    updateDisbandArmies(i);
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
            i += GameValues.gameUpdateAI.GAME_UPDATE_AI_DISBAND_ARMIES;
        }
    }

    public static void updateDisbandArmies(int i) {
        Civilization civ = Game.getCiv(i);
        if (civ.diplomacy.isAtWar() || !civ.aiCivDiplomacy.w.isEmpty()) {
            return;
        }
        if (civ.fTotalIncomePerMonth * Game.aiValuesArmies.MILITARY_SPENDINGS_PERC_OF_MAX_INCOME_DISBAND < civ.fArmyMaintenance) {
            float f = civ.fArmyMaintenance - (civ.fTotalIncomePerMonth * Game.aiValuesArmies.MILITARY_SPENDINGS_PERC_OF_MAX_INCOME_DISBAND);
            civ.aiCivCreateNewArmy.cNA.clear();
            try {
                civ.cancelRecruitArmy_All();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            for (int i2 = civ.iArmyPositionSize - 1; i2 >= 0; i2--) {
                ArmyDivision army = Game.getProvince(civ.getArmyPosition(i2)).getArmy(civ.getArmyPositionKey(i2));
                if (army != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(army.lArmyRegiment);
                    ArrayList arrayList2 = new ArrayList();
                    while (!arrayList.isEmpty()) {
                        int iNextInt = Game.oR.nextInt(arrayList.size());
                        arrayList2.add((ArmyRegiment) arrayList.get(iNextInt));
                        f -= ArmyManager.lArmy.get(((ArmyRegiment) arrayList.get(iNextInt)).uID).get(((ArmyRegiment) arrayList.get(iNextInt)).aID).MaintenanceCost;
                        arrayList.remove(iNextInt);
                        if (f < 0.0f) {
                            break;
                        }
                    }
                    Game.getProvince(civ.getArmyPosition(i2)).disbandRegiment(army.key, arrayList2);
                    arrayList.clear();
                    if (f < 0.0f) {
                        break;
                    }
                }
            }
        }
        if (civ.getBalance() < Game.aiValuesArmies.DISBAND_ARMIES_IF_BALANCE_BELOW) {
            float f2 = Game.aiValuesArmies.DISBAND_ARMIES_IF_BALANCE_BELOW;
            if (civ.getMilitaryLevel() != 1) {
                civ.updateMilitaryLevel(1);
            }
            if (civ.getBalance() >= f2) {
                return;
            }
            civ.aiCivCreateNewArmy.cNA.clear();
            try {
                civ.cancelRecruitArmy_All();
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
            float balance = civ.getBalance();
            for (int i3 = civ.iArmyPositionSize - 1; i3 >= 0; i3--) {
                ArmyDivision army2 = Game.getProvince(civ.getArmyPosition(i3)).getArmy(civ.getArmyPositionKey(i3));
                if (army2 != null) {
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.addAll(army2.lArmyRegiment);
                    ArrayList arrayList4 = new ArrayList();
                    while (!arrayList3.isEmpty()) {
                        int iNextInt2 = Game.oR.nextInt(arrayList3.size());
                        arrayList4.add((ArmyRegiment) arrayList3.get(iNextInt2));
                        balance += ArmyManager.lArmy.get(((ArmyRegiment) arrayList3.get(iNextInt2)).uID).get(((ArmyRegiment) arrayList3.get(iNextInt2)).aID).MaintenanceCost;
                        arrayList3.remove(iNextInt2);
                        if (balance > f2) {
                            Game.getProvince(civ.getArmyPosition(i3)).disbandRegiment(army2.key, arrayList4);
                            arrayList3.clear();
                            return;
                        }
                    }
                    Game.getProvince(civ.getArmyPosition(i3)).disbandRegiment(army2.key, arrayList4);
                    arrayList3.clear();
                    if (balance > f2) {
                        return;
                    }
                }
            }
        }
    }
}
