package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceBonuses;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class BonusesManager {
    public static void initAndBuildProvinceBonuses() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            Game.getProvince(i).provBonuses = new ProvinceBonuses();
        }
        for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
            if (!Game.getProvince(i2).getSeaProvince()) {
                for (int i3 = 0; i3 < Game.getProvince(i2).iBuildingsSize; i3++) {
                    updateBuildingBonuses(i2, Game.getProvince(i2).getBuildings(i3).getBuilding(), Game.getProvince(i2).getBuildings(i3).getBuildingID(), 1);
                }
            }
        }
        for (int i4 = 1; i4 < Game.getCivsSize(); i4++) {
            if (Game.getCiv(i4).getNumOfProvinces() > 0 && Game.getCiv(i4).getCapitalProvinceID() >= 0) {
                Game.getProvince(Game.getCiv(i4).getCapitalProvinceID()).setIsCapital(true, true);
            }
        }
    }

    public static void updateBuildingBonuses(int i, int i2, int i3, int i4) {
        Province province = Game.getProvince(i);
        if (!BuildingsManager.buildings.get(i2).UniqueCapitalBuilding || Game.getCiv(province.getCivID()).getCapitalProvinceID() == i) {
            if (BuildingsManager.buildings.get(i2).MonthlyLegacy != null) {
                province.provBonuses.MonthlyLegacy += BuildingsManager.buildings.get(i2).MonthlyLegacy[i3] * i4;
                if (BuildingsManager.buildings.get(i2).MonthlyLegacy[i3] != 0.0f) {
                    Game.gameThread.addCivUpdateLegacyPerMonth(province.getCivID());
                }
            }
            if (BuildingsManager.buildings.get(i2).DefenseBonus != null) {
                province.provBonuses.DefenseBonus += BuildingsManager.buildings.get(i2).DefenseBonus[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).FortLevel != null) {
                province.provBonuses.FortLevel += BuildingsManager.buildings.get(i2).FortLevel[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).FortDefense != null) {
                province.provBonuses.FortDefense += BuildingsManager.buildings.get(i2).FortDefense[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).MaximumManpower != null) {
                province.provBonuses.MaximumManpower += BuildingsManager.buildings.get(i2).MaximumManpower[i3] * i4;
                Game.gameThreadTurns.addCivUpdateMaxManpower(province.getCivID());
            }
            if (BuildingsManager.buildings.get(i2).LocalManpower != null) {
                ProvinceBonuses provinceBonuses = province.provBonuses;
                provinceBonuses.LocalManpower = (int) (provinceBonuses.LocalManpower + (BuildingsManager.buildings.get(i2).LocalManpower[i3] * i4));
                Game.gameThreadTurns.addCivUpdateMaxManpower(province.getCivID());
            }
            if (BuildingsManager.buildings.get(i2).RecruitArmyCostInProvince != null) {
                province.provBonuses.RecruitArmyCostInProvince += BuildingsManager.buildings.get(i2).RecruitArmyCostInProvince[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).LocalGrowthRate != null) {
                province.provBonuses.LocalGrowthRate += BuildingsManager.buildings.get(i2).LocalGrowthRate[i3] * i4;
                province.updateInfrastructureMax();
                if (province.haveResearchBuilding()) {
                    Game.getCiv(province.getCivID()).updateResearchPerMonth();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(province.getCivID());
                }
            }
            if (BuildingsManager.buildings.get(i2).InvestInEconomyCost != null) {
                province.provBonuses.InvestInEconomyCost += BuildingsManager.buildings.get(i2).InvestInEconomyCost[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).ConstructionTimeBonus != null) {
                province.provBonuses.ConstructionTimeBonus += BuildingsManager.buildings.get(i2).ConstructionTimeBonus[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).ConstructionCost != null) {
                province.provBonuses.ConstructionCost += BuildingsManager.buildings.get(i2).ConstructionCost[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).IncreaseGrowthRateCost != null) {
                province.provBonuses.IncreaseGrowthRateCost += BuildingsManager.buildings.get(i2).IncreaseGrowthRateCost[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).IncreaseManpowerCost != null) {
                province.provBonuses.IncreaseManpowerCost += BuildingsManager.buildings.get(i2).IncreaseManpowerCost[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).IncreaseTaxEfficiencyCost != null) {
                province.provBonuses.IncreaseTaxEfficiencyCost += BuildingsManager.buildings.get(i2).IncreaseTaxEfficiencyCost[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).DevelopInfrastructureCost != null) {
                province.provBonuses.DevelopInfrastructureCost += BuildingsManager.buildings.get(i2).DevelopInfrastructureCost[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).ProvinceMaintenance != null) {
                province.provBonuses.ProvinceMaintenance += BuildingsManager.buildings.get(i2).ProvinceMaintenance[i3] * i4;
                if (BuildingsManager.buildings.get(i2).ProvinceMaintenance[i3] != 0.0f) {
                    province.updateProvinceIncome();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(province.getCivID());
                }
            }
            if (BuildingsManager.buildings.get(i2).MaintenanceCost != null) {
                province.provBonuses.MaintenanceCost += BuildingsManager.buildings.get(i2).MaintenanceCost[i3] * i4;
                if (BuildingsManager.buildings.get(i2).MaintenanceCost[i3] != 0.0f) {
                    province.updateProvinceIncome();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(province.getCivID());
                }
            }
            if (BuildingsManager.buildings.get(i2).MonthlyIncome != null) {
                province.provBonuses.MonthlyIncome += BuildingsManager.buildings.get(i2).MonthlyIncome[i3] * i4;
                if (BuildingsManager.buildings.get(i2).MonthlyIncome[i3] != 0.0f) {
                    province.updateProvinceIncome();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(province.getCivID());
                }
            }
            if (BuildingsManager.buildings.get(i2).MaxInfrastructure != null) {
                province.provBonuses.MaxInfrastructure += BuildingsManager.buildings.get(i2).MaxInfrastructure[i3] * i4;
                province.updateInfrastructureMax();
            }
            if (BuildingsManager.buildings.get(i2).BuildingSlots != null) {
                province.provBonuses.BuildingSlots += BuildingsManager.buildings.get(i2).BuildingSlots[i3] * i4;
                province.updateBuildingLimit();
            }
            if (BuildingsManager.buildings.get(i2).LocalTaxEfficiency != null) {
                province.provBonuses.LocalTaxEfficiency += BuildingsManager.buildings.get(i2).LocalTaxEfficiency[i3] * i4;
                if (BuildingsManager.buildings.get(i2).LocalTaxEfficiency[i3] != 0.0f) {
                    province.updateProvinceIncome();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(province.getCivID());
                }
            }
            if (BuildingsManager.buildings.get(i2).ArmyMovementSpeed != null) {
                province.provBonuses.ArmyMovementSpeed += BuildingsManager.buildings.get(i2).ArmyMovementSpeed[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).DiseaseDeathRate != null) {
                province.provBonuses.DiseaseDeathRate += BuildingsManager.buildings.get(i2).DiseaseDeathRate[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).CasualtiesNuclearAttacks != null) {
                province.provBonuses.CasualtiesNuclearAttacks += BuildingsManager.buildings.get(i2).CasualtiesNuclearAttacks[i3] * i4;
            }
            if (BuildingsManager.buildings.get(i2).Economy != null) {
                province.provBonuses.Economy += BuildingsManager.buildings.get(i2).Economy[i3] * i4;
                if (BuildingsManager.buildings.get(i2).Economy[i3] != 0.0f) {
                    province.updateBuildingLimit();
                    province.updateInfrastructureMax();
                    province.updateProvinceIncome();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(province.getCivID());
                }
            }
            if (BuildingsManager.buildings.get(i2).ResearchPoints != null) {
                province.provBonuses.ResearchPoints += BuildingsManager.buildings.get(i2).ResearchPoints[i3] * i4;
                if (BuildingsManager.buildings.get(i2).ResearchPoints[i3] != 0.0f) {
                    Game.gameThread.addCivUpdateResearchPerMonth(province.getCivID());
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(province.getCivID());
                    province.updateProvinceIncome();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(province.getCivID());
                }
            }
            if (BuildingsManager.buildings.get(i2).ProductionEfficiency != null) {
                province.provBonuses.ProductionEfficiency += BuildingsManager.buildings.get(i2).ProductionEfficiency[i3] * i4;
                if (BuildingsManager.buildings.get(i2).ProductionEfficiency[i3] != 0.0f) {
                    province.updateProvinceIncome();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(province.getCivID());
                }
            }
            if (BuildingsManager.buildings.get(i2).IncomeProduction != null) {
                province.provBonuses.IncomeProduction += BuildingsManager.buildings.get(i2).IncomeProduction[i3] * i4;
                if (BuildingsManager.buildings.get(i2).IncomeProduction[i3] != 0.0f) {
                    province.updateProvinceIncome();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(province.getCivID());
                }
            }
            if (BuildingsManager.buildings.get(i2).TaxEfficiency != null) {
                Game.getCiv(province.getCivID()).civBonuses.TaxEfficiency += BuildingsManager.buildings.get(i2).TaxEfficiency[i3] * i4;
                if (BuildingsManager.buildings.get(i2).TaxEfficiency[i3] != 0.0f) {
                    province.updateProvinceIncome();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(province.getCivID());
                }
            }
        }
    }
}
