package aoc.kingdoms.lukasz.map.civilization;

import androidx.core.internal.oiV.CoLRpi;
import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CivilizationBonusesSerializer implements Json.Serializer<CivilizationBonuses> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public CivilizationBonuses read(Json json, JsonValue jsonValue, Class cls) {
        CivilizationBonuses civilizationBonuses = new CivilizationBonuses();
        civilizationBonuses.TempTurnID = jsonValue.getInt("TempTurnID", 0);
        civilizationBonuses.MonthlyIncome = jsonValue.getFloat("MonthlyIncome", 0.0f);
        civilizationBonuses.TaxEfficiency = jsonValue.getFloat("TaxEfficiency", 0.0f);
        civilizationBonuses.ProvinceMaintenance = jsonValue.getFloat("ProvinceMaintenance", 0.0f);
        civilizationBonuses.BuildingsMaintenanceCost = jsonValue.getFloat("BuildingsMaintenanceCost", 0.0f);
        civilizationBonuses.GrowthRate = jsonValue.getFloat("GrowthRate", 0.0f);
        civilizationBonuses.MaintenanceCost = jsonValue.getFloat("MaintenanceCost", 0.0f);
        civilizationBonuses.ProductionEfficiency = jsonValue.getFloat("ProductionEfficiency", 0.0f);
        civilizationBonuses.IncomeProduction = jsonValue.getFloat("IncomeProduction", 0.0f);
        civilizationBonuses.IncomeTaxation = jsonValue.getFloat("IncomeTaxation", 0.0f);
        civilizationBonuses.IncomeEconomy = jsonValue.getFloat("IncomeEconomy", 0.0f);
        civilizationBonuses.MonthlyLegacy = jsonValue.getFloat("MonthlyLegacy", 0.0f);
        civilizationBonuses.MonthlyLegacy_Percentage = jsonValue.getFloat("MonthlyLegacy_Percentage", 0.0f);
        civilizationBonuses.MaxManpower = jsonValue.getFloat(IwYCCQBuFGwl.UdCFJIAt, 0.0f);
        civilizationBonuses.MaxManpower_Percentage = jsonValue.getFloat("MaxManpower_Percentage", 0.0f);
        civilizationBonuses.ManpowerRecoverySpeed = jsonValue.getFloat("ManpowerRecoverySpeed", 0.0f);
        civilizationBonuses.ReinforcementSpeed = jsonValue.getFloat("ReinforcementSpeed", 0.0f);
        civilizationBonuses.ArmyMoraleRecovery = jsonValue.getFloat("ArmyMoraleRecovery", 0.0f);
        civilizationBonuses.WarScoreCost = jsonValue.getFloat("WarScoreCost", 0.0f);
        civilizationBonuses.ArmyMaintenance = jsonValue.getFloat("ArmyMaintenance", 0.0f);
        civilizationBonuses.RecruitmentTime = jsonValue.getFloat("RecruitmentTime", 0.0f);
        civilizationBonuses.RecruitArmyCost = jsonValue.getFloat("RecruitArmyCost", 0.0f);
        civilizationBonuses.RecruitArmyFirstLineCost = jsonValue.getFloat("RecruitArmyFirstLineCost", 0.0f);
        civilizationBonuses.RecruitArmySecondLineCost = jsonValue.getFloat("RecruitArmySecondLineCost", 0.0f);
        civilizationBonuses.Research = jsonValue.getFloat("Research", 0.0f);
        civilizationBonuses.ResearchPoints = jsonValue.getFloat("ResearchPoints", 0.0f);
        civilizationBonuses.TechnologyCost = jsonValue.getFloat("TechnologyCost", 0.0f);
        civilizationBonuses.ConstructionCost = jsonValue.getFloat("ConstructionCost", 0.0f);
        civilizationBonuses.AdministrationBuildingsCost = jsonValue.getFloat("AdministrationBuildingsCost", 0.0f);
        civilizationBonuses.MilitaryBuildingsCost = jsonValue.getFloat("MilitaryBuildingsCost", 0.0f);
        civilizationBonuses.EconomyBuildingsCost = jsonValue.getFloat("EconomyBuildingsCost", 0.0f);
        civilizationBonuses.WonderConstructionCost = jsonValue.getFloat("WonderConstructionCost", 0.0f);
        civilizationBonuses.ConstructionTime = jsonValue.getFloat("ConstructionTime", 0.0f);
        civilizationBonuses.BuildingSlot = jsonValue.getInt("BuildingSlot", 0);
        civilizationBonuses.MaxInfrastructure = jsonValue.getInt("MaxInfrastructure", 0);
        civilizationBonuses.InvestInEconomyCost = jsonValue.getFloat("InvestInEconomyCost", 0.0f);
        civilizationBonuses.IncreaseManpowerCost = jsonValue.getFloat("IncreaseManpowerCost", 0.0f);
        civilizationBonuses.IncreaseTaxEfficiencyCost = jsonValue.getFloat("IncreaseTaxEfficiencyCost", 0.0f);
        civilizationBonuses.DevelopInfrastructureCost = jsonValue.getFloat("DevelopInfrastructureCost", 0.0f);
        civilizationBonuses.IncreaseGrowthRateCost = jsonValue.getFloat("IncreaseGrowthRateCost", 0.0f);
        civilizationBonuses.GeneralAttack = jsonValue.getInt("GeneralAttack", 0);
        civilizationBonuses.GeneralDefense = jsonValue.getInt("GeneralDefense", 0);
        civilizationBonuses.UnitsAttack = jsonValue.getInt("UnitsAttack", 0);
        civilizationBonuses.UnitsDefense = jsonValue.getInt("UnitsDefense", 0);
        civilizationBonuses.MaxMorale = jsonValue.getFloat("MaxMorale", 0.0f);
        civilizationBonuses.ArmyMovementSpeed = jsonValue.getFloat("ArmyMovementSpeed", 0.0f);
        civilizationBonuses.SiegeEffectiveness = jsonValue.getFloat("SiegeEffectiveness", 0.0f);
        civilizationBonuses.ImproveRelationsModifier = jsonValue.getFloat("ImproveRelationsModifier", 0.0f);
        civilizationBonuses.IncomeFromVassals = jsonValue.getFloat("IncomeFromVassals", 0.0f);
        civilizationBonuses.LoanInterest = jsonValue.getFloat("LoanInterest", 0.0f);
        civilizationBonuses.AggressiveExpansion = jsonValue.getFloat("AggressiveExpansion", 0.0f);
        civilizationBonuses.MaxNumOfAlliances = jsonValue.getInt("MaxNumOfAlliances", 0);
        civilizationBonuses.RevolutionaryRisk = jsonValue.getFloat("RevolutionaryRisk", 0.0f);
        civilizationBonuses.CoreCost = jsonValue.getFloat("CoreCost", 0.0f);
        civilizationBonuses.ReligionCost = jsonValue.getFloat("ReligionCost", 0.0f);
        civilizationBonuses.AdvisorCost = jsonValue.getFloat("AdvisorCost", 0.0f);
        civilizationBonuses.GeneralCost = jsonValue.getFloat("GeneralCost", 0.0f);
        civilizationBonuses.AdvisorMaxLevel = jsonValue.getInt("AdvisorMaxLevel", 0);
        civilizationBonuses.AdvisorPoolSize = jsonValue.getInt("AdvisorPoolSize", 0);
        civilizationBonuses.MaxNumberOfLoans = jsonValue.getInt("MaxNumberOfLoans", 0);
        civilizationBonuses.DiseaseDeathRate = jsonValue.getFloat("DiseaseDeathRate", 0.0f);
        civilizationBonuses.DiplomacyPoints = jsonValue.getFloat("DiplomacyPoints", 0.0f);
        civilizationBonuses.Devastation = jsonValue.getFloat("Devastation", 0.0f);
        civilizationBonuses.MaximumLevelOfTheMilitaryAcademyForGenerals = jsonValue.getInt("MaximumLevelOfTheMilitaryAcademyForGenerals", 0);
        civilizationBonuses.MaximumLevelOfTheMilitaryAcademy = jsonValue.getInt("MaximumLevelOfTheMilitaryAcademy", 0);
        civilizationBonuses.MaximumLevelOfTheSupremeCourt = jsonValue.getInt("MaximumLevelOfTheSupremeCourt", 0);
        civilizationBonuses.MaximumLevelOfNuclearReactor = jsonValue.getInt("MaximumLevelOfNuclearReactor", 0);
        civilizationBonuses.MaximumLevelOfCapitalCity = jsonValue.getInt("MaximumLevelOfCapitalCity", 0);
        civilizationBonuses.BattleWidth = jsonValue.getInt("BattleWidth", 0);
        civilizationBonuses.Discipline = jsonValue.getFloat("Discipline", 0.0f);
        civilizationBonuses.ManpowerRecoveryFromADisbandedArmy = jsonValue.getFloat("ManpowerRecoveryFromADisbandedArmy", 0.0f);
        civilizationBonuses.MaximumAmountOfGold = jsonValue.getFloat("MaximumAmountOfGold", 0.0f);
        civilizationBonuses.MaximumAmountOfGold_Percentage = jsonValue.getFloat("MaximumAmountOfGold_Percentage", 0.0f);
        civilizationBonuses.Loot = jsonValue.getFloat("Loot", 0.0f);
        civilizationBonuses.AllCharactersLifeExpectancy = jsonValue.getInt("AllCharactersLifeExpectancy", 0);
        civilizationBonuses.RegimentsLimit = jsonValue.getInt("RegimentsLimit", 0);
        civilizationBonuses.Inflation = jsonValue.getFloat("Inflation", 0.0f);
        civilizationBonuses.Corruption = jsonValue.getFloat("Corruption", 0.0f);
        return civilizationBonuses;
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, CivilizationBonuses civilizationBonuses, Class cls) {
        json.writeObjectStart();
        if (civilizationBonuses.TempTurnID != 0 && civilizationBonuses.TempTurnID != 1000000) {
            json.writeValue("TempTurnID", Integer.valueOf(civilizationBonuses.TempTurnID));
        }
        if (civilizationBonuses.MonthlyIncome != 0.0f) {
            json.writeValue("MonthlyIncome", Float.valueOf(civilizationBonuses.MonthlyIncome));
        }
        if (civilizationBonuses.TaxEfficiency != 0.0f) {
            json.writeValue("TaxEfficiency", Float.valueOf(civilizationBonuses.TaxEfficiency));
        }
        if (civilizationBonuses.ProvinceMaintenance != 0.0f) {
            json.writeValue("ProvinceMaintenance", Float.valueOf(civilizationBonuses.ProvinceMaintenance));
        }
        if (civilizationBonuses.BuildingsMaintenanceCost != 0.0f) {
            json.writeValue("BuildingsMaintenanceCost", Float.valueOf(civilizationBonuses.BuildingsMaintenanceCost));
        }
        if (civilizationBonuses.GrowthRate != 0.0f) {
            json.writeValue("GrowthRate", Float.valueOf(civilizationBonuses.GrowthRate));
        }
        if (civilizationBonuses.MaintenanceCost != 0.0f) {
            json.writeValue("MaintenanceCost", Float.valueOf(civilizationBonuses.MaintenanceCost));
        }
        if (civilizationBonuses.ProductionEfficiency != 0.0f) {
            json.writeValue("ProductionEfficiency", Float.valueOf(civilizationBonuses.ProductionEfficiency));
        }
        if (civilizationBonuses.IncomeProduction != 0.0f) {
            json.writeValue("IncomeProduction", Float.valueOf(civilizationBonuses.IncomeProduction));
        }
        if (civilizationBonuses.IncomeTaxation != 0.0f) {
            json.writeValue("IncomeTaxation", Float.valueOf(civilizationBonuses.IncomeTaxation));
        }
        if (civilizationBonuses.IncomeEconomy != 0.0f) {
            json.writeValue("IncomeEconomy", Float.valueOf(civilizationBonuses.IncomeEconomy));
        }
        if (civilizationBonuses.MonthlyLegacy != 0.0f) {
            json.writeValue("MonthlyLegacy", Float.valueOf(civilizationBonuses.MonthlyLegacy));
        }
        if (civilizationBonuses.MonthlyLegacy_Percentage != 0.0f) {
            json.writeValue("MonthlyLegacy_Percentage", Float.valueOf(civilizationBonuses.MonthlyLegacy_Percentage));
        }
        if (civilizationBonuses.MaxManpower != 0.0f) {
            json.writeValue("MaxManpower", Float.valueOf(civilizationBonuses.MaxManpower));
        }
        if (civilizationBonuses.MaxManpower_Percentage != 0.0f) {
            json.writeValue("MaxManpower_Percentage", Float.valueOf(civilizationBonuses.MaxManpower_Percentage));
        }
        if (civilizationBonuses.ManpowerRecoverySpeed != 0.0f) {
            json.writeValue("ManpowerRecoverySpeed", Float.valueOf(civilizationBonuses.ManpowerRecoverySpeed));
        }
        if (civilizationBonuses.ReinforcementSpeed != 0.0f) {
            json.writeValue("ReinforcementSpeed", Float.valueOf(civilizationBonuses.ReinforcementSpeed));
        }
        if (civilizationBonuses.ArmyMoraleRecovery != 0.0f) {
            json.writeValue("ArmyMoraleRecovery", Float.valueOf(civilizationBonuses.ArmyMoraleRecovery));
        }
        if (civilizationBonuses.WarScoreCost != 0.0f) {
            json.writeValue("WarScoreCost", Float.valueOf(civilizationBonuses.WarScoreCost));
        }
        if (civilizationBonuses.ArmyMaintenance != 0.0f) {
            json.writeValue("ArmyMaintenance", Float.valueOf(civilizationBonuses.ArmyMaintenance));
        }
        if (civilizationBonuses.RecruitmentTime != 0.0f) {
            json.writeValue("RecruitmentTime", Float.valueOf(civilizationBonuses.RecruitmentTime));
        }
        if (civilizationBonuses.RecruitArmyCost != 0.0f) {
            json.writeValue("RecruitArmyCost", Float.valueOf(civilizationBonuses.RecruitArmyCost));
        }
        if (civilizationBonuses.RecruitArmyFirstLineCost != 0.0f) {
            json.writeValue("RecruitArmyFirstLineCost", Float.valueOf(civilizationBonuses.RecruitArmyFirstLineCost));
        }
        if (civilizationBonuses.RecruitArmySecondLineCost != 0.0f) {
            json.writeValue("RecruitArmySecondLineCost", Float.valueOf(civilizationBonuses.RecruitArmySecondLineCost));
        }
        if (civilizationBonuses.Research != 0.0f) {
            json.writeValue("Research", Float.valueOf(civilizationBonuses.Research));
        }
        if (civilizationBonuses.ResearchPoints != 0.0f) {
            json.writeValue("ResearchPoints", Float.valueOf(civilizationBonuses.ResearchPoints));
        }
        if (civilizationBonuses.TechnologyCost != 0.0f) {
            json.writeValue("TechnologyCost", Float.valueOf(civilizationBonuses.TechnologyCost));
        }
        if (civilizationBonuses.ConstructionCost != 0.0f) {
            json.writeValue("ConstructionCost", Float.valueOf(civilizationBonuses.ConstructionCost));
        }
        if (civilizationBonuses.AdministrationBuildingsCost != 0.0f) {
            json.writeValue("AdministrationBuildingsCost", Float.valueOf(civilizationBonuses.AdministrationBuildingsCost));
        }
        if (civilizationBonuses.MilitaryBuildingsCost != 0.0f) {
            json.writeValue("MilitaryBuildingsCost", Float.valueOf(civilizationBonuses.MilitaryBuildingsCost));
        }
        if (civilizationBonuses.EconomyBuildingsCost != 0.0f) {
            json.writeValue(ATsAGKCnv.HPlzsBVwT, Float.valueOf(civilizationBonuses.EconomyBuildingsCost));
        }
        if (civilizationBonuses.WonderConstructionCost != 0.0f) {
            json.writeValue("WonderConstructionCost", Float.valueOf(civilizationBonuses.WonderConstructionCost));
        }
        if (civilizationBonuses.ConstructionTime != 0.0f) {
            json.writeValue("ConstructionTime", Float.valueOf(civilizationBonuses.ConstructionTime));
        }
        if (civilizationBonuses.BuildingSlot != 0) {
            json.writeValue("BuildingSlot", Integer.valueOf(civilizationBonuses.BuildingSlot));
        }
        if (civilizationBonuses.MaxInfrastructure != 0) {
            json.writeValue("MaxInfrastructure", Integer.valueOf(civilizationBonuses.MaxInfrastructure));
        }
        if (civilizationBonuses.InvestInEconomyCost != 0.0f) {
            json.writeValue("InvestInEconomyCost", Float.valueOf(civilizationBonuses.InvestInEconomyCost));
        }
        if (civilizationBonuses.IncreaseManpowerCost != 0.0f) {
            json.writeValue("IncreaseManpowerCost", Float.valueOf(civilizationBonuses.IncreaseManpowerCost));
        }
        if (civilizationBonuses.IncreaseTaxEfficiencyCost != 0.0f) {
            json.writeValue("IncreaseTaxEfficiencyCost", Float.valueOf(civilizationBonuses.IncreaseTaxEfficiencyCost));
        }
        if (civilizationBonuses.DevelopInfrastructureCost != 0.0f) {
            json.writeValue("DevelopInfrastructureCost", Float.valueOf(civilizationBonuses.DevelopInfrastructureCost));
        }
        if (civilizationBonuses.IncreaseGrowthRateCost != 0.0f) {
            json.writeValue("IncreaseGrowthRateCost", Float.valueOf(civilizationBonuses.IncreaseGrowthRateCost));
        }
        if (civilizationBonuses.GeneralAttack != 0) {
            json.writeValue("GeneralAttack", Integer.valueOf(civilizationBonuses.GeneralAttack));
        }
        if (civilizationBonuses.GeneralDefense != 0) {
            json.writeValue("GeneralDefense", Integer.valueOf(civilizationBonuses.GeneralDefense));
        }
        if (civilizationBonuses.UnitsAttack != 0) {
            json.writeValue(hQfu.SJMrvIgfRRxVLW, Integer.valueOf(civilizationBonuses.UnitsAttack));
        }
        if (civilizationBonuses.UnitsDefense != 0) {
            json.writeValue("UnitsDefense", Integer.valueOf(civilizationBonuses.UnitsDefense));
        }
        if (civilizationBonuses.MaxMorale != 0.0f) {
            json.writeValue("MaxMorale", Float.valueOf(civilizationBonuses.MaxMorale));
        }
        if (civilizationBonuses.ArmyMovementSpeed != 0.0f) {
            json.writeValue("ArmyMovementSpeed", Float.valueOf(civilizationBonuses.ArmyMovementSpeed));
        }
        if (civilizationBonuses.SiegeEffectiveness != 0.0f) {
            json.writeValue("SiegeEffectiveness", Float.valueOf(civilizationBonuses.SiegeEffectiveness));
        }
        if (civilizationBonuses.ImproveRelationsModifier != 0.0f) {
            json.writeValue("ImproveRelationsModifier", Float.valueOf(civilizationBonuses.ImproveRelationsModifier));
        }
        if (civilizationBonuses.IncomeFromVassals != 0.0f) {
            json.writeValue("IncomeFromVassals", Float.valueOf(civilizationBonuses.IncomeFromVassals));
        }
        if (civilizationBonuses.LoanInterest != 0.0f) {
            json.writeValue("LoanInterest", Float.valueOf(civilizationBonuses.LoanInterest));
        }
        if (civilizationBonuses.AggressiveExpansion != 0.0f) {
            json.writeValue("AggressiveExpansion", Float.valueOf(civilizationBonuses.AggressiveExpansion));
        }
        if (civilizationBonuses.MaxNumOfAlliances != 0) {
            json.writeValue("MaxNumOfAlliances", Integer.valueOf(civilizationBonuses.MaxNumOfAlliances));
        }
        if (civilizationBonuses.RevolutionaryRisk != 0.0f) {
            json.writeValue("RevolutionaryRisk", Float.valueOf(civilizationBonuses.RevolutionaryRisk));
        }
        if (civilizationBonuses.CoreCost != 0.0f) {
            json.writeValue("CoreCost", Float.valueOf(civilizationBonuses.CoreCost));
        }
        if (civilizationBonuses.ReligionCost != 0.0f) {
            json.writeValue("ReligionCost", Float.valueOf(civilizationBonuses.ReligionCost));
        }
        if (civilizationBonuses.AdvisorCost != 0.0f) {
            json.writeValue("AdvisorCost", Float.valueOf(civilizationBonuses.AdvisorCost));
        }
        if (civilizationBonuses.GeneralCost != 0.0f) {
            json.writeValue(CoLRpi.FUHRuvescfq, Float.valueOf(civilizationBonuses.GeneralCost));
        }
        if (civilizationBonuses.AdvisorMaxLevel != 0) {
            json.writeValue("AdvisorMaxLevel", Integer.valueOf(civilizationBonuses.AdvisorMaxLevel));
        }
        if (civilizationBonuses.AdvisorPoolSize != 0) {
            json.writeValue("AdvisorPoolSize", Integer.valueOf(civilizationBonuses.AdvisorPoolSize));
        }
        if (civilizationBonuses.MaxNumberOfLoans != 0) {
            json.writeValue("MaxNumberOfLoans", Integer.valueOf(civilizationBonuses.MaxNumberOfLoans));
        }
        if (civilizationBonuses.DiseaseDeathRate != 0.0f) {
            json.writeValue("DiseaseDeathRate", Float.valueOf(civilizationBonuses.DiseaseDeathRate));
        }
        if (civilizationBonuses.DiplomacyPoints != 0.0f) {
            json.writeValue("DiplomacyPoints", Float.valueOf(civilizationBonuses.DiplomacyPoints));
        }
        if (civilizationBonuses.Devastation != 0.0f) {
            json.writeValue(QefTqRjwAJmEDy.JFWfOadq, Float.valueOf(civilizationBonuses.Devastation));
        }
        if (civilizationBonuses.MaximumLevelOfTheMilitaryAcademyForGenerals != 0) {
            json.writeValue("MaximumLevelOfTheMilitaryAcademyForGenerals", Integer.valueOf(civilizationBonuses.MaximumLevelOfTheMilitaryAcademyForGenerals));
        }
        if (civilizationBonuses.MaximumLevelOfTheMilitaryAcademy != 0) {
            json.writeValue("MaximumLevelOfTheMilitaryAcademy", Integer.valueOf(civilizationBonuses.MaximumLevelOfTheMilitaryAcademy));
        }
        if (civilizationBonuses.MaximumLevelOfTheSupremeCourt != 0) {
            json.writeValue("MaximumLevelOfTheSupremeCourt", Integer.valueOf(civilizationBonuses.MaximumLevelOfTheSupremeCourt));
        }
        if (civilizationBonuses.MaximumLevelOfNuclearReactor != 0) {
            json.writeValue("MaximumLevelOfNuclearReactor", Integer.valueOf(civilizationBonuses.MaximumLevelOfNuclearReactor));
        }
        if (civilizationBonuses.MaximumLevelOfCapitalCity != 0) {
            json.writeValue("MaximumLevelOfCapitalCity", Integer.valueOf(civilizationBonuses.MaximumLevelOfCapitalCity));
        }
        if (civilizationBonuses.BattleWidth != 0) {
            json.writeValue("BattleWidth", Integer.valueOf(civilizationBonuses.BattleWidth));
        }
        if (civilizationBonuses.Discipline != 0.0f) {
            json.writeValue("Discipline", Float.valueOf(civilizationBonuses.Discipline));
        }
        if (civilizationBonuses.ManpowerRecoveryFromADisbandedArmy != 0.0f) {
            json.writeValue("ManpowerRecoveryFromADisbandedArmy", Float.valueOf(civilizationBonuses.ManpowerRecoveryFromADisbandedArmy));
        }
        if (civilizationBonuses.MaximumAmountOfGold != 0.0f) {
            json.writeValue("MaximumAmountOfGold", Float.valueOf(civilizationBonuses.MaximumAmountOfGold));
        }
        if (civilizationBonuses.MaximumAmountOfGold_Percentage != 0.0f) {
            json.writeValue("MaximumAmountOfGold_Percentage", Float.valueOf(civilizationBonuses.MaximumAmountOfGold_Percentage));
        }
        if (civilizationBonuses.Loot != 0.0f) {
            json.writeValue("Loot", Float.valueOf(civilizationBonuses.Loot));
        }
        if (civilizationBonuses.AllCharactersLifeExpectancy != 0) {
            json.writeValue("AllCharactersLifeExpectancy", Integer.valueOf(civilizationBonuses.AllCharactersLifeExpectancy));
        }
        if (civilizationBonuses.RegimentsLimit != 0) {
            json.writeValue("RegimentsLimit", Integer.valueOf(civilizationBonuses.RegimentsLimit));
        }
        if (civilizationBonuses.Inflation != 0.0f) {
            json.writeValue(CoLRpi.BPTQ, Float.valueOf(civilizationBonuses.Inflation));
        }
        if (civilizationBonuses.Corruption != 0.0f) {
            json.writeValue("Corruption", Float.valueOf(civilizationBonuses.Corruption));
        }
        json.writeObjectEnd();
    }
}
