package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class WondersManager {
    public static List<Wonders> wonders = new ArrayList();
    public static int wondersSize = 0;
    public static List<Image> wonderImages = new ArrayList();

    public static class ConfigWondersData {
        public String Age_of_History;
        public ArrayList Wonders;
    }

    public static class Wonders {
        public int AI;
        public float AdministrationBuildingsCost;
        public int AdvisorMaxLevel;
        public int AdvisorPoolSize;
        public float AggressiveExpansion;
        public int AllCharactersLifeExpectancy;
        public float ArmyMaintenance;
        public float ArmyMovementSpeed;
        public int BattleWidth;
        public int BuildingSlot;
        public float BuildingsMaintenanceCost;
        public float ConstructionCost;
        public int ConstructionTime;
        public float ConstructionTimeBonus;
        public float CoreCost;
        public int CostGold;
        public int DefenseBonus;
        public float DevelopInfrastructureCost;
        public float DiplomacyPoints;
        public float Discipline;
        public float DiseaseDeathRate;
        public float Economy;
        public float EconomyBuildingsCost;
        public int FortDefense;
        public int FortLevel;
        public int GeneralAttack;
        public int GeneralDefense;
        public float GrowthRate;
        public int ImageID;
        public float ImproveRelationsModifier;
        public float IncomeFromVassals;
        public float IncreaseGrowthRateCost;
        public float IncreaseManpowerCost;
        public float IncreaseTaxEfficiencyCost;
        public float InvestInEconomyCost;
        public float Legacy;
        public float LoanInterest;
        public float LocalTaxEfficiency;
        public float MaintenanceCost;
        public float ManpowerRecoveryFromADisbandedArmy;
        public float ManpowerRecoverySpeed;
        public int MaxInfrastructure;
        public float MaxManpower;
        public float MaxMorale;
        public int MaxNumberOfLoans;
        public float MaximumAmountOfGold;
        public float MilitaryBuildingsCost;
        public float MonthlyIncome;
        public float MonthlyLegacy;
        public String Name;
        public float ProductionEfficiency;
        public int ProvinceID;
        public float ProvinceMaintenance;
        public float RecruitArmyCost;
        public float RecruitArmyFirstLineCost;
        public float RecruitArmySecondLineCost;
        public float RecruitmentTime;
        public int RegimentsLimit;
        public float Research;
        public float ResearchPoints;
        public float RevolutionaryRisk;
        public float SiegeEffectiveness;
        public float TaxEfficiency;
        public float TechnologyCost;
        public int UnitsAttack;
        public int UnitsDefense;
        public String Wiki;
    }

    public static final float getWonderConstructionCost(int i, int i2) {
        return Math.max(1.0f, wonders.get(i2).CostGold * ((Game.getProvince(i).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_WONDER_CONSTRUCTION_COST_PER_LVL) + 1.0f + Game.getCiv(Game.getProvince(i).getCivID()).civBonuses.WonderConstructionCost));
    }

    public static final void initProvinceWonders() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            Game.getProvince(i).wonderID = -1;
            Game.getProvince(i).setWonderBuilt(false);
        }
        for (int i2 = 0; i2 < wondersSize; i2++) {
            Game.getProvince(wonders.get(i2).ProvinceID).wonderID = i2;
        }
    }

    public static final void loadWonders() {
        try {
            if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "wonders/Wonders.json").exists()) {
                String string = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "wonders/Wonders.json").readString();
                Json json = new Json();
                json.setElementType(ConfigWondersData.class, "Wonders", Wonders.class);
                Iterator it = ((ConfigWondersData) json.fromJson(ConfigWondersData.class, string)).Wonders.iterator();
                while (it.hasNext()) {
                    wonders.add((Wonders) it.next());
                }
            }
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        wondersSize = wonders.size();
        for (int i = 0; i < wondersSize; i++) {
            wonders.get(i).Name = Game.lang.get(wonders.get(i).Name);
        }
        loadWondersImages();
    }

    public static final void loadWondersImages() {
        if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "wonders/wondersImages/numOfImages.txt").exists()) {
            int i = Integer.parseInt(FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "wonders/wondersImages/numOfImages.txt").readString());
            for (int i2 = 0; i2 < i; i2++) {
                if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "wonders/wondersImages/" + CFG.getRescouresPath_Short() + i2 + ".png").exists()) {
                    wonderImages.add(new Image(ImageManager.loadTexture_RGB888("map/" + Game.map.getFile_ActiveMap_Path() + "wonders/wondersImages/" + CFG.getRescouresPath_Short() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                } else {
                    wonderImages.add(new Image(ImageManager.loadTexture_RGB888("map/" + Game.map.getFile_ActiveMap_Path() + "wonders/wondersImages/" + CFG.getRescouresPath_Short_H() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                }
            }
        }
    }

    public static final void updateCivBonuses(int i, int i2, int i3) {
        float f = i3;
        Game.getCiv(i).civBonuses.MonthlyIncome += wonders.get(i2).MonthlyIncome * f;
        Game.getCiv(i).civBonuses.TaxEfficiency += wonders.get(i2).ProductionEfficiency * f;
        Game.getCiv(i).civBonuses.ProductionEfficiency += wonders.get(i2).ProductionEfficiency * f;
        Game.getCiv(i).civBonuses.ProvinceMaintenance += wonders.get(i2).ProvinceMaintenance * f;
        Game.getCiv(i).civBonuses.BuildingsMaintenanceCost += wonders.get(i2).BuildingsMaintenanceCost * f;
        if (wonders.get(i2).GrowthRate != 0.0f) {
            Game.getCiv(i).civBonuses.GrowthRate += wonders.get(i2).GrowthRate * f;
            Game.getCiv(i).updateResearchPerMonth();
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i);
        }
        if (wonders.get(i2).MonthlyLegacy != 0.0f) {
            Game.getCiv(i).civBonuses.MonthlyLegacy += wonders.get(i2).MonthlyLegacy * f;
            Game.gameThread.addCivUpdateLegacyPerMonth(i);
        }
        if (wonders.get(i2).MaxManpower != 0.0f) {
            Game.getCiv(i).civBonuses.MaxManpower += wonders.get(i2).MaxManpower * f;
            Game.gameThreadTurns.addCivUpdateMaxManpower(i);
        }
        if (wonders.get(i2).ManpowerRecoverySpeed != 0.0f) {
            Game.getCiv(i).civBonuses.ManpowerRecoverySpeed += wonders.get(i2).ManpowerRecoverySpeed * f;
            Game.gameThreadTurns.addCivUpdateMaxManpower(i);
        }
        if (wonders.get(i2).ArmyMaintenance != 0.0f) {
            Game.getCiv(i).civBonuses.ArmyMaintenance += wonders.get(i2).ArmyMaintenance * f;
            Game.gameThread.addCivUpdateArmyMaintenance(i);
        }
        Game.getCiv(i).civBonuses.RecruitmentTime += wonders.get(i2).RecruitmentTime * f;
        Game.getCiv(i).civBonuses.RecruitArmyCost += wonders.get(i2).RecruitArmyCost * f;
        Game.getCiv(i).civBonuses.RecruitArmyFirstLineCost += wonders.get(i2).RecruitArmyFirstLineCost * f;
        Game.getCiv(i).civBonuses.RecruitArmySecondLineCost += wonders.get(i2).RecruitArmySecondLineCost * f;
        if (wonders.get(i2).ResearchPoints != 0.0f) {
            Game.gameThread.addCivUpdateResearchPerMonth(i);
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i);
        }
        Game.getCiv(i).civBonuses.ResearchPoints += wonders.get(i2).ResearchPoints * f;
        Game.getCiv(i).civBonuses.TechnologyCost += wonders.get(i2).TechnologyCost * f;
        Game.getCiv(i).civBonuses.ConstructionCost += wonders.get(i2).ConstructionCost * f;
        Game.getCiv(i).civBonuses.AdministrationBuildingsCost += wonders.get(i2).AdministrationBuildingsCost * f;
        Game.getCiv(i).civBonuses.MilitaryBuildingsCost += wonders.get(i2).MilitaryBuildingsCost * f;
        Game.getCiv(i).civBonuses.EconomyBuildingsCost += wonders.get(i2).EconomyBuildingsCost * f;
        Game.getCiv(i).civBonuses.ConstructionTime += wonders.get(i2).ConstructionTimeBonus * f;
        Game.getCiv(i).civBonuses.DevelopInfrastructureCost += wonders.get(i2).DevelopInfrastructureCost * f;
        Game.getCiv(i).civBonuses.IncreaseTaxEfficiencyCost += wonders.get(i2).IncreaseTaxEfficiencyCost * f;
        Game.getCiv(i).civBonuses.IncreaseGrowthRateCost += wonders.get(i2).IncreaseGrowthRateCost * f;
        Game.getCiv(i).civBonuses.InvestInEconomyCost += wonders.get(i2).InvestInEconomyCost * f;
        Game.getCiv(i).civBonuses.IncreaseManpowerCost += wonders.get(i2).IncreaseManpowerCost * f;
        Game.getCiv(i).civBonuses.GeneralAttack += wonders.get(i2).GeneralAttack * i3;
        Game.getCiv(i).civBonuses.GeneralDefense += wonders.get(i2).GeneralDefense * i3;
        Game.getCiv(i).civBonuses.UnitsAttack += wonders.get(i2).UnitsAttack * i3;
        Game.getCiv(i).civBonuses.UnitsDefense += wonders.get(i2).UnitsDefense * i3;
        if (wonders.get(i2).MaxInfrastructure != 0) {
            Game.getCiv(i).civBonuses.MaxInfrastructure += wonders.get(i2).MaxInfrastructure * i3;
            Game.getCiv(i).updateInfrastructureMax();
        }
        Game.getCiv(i).civBonuses.AdvisorMaxLevel += wonders.get(i2).AdvisorMaxLevel * i3;
        Game.getCiv(i).civBonuses.AdvisorPoolSize += wonders.get(i2).AdvisorPoolSize * i3;
        Game.getCiv(i).civBonuses.MaxMorale += wonders.get(i2).MaxMorale * f;
        Game.getCiv(i).civBonuses.ArmyMovementSpeed += wonders.get(i2).ArmyMovementSpeed * f;
        Game.getCiv(i).civBonuses.SiegeEffectiveness += wonders.get(i2).SiegeEffectiveness * f;
        Game.getCiv(i).civBonuses.ImproveRelationsModifier += wonders.get(i2).ImproveRelationsModifier * f;
        Game.getCiv(i).civBonuses.IncomeFromVassals += wonders.get(i2).IncomeFromVassals * f;
        if (wonders.get(i2).DiplomacyPoints != 0.0f) {
            Game.getCiv(i).civBonuses.DiplomacyPoints += wonders.get(i2).DiplomacyPoints * f;
            Game.getCiv(i).updateDiplomacyPerMonth();
        }
        Game.getCiv(i).civBonuses.LoanInterest += wonders.get(i2).LoanInterest * f;
        Game.getCiv(i).civBonuses.MaxNumberOfLoans += wonders.get(i2).MaxNumberOfLoans * i3;
        Game.getCiv(i).civBonuses.AggressiveExpansion += wonders.get(i2).AggressiveExpansion * f;
        Game.getCiv(i).civBonuses.RevolutionaryRisk += wonders.get(i2).RevolutionaryRisk * f;
        Game.getCiv(i).civBonuses.CoreCost += wonders.get(i2).CoreCost * f;
        Game.getCiv(i).civBonuses.DiseaseDeathRate += wonders.get(i2).DiseaseDeathRate * f;
        Game.getCiv(i).civBonuses.AllCharactersLifeExpectancy += wonders.get(i2).AllCharactersLifeExpectancy * i3;
        Game.getCiv(i).civBonuses.BattleWidth += wonders.get(i2).BattleWidth * i3;
        Game.getCiv(i).civBonuses.Discipline += wonders.get(i2).Discipline * f;
        Game.getCiv(i).civBonuses.MaximumAmountOfGold += wonders.get(i2).MaximumAmountOfGold * f;
        if (wonders.get(i2).RegimentsLimit != 0) {
            Game.getCiv(i).civBonuses.RegimentsLimit += wonders.get(i2).RegimentsLimit * i3;
            Game.getCiv(i).updateRegimentsLimit();
        }
        Game.getCiv(i).civBonuses.ManpowerRecoveryFromADisbandedArmy += wonders.get(i2).ManpowerRecoveryFromADisbandedArmy * f;
        Game.getCiv(i).updateProvincesIncomeAndExpenses();
    }

    public static final void updateProvinceBonuses(int i, int i2, int i3) {
        float f = i3;
        Game.getProvince(i).provBonuses.LocalTaxEfficiency += wonders.get(i2).LocalTaxEfficiency * f;
        Game.getProvince(i).provBonuses.Economy += wonders.get(i2).Economy * f;
        Game.getProvince(i).provBonuses.DefenseBonus += wonders.get(i2).DefenseBonus * i3;
        Game.getProvince(i).provBonuses.FortLevel += wonders.get(i2).FortLevel * i3;
        Game.getProvince(i).provBonuses.FortDefense += wonders.get(i2).FortDefense * i3;
    }
}
