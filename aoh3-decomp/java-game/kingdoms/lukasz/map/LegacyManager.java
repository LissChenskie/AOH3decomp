package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class LegacyManager {
    public static List<String> legacyGroups = new ArrayList();
    public static int iLegacyGroupsSize = 0;
    public static List<Image> legacyImages = new ArrayList();
    public static List<Legacy> legacies = new ArrayList();
    public static int iLegaciesSize = 0;
    public static int minLegacyCost = 999666;
    public static List<Integer> numOfLegaciesInGroup = new ArrayList();

    public static class ConfigLegacyData {
        public String Age_of_History;
        public ArrayList Legacy;
    }

    public static class Legacy {
        public int[] AI;
        public float[] AdministrationBuildingsCost;
        public float[] AdvisorCost;
        public int[] AdvisorMaxLevel;
        public int[] AdvisorPoolSize;
        public float[] AggressiveExpansion;
        public int[] AllCharactersLifeExpectancy;
        public float[] ArmyMovementSpeed;
        public int[] BattleWidth;
        public int[] BuildingSlot;
        public float[] BuildingsMaintenanceCost;
        public float[] ConstructionCost;
        public float[] ConstructionTime;
        public int[] CostLegacy;
        public float[] Devastation;
        public float[] DevelopInfrastructureCost;
        public float[] DiplomacyPoints;
        public float[] Discipline;
        public float[] DiseaseDeathRate;
        public float[] EconomyBuildingsCost;
        public int[] GeneralAttack;
        public float[] GeneralCost;
        public int[] GeneralDefense;
        public int GroupID;
        public float[] GrowthRate;
        public int ImageID;
        public float[] ImproveRelationsModifier;
        public float[] IncomeFromVassals;
        public float[] IncomeProduction;
        public float[] IncreaseGrowthRateCost;
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
        public int[] MaximumLevelOfCapitalCity;
        public int[] MaximumLevelOfTheMilitaryAcademy;
        public int[] MaximumLevelOfTheMilitaryAcademyForGenerals;
        public int[] MaximumLevelOfTheSupremeCourt;
        public float[] MilitaryBuildingsCost;
        public String Name;
        public float[] ProductionEfficiency;
        public float[] ProvinceMaintenance;
        public float[] RecruitmentTime;
        public int[] RegimentsLimit;
        public float[] Research;
        public float[] ResearchPoints;
        public float[] SiegeEffectiveness;
        public float[] TaxEfficiency;
        public int[] UnitsAttack;
        public int[] UnitsDefense;
        public float[] WonderConstructionCost;
    }

    public static final void loadLegacies() {
        for (String str : FileManager.loadFile("game/legacies/LegaciesGroups.txt").readString().split(";")) {
            legacyGroups.add(Game.lang.get(str));
        }
        iLegacyGroupsSize = legacyGroups.size();
        try {
            String string = FileManager.loadFile("game/legacies/Legacies.json").readString();
            Json json = new Json();
            json.setElementType(ConfigLegacyData.class, "Legacy", Legacy.class);
            Iterator it = ((ConfigLegacyData) json.fromJson(ConfigLegacyData.class, string)).Legacy.iterator();
            while (it.hasNext()) {
                legacies.add((Legacy) it.next());
            }
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        iLegaciesSize = legacies.size();
        for (int i = 0; i < iLegacyGroupsSize; i++) {
            numOfLegaciesInGroup.add(0);
        }
        for (int i2 = 0; i2 < iLegaciesSize; i2++) {
            numOfLegaciesInGroup.set(legacies.get(i2).GroupID, Integer.valueOf(numOfLegaciesInGroup.get(legacies.get(i2).GroupID).intValue() + 1));
        }
        for (int i3 = 0; i3 < iLegaciesSize; i3++) {
            for (int length = legacies.get(i3).CostLegacy.length - 1; length >= 0; length--) {
                if (legacies.get(i3).CostLegacy[length] < minLegacyCost) {
                    minLegacyCost = legacies.get(i3).CostLegacy[length];
                }
            }
        }
        loadLegacyImages();
    }

    public static final void loadLegacyImages() {
        int i = Integer.parseInt(FileManager.loadFile("game/legacies/legaciesImages/numOfImages.txt").readString());
        for (int i2 = 0; i2 < i; i2++) {
            if (FileManager.loadFile("game/legacies/legaciesImages/" + CFG.getRescouresPath_Short() + i2 + ".png").exists()) {
                legacyImages.add(new Image(ImageManager.loadTexture_RGB888("game/legacies/legaciesImages/" + CFG.getRescouresPath_Short() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
            } else {
                legacyImages.add(new Image(ImageManager.loadTexture_RGB888("game/legacies/legaciesImages/" + CFG.getRescouresPath_Short_H() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
            }
        }
    }

    public static final void updateCivBonuses(int i, int i2, int i3) {
        updateCivBonuses(i, i2, i3, false);
    }

    public static final void updateCivBonuses(int i, int i2, int i3, boolean z) {
        if (legacies.get(i).TaxEfficiency != null) {
            Game.getCiv(i3).civBonuses.TaxEfficiency += legacies.get(i).TaxEfficiency[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.TaxEfficiency -= legacies.get(i).TaxEfficiency[i2 - 1];
            }
        }
        if (legacies.get(i).ProvinceMaintenance != null) {
            Game.getCiv(i3).civBonuses.ProvinceMaintenance += legacies.get(i).ProvinceMaintenance[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.ProvinceMaintenance -= legacies.get(i).ProvinceMaintenance[i2 - 1];
            }
        }
        if (legacies.get(i).BuildingsMaintenanceCost != null) {
            Game.getCiv(i3).civBonuses.BuildingsMaintenanceCost += legacies.get(i).BuildingsMaintenanceCost[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.BuildingsMaintenanceCost -= legacies.get(i).BuildingsMaintenanceCost[i2 - 1];
            }
        }
        if (legacies.get(i).ConstructionTime != null) {
            Game.getCiv(i3).civBonuses.ConstructionTime += legacies.get(i).ConstructionTime[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.ConstructionTime -= legacies.get(i).ConstructionTime[i2 - 1];
            }
        }
        if (legacies.get(i).ConstructionCost != null) {
            Game.getCiv(i3).civBonuses.ConstructionCost += legacies.get(i).ConstructionCost[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.ConstructionCost -= legacies.get(i).ConstructionCost[i2 - 1];
            }
        }
        if (legacies.get(i).AdministrationBuildingsCost != null) {
            Game.getCiv(i3).civBonuses.AdministrationBuildingsCost += legacies.get(i).AdministrationBuildingsCost[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.AdministrationBuildingsCost -= legacies.get(i).AdministrationBuildingsCost[i2 - 1];
            }
        }
        if (legacies.get(i).MilitaryBuildingsCost != null) {
            Game.getCiv(i3).civBonuses.MilitaryBuildingsCost += legacies.get(i).MilitaryBuildingsCost[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.MilitaryBuildingsCost -= legacies.get(i).MilitaryBuildingsCost[i2 - 1];
            }
        }
        if (legacies.get(i).EconomyBuildingsCost != null) {
            Game.getCiv(i3).civBonuses.EconomyBuildingsCost += legacies.get(i).EconomyBuildingsCost[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.EconomyBuildingsCost -= legacies.get(i).EconomyBuildingsCost[i2 - 1];
            }
        }
        if (legacies.get(i).WonderConstructionCost != null) {
            Game.getCiv(i3).civBonuses.WonderConstructionCost += legacies.get(i).WonderConstructionCost[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.WonderConstructionCost -= legacies.get(i).WonderConstructionCost[i2 - 1];
            }
        }
        if (legacies.get(i).MaxManpower != null) {
            Game.getCiv(i3).civBonuses.MaxManpower += legacies.get(i).MaxManpower[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.MaxManpower -= legacies.get(i).MaxManpower[i2 - 1];
            }
            Game.gameThreadTurns.addCivUpdateMaxManpower(i3);
        }
        if (legacies.get(i).ManpowerRecoverySpeed != null) {
            Game.getCiv(i3).civBonuses.ManpowerRecoverySpeed += legacies.get(i).ManpowerRecoverySpeed[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.ManpowerRecoverySpeed -= legacies.get(i).ManpowerRecoverySpeed[i2 - 1];
            }
            Game.gameThreadTurns.addCivUpdateMaxManpower(i3);
        }
        if (legacies.get(i).Research != null) {
            Game.getCiv(i3).civBonuses.Research += legacies.get(i).Research[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.Research -= legacies.get(i).Research[i2 - 1];
            }
            Game.gameThread.addCivUpdateResearchPerMonth(i3);
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i3);
        }
        if (legacies.get(i).ResearchPoints != null) {
            Game.getCiv(i3).civBonuses.ResearchPoints += legacies.get(i).ResearchPoints[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.ResearchPoints -= legacies.get(i).ResearchPoints[i2 - 1];
            }
            Game.gameThread.addCivUpdateResearchPerMonth(i3);
        }
        if (legacies.get(i).Devastation != null) {
            Game.getCiv(i3).civBonuses.Devastation += legacies.get(i).Devastation[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.Devastation -= legacies.get(i).Devastation[i2 - 1];
            }
        }
        if (legacies.get(i).BuildingSlot != null) {
            Game.getCiv(i3).civBonuses.BuildingSlot += legacies.get(i).BuildingSlot[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.BuildingSlot -= legacies.get(i).BuildingSlot[i2 - 1];
            }
            Game.getCiv(i3).updateBuildingLimit();
        }
        if (legacies.get(i).MaxInfrastructure != null) {
            Game.getCiv(i3).civBonuses.MaxInfrastructure += legacies.get(i).MaxInfrastructure[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.MaxInfrastructure -= legacies.get(i).MaxInfrastructure[i2 - 1];
            }
            Game.getCiv(i3).updateInfrastructureMax();
        }
        if (legacies.get(i).GrowthRate != null) {
            Game.getCiv(i3).civBonuses.GrowthRate += legacies.get(i).GrowthRate[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.GrowthRate -= legacies.get(i).GrowthRate[i2 - 1];
            }
            Game.getCiv(i3).updateResearchPerMonth();
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i3);
        }
        if (legacies.get(i).IncomeProduction != null) {
            Game.getCiv(i3).civBonuses.IncomeProduction += legacies.get(i).IncomeProduction[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.IncomeProduction -= legacies.get(i).IncomeProduction[i2 - 1];
            }
        }
        if (legacies.get(i).ProductionEfficiency != null) {
            Game.getCiv(i3).civBonuses.ProductionEfficiency += legacies.get(i).ProductionEfficiency[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.ProductionEfficiency -= legacies.get(i).ProductionEfficiency[i2 - 1];
            }
        }
        if (legacies.get(i).InvestInEconomyCost != null) {
            Game.getCiv(i3).civBonuses.InvestInEconomyCost += legacies.get(i).InvestInEconomyCost[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.InvestInEconomyCost -= legacies.get(i).InvestInEconomyCost[i2 - 1];
            }
        }
        if (legacies.get(i).IncreaseTaxEfficiencyCost != null) {
            Game.getCiv(i3).civBonuses.IncreaseTaxEfficiencyCost += legacies.get(i).IncreaseTaxEfficiencyCost[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.IncreaseTaxEfficiencyCost -= legacies.get(i).IncreaseTaxEfficiencyCost[i2 - 1];
            }
        }
        if (legacies.get(i).IncreaseGrowthRateCost != null) {
            Game.getCiv(i3).civBonuses.IncreaseGrowthRateCost += legacies.get(i).IncreaseGrowthRateCost[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.IncreaseGrowthRateCost -= legacies.get(i).IncreaseGrowthRateCost[i2 - 1];
            }
        }
        if (legacies.get(i).DevelopInfrastructureCost != null) {
            Game.getCiv(i3).civBonuses.DevelopInfrastructureCost += legacies.get(i).DevelopInfrastructureCost[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.DevelopInfrastructureCost -= legacies.get(i).DevelopInfrastructureCost[i2 - 1];
            }
        }
        if (legacies.get(i).GeneralAttack != null) {
            Game.getCiv(i3).civBonuses.GeneralAttack += legacies.get(i).GeneralAttack[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.GeneralAttack -= legacies.get(i).GeneralAttack[i2 - 1];
            }
        }
        if (legacies.get(i).GeneralDefense != null) {
            Game.getCiv(i3).civBonuses.GeneralDefense += legacies.get(i).GeneralDefense[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.GeneralDefense -= legacies.get(i).GeneralDefense[i2 - 1];
            }
        }
        if (legacies.get(i).UnitsAttack != null) {
            Game.getCiv(i3).civBonuses.UnitsAttack += legacies.get(i).UnitsAttack[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.UnitsAttack -= legacies.get(i).UnitsAttack[i2 - 1];
            }
        }
        if (legacies.get(i).UnitsDefense != null) {
            Game.getCiv(i3).civBonuses.UnitsDefense += legacies.get(i).UnitsDefense[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.UnitsDefense -= legacies.get(i).UnitsDefense[i2 - 1];
            }
        }
        if (legacies.get(i).MaxMorale != null) {
            Game.getCiv(i3).civBonuses.MaxMorale += legacies.get(i).MaxMorale[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.MaxMorale -= legacies.get(i).MaxMorale[i2 - 1];
            }
        }
        if (legacies.get(i).ArmyMovementSpeed != null) {
            Game.getCiv(i3).civBonuses.ArmyMovementSpeed += legacies.get(i).ArmyMovementSpeed[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.ArmyMovementSpeed -= legacies.get(i).ArmyMovementSpeed[i2 - 1];
            }
        }
        if (legacies.get(i).SiegeEffectiveness != null) {
            Game.getCiv(i3).civBonuses.SiegeEffectiveness += legacies.get(i).SiegeEffectiveness[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.SiegeEffectiveness -= legacies.get(i).SiegeEffectiveness[i2 - 1];
            }
        }
        if (legacies.get(i).ImproveRelationsModifier != null) {
            Game.getCiv(i3).civBonuses.ImproveRelationsModifier += legacies.get(i).ImproveRelationsModifier[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.ImproveRelationsModifier -= legacies.get(i).ImproveRelationsModifier[i2 - 1];
            }
        }
        if (legacies.get(i).IncomeFromVassals != null) {
            Game.getCiv(i3).civBonuses.IncomeFromVassals += legacies.get(i).IncomeFromVassals[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.IncomeFromVassals -= legacies.get(i).IncomeFromVassals[i2 - 1];
            }
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i3);
        }
        if (legacies.get(i).DiplomacyPoints != null) {
            Game.getCiv(i3).civBonuses.DiplomacyPoints += legacies.get(i).DiplomacyPoints[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.DiplomacyPoints -= legacies.get(i).DiplomacyPoints[i2 - 1];
            }
            Game.getCiv(i3).updateDiplomacyPerMonth();
        }
        if (legacies.get(i).LoanInterest != null) {
            Game.getCiv(i3).civBonuses.LoanInterest += legacies.get(i).LoanInterest[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.LoanInterest -= legacies.get(i).LoanInterest[i2 - 1];
            }
        }
        if (legacies.get(i).MaxNumberOfLoans != null) {
            Game.getCiv(i3).civBonuses.MaxNumberOfLoans += legacies.get(i).MaxNumberOfLoans[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.MaxNumberOfLoans -= legacies.get(i).MaxNumberOfLoans[i2 - 1];
            }
        }
        if (legacies.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals != null) {
            Game.getCiv(i3).civBonuses.MaximumLevelOfTheMilitaryAcademyForGenerals += legacies.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.MaximumLevelOfTheMilitaryAcademyForGenerals -= legacies.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals[i2 - 1];
            }
        }
        if (legacies.get(i).MaximumLevelOfTheMilitaryAcademy != null) {
            Game.getCiv(i3).civBonuses.MaximumLevelOfTheMilitaryAcademy += legacies.get(i).MaximumLevelOfTheMilitaryAcademy[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.MaximumLevelOfTheMilitaryAcademy -= legacies.get(i).MaximumLevelOfTheMilitaryAcademy[i2 - 1];
            }
        }
        if (legacies.get(i).MaximumLevelOfTheSupremeCourt != null) {
            Game.getCiv(i3).civBonuses.MaximumLevelOfTheSupremeCourt += legacies.get(i).MaximumLevelOfTheSupremeCourt[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.MaximumLevelOfTheSupremeCourt -= legacies.get(i).MaximumLevelOfTheSupremeCourt[i2 - 1];
            }
        }
        if (legacies.get(i).MaximumLevelOfCapitalCity != null) {
            Game.getCiv(i3).civBonuses.MaximumLevelOfCapitalCity += legacies.get(i).MaximumLevelOfCapitalCity[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.MaximumLevelOfCapitalCity -= legacies.get(i).MaximumLevelOfCapitalCity[i2 - 1];
            }
        }
        if (legacies.get(i).RecruitmentTime != null) {
            Game.getCiv(i3).civBonuses.RecruitmentTime += legacies.get(i).RecruitmentTime[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.RecruitmentTime -= legacies.get(i).RecruitmentTime[i2 - 1];
            }
        }
        if (legacies.get(i).MaxNumOfAlliances != null) {
            Game.getCiv(i3).civBonuses.MaxNumOfAlliances += legacies.get(i).MaxNumOfAlliances[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.MaxNumOfAlliances -= legacies.get(i).MaxNumOfAlliances[i2 - 1];
            }
        }
        if (legacies.get(i).AdvisorMaxLevel != null) {
            Game.getCiv(i3).civBonuses.AdvisorMaxLevel += legacies.get(i).AdvisorMaxLevel[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.AdvisorMaxLevel -= legacies.get(i).AdvisorMaxLevel[i2 - 1];
            }
        }
        if (legacies.get(i).AdvisorPoolSize != null) {
            Game.getCiv(i3).civBonuses.AdvisorPoolSize += legacies.get(i).AdvisorPoolSize[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.AdvisorPoolSize -= legacies.get(i).AdvisorPoolSize[i2 - 1];
            }
        }
        if (legacies.get(i).AdvisorCost != null) {
            Game.getCiv(i3).civBonuses.AdvisorCost += legacies.get(i).AdvisorCost[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.AdvisorCost -= legacies.get(i).AdvisorCost[i2 - 1];
            }
        }
        if (legacies.get(i).GeneralCost != null) {
            Game.getCiv(i3).civBonuses.GeneralCost += legacies.get(i).GeneralCost[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.GeneralCost -= legacies.get(i).GeneralCost[i2 - 1];
            }
        }
        if (legacies.get(i).AggressiveExpansion != null) {
            Game.getCiv(i3).civBonuses.AggressiveExpansion += legacies.get(i).AggressiveExpansion[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.AggressiveExpansion -= legacies.get(i).AggressiveExpansion[i2 - 1];
            }
        }
        if (legacies.get(i).DiseaseDeathRate != null) {
            Game.getCiv(i3).civBonuses.DiseaseDeathRate += legacies.get(i).DiseaseDeathRate[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.DiseaseDeathRate -= legacies.get(i).DiseaseDeathRate[i2 - 1];
            }
        }
        if (legacies.get(i).Discipline != null) {
            Game.getCiv(i3).civBonuses.Discipline += legacies.get(i).Discipline[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.Discipline -= legacies.get(i).Discipline[i2 - 1];
            }
        }
        if (legacies.get(i).MaximumAmountOfGold != null) {
            Game.getCiv(i3).civBonuses.MaximumAmountOfGold += legacies.get(i).MaximumAmountOfGold[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.MaximumAmountOfGold -= legacies.get(i).MaximumAmountOfGold[i2 - 1];
            }
        }
        if (legacies.get(i).Loot != null) {
            Game.getCiv(i3).civBonuses.Loot += legacies.get(i).Loot[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.Loot -= legacies.get(i).Loot[i2 - 1];
            }
        }
        if (legacies.get(i).ManpowerRecoveryFromADisbandedArmy != null) {
            Game.getCiv(i3).civBonuses.ManpowerRecoveryFromADisbandedArmy += legacies.get(i).ManpowerRecoveryFromADisbandedArmy[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.ManpowerRecoveryFromADisbandedArmy -= legacies.get(i).ManpowerRecoveryFromADisbandedArmy[i2 - 1];
            }
        }
        if (legacies.get(i).BattleWidth != null) {
            Game.getCiv(i3).civBonuses.BattleWidth += legacies.get(i).BattleWidth[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.BattleWidth -= legacies.get(i).BattleWidth[i2 - 1];
            }
        }
        if (legacies.get(i).RegimentsLimit != null) {
            Game.getCiv(i3).civBonuses.RegimentsLimit += legacies.get(i).RegimentsLimit[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.RegimentsLimit -= legacies.get(i).RegimentsLimit[i2 - 1];
            }
        }
        if (legacies.get(i).AllCharactersLifeExpectancy != null) {
            Game.getCiv(i3).civBonuses.AllCharactersLifeExpectancy += legacies.get(i).AllCharactersLifeExpectancy[i2];
            if (i2 > 0 && !z) {
                Game.getCiv(i3).civBonuses.AllCharactersLifeExpectancy -= legacies.get(i).AllCharactersLifeExpectancy[i2 - 1];
            }
        }
        Game.getCiv(i3).updateProvincesIncomeAndExpenses();
    }
}
