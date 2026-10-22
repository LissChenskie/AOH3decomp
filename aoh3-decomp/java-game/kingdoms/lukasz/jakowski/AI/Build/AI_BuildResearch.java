package aoc.kingdoms.lukasz.jakowski.AI.Build;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_BuildResearch {
    public static final boolean buildResearchBuilding(int i, int i2) {
        Civilization civ = Game.getCiv(i);
        if (civ.fResearchPerMonth >= TechnologyTree.getMaxResearch(i)) {
            if (Game.oR.nextInt(100) < Game.aiValuesBuild.BUILD_MAX_RESEARCH_UPGRADE_CAPITAL_CHANCE && civ.getCapitalLevel() < Game.getCapital_MaxLvl(i) && civ.fGold > Game.getCapital_Cost(i)) {
                civ.upgradeCapitalCity();
            }
            return false;
        }
        float f = civ.fResearchPerMonth;
        for (int i3 = 0; i3 < civ.getNumOfProvinces(); i3++) {
            for (int i4 = 0; i4 < Game.getProvince(civ.getProvinceID(i3)).iBuildingsConstructionSize; i4++) {
                if (BuildingsManager.buildings.get(Game.getProvince(civ.getProvinceID(i3)).buildingsConstruction.get(i4).getBuilding()).ResearchPoints != null) {
                    f += BuildingsManager.buildings.get(Game.getProvince(civ.getProvinceID(i3)).buildingsConstruction.get(i4).getBuilding()).ResearchPoints[Game.getProvince(civ.getProvinceID(i3)).buildingsConstruction.get(i4).getBuildingID()];
                }
            }
        }
        float maxResearch = TechnologyTree.getMaxResearch(i);
        if (f >= maxResearch) {
            return true;
        }
        float researchCost = ((Game.getCiv(i).fTotalIncomePerMonth + civ.civBonuses.MonthlyIncome) * Game.aiValuesBuild.MAX_RESEARCH_EXPENSES_PERC_OF_INCOME) - Game.getResearchCost(i, f);
        if (researchCost < 0.0f) {
            return true;
        }
        List<AI_Build.Building> unlockedBuildings = AI_Build.getUnlockedBuildings(i, AI_Build.research);
        if (unlockedBuildings.isEmpty()) {
            return false;
        }
        int buildingsAIScore_BestID = AI_Build.getBuildingsAIScore_BestID(i, unlockedBuildings, AI_Build.getBuildingsAIScore(i, unlockedBuildings));
        for (int i5 = 0; i5 < civ.getNumOfProvinces(); i5++) {
            int provinceID = civ.getProvinceID(i5);
            if (Game.getProvince(provinceID).buildingBuilt(unlockedBuildings.get(buildingsAIScore_BestID).building, unlockedBuildings.get(buildingsAIScore_BestID).buildingID) || Game.getProvince(provinceID).isUnderConstruction(unlockedBuildings.get(buildingsAIScore_BestID).building, unlockedBuildings.get(buildingsAIScore_BestID).buildingID)) {
                Game.getProvince(provinceID).aiBuildScore = -999999.0f;
            } else {
                AI_Build.buildProvince_AIBuildScore_Default(i, provinceID);
                if (Game.getProvince(provinceID).aiBuildScore > 0.0f) {
                    AI_Build.buildProvince_AIBuildScore_ProvinceMaintenance(provinceID);
                    AI_Build.buildProvince_AIBuildScore_DistanceToCapital(provinceID);
                    AI_Build.buildProvince_AIBuildScore_GrowthRateResearch(provinceID);
                }
            }
        }
        float f2 = f;
        int i6 = i2;
        while (true) {
            int i7 = i6 - 1;
            if (i6 > 0) {
                int i8 = 0;
                for (int i9 = 1; i9 < civ.getNumOfProvinces(); i9++) {
                    if (Game.getProvince(civ.getProvinceID(i8)).aiBuildScore < Game.getProvince(civ.getProvinceID(i9)).aiBuildScore || (Game.getProvince(civ.getProvinceID(i8)).aiBuildScore == Game.getProvince(civ.getProvinceID(i9)).aiBuildScore && Game.oR.nextInt(100) < 50)) {
                        i8 = i9;
                    }
                }
                int provinceID2 = civ.getProvinceID(i8);
                if (Game.getProvince(provinceID2).aiBuildScore > 0.0f) {
                    Game.getProvince(provinceID2).aiBuildScore = -999999.0f;
                    if (!Game.getProvince(provinceID2).addBuildingConstruction(unlockedBuildings.get(buildingsAIScore_BestID).building, unlockedBuildings.get(buildingsAIScore_BestID).buildingID)) {
                        return true;
                    }
                    if (BuildingsManager.buildings.get(unlockedBuildings.get(buildingsAIScore_BestID).building).ResearchPoints != null) {
                        f2 += BuildingsManager.buildings.get(unlockedBuildings.get(buildingsAIScore_BestID).building).ResearchPoints[unlockedBuildings.get(buildingsAIScore_BestID).buildingID];
                        if (f2 >= maxResearch) {
                            return true;
                        }
                        researchCost -= Game.getResearchCost(i, BuildingsManager.buildings.get(unlockedBuildings.get(buildingsAIScore_BestID).building).ResearchPoints[unlockedBuildings.get(buildingsAIScore_BestID).buildingID]);
                        if (researchCost < 0.0f) {
                            return true;
                        }
                    }
                    if (BuildingsManager.buildings.get(unlockedBuildings.get(buildingsAIScore_BestID).building).MaintenanceCost != null && BuildingsManager.buildings.get(unlockedBuildings.get(buildingsAIScore_BestID).building).MaintenanceCost[unlockedBuildings.get(buildingsAIScore_BestID).buildingID] > 0.0f && AI_Build.balance_StopBuildingConstruction_Research(i)) {
                        return true;
                    }
                    i6 = i7;
                }
            }
            return true;
        }
    }
}
