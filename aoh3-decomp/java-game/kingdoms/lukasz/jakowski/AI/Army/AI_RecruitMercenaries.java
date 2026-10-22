package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.MercenariesManager;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.Province;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_RecruitMercenaries {
    public static void recruitMercenaries(int i) {
        if (Game.getCiv(i).fGold < ArmyManager.averageArmyCost * (GameValues.army.MERCENARIES_COST_EXTRA_PER_REGIMENT + (Game.getCiv(i).iRegiments > Game.getCiv(i).iRegimentsLimit ? GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER : 0.0f)) * Game.aiValuesArmies.RECRUIT_MERCENARIES_MIN_REGIMENTS) {
            return;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
            Province province = Game.getProvince(Game.getCiv(i).getProvinceID(i3));
            for (int i4 = 0; i4 < province.getArmySize(); i4++) {
                if (DiplomacyManager.isAtWar(i, province.getArmy(i4).civID)) {
                    i2 += province.getArmy(i4).iArmyRegimentSize;
                }
            }
        }
        int i5 = (int) (i2 * Game.aiValuesArmies.RECRUIT_MERCENARIES_ENEMY_ARMIES_MODIFIER);
        if (i5 > Game.getCiv(i).iRegiments * Game.aiValuesArmies.RECRUIT_MERCENARIES_OWN_ARMIES_MODIFIER) {
            i5 -= (int) (Game.getCiv(i).iRegiments * Game.aiValuesArmies.RECRUIT_MERCENARIES_OWN_ARMIES_MODIFIER);
        }
        recruitMercenaries(i, Math.max(i5, 0));
    }

    public static void recruitMercenaries(int i, int i2) {
        if (i2 < 1) {
            return;
        }
        Civilization civ = Game.getCiv(i);
        if (civ.fGold > ArmyManager.averageArmyCost * (GameValues.army.MERCENARIES_COST_EXTRA_PER_REGIMENT + (civ.iRegiments > civ.iRegimentsLimit ? GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER : 0.0f)) * Game.aiValuesArmies.RECRUIT_MERCENARIES_MIN_REGIMENTS) {
            ArrayList arrayList = new ArrayList();
            for (int i3 = 0; i3 < civ.getNumOfProvinces(); i3++) {
                if (!Game.getProvince(civ.getProvinceID(i3)).isOccupied()) {
                    arrayList.add(Integer.valueOf(civ.getProvinceID(i3)));
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            for (int i4 = 0; i4 < Game.aiValuesArmies.RECRUIT_MERCENARIES_ACTION_LIMIT && !arrayList.isEmpty(); i4++) {
                int iNextInt = Game.oR.nextInt(arrayList.size());
                int iRecruitMercenariesArmy = recruitMercenariesArmy(i, ((Integer) arrayList.get(iNextInt)).intValue());
                if (iRecruitMercenariesArmy == 0 || (i2 = i2 - iRecruitMercenariesArmy) >= 0) {
                    return;
                }
                if (arrayList.size() > Game.aiValuesArmies.RECRUIT_MERCENARIES_ACTION_LIMIT) {
                    arrayList.remove(iNextInt);
                }
            }
        }
    }

    private static int recruitMercenariesArmy(int i, int i2) {
        List<MercenariesManager.MercenaryArmy> mercenaryArmies = MercenariesManager.getMercenaryArmies(i);
        for (int size = mercenaryArmies.size() - 1; size >= 0; size--) {
            if (Game.getCiv(i).fGold > mercenaryArmies.get(size).iCost) {
                MercenariesManager.recruitMercenaries(i, i2, mercenaryArmies.get(size));
                return mercenaryArmies.get(size).iUnitID.size();
            }
        }
        return 0;
    }
}
