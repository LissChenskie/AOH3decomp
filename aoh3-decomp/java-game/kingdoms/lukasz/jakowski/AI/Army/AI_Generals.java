package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.AI.AI_Loan;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.GeneralManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Generals {
    public static void recruitGenerals(int i) {
        try {
            if (i != Game.player.iCivID) {
                Civilization civ = Game.getCiv(i);
                if (civ.armiesWithoutGenerals.keysSize > 0) {
                    try {
                        if (Game.getCiv(i).getGeneralsNotAssignedSize() <= 0 && Game.getCiv(i).diplomacy.isAtWar() && civ.fGold < GameValues.generals.RECRUIT_GENERAL_GOLD_COST && civ.fLegacy >= GameValues.generals.RECRUIT_GENERAL_LEGACY_COST) {
                            AI_Loan.takeLoan(i);
                        }
                        if (civ.fGold < GameValues.generals.RECRUIT_GENERAL_GOLD_COST || civ.fLegacy < GameValues.generals.RECRUIT_GENERAL_LEGACY_COST) {
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        int i2 = 0;
                        while (i2 < civ.armiesWithoutGenerals.keysSize) {
                            Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(i, civ.armiesWithoutGenerals.keys.get(i2));
                            if (armyPosFindArmy_FullCheck != null && Game.getProvince(armyPosFindArmy_FullCheck.iProvinceID).getArmy(armyPosFindArmy_FullCheck.iID).armyGeneral == null) {
                                arrayList.add(armyPosFindArmy_FullCheck);
                            } else {
                                civ.armiesWithoutGenerals.removeArmyKey(civ.armiesWithoutGenerals.keys.get(i2));
                                i2--;
                            }
                            i2++;
                        }
                        int i3 = 0;
                        while (civ.fGold >= GameValues.generals.RECRUIT_GENERAL_GOLD_COST && !civ.armiesWithoutGenerals.keys.isEmpty() && civ.fLegacy >= GameValues.generals.RECRUIT_GENERAL_LEGACY_COST && arrayList.size() > 0) {
                            int i4 = i3 + 1;
                            if (i3 >= 50) {
                                return;
                            }
                            int i5 = 0;
                            for (int i6 = 1; i6 < arrayList.size(); i6++) {
                                if (Game.getProvince(((Game.ArmyPos) arrayList.get(i5)).iProvinceID).getArmy(((Game.ArmyPos) arrayList.get(i5)).iID).iArmyRegimentSize < Game.getProvince(((Game.ArmyPos) arrayList.get(i6)).iProvinceID).getArmy(((Game.ArmyPos) arrayList.get(i6)).iID).iArmyRegimentSize) {
                                    i5 = i6;
                                }
                            }
                            if (Game.getCiv(i).getGeneralsNotAssignedSize() <= 0 || !Game.getCiv(i).assignGeneralToArmy(((Game.ArmyPos) arrayList.get(i5)).iProvinceID, ((Game.ArmyPos) arrayList.get(i5)).iID)) {
                                if (!GeneralManager.recruitGeneral_AI(i, ((Game.ArmyPos) arrayList.get(i5)).iProvinceID, ((Game.ArmyPos) arrayList.get(i5)).iID)) {
                                    return;
                                } else {
                                    arrayList.remove(i5);
                                }
                            }
                            i3 = i4;
                        }
                        return;
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                        return;
                    }
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }
}
