package aoc.kingdoms.lukasz.map.advisors;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Advisor {
    public float AdministrationBuildingsCost;
    public float ArmyMaintenance;
    public float ArmyMovementSpeed;
    public float ConstructionCost;
    public float ConstructionTime;
    public float CoreCost;
    public float DevelopInfrastructureCost;
    public float EconomyBuildingsCost;
    public float GeneralAttack;
    public float GeneralDefense;
    public float GrowthRate;
    public float ImproveRelationsModifier;
    public float IncomeProduction;
    public float IncreaseGrowthRateCost;
    public float IncreaseManpowerCost;
    public float IncreaseTaxEfficiencyCost;
    public float InvestInEconomyCost;
    public float LoanInterest;
    public float MaxManpower;
    public float MaxMorale;
    public float MilitaryBuildingsCost;
    public float MonthlyLegacy;
    public float ProductionEfficiency;
    public float ProvinceMaintenance;
    public float RecruitArmyCost;
    public float RecruitmentTime;
    public int RegimentsLimit;
    public float ReligionCost;
    public float Research;
    public float SiegeEffectiveness;
    public float TaxEfficiency;
    public float UnitsAttack;
    public float UnitsDefense;
    public int iDayOfBirth;
    public int iLevel;
    public int iMonthOfBirth;
    public int iYearOfBirth;
    public int imageID;
    public String sIMG;
    public String sName;

    public Advisor() {
        this.sName = null;
        this.iYearOfBirth = 0;
        this.iMonthOfBirth = 0;
        this.iDayOfBirth = 0;
        this.sIMG = null;
        this.imageID = 0;
        this.iLevel = 1;
    }

    public Advisor(String str, int i, int i2, String str2) {
        this.iMonthOfBirth = 0;
        this.iDayOfBirth = 0;
        this.iLevel = 1;
        this.sName = str;
        this.imageID = i;
        this.iYearOfBirth = i2;
        this.sIMG = str2;
        this.iMonthOfBirth = Game.oR.nextInt(12) + 1;
        this.iDayOfBirth = Game.oR.nextInt(Game_Calendar.getNumOfDaysInMonth(this.iMonthOfBirth)) + 1;
    }
}
