package aoc.kingdoms.lukasz.jakowski.AI.Build;

import aoc.kingdoms.lukasz.jakowski.AI.AI_Loan;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_BuildEconomy {
    public static final boolean buildBuilding(int i, int i2, List<AI_Build.Building> list) {
        int buildingsAIScore_BestID;
        int buildingsAIScore = AI_Build.getBuildingsAIScore(i, list);
        int buildingsAIScore_BestID2 = AI_Build.getBuildingsAIScore_BestID(i, list, buildingsAIScore);
        updateScore(i, list.get(buildingsAIScore_BestID2).building, list.get(buildingsAIScore_BestID2).buildingID);
        AI_Loan.takeLoan_Chance(i, Game.aiValues.TAKE_LOAN_CHANCE_BUILDING_ECONOMY);
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                break;
            }
            int i4 = 0;
            for (int i5 = 1; i5 < Game.getCiv(i).getNumOfProvinces(); i5++) {
                if (Game.getProvince(Game.getCiv(i).getProvinceID(i4)).aiBuildScore < Game.getProvince(Game.getCiv(i).getProvinceID(i5)).aiBuildScore || (Game.getProvince(Game.getCiv(i).getProvinceID(i4)).aiBuildScore == Game.getProvince(Game.getCiv(i).getProvinceID(i5)).aiBuildScore && Game.oR.nextInt(100) < 50)) {
                    i4 = i5;
                }
            }
            int provinceID = Game.getCiv(i).getProvinceID(i4);
            if (Game.getProvince(provinceID).aiBuildScore <= 0.0f) {
                break;
            }
            Game.getProvince(provinceID).aiBuildScore = -999999.0f;
            if (!Game.getProvince(provinceID).addBuildingConstruction(list.get(buildingsAIScore_BestID2).building, list.get(buildingsAIScore_BestID2).buildingID)) {
                return true;
            }
            if (list.size() > 1 && Game.oR.nextInt(100) < Game.aiValuesBuild.BUILD_CHANGE_BUILDING_CHANCE && buildingsAIScore_BestID2 != (buildingsAIScore_BestID = AI_Build.getBuildingsAIScore_BestID(i, list, buildingsAIScore))) {
                updateScore(i, list.get(buildingsAIScore_BestID).building, list.get(buildingsAIScore_BestID).buildingID);
                buildingsAIScore_BestID2 = buildingsAIScore_BestID;
            }
            if (BuildingsManager.buildings.get(list.get(buildingsAIScore_BestID2).building).MaintenanceCost != null && BuildingsManager.buildings.get(list.get(buildingsAIScore_BestID2).building).MaintenanceCost[list.get(buildingsAIScore_BestID2).buildingID] > 0.0f && AI_Build.balance_StopBuildingConstruction(i)) {
                return true;
            }
            i2 = i3;
        }
        return true;
    }

    public static void updateScore(int i, int i2, int i3) {
        for (int i4 = 0; i4 < Game.getCiv(i).getNumOfProvinces(); i4++) {
            int provinceID = Game.getCiv(i).getProvinceID(i4);
            if (Game.getProvince(provinceID).buildingBuilt(i2, i3) || Game.getProvince(provinceID).isUnderConstruction(i2, i3)) {
                Game.getProvince(provinceID).aiBuildScore = -999999.0f;
            } else {
                AI_Build.buildProvince_AIBuildScore_Default(i, provinceID);
                AI_Build.buildProvince_AIBuildScore_ResourcePrice(provinceID);
                if (BuildingsManager.buildings.get(i2).MaintenanceCost != null && BuildingsManager.buildings.get(i2).MaintenanceCost[i3] > 0.0f) {
                    AI_Build.buildProvince_AIBuildScore_ProvinceMaintenance(provinceID);
                }
            }
        }
    }
}
