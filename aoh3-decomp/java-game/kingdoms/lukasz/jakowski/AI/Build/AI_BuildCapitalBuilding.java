package aoc.kingdoms.lukasz.jakowski.AI.Build;

import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_BuildCapitalBuilding {
    public static final boolean buildBuilding(int i, int i2) {
        if (Game.oR.nextInt(100) < Game.aiValuesBuild.BUILD_CHANGE_UPGRADE_CAPITAL_BUILDING_CHANCE) {
            upgradeCapitalBuilding(i);
        }
        List<AI_Build.Building> unlockedBuildings = AI_Build.getUnlockedBuildings(i, AI_Build.capitalBuildings);
        for (int size = unlockedBuildings.size() - 1; size >= 0; size--) {
            if (Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).buildingBuilt(unlockedBuildings.get(size).building, unlockedBuildings.get(size).buildingID)) {
                unlockedBuildings.remove(size);
            }
        }
        if (unlockedBuildings.isEmpty()) {
            upgradeCapitalBuilding(i);
            return false;
        }
        int buildingsAIScore_BestID = AI_Build.getBuildingsAIScore_BestID(i, unlockedBuildings, AI_Build.getBuildingsAIScore(i, unlockedBuildings));
        Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).addBuildingConstruction(unlockedBuildings.get(buildingsAIScore_BestID).building, unlockedBuildings.get(buildingsAIScore_BestID).buildingID);
        return true;
    }

    public static int chooseBuildingType() {
        int iNextInt = Game.oR.nextInt(Game.aiValuesBuild.BUILD_SCORE_CAPITAL_TOTAL);
        int i = 0;
        for (int i2 = 0; i2 < Game.aiValuesBuild.BUILD_SCORE_CAPITAL.length; i2++) {
            i += Game.aiValuesBuild.BUILD_SCORE_CAPITAL[i2];
            if (iNextInt < i) {
                return i2;
            }
        }
        return 0;
    }

    public static final void upgradeCapitalBuilding(int i) {
        int iChooseBuildingType = chooseBuildingType();
        if (iChooseBuildingType == 0) {
            if (Game.getCiv(i).getCapitalLevel() >= Game.getCapital_MaxLvl(i) || Game.getCiv(i).fGold <= Game.getCapital_Cost(i)) {
                return;
            }
            Game.getCiv(i).upgradeCapitalCity();
            return;
        }
        if (iChooseBuildingType == 1) {
            if (Game.getCiv(i).getMilitaryAcademyLevel() >= Game.getMilitaryAcademy_MaxLvl(i) || Game.getCiv(i).fGold <= Game.getMilitaryAcademy_Cost(i)) {
                return;
            }
            Game.getCiv(i).upgradeMilitaryAcademy();
            return;
        }
        if (iChooseBuildingType == 2) {
            if (Game.getCiv(i).getMilitaryAcademyForGeneralsLevel() >= Game.getMilitaryAcademyForGenerals_MaxLvl(i) || Game.getCiv(i).fGold <= Game.getMilitaryAcademyForGenerals_Cost(i)) {
                return;
            }
            Game.getCiv(i).upgradeMilitaryAcademyForGenerals();
            return;
        }
        if (iChooseBuildingType == 3 && Game.getCiv(i).getSupremeCourtLevel() < Game.getSupremeCourt_MaxLvl(i) && Game.getCiv(i).fGold > Game.getSupremeCourt_Cost(i)) {
            Game.getCiv(i).upgradeSupremeCourt();
        }
    }
}
