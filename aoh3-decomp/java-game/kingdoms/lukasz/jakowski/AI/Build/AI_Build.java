package aoc.kingdoms.lukasz.jakowski.AI.Build;

import aoc.kingdoms.lukasz.jakowski.AI.Colonization.AI_ColonizationTribal;
import aoc.kingdoms.lukasz.jakowski.AI.Invest.AI_IncreaseTaxEfficiency;
import aoc.kingdoms.lukasz.jakowski.AI.Invest.AI_InvestInEconomy;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.province.Province;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Build {
    public static float averageCostOfBuilding = 0.0f;
    public static float averageCostOfBuilding_Capital = 0.0f;
    public static int minCostOfBuilding = 9999999;
    public static List<Building> research = new ArrayList();
    public static List<Building> gold = new ArrayList();
    public static List<Building> legacy = new ArrayList();
    public static List<Building> manpower = new ArrayList();
    public static List<Building> defensive = new ArrayList();
    public static List<Building> recruitArmyCost = new ArrayList();
    public static List<Building> taxEfficiency = new ArrayList();
    public static List<Building> growthRate = new ArrayList();
    public static List<Building> economy = new ArrayList();
    public static List<Building> productionEfficiency = new ArrayList();
    public static List<Building> provinceMaintenance = new ArrayList();
    public static List<Building> constructionCost = new ArrayList();
    public static List<Building> rest = new ArrayList();
    public static List<Building> capitalBuildings = new ArrayList();
    public static List<Building> resourceBuildings = new ArrayList();

    public static class Building {
        public int building;
        public int buildingID;

        public Building(int i, int i2) {
            this.building = i;
            this.buildingID = i2;
        }
    }

    public static boolean balance_StopBuildingConstruction(int i) {
        return Game.getCiv(i).getBalance() + getBuildingsMaintenanceCost_UnderConstruction(i) < Game.aiValuesBuild.BUILD_MIN_BALANCE;
    }

    public static boolean balance_StopBuildingConstruction_Research(int i) {
        return Game.getCiv(i).getBalance() + getBuildingsMaintenanceCost_UnderConstruction(i) < Game.aiValuesBuild.BUILD_RESEARCH_MIN_BALANCE;
    }

    public static final void build(int i) {
        try {
            if (Game.getCiv(i).getNumOfProvinces() <= 0 || Game.getCiv(i).fGold <= averageCostOfBuilding) {
                return;
            }
            for (int i2 = 0; i2 < Game.aiValuesBuild.CHOOSE_BUILD_TYPE_LIMIT && build(i, chooseBuildingType(i)) && Game.getCiv(i).fGold >= averageCostOfBuilding; i2++) {
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final boolean build(int i, int i2) {
        switch (i2) {
            case 0:
                return AI_BuildResearch.buildResearchBuilding(i, getLimitOfBuildings(i2));
            case 1:
                List<Building> unlockedBuildings = getUnlockedBuildings(i, gold);
                return unlockedBuildings.isEmpty() ? build_NoBuildings(i, i2) : AI_BuildGold.buildBuilding(i, getLimitOfBuildings(i2), unlockedBuildings);
            case 2:
                List<Building> unlockedBuildings2 = getUnlockedBuildings(i, legacy);
                return unlockedBuildings2.isEmpty() ? build_NoBuildings(i, i2) : AI_BuildLegacy.buildBuilding(i, getLimitOfBuildings(i2), unlockedBuildings2);
            case 3:
                List<Building> unlockedBuildings3 = getUnlockedBuildings(i, taxEfficiency);
                return unlockedBuildings3.isEmpty() ? build_NoBuildings(i, i2) : AI_BuildTaxEfficiency.buildBuilding(i, getLimitOfBuildings(i2), unlockedBuildings3);
            case 4:
                List<Building> unlockedBuildings4 = getUnlockedBuildings(i, provinceMaintenance);
                return unlockedBuildings4.isEmpty() ? build_NoBuildings(i, i2) : AI_BuildProvinceMaintenance.buildBuilding(i, getLimitOfBuildings(i2), unlockedBuildings4);
            case 5:
                List<Building> unlockedBuildings5 = getUnlockedBuildings(i, manpower);
                return unlockedBuildings5.isEmpty() ? build_NoBuildings(i, i2) : AI_BuildManpower.buildBuilding(i, getLimitOfBuildings(i2), unlockedBuildings5);
            case 6:
                List<Building> unlockedBuildings6 = getUnlockedBuildings(i, defensive);
                return unlockedBuildings6.isEmpty() ? build_NoBuildings(i, i2) : AI_BuildDefensive.buildBuilding(i, getLimitOfBuildings(i2), unlockedBuildings6);
            case 7:
                List<Building> unlockedBuildings7 = getUnlockedBuildings(i, recruitArmyCost);
                return unlockedBuildings7.isEmpty() ? build_NoBuildings(i, i2) : AI_BuildRecruitArmyCost.buildBuilding(i, getLimitOfBuildings(i2), unlockedBuildings7);
            case 8:
                List<Building> unlockedBuildings8 = getUnlockedBuildings(i, growthRate);
                return unlockedBuildings8.isEmpty() ? build_NoBuildings(i, i2) : AI_BuildGrowthRate.buildBuilding(i, getLimitOfBuildings(i2), unlockedBuildings8);
            case 9:
                List<Building> unlockedBuildings9 = getUnlockedBuildings(i, economy);
                return unlockedBuildings9.isEmpty() ? build_NoBuildings(i, i2) : AI_BuildEconomy.buildBuilding(i, getLimitOfBuildings(i2), unlockedBuildings9);
            case 10:
                List<Building> unlockedBuildings10 = getUnlockedBuildings(i, productionEfficiency);
                return unlockedBuildings10.isEmpty() ? build_NoBuildings(i, i2) : AI_BuildProductionEfficiency.buildBuilding(i, getLimitOfBuildings(i2), unlockedBuildings10);
            case 11:
                List<Building> unlockedBuildings11 = getUnlockedBuildings(i, constructionCost);
                return unlockedBuildings11.isEmpty() ? build_NoBuildings(i, i2) : AI_BuildConstructionCost.buildBuilding(i, getLimitOfBuildings(i2), unlockedBuildings11);
            case 12:
                List<Building> unlockedBuildings12 = getUnlockedBuildings(i, rest);
                return unlockedBuildings12.isEmpty() ? build_NoBuildings(i, i2) : AI_BuildRest.buildBuilding(i, getLimitOfBuildings(i2), unlockedBuildings12);
            case 13:
                return AI_BuildCapitalBuilding.buildBuilding(i, getLimitOfBuildings(i2));
            case 14:
                return AI_BuildResource.buildBuilding(i, getLimitOfBuildings(i2));
            case 15:
                return ((!GameValues.colonization.AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS || Game_Calendar.TURN_ID < GameValues.colonization.AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS_MIN_TURN_ID) && !Game.getCiv(i).canColonize) ? build(i, Game.oR.nextInt(15)) : AI_ColonizationTribal.colonize(i);
            default:
                return false;
        }
    }

    public static final void buildProvince_AIBuildScore_Default(int i, int i2) {
        Province province = Game.getProvince(i2);
        if (province.getBuildingsLimit_FreeSlots() <= 0) {
            province.aiBuildScore = -999999.0f;
            return;
        }
        province.aiBuildScore = Game.aiValuesBuild.BUILD_SCORE_MIN;
        if (Game.getCiv(i).getCapitalProvinceID() >= 0 && province.getContinent() == Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getContinent()) {
            province.aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_SAME_CONTINENT_AS_CAPITAL;
        }
        if (Game.terrainManager.terrains.get(province.getTerrainID()).BuildCost != 1.0d) {
            province.aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_TERRAIN_CONSTRUCTION_COST * (Game.terrainManager.terrains.get(province.getTerrainID()).BuildCost - 1.0f);
        }
        province.aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_CONSTRUCTION_COST * (province.provBonuses.ConstructionCost + (province.getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_CONSTRUCTION_COST_PER_LVL));
        province.aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_PER_GROWTH_RATE * province.getGrowthRateWithBonuses();
        province.aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_PER_INFRASTRUCTURE * province.getInfrastructure();
        province.aiBuildScore *= 1.0f - (Game.aiValuesBuild.BUILD_SCORE_CONSTRUCTED_BUILDINGS_MODIFIER * (province.iBuildingsSize / province.iBuildingsLimit));
        if (!province.haveACore) {
            province.aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_NON_CORE;
        }
        if (province.getReligion() != Game.getCiv(i).getReligionID()) {
            province.aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_DIFFERENT_RELIGION;
        }
    }

    public static final void buildProvince_AIBuildScore_DistanceToCapital(int i) {
        Game.getProvince(i).aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_DISTANCE_FROM_CAPITAL * Game.getProvince(i).aiDistanceToCapital;
    }

    public static final void buildProvince_AIBuildScore_Economy(int i) {
        Game.getProvince(i).aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_PER_ECONOMY * Game.getProvince(i).getEconomyWithBonuses();
    }

    public static final void buildProvince_AIBuildScore_GrowthRateManpower(int i) {
        Game.getProvince(i).aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_MANPOWER_PER_GROWTH_RATE * Game.getProvince(i).getGrowthRateWithBonuses();
    }

    public static final void buildProvince_AIBuildScore_GrowthRateResearch(int i) {
        Game.getProvince(i).aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_RESEARCH_PER_GROWTH_RATE * Game.getProvince(i).getGrowthRateWithBonuses();
    }

    public static final void buildProvince_AIBuildScore_GrowthRateTaxEfficiency(int i) {
        Game.getProvince(i).aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_TAX_EFFICIENCY_PER_GROWTH_RATE * Game.getProvince(i).getGrowthRateWithBonuses();
    }

    public static final void buildProvince_AIBuildScore_Manpower(int i) {
        Game.getProvince(i).aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_PER_MANPOWER * Game.getProvince(i).getManpower();
    }

    public static final void buildProvince_AIBuildScore_ProvinceMaintenance(int i) {
        if (Game.getProvince(i).provBonuses.ProvinceMaintenance < 0.0f) {
            Game.getProvince(i).aiBuildScore += Math.abs(Game.aiValuesBuild.BUILD_SCORE_PER_PROVINCE_MAINTENANCE_REDUCTION * Game.getProvince(i).provBonuses.ProvinceMaintenance);
        }
    }

    public static final void buildProvince_AIBuildScore_ProvinceValue(int i) {
        Game.getProvince(i).aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_PER_PROVINCE_VALUE * Game.getProvince(i).fProvinceValue;
    }

    public static final void buildProvince_AIBuildScore_ResourcePrice(int i) {
        if (Game.getProvince(i).getResourceID() >= 0) {
            Game.getProvince(i).aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_PER_PRICE_OF_RESOURCE * ResourcesManager.getPrice(Game.getProvince(i).getResourceID());
        }
    }

    public static final void buildProvince_AIBuildScore_TaxEfficiency(int i) {
        Game.getProvince(i).aiBuildScore += Game.aiValuesBuild.BUILD_SCORE_PER_TAX_EFFICIENCY * Game.getProvince(i).getTaxEfficiencyWithBonuses();
    }

    public static final boolean build_NoBuildings(int i, int i2) {
        int iNextInt = Game.oR.nextInt(100);
        if (iNextInt < Game.aiValuesBuild.BUILD_NO_BUILDINGS_NEXT_TYPE) {
            return true;
        }
        if (iNextInt < Game.aiValuesBuild.BUILD_NO_BUILDINGS_INVEST_ECONOMY) {
            AI_InvestInEconomy.investInEconomy(i, Game.aiValuesBuild.INVEST_IN_ECONOMY_MIN_LEFT_GOLD);
            return true;
        }
        if (iNextInt < Game.aiValuesBuild.BUILD_NO_BUILDINGS_TAX_EFFICIENCY) {
            AI_IncreaseTaxEfficiency.increaseTaxEfficiency(i, Game.aiValuesBuild.INCREASE_TAX_EFFICIENCY_MIN_LEFT_GOLD);
            return true;
        }
        if (iNextInt < Game.aiValuesBuild.BUILD_NO_BUILDINGS_PRODUCTION_BUILDING) {
            return AI_BuildResource.buildBuilding(i, getLimitOfBuildings(i2));
        }
        return true;
    }

    public static int chooseBuildingType(int i) {
        int iNextInt = Game.oR.nextInt(Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).AI_BUILD_SCORE_TOTAL);
        int i2 = 0;
        for (int i3 = 0; i3 < Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).AI_BUILD_SCORE.length; i3++) {
            i2 += Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).AI_BUILD_SCORE[i3];
            if (iNextInt < i2) {
                return i3;
            }
        }
        return 0;
    }

    public static int getBuildingsAIScore(int i, List<Building> list) {
        int i2 = 0;
        for (int size = list.size() - 1; size >= 0; size--) {
            i2 += BuildingsManager.buildings.get(list.get(size).building).AI[list.get(size).buildingID];
        }
        return i2;
    }

    public static int getBuildingsAIScore_BestID(int i, List<Building> list, int i2) {
        int iNextInt = Game.oR.nextInt(i2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += BuildingsManager.buildings.get(list.get(i4).building).AI[list.get(i4).buildingID];
            if (i3 >= iNextInt) {
                return i4;
            }
        }
        return 0;
    }

    public static float getBuildingsMaintenanceCost_UnderConstruction(int i) {
        float buildingsConstruction_MaintenanceCosts = 0.0f;
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            if (Game.getProvince(i2).iBuildingsConstructionSize > 0) {
                buildingsConstruction_MaintenanceCosts += Game.getProvince(i2).getBuildingsConstruction_MaintenanceCosts();
            }
        }
        return -buildingsConstruction_MaintenanceCosts;
    }

    public static final int getLimitOfBuildings(int i) {
        return Game.aiValuesBuild.BUILD_LIMIT[i];
    }

    public static List<Building> getUnlockedBuildings(int i, List<Building> list) {
        ArrayList arrayList = new ArrayList();
        Civilization civ = Game.getCiv(i);
        for (int size = list.size() - 1; size >= 0; size--) {
            Building building = list.get(size);
            if (civ.isBuildingResearched(building.building, building.buildingID) && ((BuildingsManager.buildings.get(building.building).RequiredReligionID < 0 || BuildingsManager.buildings.get(building.building).RequiredReligionID == civ.getReligionID()) && (BuildingsManager.buildings.get(building.building).RequiredGovernmentID < 0 || BuildingsManager.buildings.get(building.building).RequiredGovernmentID == civ.getIdeologyID()))) {
                arrayList.add(building);
            }
        }
        return arrayList;
    }

    public static final void initBuildings() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        try {
            int i = BuildingsManager.buildingsResourceStartID;
            while (true) {
                if (i >= BuildingsManager.buildingsResourceSize) {
                    break;
                }
                for (int i2 = 0; i2 < BuildingsManager.buildings.get(i).Name.length; i2++) {
                    resourceBuildings.add(new Building(i, i2));
                }
                i++;
            }
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < BuildingsManager.buildingsSize; i5++) {
                for (int i6 = 0; i6 < BuildingsManager.buildings.get(i5).Name.length; i6++) {
                    if (BuildingsManager.buildings.get(i5).GroupID == 3) {
                        i4++;
                        averageCostOfBuilding_Capital += BuildingsManager.buildings.get(i5).CostGold[i6];
                        capitalBuildings.add(new Building(i5, i6));
                    } else {
                        if (minCostOfBuilding > BuildingsManager.buildings.get(i5).CostGold[i6]) {
                            minCostOfBuilding = (int) BuildingsManager.buildings.get(i5).CostGold[i6];
                        }
                        averageCostOfBuilding += BuildingsManager.buildings.get(i5).CostGold[i6];
                        i3++;
                        boolean z12 = true;
                        if (BuildingsManager.buildings.get(i5).MonthlyIncome == null || BuildingsManager.buildings.get(i5).MonthlyIncome[i6] <= 0.0f) {
                            z = false;
                        } else {
                            gold.add(new Building(i5, i6));
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).TaxEfficiency != null && BuildingsManager.buildings.get(i5).TaxEfficiency[i6] > 0.0f) {
                            taxEfficiency.add(new Building(i5, i6));
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).LocalTaxEfficiency != null && BuildingsManager.buildings.get(i5).LocalTaxEfficiency[i6] > 0.0f) {
                            int size = taxEfficiency.size() - 1;
                            while (true) {
                                if (size < 0) {
                                    z11 = true;
                                    break;
                                } else {
                                    if (taxEfficiency.get(size).building == i5 && taxEfficiency.get(size).buildingID == i6) {
                                        z11 = false;
                                        break;
                                    }
                                    size--;
                                }
                            }
                            if (z11) {
                                taxEfficiency.add(new Building(i5, i6));
                            }
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).MonthlyLegacy != null && BuildingsManager.buildings.get(i5).MonthlyLegacy[i6] > 0.0f) {
                            legacy.add(new Building(i5, i6));
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).DefenseBonus != null && BuildingsManager.buildings.get(i5).DefenseBonus[i6] > 0) {
                            defensive.add(new Building(i5, i6));
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).FortLevel != null && BuildingsManager.buildings.get(i5).FortLevel[i6] > 0) {
                            int size2 = defensive.size() - 1;
                            while (true) {
                                if (size2 < 0) {
                                    z10 = true;
                                    break;
                                } else {
                                    if (defensive.get(size2).building == i5 && defensive.get(size2).buildingID == i6) {
                                        z10 = false;
                                        break;
                                    }
                                    size2--;
                                }
                            }
                            if (z10) {
                                defensive.add(new Building(i5, i6));
                            }
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).FortDefense != null && BuildingsManager.buildings.get(i5).FortDefense[i6] > 0) {
                            int size3 = defensive.size() - 1;
                            while (true) {
                                if (size3 < 0) {
                                    z9 = true;
                                    break;
                                } else {
                                    if (defensive.get(size3).building == i5 && defensive.get(size3).buildingID == i6) {
                                        z9 = false;
                                        break;
                                    }
                                    size3--;
                                }
                            }
                            if (z9) {
                                defensive.add(new Building(i5, i6));
                            }
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).MaximumManpower != null && BuildingsManager.buildings.get(i5).MaximumManpower[i6] > 0) {
                            manpower.add(new Building(i5, i6));
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).LocalManpower != null && BuildingsManager.buildings.get(i5).LocalManpower[i6] > 0.0f) {
                            int size4 = manpower.size() - 1;
                            while (true) {
                                if (size4 < 0) {
                                    z8 = true;
                                    break;
                                } else {
                                    if (manpower.get(size4).building == i5 && manpower.get(size4).buildingID == i6) {
                                        z8 = false;
                                        break;
                                    }
                                    size4--;
                                }
                            }
                            if (z8) {
                                manpower.add(new Building(i5, i6));
                            }
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).RecruitArmyCostInProvince != null && BuildingsManager.buildings.get(i5).RecruitArmyCostInProvince[i6] < 0.0f) {
                            recruitArmyCost.add(new Building(i5, i6));
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).LocalGrowthRate != null && BuildingsManager.buildings.get(i5).LocalGrowthRate[i6] > 0.0f) {
                            growthRate.add(new Building(i5, i6));
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).ConstructionCost != null && BuildingsManager.buildings.get(i5).ConstructionCost[i6] < 0) {
                            constructionCost.add(new Building(i5, i6));
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).InvestInEconomyCost != null && BuildingsManager.buildings.get(i5).InvestInEconomyCost[i6] < 0.0f) {
                            int size5 = constructionCost.size() - 1;
                            while (true) {
                                if (size5 < 0) {
                                    z7 = true;
                                    break;
                                } else {
                                    if (constructionCost.get(size5).building == i5 && constructionCost.get(size5).buildingID == i6) {
                                        z7 = false;
                                        break;
                                    }
                                    size5--;
                                }
                            }
                            if (z7) {
                                constructionCost.add(new Building(i5, i6));
                            }
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).IncreaseManpowerCost != null && BuildingsManager.buildings.get(i5).IncreaseManpowerCost[i6] < 0.0f) {
                            int size6 = constructionCost.size() - 1;
                            while (true) {
                                if (size6 < 0) {
                                    z6 = true;
                                    break;
                                } else {
                                    if (constructionCost.get(size6).building == i5 && constructionCost.get(size6).buildingID == i6) {
                                        z6 = false;
                                        break;
                                    }
                                    size6--;
                                }
                            }
                            if (z6) {
                                constructionCost.add(new Building(i5, i6));
                            }
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).IncreaseTaxEfficiencyCost != null && BuildingsManager.buildings.get(i5).IncreaseTaxEfficiencyCost[i6] < 0.0f) {
                            int size7 = constructionCost.size() - 1;
                            while (true) {
                                if (size7 < 0) {
                                    z5 = true;
                                    break;
                                } else {
                                    if (constructionCost.get(size7).building == i5 && constructionCost.get(size7).buildingID == i6) {
                                        z5 = false;
                                        break;
                                    }
                                    size7--;
                                }
                            }
                            if (z5) {
                                constructionCost.add(new Building(i5, i6));
                            }
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).DevelopInfrastructureCost != null && BuildingsManager.buildings.get(i5).DevelopInfrastructureCost[i6] < 0.0f) {
                            int size8 = constructionCost.size() - 1;
                            while (true) {
                                if (size8 < 0) {
                                    z4 = true;
                                    break;
                                } else {
                                    if (constructionCost.get(size8).building == i5 && constructionCost.get(size8).buildingID == i6) {
                                        z4 = false;
                                        break;
                                    }
                                    size8--;
                                }
                            }
                            if (z4) {
                                constructionCost.add(new Building(i5, i6));
                            }
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).IncreaseGrowthRateCost != null && BuildingsManager.buildings.get(i5).IncreaseGrowthRateCost[i6] < 0.0f) {
                            int size9 = constructionCost.size() - 1;
                            while (true) {
                                if (size9 < 0) {
                                    z3 = true;
                                    break;
                                } else {
                                    if (constructionCost.get(size9).building == i5 && constructionCost.get(size9).buildingID == i6) {
                                        z3 = false;
                                        break;
                                    }
                                    size9--;
                                }
                            }
                            if (z3) {
                                constructionCost.add(new Building(i5, i6));
                            }
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).ProvinceMaintenance != null && BuildingsManager.buildings.get(i5).ProvinceMaintenance[i6] < 0.0f) {
                            provinceMaintenance.add(new Building(i5, i6));
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).Economy != null && BuildingsManager.buildings.get(i5).Economy[i6] > 0.0f) {
                            economy.add(new Building(i5, i6));
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).ResearchPoints != null && BuildingsManager.buildings.get(i5).ResearchPoints[i6] > 0.0f) {
                            research.add(new Building(i5, i6));
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).ProductionEfficiency != null && BuildingsManager.buildings.get(i5).ProductionEfficiency[i6] > 0.0f) {
                            productionEfficiency.add(new Building(i5, i6));
                            z = true;
                        }
                        if (BuildingsManager.buildings.get(i5).IncomeProduction == null || BuildingsManager.buildings.get(i5).IncomeProduction[i6] <= 0.0f) {
                            z12 = z;
                        } else {
                            int size10 = productionEfficiency.size() - 1;
                            while (true) {
                                if (size10 < 0) {
                                    z2 = true;
                                    break;
                                } else {
                                    if (productionEfficiency.get(size10).building == i5 && productionEfficiency.get(size10).buildingID == i6) {
                                        z2 = false;
                                        break;
                                    }
                                    size10--;
                                }
                            }
                            if (z2) {
                                productionEfficiency.add(new Building(i5, i6));
                            }
                        }
                        if (!z12) {
                            rest.add(new Building(i5, i6));
                        }
                    }
                }
            }
            averageCostOfBuilding /= i3;
            averageCostOfBuilding_Capital /= i4;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void logBuilding(String str, List<Building> list) {
        for (int i = 0; i < list.size(); i++) {
            CFG.LOG(str + ": " + BuildingsManager.buildings.get(list.get(i).building).Name[list.get(i).buildingID]);
        }
    }

    public static final void logBuildings() {
        logBuilding("Gold", gold);
        logBuilding("Legacy", legacy);
        logBuilding("Research", research);
        logBuilding("Manpower", manpower);
        logBuilding("Defensive", defensive);
        logBuilding("RecruitArmyCost", recruitArmyCost);
        logBuilding("TaxEfficiency", taxEfficiency);
        logBuilding("GrowthRate", growthRate);
        logBuilding("Economy", economy);
        logBuilding("ProductionEfficiency", productionEfficiency);
        logBuilding("ProvinceMaintenance", provinceMaintenance);
        logBuilding("ConstructionCost", constructionCost);
        logBuilding("Rest", rest);
        CFG.LOG("minCostOfBuilding: " + minCostOfBuilding);
        CFG.LOG("averageCostOfBuilding: " + averageCostOfBuilding);
        CFG.LOG("averageCostOfBuilding_Capital: " + averageCostOfBuilding_Capital);
    }
}
