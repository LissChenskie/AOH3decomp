package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AdvantagesManager {
    public static List<String> advantagesGroups = new ArrayList();
    public static int iAdvantagesGroupsSize = 0;
    public static List<Image> advantagesImages = new ArrayList();
    public static List<Advantage> advantages = new ArrayList();
    public static int iAdvantagesSize = 0;

    public static class Advantage {
        public int AI;
        public float[] AdministrationBuildingsCost;
        public float[] AdvisorCost;
        public int[] AdvisorMaxLevel;
        public int[] AdvisorPoolSize;
        public float[] AggressiveExpansion;
        public int[] AllCharactersLifeExpectancy;
        public float[] ArmyMaintenance;
        public float[] ArmyMoraleRecovery;
        public float[] ArmyMovementSpeed;
        public int[] BattleWidth;
        public int[] BuildingSlot;
        public float[] BuildingsMaintenanceCost;
        public float[] ConstructionCost;
        public float[] ConstructionTime;
        public float[] CoreCost;
        public float[] Devastation;
        public float[] DevelopInfrastructureCost;
        public float[] DiplomacyPoints;
        public float[] Discipline;
        public float[] DiseaseDeathRate;
        public float[] EconomyBuildingsCost;
        public int[] GeneralAttack;
        public float[] GeneralCost;
        public int[] GeneralDefense;
        public float[] Gold;
        public int GroupID;
        public float[] GrowthRate;
        public int[] ImageID;
        public float[] ImproveRelationsModifier;
        public float[] IncomeFromVassals;
        public float[] IncomeProduction;
        public float[] IncreaseGrowthRateCost;
        public float[] IncreaseManpowerCost;
        public float[] IncreaseTaxEfficiencyCost;
        public float[] InvestInEconomyCost;
        public float[] LoanInterest;
        public float[] Loot;
        public float[] ManpowerRecoveryFromADisbandedArmy;
        public float[] ManpowerRecoverySpeed;
        public int[] MaxInfrastructure;
        public int[] MaxManpower;
        public float[] MaxMorale;
        public int[] MaxNumOfAlliances;
        public int[] MaxNumberOfLoans;
        public float[] MaximumAmountOfGold;
        public float[] MaximumAmountOfGold_Percentage;
        public int[] MaximumLevelOfCapitalCity;
        public int[] MaximumLevelOfTheMilitaryAcademy;
        public int[] MaximumLevelOfTheMilitaryAcademyForGenerals;
        public int[] MaximumLevelOfTheSupremeCourt;
        public float[] MilitaryBuildingsCost;
        public float[] MonthlyIncome;
        public float[] MonthlyLegacy;
        public float[] ProductionEfficiency;
        public float[] ProvinceMaintenance;
        public float[] RecruitArmyCost;
        public float[] RecruitArmyFirstLineCost;
        public float[] RecruitArmySecondLineCost;
        public float[] RecruitmentTime;
        public int[] RegimentsLimit;
        public float[] ReinforcementSpeed;
        public float[] ReligionCost;
        public int RequiredTechID;
        public float[] Research;
        public float[] ResearchPoints;
        public float[] SiegeEffectiveness;
        public float[] TaxEfficiency;
        public int[] UnitsAttack;
        public int[] UnitsDefense;
        public float[] WarScoreCost;
        public float[] WonderConstructionCost;
    }

    public static class ConfigAdvantageData {
        public ArrayList Advantage;
        public String Age_of_History;
    }

    public static String getAdvantageName(int i) {
        if (advantages.get(i).ConstructionCost != null) {
            return Game.lang.get("ConstructionCost");
        }
        if (advantages.get(i).AdministrationBuildingsCost != null) {
            return Game.lang.get("AdministrationBuildingsCost");
        }
        if (advantages.get(i).MilitaryBuildingsCost != null) {
            return Game.lang.get("MilitaryBuildingsCost");
        }
        if (advantages.get(i).EconomyBuildingsCost != null) {
            return Game.lang.get("EconomyBuildingsCost");
        }
        if (advantages.get(i).ConstructionTime != null) {
            return Game.lang.get("ConstructionTime");
        }
        if (advantages.get(i).WonderConstructionCost != null) {
            return Game.lang.get(TGqtTWl.xPIoBXa);
        }
        if (advantages.get(i).TaxEfficiency != null) {
            return Game.lang.get("TaxEfficiency");
        }
        if (advantages.get(i).ProvinceMaintenance != null) {
            return Game.lang.get("ProvinceMaintenance");
        }
        if (advantages.get(i).BuildingsMaintenanceCost != null) {
            return Game.lang.get("BuildingsMaintenanceCost");
        }
        if (advantages.get(i).ManpowerRecoverySpeed != null) {
            return Game.lang.get("ManpowerRecoverySpeed");
        }
        if (advantages.get(i).ArmyMoraleRecovery != null) {
            return Game.lang.get("ArmyMoraleRecovery");
        }
        if (advantages.get(i).WarScoreCost != null) {
            return Game.lang.get("WarScoreCost");
        }
        if (advantages.get(i).ReinforcementSpeed != null) {
            return Game.lang.get("ReinforcementSpeed");
        }
        if (advantages.get(i).MaxManpower != null) {
            return Game.lang.get("MaximumManpower");
        }
        if (advantages.get(i).Research != null) {
            return Game.lang.get("Research");
        }
        if (advantages.get(i).ResearchPoints != null) {
            return Game.lang.get("ResearchPerMonth");
        }
        if (advantages.get(i).BuildingSlot != null) {
            return Game.lang.get("AdditionalBuildingsInProvince");
        }
        if (advantages.get(i).MaxInfrastructure != null) {
            return Game.lang.get(CaiJWNfqszJNZ.FfQlEjPNIAqCXI);
        }
        if (advantages.get(i).Devastation != null) {
            return Game.lang.get("Devastation");
        }
        if (advantages.get(i).GrowthRate != null) {
            return Game.lang.get("GrowthRate");
        }
        if (advantages.get(i).MonthlyIncome != null) {
            return Game.lang.get("MonthlyIncome");
        }
        if (advantages.get(i).Gold != null) {
            return Game.lang.get("Gold");
        }
        if (advantages.get(i).MonthlyLegacy != null) {
            return Game.lang.get("MonthlyLegacy");
        }
        if (advantages.get(i).IncomeProduction != null) {
            return Game.lang.get("IncomeProduction");
        }
        if (advantages.get(i).ProductionEfficiency != null) {
            return Game.lang.get("ProductionEfficiency");
        }
        if (advantages.get(i).InvestInEconomyCost != null) {
            return Game.lang.get("InvestInEconomyCost");
        }
        if (advantages.get(i).IncreaseManpowerCost != null) {
            return Game.lang.get("IncreaseManpowerCost");
        }
        if (advantages.get(i).IncreaseTaxEfficiencyCost != null) {
            return Game.lang.get("IncreaseTaxEfficiencyCost");
        }
        if (advantages.get(i).IncreaseGrowthRateCost != null) {
            return Game.lang.get("IncreaseGrowthRateCost");
        }
        if (advantages.get(i).DevelopInfrastructureCost != null) {
            return Game.lang.get("DevelopInfrastructureCost");
        }
        if (advantages.get(i).GeneralAttack != null) {
            return Game.lang.get("GeneralsAttack");
        }
        if (advantages.get(i).GeneralDefense != null) {
            return Game.lang.get("GeneralsDefense");
        }
        if (advantages.get(i).UnitsAttack != null) {
            return Game.lang.get("UnitsAttack");
        }
        if (advantages.get(i).UnitsDefense != null) {
            return Game.lang.get("UnitsDefense");
        }
        if (advantages.get(i).MaxMorale != null) {
            return Game.lang.get("MaxMorale");
        }
        if (advantages.get(i).ArmyMovementSpeed != null) {
            return Game.lang.get("ArmyMovementSpeed");
        }
        if (advantages.get(i).SiegeEffectiveness != null) {
            return Game.lang.get(ATsAGKCnv.HmXOlJvpGLthXv);
        }
        if (advantages.get(i).ImproveRelationsModifier != null) {
            return Game.lang.get("ImproveRelationsModifier");
        }
        if (advantages.get(i).IncomeFromVassals != null) {
            return Game.lang.get(fiRhHJntP.jGhNDrAFK);
        }
        if (advantages.get(i).LoanInterest != null) {
            return Game.lang.get("LoanInterest");
        }
        if (advantages.get(i).DiplomacyPoints != null) {
            return Game.lang.get("DiplomacyPoints");
        }
        if (advantages.get(i).RecruitmentTime != null) {
            return Game.lang.get("RecruitmentTime");
        }
        if (advantages.get(i).RecruitArmyCost != null) {
            return Game.lang.get("ArmyRecruitmentCost");
        }
        if (advantages.get(i).RecruitArmyFirstLineCost != null) {
            return Game.lang.get("FirstLineArmyRecruitmentCost");
        }
        if (advantages.get(i).RecruitArmySecondLineCost != null) {
            return Game.lang.get("SecondLineArmyRecruitmentCost");
        }
        if (advantages.get(i).ArmyMaintenance != null) {
            return Game.lang.get("ArmyMaintenance");
        }
        if (advantages.get(i).CoreCost != null) {
            return Game.lang.get("CoreConstruction");
        }
        if (advantages.get(i).ReligionCost != null) {
            return Game.lang.get("ReligionConversionCost");
        }
        if (advantages.get(i).MaxNumOfAlliances != null) {
            return Game.lang.get("MaxNumOfAlliances");
        }
        if (advantages.get(i).AdvisorMaxLevel != null) {
            return Game.lang.get("MaximumAdvisorSkillLevel");
        }
        if (advantages.get(i).AdvisorPoolSize != null) {
            return Game.lang.get("AdvisorPool");
        }
        if (advantages.get(i).MaxNumberOfLoans != null) {
            return Game.lang.get("MaximumNumberOfLoans");
        }
        if (advantages.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals != null) {
            return Game.lang.get("MaximumLevelOfTheMilitaryAcademyForGenerals");
        }
        if (advantages.get(i).MaximumLevelOfTheMilitaryAcademy != null) {
            return Game.lang.get("MaximumLevelOfTheMilitaryAcademy");
        }
        if (advantages.get(i).MaximumLevelOfTheSupremeCourt != null) {
            return Game.lang.get("MaximumLevelOfTheSupremeCourt");
        }
        if (advantages.get(i).MaximumLevelOfCapitalCity != null) {
            return Game.lang.get("MaximumLevelOfCapitalCity");
        }
        if (advantages.get(i).AggressiveExpansion != null) {
            return Game.lang.get("AggressiveExpansion");
        }
        if (advantages.get(i).DiseaseDeathRate != null) {
            return Game.lang.get("DiseasesDeathRate");
        }
        if (advantages.get(i).ManpowerRecoveryFromADisbandedArmy != null) {
            return Game.lang.get("ManpowerRecoveryFromADisbandedArmy");
        }
        if (advantages.get(i).AdvisorCost != null) {
            return Game.lang.get("AdvisorCost");
        }
        if (advantages.get(i).GeneralCost != null) {
            return Game.lang.get("GeneralCost");
        }
        if (advantages.get(i).Discipline != null) {
            return Game.lang.get("Discipline");
        }
        if (advantages.get(i).MaximumAmountOfGold == null && advantages.get(i).MaximumAmountOfGold_Percentage == null) {
            if (advantages.get(i).Loot != null) {
                return Game.lang.get("Loot");
            }
            if (advantages.get(i).BattleWidth != null) {
                return Game.lang.get("BattleWidth");
            }
            if (advantages.get(i).RegimentsLimit != null) {
                return Game.lang.get("RegimentsLimit");
            }
            return advantages.get(i).AllCharactersLifeExpectancy != null ? Game.lang.get("AllCharactersLifeExpectancy") : "--";
        }
        return Game.lang.get("MaximumAmountOfGold");
    }

    private static final List<Integer> getRandomAdvantages() {
        ArrayList arrayList = new ArrayList();
        int iNextInt = GameValues.advantages.ADVANTAGES_RANDOM_INIT;
        int i = 0;
        if (GameValues.advantages.ADVANTAGES_RANDOM_INIT_RANDOM > 1) {
            iNextInt += Game.oR.nextInt(GameValues.advantages.ADVANTAGES_RANDOM_INIT_RANDOM);
        }
        while (true) {
            int i2 = i + 1;
            if (i >= 49 || arrayList.size() >= iNextInt) {
                break;
            }
            int iNextInt2 = Game.oR.nextInt(iAdvantagesSize);
            if (!arrayList.contains(Integer.valueOf(iNextInt2))) {
                arrayList.add(Integer.valueOf(iNextInt2));
            }
            i = i2;
        }
        return arrayList;
    }

    public static final void initAdvantagePoints() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).setAdvantagePoints(GameValues.advantages.ADVANTAGE_POINTS_START_GAME + (GameValues.advantages.ADVANTAGE_POINTS_START_GAME_RANDOM > 0 ? Game.oR.nextInt(GameValues.advantages.ADVANTAGE_POINTS_START_GAME_RANDOM) : 0));
        }
    }

    public static final void initRandomAdvantages() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            List<Integer> randomAdvantages = getRandomAdvantages();
            int size = randomAdvantages.size();
            for (int i2 = 0; i2 < size; i2++) {
                Game.getCiv(i).addAdvantage(randomAdvantages.get(i2).intValue(), 0);
                updateCivBonuses(randomAdvantages.get(i2).intValue(), 0, i);
            }
        }
    }

    public static final void loadAdvantages() {
        for (String str : FileManager.loadFile("game/advantages/AdvantagesGroups.txt").readString().split(";")) {
            advantagesGroups.add(Game.lang.get(str));
        }
        iAdvantagesGroupsSize = advantagesGroups.size();
        try {
            String string = FileManager.loadFile("game/advantages/Advantages.json").readString();
            Json json = new Json();
            json.setElementType(ConfigAdvantageData.class, "Advantage", Advantage.class);
            Iterator it = ((ConfigAdvantageData) json.fromJson(ConfigAdvantageData.class, string)).Advantage.iterator();
            while (it.hasNext()) {
                advantages.add((Advantage) it.next());
            }
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        iAdvantagesSize = advantages.size();
        loadAdvantagesImages();
    }

    public static final void loadAdvantagesImages() {
        int i = Integer.parseInt(FileManager.loadFile("game/advantages/advantagesImages/numOfImages.txt").readString());
        for (int i2 = 0; i2 < i; i2++) {
            if (FileManager.loadFile("game/advantages/advantagesImages/" + CFG.getRescouresPath_Short() + i2 + ".png").exists()) {
                advantagesImages.add(new Image(ImageManager.loadTexture_RGB888("game/advantages/advantagesImages/" + CFG.getRescouresPath_Short() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
            } else {
                advantagesImages.add(new Image(ImageManager.loadTexture_RGB888("game/advantages/advantagesImages/" + CFG.getRescouresPath_Short_H() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
            }
        }
    }

    public static final boolean unlockAdvantage(int i, int i2) {
        int advantageLvl = Game.getCiv(i).getAdvantageLvl(i2) + 1;
        if (Game.getCiv(i).getAdvantagePoints() <= 0 || Game.getCiv(i).haveAdvantage(i2, advantageLvl) || !Game.getCiv(i).canUnlockAdvantage(i2, advantageLvl)) {
            return false;
        }
        Game.getCiv(i).setAdvantagePoints(Math.max(0, Game.getCiv(i).getAdvantagePoints() - 1));
        Game.getCiv(i).addAdvantage(i2, advantageLvl);
        updateCivBonuses(i2, advantageLvl, i);
        return true;
    }

    public static final boolean unlockAdvantage(int i, int i2, int i3) {
        if (Game.getCiv(i).getAdvantagePoints() <= 0 || Game.getCiv(i).haveAdvantage(i2, i3) || !Game.getCiv(i).canUnlockAdvantage(i2, i3)) {
            return false;
        }
        Game.getCiv(i).setAdvantagePoints(Math.max(0, Game.getCiv(i).getAdvantagePoints() - 1));
        Game.getCiv(i).addAdvantage(i2, i3);
        updateCivBonuses(i2, i3, i);
        return true;
    }

    public static final void updateCivBonuses(int i, int i2, int i3) {
        updateCivBonuses(i, i2, i3, false);
    }

    public static final void updateCivBonuses(int i, int i2, int i3, boolean z) {
        if (i2 >= advantages.get(i).ImageID.length) {
            return;
        }
        if (advantages.get(i).TaxEfficiency != null) {
            Game.getCiv(i3).civBonuses.TaxEfficiency += advantages.get(i).TaxEfficiency[i2];
        }
        if (advantages.get(i).ProvinceMaintenance != null) {
            Game.getCiv(i3).civBonuses.ProvinceMaintenance += advantages.get(i).ProvinceMaintenance[i2];
        }
        if (advantages.get(i).BuildingsMaintenanceCost != null) {
            Game.getCiv(i3).civBonuses.BuildingsMaintenanceCost += advantages.get(i).BuildingsMaintenanceCost[i2];
        }
        if (advantages.get(i).ConstructionTime != null) {
            Game.getCiv(i3).civBonuses.ConstructionTime += advantages.get(i).ConstructionTime[i2];
        }
        if (advantages.get(i).ConstructionCost != null) {
            Game.getCiv(i3).civBonuses.ConstructionCost += advantages.get(i).ConstructionCost[i2];
        }
        if (advantages.get(i).AdministrationBuildingsCost != null) {
            Game.getCiv(i3).civBonuses.AdministrationBuildingsCost += advantages.get(i).AdministrationBuildingsCost[i2];
        }
        if (advantages.get(i).MilitaryBuildingsCost != null) {
            Game.getCiv(i3).civBonuses.MilitaryBuildingsCost += advantages.get(i).MilitaryBuildingsCost[i2];
        }
        if (advantages.get(i).EconomyBuildingsCost != null) {
            Game.getCiv(i3).civBonuses.EconomyBuildingsCost += advantages.get(i).EconomyBuildingsCost[i2];
        }
        if (advantages.get(i).WonderConstructionCost != null) {
            Game.getCiv(i3).civBonuses.WonderConstructionCost += advantages.get(i).WonderConstructionCost[i2];
        }
        if (advantages.get(i).MaxManpower != null) {
            Game.getCiv(i3).civBonuses.MaxManpower += advantages.get(i).MaxManpower[i2];
            Game.gameThreadTurns.addCivUpdateMaxManpower(i3);
        }
        if (advantages.get(i).ManpowerRecoverySpeed != null) {
            Game.getCiv(i3).civBonuses.ManpowerRecoverySpeed += advantages.get(i).ManpowerRecoverySpeed[i2];
            Game.gameThreadTurns.addCivUpdateMaxManpower(i3);
        }
        if (advantages.get(i).ArmyMoraleRecovery != null) {
            Game.getCiv(i3).civBonuses.ArmyMoraleRecovery += advantages.get(i).ArmyMoraleRecovery[i2];
        }
        if (advantages.get(i).WarScoreCost != null) {
            Game.getCiv(i3).civBonuses.WarScoreCost += advantages.get(i).WarScoreCost[i2];
        }
        if (advantages.get(i).Research != null) {
            Game.getCiv(i3).civBonuses.Research += advantages.get(i).Research[i2];
            Game.gameThread.addCivUpdateResearchPerMonth(i3);
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i3);
        }
        if (advantages.get(i).ResearchPoints != null) {
            Game.getCiv(i3).civBonuses.ResearchPoints += advantages.get(i).ResearchPoints[i2];
            Game.gameThread.addCivUpdateResearchPerMonth(i3);
        }
        if (advantages.get(i).Devastation != null) {
            Game.getCiv(i3).civBonuses.Devastation += advantages.get(i).Devastation[i2];
        }
        if (advantages.get(i).BuildingSlot != null) {
            Game.getCiv(i3).civBonuses.BuildingSlot += advantages.get(i).BuildingSlot[i2];
            Game.getCiv(i3).updateBuildingLimit();
        }
        if (advantages.get(i).MaxInfrastructure != null) {
            Game.getCiv(i3).civBonuses.MaxInfrastructure += advantages.get(i).MaxInfrastructure[i2];
            Game.getCiv(i3).updateInfrastructureMax();
        }
        if (advantages.get(i).MonthlyIncome != null) {
            Game.getCiv(i3).civBonuses.MonthlyIncome += advantages.get(i).MonthlyIncome[i2];
        }
        if (advantages.get(i).Gold != null && !z) {
            Game.getCiv(i3).fGold += advantages.get(i).Gold[i2];
        }
        if (advantages.get(i).MonthlyLegacy != null) {
            Game.getCiv(i3).civBonuses.MonthlyLegacy += advantages.get(i).MonthlyLegacy[i2];
            Game.gameThread.addCivUpdateLegacyPerMonth(i3);
        }
        if (advantages.get(i).GrowthRate != null) {
            Game.getCiv(i3).civBonuses.GrowthRate += advantages.get(i).GrowthRate[i2];
            Game.getCiv(i3).updateResearchPerMonth();
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i3);
        }
        if (advantages.get(i).IncomeProduction != null) {
            Game.getCiv(i3).civBonuses.IncomeProduction += advantages.get(i).IncomeProduction[i2];
        }
        if (advantages.get(i).ProductionEfficiency != null) {
            Game.getCiv(i3).civBonuses.ProductionEfficiency += advantages.get(i).ProductionEfficiency[i2];
        }
        if (advantages.get(i).IncreaseManpowerCost != null) {
            Game.getCiv(i3).civBonuses.IncreaseManpowerCost += advantages.get(i).IncreaseManpowerCost[i2];
        }
        if (advantages.get(i).InvestInEconomyCost != null) {
            Game.getCiv(i3).civBonuses.InvestInEconomyCost += advantages.get(i).InvestInEconomyCost[i2];
        }
        if (advantages.get(i).IncreaseTaxEfficiencyCost != null) {
            Game.getCiv(i3).civBonuses.IncreaseTaxEfficiencyCost += advantages.get(i).IncreaseTaxEfficiencyCost[i2];
        }
        if (advantages.get(i).IncreaseGrowthRateCost != null) {
            Game.getCiv(i3).civBonuses.IncreaseGrowthRateCost += advantages.get(i).IncreaseGrowthRateCost[i2];
        }
        if (advantages.get(i).DevelopInfrastructureCost != null) {
            Game.getCiv(i3).civBonuses.DevelopInfrastructureCost += advantages.get(i).DevelopInfrastructureCost[i2];
        }
        if (advantages.get(i).GeneralAttack != null) {
            Game.getCiv(i3).civBonuses.GeneralAttack += advantages.get(i).GeneralAttack[i2];
        }
        if (advantages.get(i).GeneralDefense != null) {
            Game.getCiv(i3).civBonuses.GeneralDefense += advantages.get(i).GeneralDefense[i2];
        }
        if (advantages.get(i).UnitsAttack != null) {
            Game.getCiv(i3).civBonuses.UnitsAttack += advantages.get(i).UnitsAttack[i2];
        }
        if (advantages.get(i).UnitsDefense != null) {
            Game.getCiv(i3).civBonuses.UnitsDefense += advantages.get(i).UnitsDefense[i2];
        }
        if (advantages.get(i).MaxMorale != null) {
            Game.getCiv(i3).civBonuses.MaxMorale += advantages.get(i).MaxMorale[i2];
        }
        if (advantages.get(i).ArmyMovementSpeed != null) {
            Game.getCiv(i3).civBonuses.ArmyMovementSpeed += advantages.get(i).ArmyMovementSpeed[i2];
        }
        if (advantages.get(i).SiegeEffectiveness != null) {
            Game.getCiv(i3).civBonuses.SiegeEffectiveness += advantages.get(i).SiegeEffectiveness[i2];
        }
        if (advantages.get(i).ImproveRelationsModifier != null) {
            Game.getCiv(i3).civBonuses.ImproveRelationsModifier += advantages.get(i).ImproveRelationsModifier[i2];
        }
        if (advantages.get(i).IncomeFromVassals != null) {
            Game.getCiv(i3).civBonuses.IncomeFromVassals += advantages.get(i).IncomeFromVassals[i2];
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i3);
        }
        if (advantages.get(i).DiplomacyPoints != null) {
            Game.getCiv(i3).civBonuses.DiplomacyPoints += advantages.get(i).DiplomacyPoints[i2];
            Game.getCiv(i3).updateDiplomacyPerMonth();
        }
        if (advantages.get(i).LoanInterest != null) {
            Game.getCiv(i3).civBonuses.LoanInterest += advantages.get(i).LoanInterest[i2];
        }
        if (advantages.get(i).MaxNumberOfLoans != null) {
            Game.getCiv(i3).civBonuses.MaxNumberOfLoans += advantages.get(i).MaxNumberOfLoans[i2];
        }
        if (advantages.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals != null) {
            Game.getCiv(i3).civBonuses.MaximumLevelOfTheMilitaryAcademyForGenerals += advantages.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals[i2];
        }
        if (advantages.get(i).MaximumLevelOfTheMilitaryAcademy != null) {
            Game.getCiv(i3).civBonuses.MaximumLevelOfTheMilitaryAcademy += advantages.get(i).MaximumLevelOfTheMilitaryAcademy[i2];
        }
        if (advantages.get(i).MaximumLevelOfTheSupremeCourt != null) {
            Game.getCiv(i3).civBonuses.MaximumLevelOfTheSupremeCourt += advantages.get(i).MaximumLevelOfTheSupremeCourt[i2];
        }
        if (advantages.get(i).MaximumLevelOfCapitalCity != null) {
            Game.getCiv(i3).civBonuses.MaximumLevelOfCapitalCity += advantages.get(i).MaximumLevelOfCapitalCity[i2];
        }
        if (advantages.get(i).RecruitmentTime != null) {
            Game.getCiv(i3).civBonuses.RecruitmentTime += advantages.get(i).RecruitmentTime[i2];
        }
        if (advantages.get(i).CoreCost != null) {
            Game.getCiv(i3).civBonuses.CoreCost += advantages.get(i).CoreCost[i2];
        }
        if (advantages.get(i).ReligionCost != null) {
            Game.getCiv(i3).civBonuses.ReligionCost += advantages.get(i).ReligionCost[i2];
        }
        if (advantages.get(i).RecruitArmyCost != null) {
            Game.getCiv(i3).civBonuses.RecruitArmyCost += advantages.get(i).RecruitArmyCost[i2];
        }
        if (advantages.get(i).RecruitArmyFirstLineCost != null) {
            Game.getCiv(i3).civBonuses.RecruitArmyFirstLineCost += advantages.get(i).RecruitArmyFirstLineCost[i2];
        }
        if (advantages.get(i).RecruitArmySecondLineCost != null) {
            Game.getCiv(i3).civBonuses.RecruitArmySecondLineCost += advantages.get(i).RecruitArmySecondLineCost[i2];
        }
        if (advantages.get(i).ArmyMaintenance != null) {
            Game.getCiv(i3).civBonuses.ArmyMaintenance += advantages.get(i).ArmyMaintenance[i2];
            Game.gameThread.addCivUpdateArmyMaintenance(i3);
        }
        if (advantages.get(i).MaxNumOfAlliances != null) {
            Game.getCiv(i3).civBonuses.MaxNumOfAlliances += advantages.get(i).MaxNumOfAlliances[i2];
        }
        if (advantages.get(i).AdvisorMaxLevel != null) {
            Game.getCiv(i3).civBonuses.AdvisorMaxLevel += advantages.get(i).AdvisorMaxLevel[i2];
        }
        if (advantages.get(i).AdvisorPoolSize != null) {
            Game.getCiv(i3).civBonuses.AdvisorPoolSize += advantages.get(i).AdvisorPoolSize[i2];
        }
        if (advantages.get(i).AdvisorCost != null) {
            Game.getCiv(i3).civBonuses.AdvisorCost += advantages.get(i).AdvisorCost[i2];
        }
        if (advantages.get(i).GeneralCost != null) {
            Game.getCiv(i3).civBonuses.GeneralCost += advantages.get(i).GeneralCost[i2];
        }
        if (advantages.get(i).AggressiveExpansion != null) {
            Game.getCiv(i3).civBonuses.AggressiveExpansion += advantages.get(i).AggressiveExpansion[i2];
        }
        if (advantages.get(i).DiseaseDeathRate != null) {
            Game.getCiv(i3).civBonuses.DiseaseDeathRate += advantages.get(i).DiseaseDeathRate[i2];
        }
        if (advantages.get(i).ManpowerRecoveryFromADisbandedArmy != null) {
            Game.getCiv(i3).civBonuses.ManpowerRecoveryFromADisbandedArmy += advantages.get(i).ManpowerRecoveryFromADisbandedArmy[i2];
        }
        if (advantages.get(i).BattleWidth != null) {
            Game.getCiv(i3).civBonuses.BattleWidth += advantages.get(i).BattleWidth[i2];
        }
        if (advantages.get(i).AllCharactersLifeExpectancy != null) {
            Game.getCiv(i3).civBonuses.AllCharactersLifeExpectancy += advantages.get(i).AllCharactersLifeExpectancy[i2];
        }
        if (advantages.get(i).Discipline != null) {
            Game.getCiv(i3).civBonuses.Discipline += advantages.get(i).Discipline[i2];
        }
        if (advantages.get(i).MaximumAmountOfGold != null) {
            Game.getCiv(i3).civBonuses.MaximumAmountOfGold += advantages.get(i).MaximumAmountOfGold[i2];
        }
        if (advantages.get(i).MaximumAmountOfGold_Percentage != null) {
            Game.getCiv(i3).civBonuses.MaximumAmountOfGold_Percentage += advantages.get(i).MaximumAmountOfGold_Percentage[i2];
        }
        if (advantages.get(i).Loot != null) {
            Game.getCiv(i3).civBonuses.Loot += advantages.get(i).Loot[i2];
        }
        if (advantages.get(i).RegimentsLimit != null) {
            Game.getCiv(i3).civBonuses.RegimentsLimit += advantages.get(i).RegimentsLimit[i2];
            Game.getCiv(i3).updateRegimentsLimit();
        }
        Game.getCiv(i3).updateProvincesIncomeAndExpenses();
    }
}
