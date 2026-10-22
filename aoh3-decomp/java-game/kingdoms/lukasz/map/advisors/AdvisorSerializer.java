package aoc.kingdoms.lukasz.map.advisors;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AdvisorSerializer implements Json.Serializer<Advisor> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.badlogic.gdx.utils.Json.Serializer
    public Advisor read(Json json, JsonValue jsonValue, Class cls) {
        Advisor advisor = new Advisor();
        advisor.sName = jsonValue.getString("sName", null);
        advisor.iYearOfBirth = jsonValue.getInt("iYearOfBirth", 0);
        advisor.iMonthOfBirth = jsonValue.getInt("iMonthOfBirth", 0);
        advisor.iDayOfBirth = jsonValue.getInt("iDayOfBirth", 0);
        advisor.sIMG = jsonValue.getString("sIMG", null);
        advisor.imageID = jsonValue.getInt("imageID", 0);
        advisor.iLevel = jsonValue.getInt("iLevel", 1);
        advisor.TaxEfficiency = jsonValue.getFloat("TaxEfficiency", 0.0f);
        advisor.ProvinceMaintenance = jsonValue.getFloat("ProvinceMaintenance", 0.0f);
        advisor.GrowthRate = jsonValue.getFloat(XjthpFh.nMlUcjPZLqccbX, 0.0f);
        advisor.ProductionEfficiency = jsonValue.getFloat("ProductionEfficiency", 0.0f);
        advisor.IncomeProduction = jsonValue.getFloat("IncomeProduction", 0.0f);
        advisor.MonthlyLegacy = jsonValue.getFloat("MonthlyLegacy", 0.0f);
        advisor.MaxManpower = jsonValue.getFloat("MaxManpower", 0.0f);
        advisor.ArmyMaintenance = jsonValue.getFloat("ArmyMaintenance", 0.0f);
        advisor.RecruitmentTime = jsonValue.getFloat("RecruitmentTime", 0.0f);
        advisor.RecruitArmyCost = jsonValue.getFloat("RecruitArmyCost", 0.0f);
        advisor.Research = jsonValue.getFloat("Research", 0.0f);
        advisor.ConstructionCost = jsonValue.getFloat(lJxd.ucGbUqAqxCCE, 0.0f);
        advisor.AdministrationBuildingsCost = jsonValue.getFloat("AdministrationBuildingsCost", 0.0f);
        advisor.MilitaryBuildingsCost = jsonValue.getFloat("MilitaryBuildingsCost", 0.0f);
        advisor.EconomyBuildingsCost = jsonValue.getFloat("EconomyBuildingsCost", 0.0f);
        advisor.ConstructionTime = jsonValue.getFloat("ConstructionTime", 0.0f);
        advisor.InvestInEconomyCost = jsonValue.getFloat("InvestInEconomyCost", 0.0f);
        advisor.IncreaseManpowerCost = jsonValue.getFloat(CvuNnwgYwe.boEM, 0.0f);
        advisor.IncreaseTaxEfficiencyCost = jsonValue.getFloat("IncreaseTaxEfficiencyCost", 0.0f);
        advisor.IncreaseGrowthRateCost = jsonValue.getFloat("IncreaseGrowthRateCost", 0.0f);
        advisor.DevelopInfrastructureCost = jsonValue.getFloat("DevelopInfrastructureCost", 0.0f);
        advisor.GeneralAttack = jsonValue.getFloat("GeneralAttack", 0.0f);
        advisor.GeneralDefense = jsonValue.getFloat("GeneralDefense", 0.0f);
        advisor.UnitsAttack = jsonValue.getFloat("UnitsAttack", 0.0f);
        advisor.UnitsDefense = jsonValue.getFloat("UnitsDefense", 0.0f);
        advisor.MaxMorale = jsonValue.getFloat("MaxMorale", 0.0f);
        advisor.ArmyMovementSpeed = jsonValue.getFloat("ArmyMovementSpeed", 0.0f);
        advisor.SiegeEffectiveness = jsonValue.getFloat("SiegeEffectiveness", 0.0f);
        advisor.ImproveRelationsModifier = jsonValue.getFloat("ImproveRelationsModifier", 0.0f);
        advisor.LoanInterest = jsonValue.getFloat("LoanInterest", 0.0f);
        advisor.CoreCost = jsonValue.getFloat("CoreCost", 0.0f);
        advisor.ReligionCost = jsonValue.getFloat("ReligionCost", 0.0f);
        advisor.RegimentsLimit = jsonValue.getInt("RegimentsLimit", 0);
        return advisor;
    }

    @Override // com.badlogic.gdx.utils.Json.Serializer
    public void write(Json json, Advisor advisor, Class cls) {
        json.writeObjectStart();
        if (advisor.TaxEfficiency != 0.0f) {
            json.writeValue("TaxEfficiency", Float.valueOf(advisor.TaxEfficiency));
        }
        if (advisor.ProvinceMaintenance != 0.0f) {
            json.writeValue("ProvinceMaintenance", Float.valueOf(advisor.ProvinceMaintenance));
        }
        if (advisor.GrowthRate != 0.0f) {
            json.writeValue(XjthpFh.iQEQEjgqZ, Float.valueOf(advisor.GrowthRate));
        }
        if (advisor.ProductionEfficiency != 0.0f) {
            json.writeValue("ProductionEfficiency", Float.valueOf(advisor.ProductionEfficiency));
        }
        if (advisor.IncomeProduction != 0.0f) {
            json.writeValue("IncomeProduction", Float.valueOf(advisor.IncomeProduction));
        }
        if (advisor.MonthlyLegacy != 0.0f) {
            json.writeValue("MonthlyLegacy", Float.valueOf(advisor.MonthlyLegacy));
        }
        if (advisor.MaxManpower != 0.0f) {
            json.writeValue("MaxManpower", Float.valueOf(advisor.MaxManpower));
        }
        if (advisor.ArmyMaintenance != 0.0f) {
            json.writeValue("ArmyMaintenance", Float.valueOf(advisor.ArmyMaintenance));
        }
        if (advisor.RecruitmentTime != 0.0f) {
            json.writeValue("RecruitmentTime", Float.valueOf(advisor.RecruitmentTime));
        }
        if (advisor.RecruitArmyCost != 0.0f) {
            json.writeValue("RecruitArmyCost", Float.valueOf(advisor.RecruitArmyCost));
        }
        if (advisor.Research != 0.0f) {
            json.writeValue("Research", Float.valueOf(advisor.Research));
        }
        if (advisor.ConstructionCost != 0.0f) {
            json.writeValue("ConstructionCost", Float.valueOf(advisor.ConstructionCost));
        }
        if (advisor.AdministrationBuildingsCost != 0.0f) {
            json.writeValue("AdministrationBuildingsCost", Float.valueOf(advisor.AdministrationBuildingsCost));
        }
        if (advisor.MilitaryBuildingsCost != 0.0f) {
            json.writeValue("MilitaryBuildingsCost", Float.valueOf(advisor.MilitaryBuildingsCost));
        }
        if (advisor.EconomyBuildingsCost != 0.0f) {
            json.writeValue("EconomyBuildingsCost", Float.valueOf(advisor.EconomyBuildingsCost));
        }
        if (advisor.ConstructionTime != 0.0f) {
            json.writeValue("ConstructionTime", Float.valueOf(advisor.ConstructionTime));
        }
        if (advisor.InvestInEconomyCost != 0.0f) {
            json.writeValue("InvestInEconomyCost", Float.valueOf(advisor.InvestInEconomyCost));
        }
        if (advisor.IncreaseManpowerCost != 0.0f) {
            json.writeValue("IncreaseManpowerCost", Float.valueOf(advisor.IncreaseManpowerCost));
        }
        if (advisor.IncreaseTaxEfficiencyCost != 0.0f) {
            json.writeValue("IncreaseTaxEfficiencyCost", Float.valueOf(advisor.IncreaseTaxEfficiencyCost));
        }
        if (advisor.IncreaseGrowthRateCost != 0.0f) {
            json.writeValue("IncreaseGrowthRateCost", Float.valueOf(advisor.IncreaseGrowthRateCost));
        }
        if (advisor.DevelopInfrastructureCost != 0.0f) {
            json.writeValue("DevelopInfrastructureCost", Float.valueOf(advisor.DevelopInfrastructureCost));
        }
        if (advisor.GeneralAttack != 0.0f) {
            json.writeValue("GeneralAttack", Float.valueOf(advisor.GeneralAttack));
        }
        if (advisor.GeneralDefense != 0.0f) {
            json.writeValue("GeneralDefense", Float.valueOf(advisor.GeneralDefense));
        }
        if (advisor.UnitsAttack != 0.0f) {
            json.writeValue("UnitsAttack", Float.valueOf(advisor.UnitsAttack));
        }
        if (advisor.UnitsDefense != 0.0f) {
            json.writeValue("UnitsDefense", Float.valueOf(advisor.UnitsDefense));
        }
        if (advisor.MaxMorale != 0.0f) {
            json.writeValue(cIUGJCqyPXfp.hfiVuYVaun, Float.valueOf(advisor.MaxMorale));
        }
        if (advisor.ArmyMovementSpeed != 0.0f) {
            json.writeValue("ArmyMovementSpeed", Float.valueOf(advisor.ArmyMovementSpeed));
        }
        if (advisor.SiegeEffectiveness != 0.0f) {
            json.writeValue("SiegeEffectiveness", Float.valueOf(advisor.SiegeEffectiveness));
        }
        if (advisor.ImproveRelationsModifier != 0.0f) {
            json.writeValue("ImproveRelationsModifier", Float.valueOf(advisor.ImproveRelationsModifier));
        }
        if (advisor.LoanInterest != 0.0f) {
            json.writeValue("LoanInterest", Float.valueOf(advisor.LoanInterest));
        }
        if (advisor.CoreCost != 0.0f) {
            json.writeValue("CoreCost", Float.valueOf(advisor.CoreCost));
        }
        if (advisor.ReligionCost != 0.0f) {
            json.writeValue("ReligionCost", Float.valueOf(advisor.ReligionCost));
        }
        if (advisor.RegimentsLimit != 0) {
            json.writeValue("RegimentsLimit", Integer.valueOf(advisor.RegimentsLimit));
        }
        json.writeObjectEnd();
    }
}
