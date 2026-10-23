package aoc.kingdoms.lukasz.map.civilization;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.GeneralManager;
import aoc.kingdoms.lukasz.map.army.ArmyGeneral;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral_Assign;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationGeneralsPool {
    public List<ArmyGeneral> lGenerals = new ArrayList();
    public int generateYear = -55000;

    public static final ArmyGeneral getGeneral_Random(int i) {
        return new ArmyGeneral(Game.generalManager.getGeneralRandomName(i) + " " + Game.generalManager.getGeneralRandomSurname(i), getRandomImage_Just(i), Game.oR.nextInt(GameValues.generals.GENERAL_ATTACK_RANDOM2) + GameValues.generals.GENERAL_ATTACK_BASE_VALUE + Game.oR.nextInt(GameValues.generals.GENERAL_ATTACK_RANDOM), Game.oR.nextInt(GameValues.generals.GENERAL_DEFENSE_RANDOM2) + GameValues.generals.GENERAL_DEFENSE_BASE_VALUE + Game.oR.nextInt(GameValues.generals.GENERAL_DEFENSE_RANDOM), (Game_Calendar.currentYear - GameValues.generals.GENERAL_YEARS_OLD_MIN) - Game.oR.nextInt(GameValues.generals.GENERAL_YEARS_OLD_RANDOM), i, null);
    }

    public static int getRandomImage_Just(int i) {
        return Game.oR.nextInt(Game.generalManager.generalsImagesSize.get(Game.getCiv(i).iGroupID).intValue());
    }

    public void clearData() {
        this.lGenerals.clear();
        this.generateYear = -55000;
    }

    public final void generateGenerals(int i) {
        for (int size = this.lGenerals.size(); size < getPoolOfGenerals(i); size++) {
            this.lGenerals.add(new ArmyGeneral(Game.generalManager.getGeneralRandomName(i) + " " + Game.generalManager.getGeneralRandomSurname(i), getRandomImage(i), Game.oR.nextInt(GameValues.generals.GENERAL_ATTACK_RANDOM2) + GameValues.generals.GENERAL_ATTACK_BASE_VALUE + Game.oR.nextInt(GameValues.generals.GENERAL_ATTACK_RANDOM), Game.oR.nextInt(GameValues.generals.GENERAL_DEFENSE_RANDOM2) + GameValues.generals.GENERAL_DEFENSE_BASE_VALUE + Game.oR.nextInt(GameValues.generals.GENERAL_DEFENSE_RANDOM), (Game_Calendar.currentYear - GameValues.generals.GENERAL_YEARS_OLD_MIN) - Game.oR.nextInt(GameValues.generals.GENERAL_YEARS_OLD_RANDOM), i, null));
        }
    }

    public int getPoolOfGenerals(int i) {
        return GameValues.generals.GENERALS_DEFAULT_POOL_SIZE;
    }

    public int getRandomImage(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < Game.generalManager.generalsImagesSize.get(Game.getCiv(i).iGroupID).intValue(); i2++) {
            arrayList.add(false);
        }
        int size = this.lGenerals.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.set(this.lGenerals.get(i3).g, true);
        }
        for (int i4 = 0; i4 < Game.getCiv(i).iGeneralsSize; i4++) {
            arrayList.set(Game.getCiv(i).getGeneralNotAssigned(i4).g, true);
        }
        for (int i5 = 0; i5 < Game.getCiv(i).iArmyPositionSize; i5++) {
            try {
                for (int i6 = 0; i6 < Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).getArmySize(); i6++) {
                    if (Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).getArmy(i6).civID == i && Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).getArmy(i6).armyGeneral != null) {
                        arrayList.set(Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).getArmy(i6).armyGeneral.g, true);
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int iIntValue = Game.generalManager.generalsImagesSize.get(Game.getCiv(i).iGroupID).intValue();
        for (int i7 = 0; i7 < iIntValue; i7++) {
            if (!((Boolean) arrayList.get(i7)).booleanValue()) {
                arrayList2.add(Integer.valueOf(i7));
            }
        }
        if (arrayList2.size() != 0) {
            return ((Integer) arrayList2.get(Game.oR.nextInt(arrayList2.size()))).intValue();
        }
        int iIntValue2 = Game.generalManager.generalsImagesSize.get(Game.getCiv(i).iGroupID).intValue();
        for (int i8 = 0; i8 < iIntValue2; i8++) {
            arrayList.set(i8, false);
        }
        int size2 = this.lGenerals.size();
        for (int i9 = 0; i9 < size2; i9++) {
            arrayList.set(this.lGenerals.get(i9).g, true);
        }
        int iIntValue3 = Game.generalManager.generalsImagesSize.get(Game.getCiv(i).iGroupID).intValue();
        for (int i10 = 0; i10 < iIntValue3; i10++) {
            if (!((Boolean) arrayList.get(i10)).booleanValue()) {
                arrayList2.add(Integer.valueOf(i10));
            }
        }
        return arrayList2.size() == 0 ? Game.oR.nextInt(Game.generalManager.generalsImagesSize.get(Game.getCiv(i).iGroupID).intValue()) : ((Integer) arrayList2.get(Game.oR.nextInt(arrayList2.size()))).intValue();
    }

    public final boolean recruitGeneralID(int i, int i2, boolean z) {
        if (i2 >= this.lGenerals.size() || Game.getCiv(i).fGold < GeneralManager.getRecruitGoldCost(i) || Game.getCiv(i).fLegacy < GeneralManager.getRecruitLegacyCost(i)) {
            return false;
        }
        Game.getCiv(i).fGold -= GeneralManager.getRecruitGoldCost(i);
        Game.getCiv(i).fLegacy -= GeneralManager.getRecruitLegacyCost(i);
        Game.getCiv(i).addGeneral(this.lGenerals.get(i2));
        if (z) {
            try {
                ButtonArmyGeneral_Assign.assignGeneral(i, this.lGenerals.get(i2).key, false);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        this.lGenerals.remove(i2);
        generateGenerals(i);
        if (i == Game.player.iCivID) {
            Game.player.playerStats.recruitedGenerals++;
            Game.stats.civStats.rg++;
        }
        return true;
    }

    public final void updatePoolOfGenerals(int i) {
        if (this.lGenerals.size() == 0) {
            generateGenerals(i);
            this.generateYear = Game_Calendar.currentYear;
        } else if (this.generateYear + GameValues.generals.GENERALS_REGENERATE_YEARS <= Game_Calendar.currentYear) {
            this.lGenerals.clear();
            generateGenerals(i);
            this.generateYear = Game_Calendar.currentYear;
        } else if (this.lGenerals.size() < getPoolOfGenerals(i)) {
            generateGenerals(i);
        }
    }
}
