package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_SplitArmy {
    public static String splitArmy(AI_Army_Composition aI_Army_Composition, int i, String str) {
        int armyKeyID;
        ArmyDivision army = Game.getProvince(i).getArmy(str);
        if (army == null) {
            return null;
        }
        ArmyDivision armyDivision = new ArmyDivision(army.civID, i, new ArrayList());
        if (aI_Army_Composition.numFirstLine > 0) {
            for (int i2 = army.iArmyRegimentSize - 1; i2 >= 0; i2--) {
                if (ArmyManager.lUnitsTypes.get(army.lArmyRegiment.get(i2).uID).Line == 0) {
                    armyDivision.addRegiment(army.lArmyRegiment.get(i2));
                    army.removeRegiment(i2);
                    aI_Army_Composition.numFirstLine--;
                    if (aI_Army_Composition.numFirstLine <= 0) {
                        break;
                    }
                }
            }
        }
        if (aI_Army_Composition.numFlank > 0) {
            for (int i3 = army.iArmyRegimentSize - 1; i3 >= 0; i3--) {
                if (ArmyManager.lUnitsTypes.get(army.lArmyRegiment.get(i3).uID).Line == 1) {
                    armyDivision.addRegiment(army.lArmyRegiment.get(i3));
                    army.removeRegiment(i3);
                    aI_Army_Composition.numFlank--;
                    if (aI_Army_Composition.numFlank <= 0) {
                        break;
                    }
                }
            }
        }
        if (aI_Army_Composition.numSupport > 0) {
            for (int i4 = army.iArmyRegimentSize - 1; i4 >= 0; i4--) {
                if (ArmyManager.lUnitsTypes.get(army.lArmyRegiment.get(i4).uID).Line == 2 && !ArmyManager.lArmy.get(army.lArmyRegiment.get(i4).uID).get(army.lArmyRegiment.get(i4).aID).SiegeUnit && !ArmyManager.lArmy.get(army.lArmyRegiment.get(i4).uID).get(army.lArmyRegiment.get(i4).aID).isSettler) {
                    armyDivision.addRegiment(army.lArmyRegiment.get(i4));
                    army.removeRegiment(i4);
                    aI_Army_Composition.numSupport--;
                    if (aI_Army_Composition.numSupport <= 0) {
                        break;
                    }
                }
            }
        }
        if (aI_Army_Composition.numSiege > 0) {
            for (int i5 = army.iArmyRegimentSize - 1; i5 >= 0; i5--) {
                if (ArmyManager.lUnitsTypes.get(army.lArmyRegiment.get(i5).uID).Line == 2 && ArmyManager.lArmy.get(army.lArmyRegiment.get(i5).uID).get(army.lArmyRegiment.get(i5).aID).SiegeUnit && !ArmyManager.lArmy.get(army.lArmyRegiment.get(i5).uID).get(army.lArmyRegiment.get(i5).aID).isSettler) {
                    armyDivision.addRegiment(army.lArmyRegiment.get(i5));
                    army.removeRegiment(i5);
                    aI_Army_Composition.numSiege--;
                    if (aI_Army_Composition.numSiege <= 0) {
                        break;
                    }
                }
            }
        }
        if (armyDivision.iArmyRegimentSize <= 0 || (armyKeyID = Game.getProvince(i).getArmyKeyID(str)) < 0) {
            return null;
        }
        Game.getProvince(i).updateRegiment(armyKeyID, army.lArmyRegiment);
        return Game.getProvince(i).addArmy(new ArmyDivision(army.civID, i, armyDivision.lArmyRegiment));
    }
}
