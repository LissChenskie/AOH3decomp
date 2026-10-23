package aoc.kingdoms.lukasz.events;

import androidx.arch.core.ht.qIuEvFbUtcea;
import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AI_Aggression;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AddAdvisor;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AddAdvisor_Character;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AddArmy;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AddGeneral;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AddGeneral_Character;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AddGeneral_CharacterAttackDefense;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AddRuler;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AddTruce;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AddVariable;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AddVariable_Civ;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AdvantagePoints;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AggressiveExpansion_Set;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Alliance;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AnnexCivilization;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AnnexProvinces;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AnnexProvincesFromCiv;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AnnexedByCivilization;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_AnnexedProvincesByCivFromCiv;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_CapitalCityLevel;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_ChangeIdeology;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_ChangeIdeologyCiv;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_ChangeReligion;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_ChangeReligionCiv;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_DeclareWar;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_DeclareWar2;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_DefensivePact;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Explode;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Gold;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Gold_MonthlyIncome;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Guarantee;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Inflation;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_JoinAllianceSpecialFirstTier;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_JoinAllianceSpecialSecondTier;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_KillAdvisor;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_KillRuler;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_KillRuler_Chance;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_LeaveAllianceSpecial;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Legacy;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Manpower;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_MilitaryAcademy;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_MilitaryAcademyForGenerals;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_MilitaryAccess;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_MoveCapital;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_NonAggressionPact;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_NuclearReactor;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_PlayMusic;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_PlayerChangeCiv;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_PromoteAdvisor;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Research;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Resource_PriceChange;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Resource_PriceChangeDown;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Resource_PriceChangeGroup;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Resource_PriceChangeGroupDown;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Resource_PriceChangeGroupUp;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Resource_PriceChangeRandom;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Resource_PriceChangeRandomDown;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Resource_PriceChangeRandomUp;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Resource_PriceChangeUp;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_RunEvent;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_SetCiv;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_SetCiv2;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_SupremeCourt;
import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Vassalize;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusAdministrationBuildingsCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusAdvisorCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusAdvisorMaxLevel;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusAggressiveExpansion;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusAllCharactersLifeExpectancy;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusArmyMaintenance;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusArmyMoraleRecovery;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusArmyMovementSpeed;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusBattleWidth;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusBuildingsMaintenanceCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusConstructionCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusConstructionTime;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusCoreCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusCorruption;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusDevelopInfrastructureCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusDiplomacyPoints;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusDiscipline;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusDiseaseDeathRate;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusEconomyBuildingsCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusGeneralAttack;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusGeneralCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusGeneralDefense;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusGrowthRate;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusImproveRelationsModifier;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusIncomeEconomy;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusIncomeFromVassals;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusIncomeProduction;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusIncomeTaxation;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusIncreaseGrowthRateCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusIncreaseManpowerCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusIncreaseTaxEfficiencyCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusInflation;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusInvestInEconomyCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusLoanInterest;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusLoansLimit;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusMaintenanceCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusManpowerRecoveryFromADisbandedArmy;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusManpowerRecoverySpeed;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusMaxManpower;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusMaxManpowerPercentage;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusMaxMorale;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusMaximumAmountOfGold;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusMilitaryBuildingsCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusMonthlyIncome;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusMonthlyLegacy;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusMonthlyLegacyPerc;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusProductionEfficiency;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusProvinceMaintenance;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusRecruitArmyCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusRecruitArmyFirstLineCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusRecruitArmySecondLineCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusRecruitmentTime;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusRegimentsLimit;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusReinforcementSpeed;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusReligionCost;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusResearch;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusResearchPoints;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusRevolutionaryRisk;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusSiegeEffectiveness;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusTaxEfficiency;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusUnitsAttack;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusUnitsDefense;
import aoc.kingdoms.lukasz.events.outcome.civilizationBonus.EventOutcome_BonusWarScoreCost;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Devastation;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Devastation_All;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Devastation_Capital;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Devastation_ID;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Economy;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Economy_All;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Economy_Capital;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Economy_ID;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_GrowthRate;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_GrowthRate_All;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_GrowthRate_Capital;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_GrowthRate_ID;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_ID_CoreAdd;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_ID_CoreRemove;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Infrastructure;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Infrastructure_All;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Infrastructure_Capital;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Infrastructure_ID;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Manpower;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Manpower_All;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Manpower_Capital;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Manpower_ID;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Population;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Population_All;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Population_Capital;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Religion;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Religion_All;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Religion_Capital;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Religion_ID;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_TaxEfficiency;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_TaxEfficiency_All;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_TaxEfficiency_Capital;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_TaxEfficiency_ID;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Unrest;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Unrest_All;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Unrest_Capital;
import aoc.kingdoms.lukasz.events.outcome.province.EventOutcome_Province_Unrest_ID;
import aoc.kingdoms.lukasz.events.triggers.EventOutcome_Legacy_Monthly;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_AllianceIsInAlliance;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_AllianceIsLeader;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_AllianceIsLeaderID;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_AllianceIsNotInAlliance;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_AreAtWar;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_AreNotAtWar;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_Buildings_ConstructedAdministrativeBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_Buildings_ConstructedAdministrativeOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_Buildings_ConstructedBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_Buildings_ConstructedCapitalBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_Buildings_ConstructedCapitalOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_Buildings_ConstructedEconomyBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_Buildings_ConstructedEconomyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_Buildings_ConstructedMilitaryBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_Buildings_ConstructedMilitaryOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_Buildings_ConstructedOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivAdministrativeAdvisorSkillBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivAdministrativeAdvisorSkillOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivAdvisor_AgeOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivAdvisor_ConstructionCostOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivAdvisor_ProductionEfficiencyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivAlliesBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivAlliesOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivBattleWidthBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivBattleWidthOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapitalCityBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapitalCityOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_BuildingsBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_BuildingsOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_ContinentIs;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_ContinentIsNot;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_EconomyBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_EconomyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_FortLevelBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_FortLevelOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_GrowthRateBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_GrowthRateOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_HasBuilding;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_IncomeBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_IncomeOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_InfrastructureBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_InfrastructureOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_IsOccupied;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_IsOccupiedNot;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_IsUnderSiege;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_ManpowerBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_ManpowerOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_PopulationBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_PopulationOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_ReligionIs;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_TaxEfficiencyBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_TaxEfficiencyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_UnrestBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivCapital_UnrestOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivDefensivePactsBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivDefensivePactsOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivDiplomacyBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivDiplomacyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivEconomyAdvisorSkillBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivEconomyAdvisorSkillOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivEconomyBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivEconomyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivGoldBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivGoldOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivGoldOver_MaxAmountOfGold;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivGovernmentIs;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivHasHigherRankThanCiv;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivHasLargerEconomyThanCiv;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivHasLargerPopulationThanCiv;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivHasLargerRegimentsLimitThanCiv;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivHasMoreProvinceThanCiv;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivHasMoreRegimentsThanCiv;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivHasMoreTechsThanCiv;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivHasResource;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivHasResourceOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivIncomeBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivIncomeEconomyBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivIncomeEconomyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivIncomeOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivIncomeProductionBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivIncomeProductionOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivIncomeTaxationBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivIncomeTaxationOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivInflationBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivInflationOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivInnovationAdvisorSkillBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivInnovationAdvisorSkillOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivLargestProducerOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivLegacyBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivLegacyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivLegacyPerMonthBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivLegacyPerMonthOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivLoansBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivLoansOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivManpowerBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivManpowerOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivManpower_PercOfMax_Below;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivManpower_PercOfMax_Over;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivMaxManpowerBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivMaxManpowerOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivMilitaryAcademyBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivMilitaryAcademyForGeneralsBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivMilitaryAcademyForGeneralsOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivMilitaryAcademyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivMilitaryAdvisorSkillBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivMilitaryAdvisorSkillOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivNeighborsBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivNeighborsOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivNonAggressionPactsBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivNonAggressionPactsOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivNuclearReactorBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivNuclearReactorOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivPopulationBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivPopulationOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivProvincesBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivProvincesEquals;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivProvincesOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivRankPositionBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivRankPositionOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivRankPrestigeBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivRankPrestigeOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivRegimentsBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivRegimentsLimitBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivRegimentsLimitOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivRegimentsOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivRegimentsOverRegimentsLimit;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivReligionIs;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivResearchPerMonthBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivResearchPerMonthOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivRivaledCiv;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivRivaledCivNot;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivSupremeCourtBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivSupremeCourtOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivTag_GovernmentIs;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivTag_GovernmentIsNot;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivTag_ReligionIs;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivTag_ReligionIsNot;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivUnlockedAdvantagesBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivUnlockedAdvantagesOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivUnlockedLegaciesBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivUnlockedLegaciesOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivUnlockedTechnologiesBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivUnlockedTechnologiesOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivVassalsBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivVassalsOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivWarsTotalBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivWarsTotalOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivsAreNeighbors;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivsAreNeighborsNot;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_CivsAreRivals;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ConqueredProvincesBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ConqueredProvincesOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_DevelopedInfrastructureBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_DevelopedInfrastructureOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ExactDay;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_Exists;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ExistsAny;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ExistsAnyNot;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ExistsNot;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_HasVariable;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_HasVariableCiv;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_HasVariableNot;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_HaveAlliance;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_HaveDefensivePact;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_HaveGuarantee;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_HaveMilitaryAccess;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_HaveNonAggressionPact;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_HaveTruce;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IncreasedGrowthRateBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IncreasedGrowthRateOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IncreasedManpowerBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IncreasedManpowerOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IncreasedTaxEfficiencyBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IncreasedTaxEfficiencyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_InvestedInEconomyBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_InvestedInEconomyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IsAtWar;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IsAtWar_DaysOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IsCiv;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IsLargestProducer;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IsNotAtWar;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IsNotPlayer;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IsNotVassal;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IsPlayer;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IsVassal;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_IsVassalOfCiv;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_LargestProducer_ProductionOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_OpinionBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_OpinionOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_PlayingTimeBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_PlayingTimeOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceBuildingsBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceBuildingsLimitOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceBuildingsOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceCivHasCore;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceControlledByCiv;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceControlledByCivNot;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceDefenseLevelBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceDefenseLevelOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceEconomyBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceEconomyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceGrowthRateBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceGrowthRateOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceHasBuilding;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceIncomeBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceIncomeOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceInfrastructureBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceInfrastructureOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceIsCapital;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceIsOccupied;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceIsOccupiedNot;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceIsUnderSiege;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceManpowerBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceManpowerOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvincePopulationBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvincePopulationOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceReligionIs;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceReligionIsNot;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceTaxEfficiencyBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceTaxEfficiencyOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceUnrestBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_ProvinceUnrestOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_RandomChance;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_RecruitedAdvisorsBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_RecruitedAdvisorsOver;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_YearBelow;
import aoc.kingdoms.lukasz.events.triggers.EventTrigger_YearOver;
import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.map.civilization.CivilizationEventsData_Variables;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EventsManager {
    public static Image eventIMG = null;
    public static String loadedEventIMG = "";
    public static List<Event> events = new ArrayList();
    public static int iEventsSize = 0;
    public static List<Event> eventsSiege = new ArrayList();
    public static int iEventsSiegeSize = 0;
    public static List<Event> eventsGlobal = new ArrayList();
    public static int iEventsGlobalSize = 0;
    public static List<Event> eventsScenario = new ArrayList();
    public static int iEventsScenarioSize = 0;
    public static List<Event> eventsSiegeScenario = new ArrayList();
    public static int iEventsSiegeScenarioSize = 0;
    public static List<Event> eventsGlobalScenario = new ArrayList();
    public static int iEventsGlobalScenarioSize = 0;
    public static CivilizationEventsData_Variables eventsGlobal_Variables = new CivilizationEventsData_Variables();
    public static List<Image> missionImages = new ArrayList();
    public static List<String> runEvent = new ArrayList();
    public static List<Event_ExactDate> exactDate_Events = new ArrayList();
    public static List<Event_ExactDate> exactDate_EventsScenario = new ArrayList();
    public static int runEventGlobalID = 0;
    public static int runEventGlobalID_Scenario = 0;
    public static String loadScenarioEventsTag = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.events.EventsManager$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            Game.soundsManager.playSound(SoundsManager.EVENT_INFO);
            if (!EventsManager.events.get(this.id).popUp || Game.menuManager.getVisibleInGame_Event()) {
                return;
            }
            Game.menuManager.rebuildInGame_Event(EventsManager.events.get(this.id), 0, this.id);
            Game.soundsManager.playSound(SoundsManager.EVENT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.events.EventsManager$10, reason: invalid class name */
    class AnonymousClass10 extends Game.SimpleTask {
        AnonymousClass10(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            if (!EventsManager.eventsGlobalScenario.get(this.id).popUp || Game.menuManager.getVisibleInGame_Event()) {
                return;
            }
            Game.menuManager.rebuildInGame_Event(EventsManager.eventsGlobalScenario.get(this.id), 5, this.id);
            Game.soundsManager.playSound(SoundsManager.EVENT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.events.EventsManager$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            Game.soundsManager.playSound(SoundsManager.EVENT_INFO);
            if (!EventsManager.eventsScenario.get(this.id).popUp || Game.menuManager.getVisibleInGame_Event()) {
                return;
            }
            Game.menuManager.rebuildInGame_Event(EventsManager.eventsScenario.get(this.id), 3, this.id);
            Game.soundsManager.playSound(SoundsManager.EVENT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.events.EventsManager$3, reason: invalid class name */
    class AnonymousClass3 extends Game.SimpleTask {
        AnonymousClass3(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            Game.soundsManager.playSound(SoundsManager.EVENT_INFO);
            if (!EventsManager.eventsScenario.get(this.id).popUp || Game.menuManager.getVisibleInGame_Event()) {
                return;
            }
            Game.menuManager.rebuildInGame_Event(EventsManager.eventsScenario.get(this.id), 3, this.id);
            Game.soundsManager.playSound(SoundsManager.EVENT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.events.EventsManager$4, reason: invalid class name */
    class AnonymousClass4 extends Game.SimpleTask {
        AnonymousClass4(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            Game.soundsManager.playSound(SoundsManager.EVENT_INFO);
            if (!EventsManager.events.get(this.id).popUp || Game.menuManager.getVisibleInGame_Event()) {
                return;
            }
            Game.menuManager.rebuildInGame_Event(EventsManager.events.get(this.id), 0, this.id);
            Game.soundsManager.playSound(SoundsManager.EVENT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.events.EventsManager$5, reason: invalid class name */
    class AnonymousClass5 extends Game.SimpleTask {
        AnonymousClass5(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            Game.soundsManager.playSound(SoundsManager.EVENT_INFO);
            if (!EventsManager.events.get(this.id).popUp || Game.menuManager.getVisibleInGame_Event()) {
                return;
            }
            Game.menuManager.rebuildInGame_Event(EventsManager.events.get(this.id), 0, this.id);
            Game.soundsManager.playSound(SoundsManager.EVENT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.events.EventsManager$6, reason: invalid class name */
    class AnonymousClass6 extends Game.SimpleTask {
        AnonymousClass6(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            Game.soundsManager.playSound(SoundsManager.EVENT_INFO);
            if (!EventsManager.eventsScenario.get(this.id).popUp || Game.menuManager.getVisibleInGame_Event()) {
                return;
            }
            Game.menuManager.rebuildInGame_Event(EventsManager.eventsScenario.get(this.id), 3, this.id);
            Game.soundsManager.playSound(SoundsManager.EVENT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.events.EventsManager$7, reason: invalid class name */
    class AnonymousClass7 extends Game.SimpleTask {
        AnonymousClass7(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            if (!EventsManager.eventsSiege.get(this.id).popUp || Game.menuManager.getVisibleInGame_Event()) {
                return;
            }
            Game.menuManager.rebuildInGame_Event(EventsManager.eventsSiege.get(this.id), 1, this.id);
            Game.soundsManager.playSound(SoundsManager.EVENT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.events.EventsManager$8, reason: invalid class name */
    class AnonymousClass8 extends Game.SimpleTask {
        AnonymousClass8(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            if (!EventsManager.eventsSiegeScenario.get(this.id).popUp || Game.menuManager.getVisibleInGame_Event()) {
                return;
            }
            Game.menuManager.rebuildInGame_Event(EventsManager.eventsSiegeScenario.get(this.id), 4, this.id);
            Game.soundsManager.playSound(SoundsManager.EVENT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.events.EventsManager$9, reason: invalid class name */
    class AnonymousClass9 extends Game.SimpleTask {
        AnonymousClass9(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            if (!EventsManager.eventsGlobal.get(this.id).popUp || Game.menuManager.getVisibleInGame_Event()) {
                return;
            }
            Game.menuManager.rebuildInGame_Event(EventsManager.eventsGlobal.get(this.id), 2, this.id);
            Game.soundsManager.playSound(SoundsManager.EVENT);
        }
    }

    public static class Event_ExactDate {
        public int day;
        public int eventID;
        public int month;
        public int year;

        public Event_ExactDate(int i, int i2, int i3, int i4) {
            this.eventID = i;
            this.day = i2;
            this.month = i3;
            this.year = i4;
        }
    }

    public static void clearEventsScenario() {
        eventsScenario.clear();
        eventsSiegeScenario.clear();
        eventsGlobalScenario.clear();
        iEventsScenarioSize = 0;
        iEventsSiegeScenarioSize = 0;
        iEventsGlobalScenarioSize = 0;
        runEvent.clear();
        exactDate_EventsScenario.clear();
        exactDate_Events.clear();
    }

    public static Event getActiveEvent(int i, int i2) {
        if (i2 == 0) {
            return events.get(i);
        }
        if (i2 == 1) {
            return eventsSiege.get(i);
        }
        if (i2 == 2) {
            return eventsGlobal.get(i);
        }
        if (i2 == 3) {
            return eventsScenario.get(i);
        }
        if (i2 != 4) {
            return i2 != 5 ? events.get(i) : eventsGlobalScenario.get(i);
        }
        return eventsSiegeScenario.get(i);
    }

    /* JADX WARN: Code duplicated, block: B:130:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:1642:0x2784  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:51:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:90:0x015b  */
    /* JADX WARN: Failed to find 'out' block for switch in B:1644:0x2788. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x005e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:1998:0x36fa. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:47:0x00b7. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:866:0x0d96. Please report as an issue. */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Event loadEvent(int i, String[] strArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        Exception exc;
        int i6;
        int i7;
        byte b;
        byte b2;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        Exception e;
        byte b3;
        int i8;
        byte b4;
        byte b5;
        byte b6;
        int i9;
        String[] strArr2 = strArr;
        try {
            int length = strArr2.length;
            if (length <= 1) {
                return null;
            }
            Event event = new Event();
            EventTrigger eventTrigger = new EventTrigger();
            EventOption eventOption = new EventOption();
            int i10 = 1;
            int i11 = 1;
            int i12 = 1;
            int i13 = 0;
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            int i14 = 0;
            int i15 = 0;
            while (i13 < length) {
                try {
                    String[] strArrSplit = strArr2[i13].split("=");
                    int length2 = strArrSplit.length;
                    String str6 = fTNtCctcBZcqKK.mqzixiaJDDtJK;
                    i2 = length;
                    if (length2 == 1) {
                        try {
                            if (strArrSplit[0].length() > 0) {
                                String str7 = TGqtTWl.ApmGi;
                                i3 = i10;
                                i6 = i11;
                                String str8 = CoLRpi.jowBJYhxJ;
                                if (z2) {
                                    i4 = i12;
                                    try {
                                        String str9 = strArrSplit[0];
                                        switch (str9.hashCode()) {
                                            case -519228692:
                                                b6 = str9.equals("trigger_and_end") ? (byte) 0 : (byte) -1;
                                                switch (b6) {
                                                    case 0:
                                                    case 1:
                                                    case 2:
                                                    case 3:
                                                        i9 = i15;
                                                        try {
                                                            event.addTrigger(eventTrigger, i9);
                                                            z2 = false;
                                                            i15 = i9;
                                                            i11 = i6;
                                                            i12 = i4;
                                                        } catch (Exception e2) {
                                                            exc = e2;
                                                            i15 = i9;
                                                            i5 = i14;
                                                            i11 = i6;
                                                            z2 = false;
                                                            CFG.exceptionStack(exc);
                                                            i14 = i5;
                                                            i12 = i4;
                                                        }
                                                        break;
                                                    case 4:
                                                        i9 = i15;
                                                        i14 = 0;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 5:
                                                        i9 = i15;
                                                        i14 = 1;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 6:
                                                        i9 = i15;
                                                        i14 = 2;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 7:
                                                        i9 = i15;
                                                        i14 = 3;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    default:
                                                        i9 = i15;
                                                        try {
                                                            CFG.LOG(" MISSING LEN=1 IN TRIGGER -> " + strArrSplit[0] + str6 + (i13 + 1));
                                                            i15 = i9;
                                                            i11 = i6;
                                                            i12 = i4;
                                                        } catch (Exception e3) {
                                                            exc = e3;
                                                            i15 = i9;
                                                            i5 = i14;
                                                            i11 = i6;
                                                            CFG.exceptionStack(exc);
                                                            i14 = i5;
                                                            i12 = i4;
                                                        }
                                                        break;
                                                }
                                                break;
                                            case 249062630:
                                                b6 = str9.equals("trigger_or_end") ? (byte) 2 : (byte) -1;
                                                switch (b6) {
                                                    case 0:
                                                    case 1:
                                                    case 2:
                                                    case 3:
                                                        i9 = i15;
                                                        event.addTrigger(eventTrigger, i9);
                                                        z2 = false;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 4:
                                                        i9 = i15;
                                                        i14 = 0;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 5:
                                                        i9 = i15;
                                                        i14 = 1;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 6:
                                                        i9 = i15;
                                                        i14 = 2;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 7:
                                                        i9 = i15;
                                                        i14 = 3;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    default:
                                                        i9 = i15;
                                                        CFG.LOG(" MISSING LEN=1 IN TRIGGER -> " + strArrSplit[0] + str6 + (i13 + 1));
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                }
                                                break;
                                            case 388898591:
                                                b6 = str9.equals(str8) ? (byte) 5 : (byte) -1;
                                                switch (b6) {
                                                    case 0:
                                                    case 1:
                                                    case 2:
                                                    case 3:
                                                        i9 = i15;
                                                        event.addTrigger(eventTrigger, i9);
                                                        z2 = false;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 4:
                                                        i9 = i15;
                                                        i14 = 0;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 5:
                                                        i9 = i15;
                                                        i14 = 1;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 6:
                                                        i9 = i15;
                                                        i14 = 2;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 7:
                                                        i9 = i15;
                                                        i14 = 3;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    default:
                                                        i9 = i15;
                                                        CFG.LOG(" MISSING LEN=1 IN TRIGGER -> " + strArrSplit[0] + str6 + (i13 + 1));
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                }
                                                break;
                                            case 1056766720:
                                                b6 = str9.equals("trigger_and_not_end") ? (byte) 1 : (byte) -1;
                                                switch (b6) {
                                                    case 0:
                                                    case 1:
                                                    case 2:
                                                    case 3:
                                                        i9 = i15;
                                                        event.addTrigger(eventTrigger, i9);
                                                        z2 = false;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 4:
                                                        i9 = i15;
                                                        i14 = 0;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 5:
                                                        i9 = i15;
                                                        i14 = 1;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 6:
                                                        i9 = i15;
                                                        i14 = 2;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 7:
                                                        i9 = i15;
                                                        i14 = 3;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    default:
                                                        i9 = i15;
                                                        CFG.LOG(" MISSING LEN=1 IN TRIGGER -> " + strArrSplit[0] + str6 + (i13 + 1));
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                }
                                                break;
                                            case 1334484986:
                                                b6 = str9.equals("trigger_or_not_end") ? (byte) 3 : (byte) -1;
                                                switch (b6) {
                                                    case 0:
                                                    case 1:
                                                    case 2:
                                                    case 3:
                                                        i9 = i15;
                                                        event.addTrigger(eventTrigger, i9);
                                                        z2 = false;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 4:
                                                        i9 = i15;
                                                        i14 = 0;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 5:
                                                        i9 = i15;
                                                        i14 = 1;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 6:
                                                        i9 = i15;
                                                        i14 = 2;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 7:
                                                        i9 = i15;
                                                        i14 = 3;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    default:
                                                        i9 = i15;
                                                        CFG.LOG(" MISSING LEN=1 IN TRIGGER -> " + strArrSplit[0] + str6 + (i13 + 1));
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                }
                                                break;
                                            case 1386744131:
                                                b6 = str9.equals("next_or_not") ? (byte) 7 : (byte) -1;
                                                switch (b6) {
                                                    case 0:
                                                    case 1:
                                                    case 2:
                                                    case 3:
                                                        i9 = i15;
                                                        event.addTrigger(eventTrigger, i9);
                                                        z2 = false;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 4:
                                                        i9 = i15;
                                                        i14 = 0;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 5:
                                                        i9 = i15;
                                                        i14 = 1;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 6:
                                                        i9 = i15;
                                                        i14 = 2;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 7:
                                                        i9 = i15;
                                                        i14 = 3;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    default:
                                                        i9 = i15;
                                                        CFG.LOG(" MISSING LEN=1 IN TRIGGER -> " + strArrSplit[0] + str6 + (i13 + 1));
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                }
                                                break;
                                            case 1424720523:
                                                b6 = str9.equals("next_and") ? (byte) 4 : (byte) -1;
                                                switch (b6) {
                                                    case 0:
                                                    case 1:
                                                    case 2:
                                                    case 3:
                                                        i9 = i15;
                                                        event.addTrigger(eventTrigger, i9);
                                                        z2 = false;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 4:
                                                        i9 = i15;
                                                        i14 = 0;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 5:
                                                        i9 = i15;
                                                        i14 = 1;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 6:
                                                        i9 = i15;
                                                        i14 = 2;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 7:
                                                        i9 = i15;
                                                        i14 = 3;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    default:
                                                        i9 = i15;
                                                        CFG.LOG(" MISSING LEN=1 IN TRIGGER -> " + strArrSplit[0] + str6 + (i13 + 1));
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                }
                                                break;
                                            case 1847074479:
                                                try {
                                                    b6 = str9.equals(str7) ? (byte) 6 : (byte) -1;
                                                    switch (b6) {
                                                        case 0:
                                                        case 1:
                                                        case 2:
                                                        case 3:
                                                            i9 = i15;
                                                            event.addTrigger(eventTrigger, i9);
                                                            z2 = false;
                                                            i15 = i9;
                                                            i11 = i6;
                                                            i12 = i4;
                                                            break;
                                                        case 4:
                                                            i9 = i15;
                                                            i14 = 0;
                                                            i15 = i9;
                                                            i11 = i6;
                                                            i12 = i4;
                                                            break;
                                                        case 5:
                                                            i9 = i15;
                                                            i14 = 1;
                                                            i15 = i9;
                                                            i11 = i6;
                                                            i12 = i4;
                                                            break;
                                                        case 6:
                                                            i9 = i15;
                                                            i14 = 2;
                                                            i15 = i9;
                                                            i11 = i6;
                                                            i12 = i4;
                                                            break;
                                                        case 7:
                                                            i9 = i15;
                                                            i14 = 3;
                                                            i15 = i9;
                                                            i11 = i6;
                                                            i12 = i4;
                                                            break;
                                                        default:
                                                            i9 = i15;
                                                            CFG.LOG(" MISSING LEN=1 IN TRIGGER -> " + strArrSplit[0] + str6 + (i13 + 1));
                                                            i15 = i9;
                                                            i11 = i6;
                                                            i12 = i4;
                                                            break;
                                                    }
                                                } catch (Exception e4) {
                                                    e = e4;
                                                    exc = e;
                                                    i5 = i14;
                                                    i11 = i6;
                                                    CFG.exceptionStack(exc);
                                                    i14 = i5;
                                                    i12 = i4;
                                                    i13++;
                                                    strArr2 = strArr;
                                                    length = i2;
                                                    i10 = i3;
                                                    break;
                                                }
                                                break;
                                            default:
                                                b6 = -1;
                                                switch (b6) {
                                                    case 0:
                                                    case 1:
                                                    case 2:
                                                    case 3:
                                                        i9 = i15;
                                                        event.addTrigger(eventTrigger, i9);
                                                        z2 = false;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 4:
                                                        i9 = i15;
                                                        i14 = 0;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 5:
                                                        i9 = i15;
                                                        i14 = 1;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 6:
                                                        i9 = i15;
                                                        i14 = 2;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    case 7:
                                                        i9 = i15;
                                                        i14 = 3;
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                    default:
                                                        i9 = i15;
                                                        CFG.LOG(" MISSING LEN=1 IN TRIGGER -> " + strArrSplit[0] + str6 + (i13 + 1));
                                                        i15 = i9;
                                                        i11 = i6;
                                                        i12 = i4;
                                                        break;
                                                }
                                                break;
                                        }
                                    } catch (Exception e5) {
                                        e = e5;
                                    }
                                } else {
                                    i4 = i12;
                                    int i16 = i15;
                                    if (z3) {
                                        i7 = i16;
                                        try {
                                            String str10 = strArrSplit[0];
                                            switch (str10.hashCode()) {
                                                case 388898591:
                                                    if (str10.equals(str8)) {
                                                        b5 = 2;
                                                    } else {
                                                        b5 = -1;
                                                    }
                                                    break;
                                                case 1373896209:
                                                    if (str10.equals("option_end")) {
                                                        b5 = 0;
                                                    } else {
                                                        b5 = -1;
                                                    }
                                                    break;
                                                case 1386744131:
                                                    if (str10.equals("next_or_not")) {
                                                        b5 = 4;
                                                    } else {
                                                        b5 = -1;
                                                    }
                                                    break;
                                                case 1424720523:
                                                    if (str10.equals("next_and")) {
                                                        b5 = 1;
                                                    } else {
                                                        b5 = -1;
                                                    }
                                                    break;
                                                case 1847074479:
                                                    if (str10.equals(str7)) {
                                                        b5 = 3;
                                                    } else {
                                                        b5 = -1;
                                                    }
                                                    break;
                                                default:
                                                    b5 = -1;
                                                    break;
                                            }
                                            if (b5 == 0) {
                                                try {
                                                    event.options.add(eventOption);
                                                    z3 = false;
                                                } catch (Exception e6) {
                                                    exc = e6;
                                                    i5 = i14;
                                                    i11 = i6;
                                                    i15 = i7;
                                                    z3 = false;
                                                    CFG.exceptionStack(exc);
                                                    i14 = i5;
                                                    i12 = i4;
                                                }
                                            } else if (b5 == 1) {
                                                i14 = 0;
                                            } else if (b5 == 2) {
                                                i14 = 1;
                                            } else if (b5 == 3) {
                                                i14 = 2;
                                            } else if (b5 != 4) {
                                                CFG.LOG(" MISSING LEN=1 IN TRIGGER -> " + strArrSplit[0] + str6 + (i13 + 1));
                                            } else {
                                                i14 = 3;
                                            }
                                            i11 = i6;
                                            i12 = i4;
                                            i15 = i7;
                                        } catch (Exception e7) {
                                            exc = e7;
                                            i5 = i14;
                                            i11 = i6;
                                            i15 = i7;
                                        }
                                    } else {
                                        String str11 = strArrSplit[0];
                                        switch (str11.hashCode()) {
                                            case -680631600:
                                                if (str11.equals("trigger_and")) {
                                                    b4 = 0;
                                                } else {
                                                    b4 = -1;
                                                }
                                                break;
                                            case -519219996:
                                                if (str11.equals("trigger_and_not")) {
                                                    b4 = 1;
                                                } else {
                                                    b4 = -1;
                                                }
                                                break;
                                            case 249071326:
                                                if (str11.equals("trigger_or_not")) {
                                                    b4 = 3;
                                                } else {
                                                    b4 = -1;
                                                }
                                                break;
                                            case 1363517898:
                                                if (str11.equals("trigger_or")) {
                                                    b4 = 2;
                                                } else {
                                                    b4 = -1;
                                                }
                                                break;
                                            case 1373893522:
                                                if (str11.equals("option_btn")) {
                                                    b4 = 4;
                                                } else {
                                                    b4 = -1;
                                                }
                                                break;
                                            default:
                                                b4 = -1;
                                                break;
                                        }
                                        if (b4 == 0) {
                                            try {
                                                eventTrigger = new EventTrigger();
                                                z2 = true;
                                                i15 = 0;
                                            } catch (Exception e8) {
                                                exc = e8;
                                                i5 = i14;
                                                i11 = i6;
                                                z2 = true;
                                                i15 = 0;
                                                CFG.exceptionStack(exc);
                                                i14 = i5;
                                                i12 = i4;
                                            }
                                        } else if (b4 == 1) {
                                            try {
                                                eventTrigger = new EventTrigger();
                                                z2 = true;
                                                i15 = 1;
                                            } catch (Exception e9) {
                                                exc = e9;
                                                i5 = i14;
                                                i11 = i6;
                                                z2 = true;
                                                i15 = 1;
                                                CFG.exceptionStack(exc);
                                                i14 = i5;
                                                i12 = i4;
                                            }
                                        } else if (b4 == 2) {
                                            try {
                                                eventTrigger = new EventTrigger();
                                                z2 = true;
                                                i15 = 2;
                                            } catch (Exception e10) {
                                                exc = e10;
                                                i5 = i14;
                                                i11 = i6;
                                                z2 = true;
                                                i15 = 2;
                                                CFG.exceptionStack(exc);
                                                i14 = i5;
                                                i12 = i4;
                                            }
                                        } else if (b4 == 3) {
                                            try {
                                                eventTrigger = new EventTrigger();
                                                z2 = true;
                                                i15 = 3;
                                            } catch (Exception e11) {
                                                exc = e11;
                                                i5 = i14;
                                                i11 = i6;
                                                z2 = true;
                                                i15 = 3;
                                                CFG.exceptionStack(exc);
                                                i14 = i5;
                                                i12 = i4;
                                            }
                                        } else if (b4 != 4) {
                                            CFG.LOG(PZBvyl.dzO + strArrSplit[0] + str6 + (i13 + 1));
                                            i15 = i16;
                                        } else {
                                            try {
                                                eventOption = new EventOption();
                                                i15 = i16;
                                                z3 = true;
                                            } catch (Exception e12) {
                                                exc = e12;
                                                i5 = i14;
                                                i11 = i6;
                                                i15 = i16;
                                                z3 = true;
                                                CFG.exceptionStack(exc);
                                                i14 = i5;
                                                i12 = i4;
                                            }
                                        }
                                        i11 = i6;
                                        i12 = i4;
                                    }
                                    CFG.exceptionStack(exc);
                                    i14 = i5;
                                    i12 = i4;
                                }
                            } else {
                                i3 = i10;
                                i6 = i11;
                                i4 = i12;
                                i7 = i15;
                                i5 = i14;
                                i14 = i5;
                                i11 = i6;
                                i12 = i4;
                                i15 = i7;
                            }
                        } catch (Exception e13) {
                            i3 = i10;
                            i4 = i12;
                            exc = e13;
                            i5 = i14;
                        }
                    } else {
                        i3 = i10;
                        i6 = i11;
                        i4 = i12;
                        i7 = i15;
                        try {
                            if (strArrSplit.length > 1) {
                                if (z2) {
                                    try {
                                        String str12 = strArrSplit[0];
                                        switch (str12.hashCode()) {
                                            case -2140660066:
                                                b3 = str12.equals("province_tax_efficiency_below") ? (byte) 23 : (byte) -1;
                                                break;
                                            case -2126463875:
                                                b3 = str12.equals("civ_manpower_perc_below") ? (byte) 158 : (byte) -1;
                                                break;
                                            case -2105570733:
                                                b3 = str12.equals("civ_income_production_over") ? (byte) 186 : (byte) -1;
                                                break;
                                            case -2059886702:
                                                b3 = str12.equals("civs_have_alliance") ? (byte) 210 : (byte) -1;
                                                break;
                                            case -2054427294:
                                                b3 = str12.equals("province_civ_has_core") ? (byte) 40 : (byte) -1;
                                                break;
                                            case -2009098833:
                                                b3 = str12.equals("year_below") ? (byte) 65 : (byte) -1;
                                                break;
                                            case -1982787506:
                                                b3 = str12.equals("civ_population_below") ? (byte) 71 : (byte) -1;
                                                break;
                                            case -1969680948:
                                                b3 = str12.equals("civ_innovation_advisor_skill_over") ? (byte) 146 : (byte) -1;
                                                break;
                                            case -1962250838:
                                                b3 = str12.equals("civ_capital_infrastructure_over") ? (byte) 90 : (byte) -1;
                                                break;
                                            case -1960527129:
                                                b3 = str12.equals(MQYGMkZOAcS.wSTBKpYSY) ? (byte) 57 : (byte) -1;
                                                break;
                                            case -1920347322:
                                                b3 = str12.equals("province_defense_lvl_below") ? (byte) 39 : (byte) -1;
                                                break;
                                            case -1916431878:
                                                b3 = str12.equals("civs_are_neighbors") ? (byte) 204 : (byte) -1;
                                                break;
                                            case -1915193282:
                                                b3 = str12.equals("civ_unlocked_advantages_over") ? (byte) 117 : (byte) -1;
                                                break;
                                            case -1905568711:
                                                b3 = str12.equals("civ_capital_is_not_occupied") ? (byte) 97 : (byte) -1;
                                                break;
                                            case -1905182718:
                                                b3 = str12.equals("civ_administrative_advisor_skill_below") ? (byte) 143 : (byte) -1;
                                                break;
                                            case -1857890169:
                                                b3 = str12.equals("province_buildings_limit_over") ? (byte) 46 : (byte) -1;
                                                break;
                                            case -1838004718:
                                                b3 = str12.equals("has_variable_civ") ? (byte) 216 : (byte) -1;
                                                break;
                                            case -1837993963:
                                                b3 = str12.equals("has_variable_not") ? (byte) 215 : (byte) -1;
                                                break;
                                            case -1828139637:
                                                b3 = str12.equals("increased_manpower_over") ? (byte) 13 : (byte) -1;
                                                break;
                                            case -1827984411:
                                                b3 = str12.equals("civ_battle_width_over") ? (byte) 124 : (byte) -1;
                                                break;
                                            case -1797642387:
                                                b3 = str12.equals("civ_inflation_below") ? (byte) 167 : (byte) -1;
                                                break;
                                            case -1772525858:
                                                b3 = str12.equals("province_buildings_limit_below") ? (byte) 47 : (byte) -1;
                                                break;
                                            case -1749730067:
                                                b3 = str12.equals("developed_infrastructure_over") ? (byte) 3 : (byte) -1;
                                                break;
                                            case -1725407394:
                                                b3 = str12.equals("economy_buildings_constructed_over") ? (byte) 56 : (byte) -1;
                                                break;
                                            case -1696531171:
                                                b3 = str12.equals("exists_any_not") ? (byte) 224 : (byte) -1;
                                                break;
                                            case -1653127410:
                                                b3 = str12.equals("civs_are_not_neighbors") ? (byte) 205 : (byte) -1;
                                                break;
                                            case -1646064535:
                                                b3 = str12.equals("province_religion_is") ? (byte) 30 : (byte) -1;
                                                break;
                                            case -1579768989:
                                                b3 = str12.equals("civ_capital_city_below") ? (byte) 131 : (byte) -1;
                                                break;
                                            case -1573000839:
                                                b3 = str12.equals("civ_conquered_provinces_below") ? (byte) 6 : (byte) -1;
                                                break;
                                            case -1565204385:
                                                b3 = str12.equals("civ_regiments_limit_below") ? (byte) 137 : (byte) -1;
                                                break;
                                            case -1552840195:
                                                b3 = str12.equals("province_religion_is_not") ? (byte) 31 : (byte) -1;
                                                break;
                                            case -1531534118:
                                                b3 = str12.equals("civ_capital_buildings_over") ? (byte) 74 : (byte) -1;
                                                break;
                                            case -1514469657:
                                                b3 = str12.equals("civ_max_manpower_below") ? (byte) 156 : (byte) -1;
                                                break;
                                            case -1481097631:
                                                b3 = str12.equals("province_infrastructure_over") ? (byte) 34 : (byte) -1;
                                                break;
                                            case -1478950072:
                                                b3 = str12.equals("not_exists") ? (byte) 222 : (byte) -1;
                                                break;
                                            case -1455672124:
                                                b3 = str12.equals("civ_neighbors_below") ? (byte) 112 : (byte) -1;
                                                break;
                                            case -1453665528:
                                                b3 = str12.equals("civ_manpower_perc_over") ? (byte) 157 : (byte) -1;
                                                break;
                                            case -1445321225:
                                                b3 = str12.equals("civ_has_higher_ranking_than_civ") ? (byte) 198 : (byte) -1;
                                                break;
                                            case -1422656100:
                                                b3 = str12.equals("civ_military_academy_for_generals_over") ? (byte) 128 : (byte) -1;
                                                break;
                                            case -1416825923:
                                                b3 = str12.equals("civ_has_rivalry") ? (byte) 201 : (byte) -1;
                                                break;
                                            case -1393040915:
                                                b3 = str12.equals("alliance_special_is_not_member_id") ? (byte) 171 : (byte) -1;
                                                break;
                                            case -1389653985:
                                                b3 = str12.equals("civ_rank_position_below") ? (byte) 120 : (byte) -1;
                                                break;
                                            case -1385881957:
                                                b3 = str12.equals("civ_legacy_over") ? (byte) 162 : (byte) -1;
                                                break;
                                            case -1369267514:
                                                b3 = str12.equals("civ_provinces_below") ? (byte) 68 : (byte) -1;
                                                break;
                                            case -1340397443:
                                                b3 = str12.equals("civ_supreme_court_over") ? (byte) 132 : (byte) -1;
                                                break;
                                            case -1323640223:
                                                b3 = str12.equals("civ_gold_below") ? (byte) 100 : (byte) -1;
                                                break;
                                            case -1289358244:
                                                b3 = str12.equals(hQfu.yEFHLgonm) ? (byte) 221 : (byte) -1;
                                                break;
                                            case -1285343907:
                                                b3 = str12.equals("civ_capital_fort_level_over") ? (byte) 94 : (byte) -1;
                                                break;
                                            case -1261276944:
                                                b3 = str12.equals("playing_time_below") ? (byte) 63 : (byte) -1;
                                                break;
                                            case -1242540016:
                                                b3 = str12.equals("civ_capital_tax_efficiency_over") ? (byte) 76 : (byte) -1;
                                                break;
                                            case -1240576169:
                                                b3 = str12.equals("civ_allies_below") ? (byte) 104 : (byte) -1;
                                                break;
                                            case -1208652000:
                                                b3 = str12.equals("province_is_under_siege") ? (byte) 51 : (byte) -1;
                                                break;
                                            case -1203460920:
                                                b3 = str12.equals("civ_capital_fort_level_below") ? (byte) 95 : (byte) -1;
                                                break;
                                            case -1179772869:
                                                b3 = str12.equals("is_civ") ? (byte) 123 : (byte) -1;
                                                break;
                                            case -1172792145:
                                                b3 = str12.equals("civs_are_not_at_war") ? (byte) 192 : (byte) -1;
                                                break;
                                            case -1172212287:
                                                b3 = str12.equals("civ_economy_below") ? (byte) 73 : (byte) -1;
                                                break;
                                            case -1165171607:
                                                b3 = str12.equals("civ_military_academy_for_generals_below") ? (byte) 129 : (byte) -1;
                                                break;
                                            case -1119694164:
                                                b3 = str12.equals("increased_tax_efficiency_below") ? (byte) 12 : (byte) -1;
                                                break;
                                            case -1064005512:
                                                b3 = str12.equals("civ_tag_religion_is_not") ? (byte) 226 : (byte) -1;
                                                break;
                                            case -1021316371:
                                                b3 = str12.equals("province_not_controlled_by") ? (byte) 42 : (byte) -1;
                                                break;
                                            case -999571001:
                                                b3 = str12.equals("recruited_advisors_below") ? (byte) 165 : (byte) -1;
                                                break;
                                            case -943072711:
                                                b3 = str12.equals("civ_innovation_advisor_skill_below") ? (byte) 147 : (byte) -1;
                                                break;
                                            case -936773756:
                                                b3 = str12.equals("province_is_occupied") ? (byte) 49 : (byte) -1;
                                                break;
                                            case -925371251:
                                                b3 = str12.equals(lOow.cbZdPaRmzWHcbnn) ? (byte) 206 : (byte) -1;
                                                break;
                                            case -914626593:
                                                b3 = str12.equals("civ_unlocked_legacies_over") ? (byte) 113 : (byte) -1;
                                                break;
                                            case -899749016:
                                                b3 = str12.equals("province_has_building") ? (byte) 43 : (byte) -1;
                                                break;
                                            case -860688750:
                                                b3 = str12.equals("civ_income_production_below") ? (byte) 187 : (byte) -1;
                                                break;
                                            case -850259366:
                                                b3 = str12.equals("increased_manpower_below") ? (byte) 14 : (byte) -1;
                                                break;
                                            case -845447360:
                                                b3 = str12.equals("civ_battle_width_below") ? (byte) 125 : (byte) -1;
                                                break;
                                            case -838264668:
                                                b3 = str12.equals("civ_tag_government_is") ? (byte) 227 : (byte) -1;
                                                break;
                                            case -830724931:
                                                b3 = str12.equals("buildings_constructed_over") ? (byte) 52 : (byte) -1;
                                                break;
                                            case -792595040:
                                                b3 = str12.equals("civ_capital_unrest_over") ? (byte) 84 : (byte) -1;
                                                break;
                                            case -772154012:
                                                b3 = str12.equals("civ_military_advisor_skill_over") ? (byte) 148 : (byte) -1;
                                                break;
                                            case -761386809:
                                                b3 = str12.equals("province_tax_efficiency_over") ? (byte) 22 : (byte) -1;
                                                break;
                                            case -712739301:
                                                b3 = str12.equals("civ_capital_infrastructure_below") ? (byte) 91 : (byte) -1;
                                                break;
                                            case -705169617:
                                                b3 = str12.equals("military_buildings_constructed_over") ? (byte) 58 : (byte) -1;
                                                break;
                                            case -697795504:
                                                b3 = str12.equals("civ_has_larger_population_than_civ") ? (byte) 194 : (byte) -1;
                                                break;
                                            case -659338104:
                                                b3 = str12.equals("civ_defensive_pacts_below") ? (byte) 106 : (byte) -1;
                                                break;
                                            case -651413073:
                                                b3 = str12.equals("civ_capital_continent_is_not") ? (byte) 79 : (byte) -1;
                                                break;
                                            case -647039040:
                                                b3 = str12.equals("civ_vassals_below") ? (byte) 110 : (byte) -1;
                                                break;
                                            case -641494085:
                                                b3 = str12.equals("civ_capital_economy_over") ? (byte) 80 : (byte) -1;
                                                break;
                                            case -638360615:
                                                b3 = str12.equals("province_controlled_by") ? (byte) 41 : (byte) -1;
                                                break;
                                            case -628772078:
                                                b3 = str12.equals("civ_advisor_production_efficiency_over") ? (byte) 151 : (byte) -1;
                                                break;
                                            case -606315695:
                                                b3 = str12.equals("civ_wars_total_below") ? (byte) 8 : (byte) -1;
                                                break;
                                            case -603694175:
                                                b3 = str12.equals("civ_capital_income_below") ? (byte) 89 : (byte) -1;
                                                break;
                                            case -578340850:
                                                b3 = str12.equals("civ_have_military_access") ? (byte) 213 : (byte) -1;
                                                break;
                                            case -573259932:
                                                b3 = str12.equals("civ_capital_income_over") ? (byte) 88 : (byte) -1;
                                                break;
                                            case -556376508:
                                                b3 = str12.equals("civ_has_more_provinces_than_civ") ? (byte) 193 : (byte) -1;
                                                break;
                                            case -553968930:
                                                b3 = str12.equals("civs_have_truce") ? (byte) 211 : (byte) -1;
                                                break;
                                            case -521713770:
                                                b3 = str12.equals("is_player") ? (byte) 219 : (byte) -1;
                                                break;
                                            case -512963863:
                                                b3 = str12.equals("is_puppet") ? (byte) 217 : (byte) -1;
                                                break;
                                            case -490509298:
                                                b3 = str12.equals("province_unrest_below") ? (byte) 33 : (byte) -1;
                                                break;
                                            case -480048234:
                                                b3 = str12.equals("year_over") ? (byte) 64 : (byte) -1;
                                                break;
                                            case -452206007:
                                                b3 = str12.equals("civ_unlocked_technologies_below") ? (byte) 116 : (byte) -1;
                                                break;
                                            case -443873145:
                                                b3 = str12.equals("civ_has_more_regiments_than_civ") ? (byte) 197 : (byte) -1;
                                                break;
                                            case -419130231:
                                                b3 = str12.equals("civ_economic_advisor_skill_below") ? (byte) 145 : (byte) -1;
                                                break;
                                            case -413297466:
                                                b3 = str12.equals(nEtnPpUF.QRZR) ? (byte) 152 : (byte) -1;
                                                break;
                                            case -407717732:
                                                b3 = str12.equals("civ_legacy_per_month_over") ? (byte) 178 : (byte) -1;
                                                break;
                                            case -397927114:
                                                b3 = str12.equals("military_buildings_constructed_below") ? (byte) 59 : (byte) -1;
                                                break;
                                            case -376694461:
                                                b3 = str12.equals("civs_are_at_war") ? (byte) 191 : (byte) -1;
                                                break;
                                            case -347576740:
                                                b3 = str12.equals("exact_day") ? (byte) 66 : (byte) -1;
                                                break;
                                            case -325545122:
                                                b3 = str12.equals("civ_max_manpower_over") ? (byte) 155 : (byte) -1;
                                                break;
                                            case -321518810:
                                                b3 = str12.equals("civ_rank_position_over") ? (byte) 119 : (byte) -1;
                                                break;
                                            case -299668702:
                                                b3 = str12.equals("civ_has_resource") ? (byte) 15 : (byte) -1;
                                                break;
                                            case -289577701:
                                                b3 = str12.equals("civ_capital_continent_is") ? (byte) 78 : (byte) -1;
                                                break;
                                            case -284072128:
                                                b3 = str12.equals("civ_capital_population_over") ? (byte) 92 : (byte) -1;
                                                break;
                                            case -245422869:
                                                b3 = str12.equals("civ_capital_buildings_below") ? (byte) 75 : (byte) -1;
                                                break;
                                            case -233564048:
                                                b3 = str12.equals("province_is_not_occupied") ? (byte) 50 : (byte) -1;
                                                break;
                                            case -228806843:
                                                b3 = str12.equals("civ_capital_population_below") ? (byte) 93 : (byte) -1;
                                                break;
                                            case -199601437:
                                                b3 = str12.equals("civ_administrative_advisor_skill_over") ? (byte) 142 : (byte) -1;
                                                break;
                                            case -192414937:
                                                b3 = str12.equals("civ_has_larger_economy_than_civ") ? (byte) 195 : (byte) -1;
                                                break;
                                            case -188634394:
                                                b3 = str12.equals("civ_regiments_limit_over") ? (byte) 136 : (byte) -1;
                                                break;
                                            case -178830283:
                                                b3 = str12.equals("playing_time_over") ? (byte) 62 : (byte) -1;
                                                break;
                                            case -151664260:
                                                b3 = str12.equals("civ_economic_advisor_skill_over") ? (byte) 144 : (byte) -1;
                                                break;
                                            case -150139621:
                                                b3 = str12.equals("civ_diplomacy_below") ? (byte) 177 : (byte) -1;
                                                break;
                                            case -134271204:
                                                b3 = str12.equals("civ_income_economy_over") ? (byte) 184 : (byte) -1;
                                                break;
                                            case -125521398:
                                                b3 = str12.equals("civ_military_academy_over") ? (byte) 126 : (byte) -1;
                                                break;
                                            case -110857695:
                                                b3 = str12.equals("civ_prestige_over") ? (byte) 121 : (byte) -1;
                                                break;
                                            case -107758644:
                                                b3 = str12.equals("province_manpower_below") ? (byte) 27 : (byte) -1;
                                                break;
                                            case -101106975:
                                                b3 = str12.equals("invested_in_economy_below") ? (byte) 2 : (byte) -1;
                                                break;
                                            case -51314504:
                                                b3 = str12.equals("civ_tag_government_is_not") ? (byte) 228 : (byte) -1;
                                                break;
                                            case -25173174:
                                                b3 = str12.equals("civ_legacy_below") ? (byte) 163 : (byte) -1;
                                                break;
                                            case 4825448:
                                                b3 = str12.equals("buildings_constructed_below") ? (byte) 53 : (byte) -1;
                                                break;
                                            case 14155513:
                                                b3 = str12.equals("civ_non_aggression_pacts_below") ? (byte) 108 : (byte) -1;
                                                break;
                                            case 28710307:
                                                b3 = str12.equals("unique_capital_buildings_constructed_below") ? (byte) 61 : (byte) -1;
                                                break;
                                            case 45792897:
                                                b3 = str12.equals("has_variable") ? (byte) 214 : (byte) -1;
                                                break;
                                            case 57313380:
                                                b3 = str12.equals("civ_tag_religion_is") ? (byte) 225 : (byte) -1;
                                                break;
                                            case 63730158:
                                                b3 = str12.equals(qIuEvFbUtcea.DMD) ? (byte) 25 : (byte) -1;
                                                break;
                                            case 71474043:
                                                b3 = str12.equals("civ_research_per_month_below") ? (byte) 181 : (byte) -1;
                                                break;
                                            case 74989847:
                                                b3 = str12.equals("civ_population_over") ? (byte) 70 : (byte) -1;
                                                break;
                                            case 91993569:
                                                b3 = str12.equals("civ_neighbors_over") ? (byte) 111 : (byte) -1;
                                                break;
                                            case 100506768:
                                                b3 = str12.equals("civs_are_rivals") ? (byte) 200 : (byte) -1;
                                                break;
                                            case 118480645:
                                                b3 = str12.equals("civ_total_income_below") ? (byte) 175 : (byte) -1;
                                                break;
                                            case 120054505:
                                                b3 = str12.equals("civ_income_economy_below") ? (byte) 185 : (byte) -1;
                                                break;
                                            case 122885687:
                                                b3 = str12.equals("civ_capital_is_under_siege") ? (byte) 98 : (byte) -1;
                                                break;
                                            case 123459701:
                                                b3 = str12.equals("civ_capital_tax_efficiency_below") ? (byte) 77 : (byte) -1;
                                                break;
                                            case 135474649:
                                                b3 = str12.equals(fTNtCctcBZcqKK.OrpkDbHmSd) ? (byte) 26 : (byte) -1;
                                                break;
                                            case 139260425:
                                                b3 = str12.equals("civ_religion_is") ? (byte) 101 : (byte) -1;
                                                break;
                                            case 160721804:
                                                b3 = str12.equals("civ_nuclear_reactor_below") ? (byte) 135 : (byte) -1;
                                                break;
                                            case 166102175:
                                                b3 = str12.equals("civ_is_at_war_days_over") ? (byte) 190 : (byte) -1;
                                                break;
                                            case 184552368:
                                                b3 = str12.equals("alliance_special_is_leader") ? (byte) 168 : (byte) -1;
                                                break;
                                            case 206114697:
                                                b3 = str12.equals("exists_any") ? (byte) 223 : (byte) -1;
                                                break;
                                            case 208790603:
                                                b3 = str12.equals("civ_is_vassal_of_civ") ? (byte) 203 : (byte) -1;
                                                break;
                                            case 233146729:
                                                b3 = str12.equals("civ_legacy_per_month_below") ? (byte) 179 : (byte) -1;
                                                break;
                                            case 289746072:
                                                b3 = str12.equals("increased_growth_rate_over") ? (byte) 9 : (byte) -1;
                                                break;
                                            case 336053698:
                                                b3 = str12.equals("civ_income_taxation_over") ? (byte) 182 : (byte) -1;
                                                break;
                                            case 347706546:
                                                b3 = str12.equals("civ_capital_religion_is") ? (byte) 45 : (byte) -1;
                                                break;
                                            case 365303436:
                                                b3 = str12.equals("civ_conquered_provinces_over") ? (byte) 5 : (byte) -1;
                                                break;
                                            case 379688173:
                                                b3 = str12.equals("increased_growth_rate_below") ? (byte) 10 : (byte) -1;
                                                break;
                                            case 391298491:
                                                b3 = str12.equals("civ_military_academy_below") ? (byte) 127 : (byte) -1;
                                                break;
                                            case 401458108:
                                                b3 = str12.equals("civ_unlocked_technologies_over") ? (byte) 115 : (byte) -1;
                                                break;
                                            case 416502028:
                                                b3 = str12.equals("civ_non_aggression_pacts_over") ? (byte) 107 : (byte) -1;
                                                break;
                                            case 441550858:
                                                b3 = str12.equals("alliance_special_is_leader_id") ? (byte) 169 : (byte) -1;
                                                break;
                                            case 489141454:
                                                b3 = str12.equals("civ_is_not_at_war") ? (byte) 189 : (byte) -1;
                                                break;
                                            case 559777305:
                                                b3 = str12.equals("civ_nuclear_reactor_over") ? (byte) 134 : (byte) -1;
                                                break;
                                            case 575831777:
                                                b3 = str12.equals("civ_capital_growth_rate_over") ? (byte) 86 : (byte) -1;
                                                break;
                                            case 590573015:
                                                b3 = str12.equals("administrative_buildings_constructed_below") ? (byte) 55 : (byte) -1;
                                                break;
                                            case 594069474:
                                                b3 = str12.equals("civ_capital_manpower_over") ? (byte) 82 : (byte) -1;
                                                break;
                                            case 595552578:
                                                b3 = str12.equals("civ_advisor_age_over") ? (byte) 150 : (byte) -1;
                                                break;
                                            case 599604170:
                                                b3 = str12.equals("civ_provinces_equals") ? (byte) 69 : (byte) -1;
                                                break;
                                            case 603434249:
                                                b3 = str12.equals("civ_government_is") ? (byte) 102 : (byte) -1;
                                                break;
                                            case 631193375:
                                                b3 = str12.equals("province_defense_lvl_over") ? (byte) 38 : (byte) -1;
                                                break;
                                            case 636947673:
                                                b3 = str12.equals("alliance_special_is_member_id") ? (byte) 170 : (byte) -1;
                                                break;
                                            case 648970143:
                                                b3 = str12.equals("civ_provinces_over") ? (byte) 67 : (byte) -1;
                                                break;
                                            case 658410436:
                                                b3 = str12.equals("civ_capital_growth_rate_below") ? (byte) 87 : (byte) -1;
                                                break;
                                            case 658735494:
                                                b3 = str12.equals("civ_loans_below") ? (byte) 173 : (byte) -1;
                                                break;
                                            case 673581492:
                                                b3 = str12.equals("civ_wars_total_over") ? (byte) 7 : (byte) -1;
                                                break;
                                            case 729858914:
                                                b3 = str12.equals("civ_regiments_over") ? (byte) 138 : (byte) -1;
                                                break;
                                            case 746044935:
                                                b3 = str12.equals("civ_unlocked_advantages_below") ? (byte) 118 : (byte) -1;
                                                break;
                                            case 777612351:
                                                b3 = str12.equals("civ_capital_has_building") ? (byte) 44 : (byte) -1;
                                                break;
                                            case 845873284:
                                                b3 = str12.equals(ClXgFvsSKQc.ISfNh) ? (byte) 122 : (byte) -1;
                                                break;
                                            case 852936927:
                                                b3 = str12.equals("civ_loans_over") ? (byte) 172 : (byte) -1;
                                                break;
                                            case 868368778:
                                                b3 = str12.equals("province_growth_rate_over") ? (byte) 20 : (byte) -1;
                                                break;
                                            case 971160866:
                                                b3 = str12.equals("unique_capital_buildings_constructed_over") ? (byte) 60 : (byte) -1;
                                                break;
                                            case 1056997325:
                                                b3 = str12.equals("civ_capital_is_occupied") ? (byte) 96 : (byte) -1;
                                                break;
                                            case 1117419553:
                                                b3 = str12.equals("province_economy_below") ? (byte) 19 : (byte) -1;
                                                break;
                                            case 1130034178:
                                                b3 = str12.equals("is_not_player") ? (byte) 220 : (byte) -1;
                                                break;
                                            case 1137122875:
                                                b3 = str12.equals("province_growth_rate_below") ? (byte) 21 : (byte) -1;
                                                break;
                                            case 1138284387:
                                                b3 = str12.equals("civ_regiments_below") ? (byte) 139 : (byte) -1;
                                                break;
                                            case 1138784085:
                                                b3 = str12.equals("is_not_puppet") ? (byte) 218 : (byte) -1;
                                                break;
                                            case 1169895377:
                                                b3 = str12.equals("civ_has_resource_over") ? (byte) 16 : (byte) -1;
                                                break;
                                            case 1186852069:
                                                b3 = str12.equals("civ_capital_unrest_below") ? (byte) 85 : (byte) -1;
                                                break;
                                            case 1223779043:
                                                b3 = str12.equals("civ_capital_manpower_below") ? (byte) 83 : (byte) -1;
                                                break;
                                            case 1244067876:
                                                b3 = str12.equals("invested_in_economy_over") ? (byte) 1 : (byte) -1;
                                                break;
                                            case 1318108228:
                                                b3 = str12.equals("province_infrastructure_below") ? (byte) 35 : (byte) -1;
                                                break;
                                            case 1365756824:
                                                b3 = str12.equals("civs_opinion_below") ? (byte) 207 : (byte) -1;
                                                break;
                                            case 1384846760:
                                                b3 = str12.equals("civ_supreme_court_below") ? (byte) 133 : (byte) -1;
                                                break;
                                            case 1387932535:
                                                b3 = str12.equals("province_population_over") ? (byte) 24 : (byte) -1;
                                                break;
                                            case 1408515025:
                                                b3 = str12.equals("civ_has_more_technologies_than_civ") ? (byte) 199 : (byte) -1;
                                                break;
                                            case 1426581794:
                                                b3 = str12.equals("province_buildings_below") ? (byte) 37 : (byte) -1;
                                                break;
                                            case 1431895491:
                                                b3 = str12.equals("province_buildings_over") ? (byte) 36 : (byte) -1;
                                                break;
                                            case 1486610756:
                                                b3 = str12.equals("civ_economy_over") ? (byte) 72 : (byte) -1;
                                                break;
                                            case 1488304889:
                                                b3 = str12.equals("increased_tax_efficiency_over") ? (byte) 11 : (byte) -1;
                                                break;
                                            case 1508601175:
                                                b3 = str12.equals("province_unrest_over") ? (byte) 32 : (byte) -1;
                                                break;
                                            case 1519580842:
                                                b3 = str12.equals("civ_diplomacy_over") ? (byte) 176 : (byte) -1;
                                                break;
                                            case 1540250369:
                                                b3 = str12.equals("civs_have_non_aggression") ? (byte) 209 : (byte) -1;
                                                break;
                                            case 1543474798:
                                                b3 = str12.equals("administrative_buildings_constructed_over") ? (byte) 54 : (byte) -1;
                                                break;
                                            case 1547751113:
                                                b3 = str12.equals("civ_has_larger_regiments_limit_than_civ") ? (byte) 196 : (byte) -1;
                                                break;
                                            case 1550899760:
                                                b3 = str12.equals("random_chance") ? (byte) 0 : (byte) -1;
                                                break;
                                            case 1566557995:
                                                b3 = str12.equals("civ_production_over") ? (byte) 17 : (byte) -1;
                                                break;
                                            case 1576014378:
                                                b3 = str12.equals("civ_capital_economy_below") ? (byte) 81 : (byte) -1;
                                                break;
                                            case 1577284991:
                                                b3 = str12.equals("civ_regiments_over_regiments_limit") ? (byte) 140 : (byte) -1;
                                                break;
                                            case 1580437304:
                                                b3 = str12.equals("developed_infrastructure_below") ? (byte) 4 : (byte) -1;
                                                break;
                                            case 1604843458:
                                                b3 = str12.equals("province_is_capital") ? (byte) 48 : (byte) -1;
                                                break;
                                            case 1620273316:
                                                b3 = str12.equals("civ_gold_over") ? (byte) 99 : (byte) -1;
                                                break;
                                            case 1621057687:
                                                b3 = str12.equals("civ_gold_over_max_amount_of_gold") ? (byte) 141 : (byte) -1;
                                                break;
                                            case 1625204251:
                                                b3 = str12.equals("civ_is_largest_producer") ? (byte) 161 : (byte) -1;
                                                break;
                                            case 1657351664:
                                                b3 = str12.equals("largest_producer_production_over") ? (byte) 160 : (byte) -1;
                                                break;
                                            case 1665277002:
                                                b3 = str12.equals("civ_research_per_month_over") ? (byte) 180 : (byte) -1;
                                                break;
                                            case 1666793344:
                                                b3 = str12.equals("civ_total_income_over") ? (byte) 174 : (byte) -1;
                                                break;
                                            case 1676599055:
                                                b3 = str12.equals("civ_largest_producer_over") ? (byte) 159 : (byte) -1;
                                                break;
                                            case 1698841222:
                                                b3 = str12.equals(PxHJ.yzVAvLXLL) ? (byte) 114 : (byte) -1;
                                                break;
                                            case 1727936283:
                                                b3 = str12.equals("province_income_over") ? (byte) 28 : (byte) -1;
                                                break;
                                            case 1769274494:
                                                b3 = str12.equals("recruited_advisors_over") ? (byte) 164 : (byte) -1;
                                                break;
                                            case 1815224579:
                                                b3 = str12.equals("civ_income_taxation_below") ? (byte) 183 : (byte) -1;
                                                break;
                                            case 1820523937:
                                                b3 = str12.equals("civ_military_advisor_skill_below") ? (byte) 149 : (byte) -1;
                                                break;
                                            case 1886365521:
                                                b3 = str12.equals("civ_has_rivalry_not") ? (byte) 202 : (byte) -1;
                                                break;
                                            case 1889105762:
                                                b3 = str12.equals("civ_capital_city_over") ? (byte) 130 : (byte) -1;
                                                break;
                                            case 1928098348:
                                                b3 = str12.equals("civ_manpower_below") ? (byte) 154 : (byte) -1;
                                                break;
                                            case 1939737536:
                                                b3 = str12.equals("civ_have_guarantee") ? (byte) 212 : (byte) -1;
                                                break;
                                            case 1962023138:
                                                b3 = str12.equals("civ_is_at_war") ? (byte) 188 : (byte) -1;
                                                break;
                                            case 1963271689:
                                                b3 = str12.equals("civs_have_defensive_pact") ? (byte) 208 : (byte) -1;
                                                break;
                                            case 1976111844:
                                                b3 = str12.equals("province_economy_over") ? (byte) 18 : (byte) -1;
                                                break;
                                            case 2013911754:
                                                b3 = str12.equals("province_income_below") ? (byte) 29 : (byte) -1;
                                                break;
                                            case 2020624920:
                                                b3 = str12.equals("civ_inflation_over") ? (byte) 166 : (byte) -1;
                                                break;
                                            case 2038594798:
                                                b3 = str12.equals("civ_allies_over") ? (byte) 103 : (byte) -1;
                                                break;
                                            case 2057344413:
                                                b3 = str12.equals("civ_defensive_pacts_over") ? (byte) 105 : (byte) -1;
                                                break;
                                            case 2057741157:
                                                b3 = str12.equals("civ_vassals_over") ? (byte) 109 : (byte) -1;
                                                break;
                                            case 2140810105:
                                                b3 = str12.equals("civ_manpower_over") ? (byte) 153 : (byte) -1;
                                                break;
                                            default:
                                                b3 = -1;
                                                break;
                                        }
                                        switch (b3) {
                                            case 0:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_RandomChance(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 1:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_InvestedInEconomyOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 2:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_InvestedInEconomyBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 3:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_DevelopedInfrastructureOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 4:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_DevelopedInfrastructureBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 5:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ConqueredProvincesOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 6:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ConqueredProvincesBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 7:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivWarsTotalOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 8:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivWarsTotalBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 9:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IncreasedGrowthRateOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 10:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IncreasedGrowthRateBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 11:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IncreasedTaxEfficiencyOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 12:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IncreasedTaxEfficiencyBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 13:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IncreasedManpowerOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 14:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IncreasedManpowerBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 15:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivHasResource(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 16:
                                            case 17:
                                                i5 = i14;
                                                if (strArrSplit.length > 2) {
                                                    eventTrigger.addTrigger(new EventTrigger_CivHasResourceOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                }
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 18:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceEconomyOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 19:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceEconomyBelow(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 20:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceGrowthRateOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 21:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceGrowthRateBelow(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 22:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceTaxEfficiencyOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 23:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceTaxEfficiencyBelow(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 24:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvincePopulationOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 25:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvincePopulationBelow(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 26:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceManpowerOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 27:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceManpowerBelow(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 28:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceIncomeOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.A /* 29 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceIncomeBelow(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 30:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceReligionIs(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.C /* 31 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceReligionIsNot(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 32:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceUnrestOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 33:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceUnrestBelow(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 34:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceInfrastructureOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 35:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceInfrastructureBelow(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 36:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceBuildingsOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 37:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceBuildingsBelow(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 38:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceDefenseLevelOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 39:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceDefenseLevelBelow(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 40:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceCivHasCore(Integer.parseInt(strArrSplit[1]), strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 41:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceControlledByCiv(Integer.parseInt(strArrSplit[1]), strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 42:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceControlledByCivNot(Integer.parseInt(strArrSplit[1]), strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 43:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceHasBuilding(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 44:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_HasBuilding(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 45:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_ReligionIs(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 46:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceBuildingsLimitOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 47:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceBuildingsBelow(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.T /* 48 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceIsCapital(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.U /* 49 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceIsOccupied(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.V /* 50 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceIsOccupiedNot(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.W /* 51 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ProvinceIsUnderSiege(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.X /* 52 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_Buildings_ConstructedOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.Y /* 53 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_Buildings_ConstructedBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.Z /* 54 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_Buildings_ConstructedAdministrativeOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.COMMA /* 55 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_Buildings_ConstructedAdministrativeBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.PERIOD /* 56 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_Buildings_ConstructedEconomyOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.ALT_LEFT /* 57 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_Buildings_ConstructedEconomyBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.ALT_RIGHT /* 58 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_Buildings_ConstructedMilitaryOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.SHIFT_LEFT /* 59 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_Buildings_ConstructedMilitaryBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 60:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_Buildings_ConstructedCapitalOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.TAB /* 61 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_Buildings_ConstructedCapitalBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.SPACE /* 62 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_PlayingTimeOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 63:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_PlayingTimeBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 64:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_YearOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.ENVELOPE /* 65 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_YearBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.ENTER /* 66 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ExactDay(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3])), i5);
                                                try {
                                                    i8 = Integer.parseInt(strArrSplit[1]);
                                                    try {
                                                        i11 = Integer.parseInt(strArrSplit[2]);
                                                        try {
                                                            i12 = Integer.parseInt(strArrSplit[3]);
                                                            z = true;
                                                            i14 = i5;
                                                            i3 = i8;
                                                            i15 = i7;
                                                        } catch (Exception e14) {
                                                            exc = e14;
                                                            i3 = i8;
                                                            i15 = i7;
                                                            z = true;
                                                            CFG.exceptionStack(exc);
                                                            i14 = i5;
                                                            i12 = i4;
                                                        }
                                                    } catch (Exception e15) {
                                                        exc = e15;
                                                        i3 = i8;
                                                        i11 = i6;
                                                        i15 = i7;
                                                        z = true;
                                                        CFG.exceptionStack(exc);
                                                        i14 = i5;
                                                        i12 = i4;
                                                        i13++;
                                                        strArr2 = strArr;
                                                        length = i2;
                                                        i10 = i3;
                                                        break;
                                                    }
                                                } catch (Exception e16) {
                                                    exc = e16;
                                                }
                                                break;
                                            case 67:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivProvincesOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 68:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivProvincesBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.MINUS /* 69 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivProvincesEquals(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.EQUALS /* 70 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivPopulationOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.LEFT_BRACKET /* 71 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivPopulationBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.RIGHT_BRACKET /* 72 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivEconomyOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BACKSLASH /* 73 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivEconomyBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.SEMICOLON /* 74 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_BuildingsOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.APOSTROPHE /* 75 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_BuildingsBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.SLASH /* 76 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_TaxEfficiencyOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.AT /* 77 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_TaxEfficiencyBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUM /* 78 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_ContinentIs(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.HEADSETHOOK /* 79 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_ContinentIsNot(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.FOCUS /* 80 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_EconomyOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.PLUS /* 81 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_EconomyBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.MENU /* 82 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_ManpowerOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NOTIFICATION /* 83 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_ManpowerBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.SEARCH /* 84 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_UnrestOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.MEDIA_PLAY_PAUSE /* 85 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_UnrestBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.MEDIA_STOP /* 86 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_GrowthRateOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.MEDIA_NEXT /* 87 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_GrowthRateBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.MEDIA_PREVIOUS /* 88 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_IncomeOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.MEDIA_REWIND /* 89 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_IncomeBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.MEDIA_FAST_FORWARD /* 90 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_InfrastructureOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.MUTE /* 91 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_InfrastructureBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.PAGE_UP /* 92 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_PopulationOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.PAGE_DOWN /* 93 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_PopulationBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.PICTSYMBOLS /* 94 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_FortLevelOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.SWITCH_CHARSET /* 95 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_FortLevelBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BUTTON_A /* 96 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_IsOccupied(), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BUTTON_B /* 97 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_IsOccupiedNot(), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BUTTON_C /* 98 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapital_IsUnderSiege(), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BUTTON_X /* 99 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivGoldOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 100:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivGoldBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 101:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivReligionIs(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 102:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivGovernmentIs(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BUTTON_R1 /* 103 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivAlliesOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BUTTON_L2 /* 104 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivAlliesBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BUTTON_R2 /* 105 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivDefensivePactsOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BUTTON_THUMBL /* 106 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivDefensivePactsBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BUTTON_THUMBR /* 107 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivNonAggressionPactsOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BUTTON_START /* 108 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivNonAggressionPactsBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BUTTON_SELECT /* 109 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivVassalsOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.BUTTON_MODE /* 110 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivVassalsBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.ESCAPE /* 111 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivNeighborsOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.FORWARD_DEL /* 112 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivNeighborsBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 113:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivUnlockedLegaciesOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 114:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivUnlockedLegaciesBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.CAPS_LOCK /* 115 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivUnlockedTechnologiesOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.SCROLL_LOCK /* 116 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivUnlockedTechnologiesBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 117:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivUnlockedAdvantagesOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 118:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivUnlockedAdvantagesBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 119:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivRankPositionOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.PRINT_SCREEN /* 120 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivRankPositionBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.PAUSE /* 121 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivRankPrestigeOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 122:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivRankPrestigeBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.END /* 123 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IsCiv(strArrSplit[1]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.INSERT /* 124 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivBattleWidthOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 125:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivBattleWidthBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 126:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivMilitaryAcademyOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 127:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivMilitaryAcademyBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 128:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivMilitaryAcademyForGeneralsOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.CONTROL_LEFT /* 129 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivMilitaryAcademyForGeneralsBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.CONTROL_RIGHT /* 130 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapitalCityOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F1 /* 131 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivCapitalCityBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F2 /* 132 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivSupremeCourtOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F3 /* 133 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivSupremeCourtBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F4 /* 134 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivNuclearReactorOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F5 /* 135 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivNuclearReactorBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F6 /* 136 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivRegimentsLimitOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F7 /* 137 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivRegimentsLimitBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F8 /* 138 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivRegimentsOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F9 /* 139 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivRegimentsBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F10 /* 140 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivRegimentsOverRegimentsLimit(Boolean.parseBoolean(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F11 /* 141 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivGoldOver_MaxAmountOfGold(Boolean.parseBoolean(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F12 /* 142 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivAdministrativeAdvisorSkillOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUM_LOCK /* 143 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivAdministrativeAdvisorSkillBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_0 /* 144 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivEconomyAdvisorSkillOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_1 /* 145 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivEconomyAdvisorSkillBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_2 /* 146 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivInnovationAdvisorSkillOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_3 /* 147 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivInnovationAdvisorSkillBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_4 /* 148 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivMilitaryAdvisorSkillOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_5 /* 149 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivMilitaryAdvisorSkillBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 150:
                                                i5 = i14;
                                                if (strArrSplit.length > 2) {
                                                    eventTrigger.addTrigger(new EventTrigger_CivAdvisor_AgeOver(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])), i5);
                                                }
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_7 /* 151 */:
                                                i5 = i14;
                                                if (strArrSplit.length > 2) {
                                                    eventTrigger.addTrigger(new EventTrigger_CivAdvisor_ProductionEfficiencyOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                }
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_8 /* 152 */:
                                                i5 = i14;
                                                if (strArrSplit.length > 2) {
                                                    eventTrigger.addTrigger(new EventTrigger_CivAdvisor_ConstructionCostOver(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])), i5);
                                                }
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_9 /* 153 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivManpowerOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_DIVIDE /* 154 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivManpowerBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_MULTIPLY /* 155 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivMaxManpowerOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_SUBTRACT /* 156 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivMaxManpowerBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_ADD /* 157 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivManpower_PercOfMax_Over(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_DOT /* 158 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivManpower_PercOfMax_Below(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_COMMA /* 159 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivLargestProducerOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_ENTER /* 160 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_LargestProducer_ProductionOver(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_EQUALS /* 161 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IsLargestProducer(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_LEFT_PAREN /* 162 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivLegacyOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.NUMPAD_RIGHT_PAREN /* 163 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivLegacyBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 164:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_RecruitedAdvisorsOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 165:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_RecruitedAdvisorsBelow(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 166:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivInflationOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 167:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivInflationBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 168:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_AllianceIsLeader(), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 169:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_AllianceIsLeaderID(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 170:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_AllianceIsInAlliance(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 171:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_AllianceIsNotInAlliance(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 172:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivLoansOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 173:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivLoansBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 174:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivIncomeOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 175:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivIncomeBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 176:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivDiplomacyOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 177:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivDiplomacyBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 178:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivLegacyPerMonthOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 179:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivLegacyPerMonthBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 180:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivResearchPerMonthOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 181:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivResearchPerMonthBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 182:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivIncomeTaxationOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F13 /* 183 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivIncomeTaxationBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F14 /* 184 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivIncomeEconomyOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F15 /* 185 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivIncomeEconomyBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F16 /* 186 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivIncomeProductionOver(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F17 /* 187 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivIncomeProductionBelow(Float.parseFloat(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F18 /* 188 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IsAtWar(), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F19 /* 189 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IsNotAtWar(), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F20 /* 190 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IsAtWar_DaysOver(Integer.parseInt(strArrSplit[1])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F21 /* 191 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_AreAtWar(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F22 /* 192 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_AreNotAtWar(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F23 /* 193 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivHasMoreProvinceThanCiv(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case Input.Keys.F24 /* 194 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivHasLargerPopulationThanCiv(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 195:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivHasLargerEconomyThanCiv(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 196:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivHasLargerRegimentsLimitThanCiv(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 197:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivHasMoreRegimentsThanCiv(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 198:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivHasHigherRankThanCiv(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 199:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivHasMoreTechsThanCiv(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case HttpStatus.SC_OK /* 200 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivsAreRivals(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case HttpStatus.SC_CREATED /* 201 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivRivaledCiv(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case HttpStatus.SC_ACCEPTED /* 202 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivRivaledCivNot(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION /* 203 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IsVassalOfCiv(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case HttpStatus.SC_NO_CONTENT /* 204 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivsAreNeighbors(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case HttpStatus.SC_RESET_CONTENT /* 205 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivsAreNeighborsNot(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case HttpStatus.SC_PARTIAL_CONTENT /* 206 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_OpinionOver(strArrSplit[1], strArrSplit[2], Float.parseFloat(strArrSplit[3])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case HttpStatus.SC_MULTI_STATUS /* 207 */:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_OpinionBelow(strArrSplit[1], strArrSplit[2], Float.parseFloat(strArrSplit[3])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 208:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_HaveDefensivePact(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 209:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_HaveNonAggressionPact(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 210:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_HaveAlliance(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 211:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_HaveTruce(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 212:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_HaveGuarantee(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 213:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_HaveMilitaryAccess(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 214:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_HasVariable(strArrSplit[1]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 215:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_HasVariableNot(strArrSplit[1]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 216:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_HasVariableCiv(strArrSplit[1], strArrSplit[2]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 217:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IsVassal(strArrSplit[1]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 218:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IsNotVassal(strArrSplit[1]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 219:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IsPlayer(strArrSplit[1]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 220:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_IsNotPlayer(strArrSplit[1]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 221:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_Exists(strArrSplit[1]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 222:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ExistsNot(strArrSplit[1]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 223:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ExistsAny(strArrSplit[1]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 224:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_ExistsAnyNot(strArrSplit[1]), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 225:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivTag_ReligionIs(strArrSplit[1], Integer.parseInt(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 226:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivTag_ReligionIsNot(strArrSplit[1], Integer.parseInt(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 227:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivTag_GovernmentIs(strArrSplit[1], Integer.parseInt(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            case 228:
                                                i5 = i14;
                                                eventTrigger.addTrigger(new EventTrigger_CivTag_GovernmentIsNot(strArrSplit[1], Integer.parseInt(strArrSplit[2])), i5);
                                                i8 = i3;
                                                i11 = i6;
                                                i12 = i4;
                                                i14 = i5;
                                                i3 = i8;
                                                i15 = i7;
                                                break;
                                            default:
                                                i5 = i14;
                                                try {
                                                    CFG.LOG(" MISSING IN TRIGGER -> " + strArrSplit[0] + str6 + (i13 + 1));
                                                    i8 = i3;
                                                    i11 = i6;
                                                    i12 = i4;
                                                    i14 = i5;
                                                    i3 = i8;
                                                    i15 = i7;
                                                } catch (Exception e17) {
                                                    e = e17;
                                                }
                                                break;
                                        }
                                    } catch (Exception e18) {
                                        e = e18;
                                        i5 = i14;
                                        exc = e;
                                        i11 = i6;
                                        i15 = i7;
                                    }
                                } else {
                                    i5 = i14;
                                    if (z3) {
                                        String str13 = strArrSplit[0];
                                        switch (str13.hashCode()) {
                                            case -2143024282:
                                                if (str13.equals("price_change")) {
                                                    b2 = 38;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -2130287539:
                                                if (str13.equals("bonus_core_cost")) {
                                                    b2 = 156;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -2115197039:
                                                if (str13.equals("bonus_increase_growth_rate_cost")) {
                                                    b2 = 142;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -2096954917:
                                                if (str13.equals("price_change_down")) {
                                                    b2 = 40;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -2025424237:
                                                if (str13.equals("declare_war")) {
                                                    b2 = 22;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -2009525836:
                                                if (str13.equals("bonus_duration")) {
                                                    b2 = 104;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1993382684:
                                                if (str13.equals("bonus_general_cost")) {
                                                    b2 = 159;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1967194658:
                                                if (str13.equals("kill_ruler_chance")) {
                                                    b2 = 36;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1920871128:
                                                if (str13.equals("bonus_army_morale_recovery")) {
                                                    b2 = 123;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1870256654:
                                                if (str13.equals("bonus_increase_tax_efficiency_cost")) {
                                                    b2 = 140;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1848516039:
                                                if (str13.equals("province_devastation")) {
                                                    b2 = 92;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1832578402:
                                                if (str13.equals("bonus_income_from_vassals")) {
                                                    b2 = 154;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1816064536:
                                                if (str13.equals("province_infrastructure_id")) {
                                                    b2 = 103;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1804071844:
                                                if (str13.equals("bonus_generals_attack")) {
                                                    b2 = 143;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1796015291:
                                                if (str13.equals("price_change_random_down")) {
                                                    b2 = 46;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1761365724:
                                                if (str13.equals("set_civ_tag2")) {
                                                    b2 = 21;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1744883202:
                                                if (str13.equals("price_change_random_up")) {
                                                    b2 = 45;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1741046530:
                                                if (str13.equals("bonus_monthly_legacy_percentage")) {
                                                    b2 = 107;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1737383535:
                                                if (str13.equals("province_economy_all")) {
                                                    b2 = 72;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1681237554:
                                                if (str13.equals("province_tax_efficiency_id")) {
                                                    b2 = 74;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1675541766:
                                                if (str13.equals("move_capital")) {
                                                    b2 = 7;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1670955687:
                                                if (str13.equals(TGqtTWl.piC)) {
                                                    b2 = 164;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1665074958:
                                                if (str13.equals("province_growth_rate_capital")) {
                                                    b2 = 82;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1646064550:
                                                if (str13.equals("province_religion_id")) {
                                                    b2 = 91;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1631119807:
                                                if (str13.equals("promote_advisor")) {
                                                    b2 = 30;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1621081120:
                                                if (str13.equals("bonus_income_taxation")) {
                                                    b2 = 116;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1588807620:
                                                if (str13.equals("bonus_regiments_limit")) {
                                                    b2 = 167;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1577985761:
                                                if (str13.equals("bonus_military_buildings_cost")) {
                                                    b2 = 134;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1568572576:
                                                if (str13.equals("province_manpower_id")) {
                                                    b2 = 80;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1502064164:
                                                if (str13.equals("province_unrest")) {
                                                    b2 = 96;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1481842787:
                                                if (str13.equals("bonus_tax_efficiency")) {
                                                    b2 = 108;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1461387954:
                                                if (str13.equals("bonus_recruit_army_cost")) {
                                                    b2 = 127;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1444518898:
                                                if (str13.equals("bonus_economy_buildings_cost")) {
                                                    b2 = 135;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1425719194:
                                                if (str13.equals("bonus_improve_relations_modifier")) {
                                                    b2 = 150;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1421720121:
                                                if (str13.equals(IlLkpaQxs.zRGLjEszrKLkM)) {
                                                    b2 = 9;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1385730853:
                                                if (str13.equals("price_change_group_down")) {
                                                    b2 = 43;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1381116932:
                                                if (str13.equals("province_manpower_all")) {
                                                    b2 = 79;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1327710238:
                                                if (str13.equals("join_alliance_special_id_second_tier")) {
                                                    b2 = 32;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1309148959:
                                                if (str13.equals("explode")) {
                                                    b2 = 59;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1251948901:
                                                if (str13.equals("province_devastation_all")) {
                                                    b2 = 94;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1216517931:
                                                if (str13.equals("kill_ruler")) {
                                                    b2 = 35;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1207670327:
                                                if (str13.equals("province_growth_rate")) {
                                                    b2 = 81;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1106578487:
                                                if (str13.equals("legacy")) {
                                                    b2 = 3;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1095224508:
                                                if (str13.equals("add_non_aggression")) {
                                                    b2 = 60;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -1074122644:
                                                if (str13.equals("province_tax_efficiency")) {
                                                    b2 = 73;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -951932881:
                                                if (str13.equals("province_economy")) {
                                                    b2 = 69;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -948692736:
                                                if (str13.equals("bonus_maximum_amount_of_gold")) {
                                                    b2 = 138;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -933811297:
                                                if (str13.equals("bonus_battle_width")) {
                                                    b2 = 162;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -905207737:
                                                if (str13.equals("annex_by_civ_from_civ")) {
                                                    b2 = 54;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -874157728:
                                                if (str13.equals("province_religion")) {
                                                    b2 = 88;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -699920347:
                                                if (str13.equals("supreme_court")) {
                                                    b2 = 18;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -674577734:
                                                if (str13.equals("add_new_army")) {
                                                    b2 = 14;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -672203188:
                                                if (str13.equals("add_defensive_pact")) {
                                                    b2 = 63;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -614597657:
                                                if (str13.equals("bonus_research_points")) {
                                                    b2 = 131;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -592923673:
                                                if (str13.equals("bonus_develop_infrastructure_cost")) {
                                                    b2 = 141;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -578763954:
                                                if (str13.equals(gpVDKipRURuzw.pWSeyYbCnEh)) {
                                                    b2 = 76;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -578240410:
                                                if (str13.equals("price_change_group")) {
                                                    b2 = 41;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -483181594:
                                                if (str13.equals("run_event")) {
                                                    b2 = 29;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -463433100:
                                                if (str13.equals("province_infrastructure_all")) {
                                                    b2 = 102;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -446408772:
                                                if (str13.equals("price_change_random")) {
                                                    b2 = 44;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -387643861:
                                                if (str13.equals("province_growth_rate_all")) {
                                                    b2 = 83;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -368409157:
                                                if (str13.equals("bonus_research")) {
                                                    b2 = 130;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -354020773:
                                                if (str13.equals("bonus_construction_cost")) {
                                                    b2 = 132;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -353520293:
                                                if (str13.equals("bonus_construction_time")) {
                                                    b2 = 136;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -350895717:
                                                if (str13.equals("research")) {
                                                    b2 = 5;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -244406763:
                                                if (str13.equals("add_alliance")) {
                                                    b2 = 58;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -240979416:
                                                if (str13.equals("add_general2")) {
                                                    b2 = 47;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -240979415:
                                                if (str13.equals("add_general3")) {
                                                    b2 = 48;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -238543885:
                                                if (str13.equals("bonus_max_manpower_percentage")) {
                                                    b2 = 120;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -207007503:
                                                if (str13.equals("change_religion_civ")) {
                                                    b2 = 28;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -189347814:
                                                if (str13.equals("province_manpower")) {
                                                    b2 = 77;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case -47879762:
                                                if (str13.equals("bonus_administration_buildings_cost")) {
                                                    b2 = 133;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 3112:
                                                if (str13.equals("ai")) {
                                                    b2 = 65;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 3178592:
                                                if (str13.equals("gold")) {
                                                    b2 = 1;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 3373707:
                                                if (str13.equals("name")) {
                                                    b2 = 0;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 11745412:
                                                if (str13.equals(CvuNnwgYwe.FdNDeGcZv)) {
                                                    b2 = 139;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 46716084:
                                                if (str13.equals("annexed_by_civ")) {
                                                    b2 = 57;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 92967508:
                                                if (str13.equals("annex")) {
                                                    b2 = 52;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 134405432:
                                                if (str13.equals("bonus_units_attack")) {
                                                    b2 = 145;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 137374699:
                                                if (str13.equals("manpower")) {
                                                    b2 = 8;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 151042529:
                                                if (str13.equals("leave_alliance_special_id")) {
                                                    b2 = 33;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 153266760:
                                                if (str13.equals("bonus_recruit_army_first_line_cost")) {
                                                    b2 = 128;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 162612113:
                                                if (str13.equals("bonus_army_maintenance")) {
                                                    b2 = 125;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 163283602:
                                                if (str13.equals("province_infrastructure")) {
                                                    b2 = 100;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 187977250:
                                                if (str13.equals("add_advisor")) {
                                                    b2 = 50;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 213941163:
                                                if (str13.equals("ai_aggression")) {
                                                    b2 = 13;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 232656314:
                                                if (str13.equals("military_academy")) {
                                                    b2 = 15;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 260251960:
                                                if (str13.equals("add_military_access")) {
                                                    b2 = 61;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 271815948:
                                                if (str13.equals("bonus_advisor_cost")) {
                                                    b2 = 158;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 299660867:
                                                if (str13.equals("province_manpower_capital")) {
                                                    b2 = 78;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 319846362:
                                                if (str13.equals("gold_monthly_income")) {
                                                    b2 = 2;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 342648792:
                                                if (str13.equals("add_ruler")) {
                                                    b2 = 49;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 344415035:
                                                if (str13.equals("add_truce")) {
                                                    b2 = 64;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 411217071:
                                                if (str13.equals("bonus_revolutionary_risk")) {
                                                    b2 = 155;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 414319536:
                                                if (str13.equals("bonus_recruitment_time")) {
                                                    b2 = 126;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 432344473:
                                                if (str13.equals("bonus_maintenance_cost")) {
                                                    b2 = 111;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 436285918:
                                                if (str13.equals("bonus_invest_in_economy_cost")) {
                                                    b2 = 137;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 463157435:
                                                if (str13.equals("province_infrastructure_capital")) {
                                                    b2 = 101;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 467730939:
                                                if (str13.equals("bonus_religion_cost")) {
                                                    b2 = 157;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 484299130:
                                                if (str13.equals("change_ideology_civ")) {
                                                    b2 = 27;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 511599170:
                                                if (str13.equals(nEtnPpUF.TEshuJi)) {
                                                    b2 = 90;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 539214280:
                                                if (str13.equals(MQYGMkZOAcS.tqNodUZsrJO)) {
                                                    b2 = 117;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 540271406:
                                                if (str13.equals("bonus_recruit_army_second_line_cost")) {
                                                    b2 = 129;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 604686602:
                                                if (str13.equals("bonus_inflation")) {
                                                    b2 = 114;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 621755413:
                                                if (str13.equals(cIUGJCqyPXfp.UjVryacT)) {
                                                    b2 = 24;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 636692267:
                                                if (str13.equals("province_economy_id")) {
                                                    b2 = 70;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 643996778:
                                                if (str13.equals("add_guarantee")) {
                                                    b2 = 62;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 704104612:
                                                if (str13.equals("bonus_province_maintenance")) {
                                                    b2 = 109;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 709875600:
                                                if (str13.equals("bonus_discipline")) {
                                                    b2 = 163;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 741387454:
                                                if (str13.equals("province_unrest_all")) {
                                                    b2 = 98;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 750148376:
                                                if (str13.equals("add_variable2")) {
                                                    b2 = 12;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 753864980:
                                                if (str13.equals("price_change_group_up")) {
                                                    b2 = 42;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 772342751:
                                                if (str13.equals("kill_advisor")) {
                                                    b2 = 34;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 774465742:
                                                if (str13.equals("set_civ_tag")) {
                                                    b2 = 20;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 795587709:
                                                if (str13.equals("bonus_advisors_max_level")) {
                                                    b2 = 165;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 874869080:
                                                if (str13.equals("province_economy_capital")) {
                                                    b2 = 71;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 891514005:
                                                if (str13.equals("province_tax_efficiency_capital")) {
                                                    b2 = 75;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 893179534:
                                                if (str13.equals("bonus_disease_death_rate")) {
                                                    b2 = 160;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 920037785:
                                                if (str13.equals("bonus_buildings_maintenance_cost")) {
                                                    b2 = 110;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 929446113:
                                                if (str13.equals("province_devastation_id")) {
                                                    b2 = 95;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 994029658:
                                                if (str13.equals("add_variable")) {
                                                    b2 = 11;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1012286141:
                                                if (str13.equals("province_add_core_civ")) {
                                                    b2 = 67;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1043979663:
                                                if (str13.equals(CvuNnwgYwe.fNLyvnuYGrzP)) {
                                                    b2 = 115;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1052637285:
                                                if (str13.equals("annex_civ")) {
                                                    b2 = 56;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1120076234:
                                                if (str13.equals("bonus_diplomacy_points")) {
                                                    b2 = 161;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1144113969:
                                                if (str13.equals("bonus_war_score_cost")) {
                                                    b2 = 124;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1147603242:
                                                if (str13.equals("inflation")) {
                                                    b2 = 6;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1156504441:
                                                if (str13.equals("bonus_army_movement_speed")) {
                                                    b2 = 148;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1223626991:
                                                if (str13.equals("bonus_income_production")) {
                                                    b2 = 118;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1231573399:
                                                if (str13.equals("legacy_monthly")) {
                                                    b2 = 4;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1234421585:
                                                if (str13.equals("province_growth_rate_id")) {
                                                    b2 = 84;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1239152458:
                                                if (str13.equals(ATsAGKCnv.YgMYMnC)) {
                                                    b2 = 37;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1248142972:
                                                if (str13.equals("province_remove_core_civ")) {
                                                    b2 = 68;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1267138914:
                                                if (str13.equals("province_devastation_capital")) {
                                                    b2 = 93;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1270841950:
                                                if (str13.equals("province_unrest_id")) {
                                                    b2 = 99;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1356410277:
                                                if (str13.equals("make_puppet")) {
                                                    b2 = 55;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1375151569:
                                                if (str13.equals("bonus_manpower_recovery_speed")) {
                                                    b2 = 121;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1430915440:
                                                if (str13.equals(hQfu.BQJTLI)) {
                                                    b2 = 16;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1498821605:
                                                if (str13.equals("bonus_max_morale")) {
                                                    b2 = 147;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1528610535:
                                                if (str13.equals("capital_city_level")) {
                                                    b2 = 17;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1532327504:
                                                if (str13.equals("add_advisor2")) {
                                                    b2 = 51;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1535959110:
                                                if (str13.equals("annex_from_civ")) {
                                                    b2 = 53;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1568778910:
                                                if (str13.equals("province_population_all")) {
                                                    b2 = 87;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1571819744:
                                                if (str13.equals("change_religion")) {
                                                    b2 = 26;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1636358143:
                                                if (str13.equals("declare_war2")) {
                                                    b2 = 23;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1693020537:
                                                if (str13.equals("bonus_loan_interest")) {
                                                    b2 = 151;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1727471196:
                                                if (str13.equals("join_alliance_special_id_first_tier")) {
                                                    b2 = 31;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1823686588:
                                                if (str13.equals("province_population")) {
                                                    b2 = 85;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1843436407:
                                                if (str13.equals("advantage_points")) {
                                                    b2 = 10;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1843469829:
                                                if (str13.equals("province_unrest_capital")) {
                                                    b2 = 97;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1852565012:
                                                if (str13.equals("price_change_up")) {
                                                    b2 = 39;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1871737225:
                                                if (str13.equals("province_religion_capital")) {
                                                    b2 = 89;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1879057817:
                                                if (str13.equals("bonus_reinforcement_speed")) {
                                                    b2 = 122;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1891642341:
                                                if (str13.equals(ClXgFvsSKQc.ZWAnjjhfGcwRGr)) {
                                                    b2 = 86;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1903231588:
                                                if (str13.equals("bonus_aggressive_expansion")) {
                                                    b2 = 153;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1912814726:
                                                if (str13.equals("bonus_max_manpower")) {
                                                    b2 = 119;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1920443738:
                                                if (str13.equals(fTNtCctcBZcqKK.rjIzHqjr)) {
                                                    b2 = 66;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1941901641:
                                                if (str13.equals("nuclear_reactor")) {
                                                    b2 = 19;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1967817275:
                                                if (str13.equals("bonus_monthly_income")) {
                                                    b2 = 105;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1975195387:
                                                if (str13.equals("bonus_corruption")) {
                                                    b2 = 113;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1984183785:
                                                if (str13.equals("change_ideology")) {
                                                    b2 = 25;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 2029940792:
                                                if (str13.equals("bonus_growth_rate")) {
                                                    b2 = 112;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 2040144904:
                                                if (str13.equals("bonus_all_characters_life_expectancy")) {
                                                    b2 = 166;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 2045498459:
                                                if (str13.equals("bonus_monthly_legacy")) {
                                                    b2 = 106;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 2091875664:
                                                if (str13.equals("bonus_units_defense")) {
                                                    b2 = 146;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 2120376799:
                                                if (str13.equals("bonus_loans_limit")) {
                                                    b2 = 152;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 2128622252:
                                                if (str13.equals("bonus_generals_defense")) {
                                                    b2 = 144;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 2129605004:
                                                if (str13.equals("bonus_siege_effectiveness")) {
                                                    b2 = 149;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            default:
                                                b2 = -1;
                                                break;
                                        }
                                        switch (b2) {
                                            case 0:
                                                eventOption.name = strArrSplit[1];
                                                break;
                                            case 1:
                                                eventOption.outcome.add(new EventOutcome_Gold(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 2:
                                                eventOption.outcome.add(new EventOutcome_Gold_MonthlyIncome(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 3:
                                                eventOption.outcome.add(new EventOutcome_Legacy(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 4:
                                                eventOption.outcome.add(new EventOutcome_Legacy_Monthly(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 5:
                                                eventOption.outcome.add(new EventOutcome_Research(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 6:
                                                eventOption.outcome.add(new EventOutcome_Inflation(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 7:
                                                eventOption.outcome.add(new EventOutcome_MoveCapital(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 8:
                                                eventOption.outcome.add(new EventOutcome_Manpower(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 9:
                                                eventOption.outcome.add(new EventOutcome_AggressiveExpansion_Set(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 10:
                                                eventOption.outcome.add(new EventOutcome_AdvantagePoints(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 11:
                                                eventOption.outcome.add(new EventOutcome_AddVariable(strArrSplit[1]));
                                                break;
                                            case 12:
                                                eventOption.outcome.add(new EventOutcome_AddVariable_Civ(strArrSplit[1], strArrSplit[2]));
                                                break;
                                            case 13:
                                                eventOption.outcome.add(new EventOutcome_AI_Aggression(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 14:
                                                ArrayList arrayList = new ArrayList();
                                                ArrayList arrayList2 = new ArrayList();
                                                for (int i17 = 1; i17 < strArrSplit.length - 1; i17 += 2) {
                                                    try {
                                                        arrayList.add(Integer.valueOf(Integer.parseInt(strArrSplit[i17])));
                                                        arrayList2.add(Integer.valueOf(Integer.parseInt(strArrSplit[i17 + 1])));
                                                    } catch (Exception e19) {
                                                        CFG.exceptionStack(e19);
                                                    }
                                                    break;
                                                }
                                                eventOption.outcome.add(new EventOutcome_AddArmy(arrayList, arrayList2));
                                                break;
                                            case 15:
                                                eventOption.outcome.add(new EventOutcome_MilitaryAcademy(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 16:
                                                eventOption.outcome.add(new EventOutcome_MilitaryAcademyForGenerals(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 17:
                                                eventOption.outcome.add(new EventOutcome_CapitalCityLevel(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 18:
                                                eventOption.outcome.add(new EventOutcome_SupremeCourt(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 19:
                                                eventOption.outcome.add(new EventOutcome_NuclearReactor(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 20:
                                                eventOption.outcome.add(new EventOutcome_SetCiv(strArrSplit[1]));
                                                break;
                                            case 21:
                                                eventOption.outcome.add(new EventOutcome_SetCiv2(strArrSplit[1], strArrSplit[2]));
                                                break;
                                            case 22:
                                                eventOption.outcome.add(new EventOutcome_DeclareWar(strArrSplit[1]));
                                                break;
                                            case 23:
                                                eventOption.outcome.add(new EventOutcome_DeclareWar2(strArrSplit[1], strArrSplit[2]));
                                                break;
                                            case 24:
                                                eventOption.outcome.add(new EventOutcome_PlayerChangeCiv(strArrSplit[1]));
                                                break;
                                            case 25:
                                                eventOption.outcome.add(new EventOutcome_ChangeIdeology(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 26:
                                                eventOption.outcome.add(new EventOutcome_ChangeReligion(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 27:
                                                eventOption.outcome.add(new EventOutcome_ChangeIdeologyCiv(Integer.parseInt(strArrSplit[1]), strArrSplit[2]));
                                                break;
                                            case 28:
                                                eventOption.outcome.add(new EventOutcome_ChangeReligionCiv(Integer.parseInt(strArrSplit[1]), strArrSplit[2]));
                                                break;
                                            case Input.Keys.A /* 29 */:
                                                eventOption.outcome.add(new EventOutcome_RunEvent(strArrSplit[1]));
                                                break;
                                            case 30:
                                                eventOption.outcome.add(new EventOutcome_PromoteAdvisor(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case Input.Keys.C /* 31 */:
                                                eventOption.outcome.add(new EventOutcome_JoinAllianceSpecialFirstTier(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 32:
                                                eventOption.outcome.add(new EventOutcome_JoinAllianceSpecialSecondTier(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 33:
                                                eventOption.outcome.add(new EventOutcome_LeaveAllianceSpecial(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 34:
                                                eventOption.outcome.add(new EventOutcome_KillAdvisor(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 35:
                                                eventOption.outcome.add(new EventOutcome_KillRuler());
                                                break;
                                            case 36:
                                                eventOption.outcome.add(new EventOutcome_KillRuler_Chance(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 37:
                                                eventOption.outcome.add(new EventOutcome_AddGeneral());
                                                break;
                                            case 38:
                                                eventOption.outcome.add(new EventOutcome_Resource_PriceChange(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]), Integer.parseInt(strArrSplit[4]), Integer.parseInt(strArrSplit[5])));
                                                break;
                                            case 39:
                                                eventOption.outcome.add(new EventOutcome_Resource_PriceChangeUp(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]), Integer.parseInt(strArrSplit[4]), Integer.parseInt(strArrSplit[5])));
                                                break;
                                            case 40:
                                                eventOption.outcome.add(new EventOutcome_Resource_PriceChangeDown(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]), Integer.parseInt(strArrSplit[4]), Integer.parseInt(strArrSplit[5])));
                                                break;
                                            case 41:
                                                eventOption.outcome.add(new EventOutcome_Resource_PriceChangeGroup(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]), Integer.parseInt(strArrSplit[4]), Integer.parseInt(strArrSplit[5])));
                                                break;
                                            case 42:
                                                eventOption.outcome.add(new EventOutcome_Resource_PriceChangeGroupUp(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]), Integer.parseInt(strArrSplit[4]), Integer.parseInt(strArrSplit[5])));
                                                break;
                                            case 43:
                                                eventOption.outcome.add(new EventOutcome_Resource_PriceChangeGroupDown(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]), Integer.parseInt(strArrSplit[4]), Integer.parseInt(strArrSplit[5])));
                                                break;
                                            case 44:
                                                eventOption.outcome.add(new EventOutcome_Resource_PriceChangeRandom(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]), Integer.parseInt(strArrSplit[4])));
                                                break;
                                            case 45:
                                                eventOption.outcome.add(new EventOutcome_Resource_PriceChangeRandomUp(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]), Integer.parseInt(strArrSplit[4])));
                                                break;
                                            case 46:
                                                eventOption.outcome.add(new EventOutcome_Resource_PriceChangeRandomDown(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]), Integer.parseInt(strArrSplit[4])));
                                                break;
                                            case 47:
                                                eventOption.outcome.add(new EventOutcome_AddGeneral_Character(strArrSplit[1]));
                                                break;
                                            case Input.Keys.T /* 48 */:
                                                eventOption.outcome.add(new EventOutcome_AddGeneral_CharacterAttackDefense(strArrSplit[1], Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3])));
                                                break;
                                            case Input.Keys.U /* 49 */:
                                                try {
                                                    eventOption.outcome.add(new EventOutcome_AddRuler(strArrSplit[1], strArrSplit[2], strArrSplit[3], Integer.parseInt(strArrSplit[4]), Integer.parseInt(strArrSplit[5]), Integer.parseInt(strArrSplit[6])));
                                                } catch (Exception e20) {
                                                    CFG.exceptionStack(e20);
                                                }
                                                break;
                                            case Input.Keys.V /* 50 */:
                                                eventOption.outcome.add(new EventOutcome_AddAdvisor(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case Input.Keys.W /* 51 */:
                                                eventOption.outcome.add(new EventOutcome_AddAdvisor_Character(strArrSplit[2], Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case Input.Keys.X /* 52 */:
                                                try {
                                                    if (strArrSplit.length > 1 && (str4 = strArrSplit[1]) != null && str4.length() > 0) {
                                                        String[] strArrSplit2 = strArrSplit[1].split(";");
                                                        ArrayList arrayList3 = new ArrayList();
                                                        for (String str14 : strArrSplit2) {
                                                            try {
                                                                arrayList3.add(Integer.valueOf(Integer.parseInt(str14)));
                                                            } catch (Exception e21) {
                                                                CFG.exceptionStack(e21);
                                                            }
                                                        }
                                                        if (arrayList3.size() > 0) {
                                                            eventOption.outcome.add(new EventOutcome_AnnexProvinces(arrayList3));
                                                        }
                                                    }
                                                } catch (Exception e22) {
                                                    CFG.exceptionStack(e22);
                                                }
                                                break;
                                            case Input.Keys.Y /* 53 */:
                                                try {
                                                    if (strArrSplit.length > 2 && (str2 = strArrSplit[2]) != null && str2.length() > 0 && strArrSplit[1].length() > 0) {
                                                        String[] strArrSplit3 = strArrSplit[2].split(";");
                                                        ArrayList arrayList4 = new ArrayList();
                                                        for (String str15 : strArrSplit3) {
                                                            try {
                                                                arrayList4.add(Integer.valueOf(Integer.parseInt(str15)));
                                                            } catch (Exception e23) {
                                                                CFG.exceptionStack(e23);
                                                            }
                                                        }
                                                        if (arrayList4.size() > 0) {
                                                            eventOption.outcome.add(new EventOutcome_AnnexProvincesFromCiv(strArrSplit[1], arrayList4));
                                                        }
                                                    }
                                                } catch (Exception e24) {
                                                    CFG.exceptionStack(e24);
                                                }
                                                break;
                                            case Input.Keys.Z /* 54 */:
                                                try {
                                                    if (strArrSplit.length > 3 && (str5 = strArrSplit[3]) != null && str5.length() > 0) {
                                                        String[] strArrSplit4 = strArrSplit[3].split(";");
                                                        ArrayList arrayList5 = new ArrayList();
                                                        for (String str16 : strArrSplit4) {
                                                            try {
                                                                arrayList5.add(Integer.valueOf(Integer.parseInt(str16)));
                                                            } catch (Exception e25) {
                                                                CFG.exceptionStack(e25);
                                                            }
                                                        }
                                                        if (arrayList5.size() > 0) {
                                                            eventOption.outcome.add(new EventOutcome_AnnexedProvincesByCivFromCiv(strArrSplit[1], strArrSplit[2], arrayList5));
                                                        }
                                                    }
                                                } catch (Exception e26) {
                                                    CFG.exceptionStack(e26);
                                                }
                                                break;
                                            case Input.Keys.COMMA /* 55 */:
                                                try {
                                                    eventOption.outcome.add(new EventOutcome_Vassalize(strArrSplit[1], strArrSplit[2]));
                                                } catch (Exception e27) {
                                                    CFG.exceptionStack(e27);
                                                }
                                                break;
                                            case Input.Keys.PERIOD /* 56 */:
                                                try {
                                                    if (strArrSplit.length > 1 && (str = strArrSplit[1]) != null && str.length() > 0) {
                                                        eventOption.outcome.add(new EventOutcome_AnnexCivilization(strArrSplit[1]));
                                                    }
                                                } catch (Exception e28) {
                                                    CFG.exceptionStack(e28);
                                                }
                                                break;
                                            case Input.Keys.ALT_LEFT /* 57 */:
                                                try {
                                                    if (strArrSplit.length > 1 && (str3 = strArrSplit[1]) != null && str3.length() > 0) {
                                                        eventOption.outcome.add(new EventOutcome_AnnexedByCivilization(strArrSplit[1]));
                                                    }
                                                } catch (Exception e29) {
                                                    CFG.exceptionStack(e29);
                                                }
                                                break;
                                            case Input.Keys.ALT_RIGHT /* 58 */:
                                                try {
                                                    eventOption.outcome.add(new EventOutcome_Alliance(strArrSplit[1], strArrSplit[2]));
                                                } catch (Exception e30) {
                                                    CFG.exceptionStack(e30);
                                                }
                                                break;
                                            case Input.Keys.SHIFT_LEFT /* 59 */:
                                                try {
                                                    eventOption.outcome.add(new EventOutcome_Explode(strArrSplit[1]));
                                                } catch (Exception e31) {
                                                    CFG.exceptionStack(e31);
                                                }
                                                break;
                                            case 60:
                                                try {
                                                    eventOption.outcome.add(new EventOutcome_NonAggressionPact(strArrSplit[1], strArrSplit[2]));
                                                } catch (Exception e32) {
                                                    CFG.exceptionStack(e32);
                                                }
                                                break;
                                            case Input.Keys.TAB /* 61 */:
                                                try {
                                                    eventOption.outcome.add(new EventOutcome_MilitaryAccess(strArrSplit[1], strArrSplit[2]));
                                                } catch (Exception e33) {
                                                    CFG.exceptionStack(e33);
                                                }
                                                break;
                                            case Input.Keys.SPACE /* 62 */:
                                                try {
                                                    eventOption.outcome.add(new EventOutcome_Guarantee(strArrSplit[1], strArrSplit[2]));
                                                } catch (Exception e34) {
                                                    CFG.exceptionStack(e34);
                                                }
                                                break;
                                            case 63:
                                                try {
                                                    eventOption.outcome.add(new EventOutcome_DefensivePact(strArrSplit[1], strArrSplit[2]));
                                                } catch (Exception e35) {
                                                    CFG.exceptionStack(e35);
                                                }
                                                break;
                                            case 64:
                                                try {
                                                    eventOption.outcome.add(new EventOutcome_AddTruce(strArrSplit[1], strArrSplit[2]));
                                                } catch (Exception e36) {
                                                    CFG.exceptionStack(e36);
                                                }
                                                break;
                                            case Input.Keys.ENVELOPE /* 65 */:
                                                eventOption.ai = Float.parseFloat(strArrSplit[1]);
                                                break;
                                            case Input.Keys.ENTER /* 66 */:
                                                eventOption.outcome.add(new EventOutcome_PlayMusic(strArrSplit[1]));
                                                break;
                                            case 67:
                                                eventOption.outcome.add(new EventOutcome_Province_ID_CoreAdd(Integer.parseInt(strArrSplit[1]), strArrSplit[2]));
                                                break;
                                            case 68:
                                                eventOption.outcome.add(new EventOutcome_Province_ID_CoreRemove(Integer.parseInt(strArrSplit[1]), strArrSplit[2]));
                                                break;
                                            case Input.Keys.MINUS /* 69 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Economy(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.EQUALS /* 70 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Economy_ID(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])));
                                                break;
                                            case Input.Keys.LEFT_BRACKET /* 71 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Economy_Capital(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.RIGHT_BRACKET /* 72 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Economy_All(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.BACKSLASH /* 73 */:
                                                eventOption.outcome.add(new EventOutcome_Province_TaxEfficiency(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.SEMICOLON /* 74 */:
                                                eventOption.outcome.add(new EventOutcome_Province_TaxEfficiency_ID(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])));
                                                break;
                                            case Input.Keys.APOSTROPHE /* 75 */:
                                                eventOption.outcome.add(new EventOutcome_Province_TaxEfficiency_Capital(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.SLASH /* 76 */:
                                                eventOption.outcome.add(new EventOutcome_Province_TaxEfficiency_All(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.AT /* 77 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Manpower(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUM /* 78 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Manpower_Capital(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.HEADSETHOOK /* 79 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Manpower_All(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.FOCUS /* 80 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Manpower_ID(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])));
                                                break;
                                            case Input.Keys.PLUS /* 81 */:
                                                eventOption.outcome.add(new EventOutcome_Province_GrowthRate(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.MENU /* 82 */:
                                                eventOption.outcome.add(new EventOutcome_Province_GrowthRate_Capital(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NOTIFICATION /* 83 */:
                                                eventOption.outcome.add(new EventOutcome_Province_GrowthRate_All(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.SEARCH /* 84 */:
                                                eventOption.outcome.add(new EventOutcome_Province_GrowthRate_ID(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])));
                                                break;
                                            case Input.Keys.MEDIA_PLAY_PAUSE /* 85 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Population(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case Input.Keys.MEDIA_STOP /* 86 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Population_Capital(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case Input.Keys.MEDIA_NEXT /* 87 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Population_All(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case Input.Keys.MEDIA_PREVIOUS /* 88 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Religion(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case Input.Keys.MEDIA_REWIND /* 89 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Religion_Capital(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case Input.Keys.MEDIA_FAST_FORWARD /* 90 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Religion_All(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case Input.Keys.MUTE /* 91 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Religion_ID(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])));
                                                break;
                                            case Input.Keys.PAGE_UP /* 92 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Devastation(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.PAGE_DOWN /* 93 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Devastation_Capital(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.PICTSYMBOLS /* 94 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Devastation_All(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.SWITCH_CHARSET /* 95 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Devastation_ID(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])));
                                                break;
                                            case Input.Keys.BUTTON_A /* 96 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Unrest(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.BUTTON_B /* 97 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Unrest_Capital(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.BUTTON_C /* 98 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Unrest_All(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.BUTTON_X /* 99 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Unrest_ID(Integer.parseInt(strArrSplit[1]), Float.parseFloat(strArrSplit[2])));
                                                break;
                                            case 100:
                                                eventOption.outcome.add(new EventOutcome_Province_Infrastructure(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 101:
                                                eventOption.outcome.add(new EventOutcome_Province_Infrastructure_Capital(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case 102:
                                                eventOption.outcome.add(new EventOutcome_Province_Infrastructure_All(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case Input.Keys.BUTTON_R1 /* 103 */:
                                                eventOption.outcome.add(new EventOutcome_Province_Infrastructure_ID(Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])));
                                                break;
                                            case Input.Keys.BUTTON_L2 /* 104 */:
                                                eventOption.bonus_duration = Integer.parseInt(strArrSplit[1]);
                                                break;
                                            case Input.Keys.BUTTON_R2 /* 105 */:
                                                eventOption.outcome.add(new EventOutcome_BonusMonthlyIncome(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.BUTTON_THUMBL /* 106 */:
                                                eventOption.outcome.add(new EventOutcome_BonusMonthlyLegacy(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.BUTTON_THUMBR /* 107 */:
                                                eventOption.outcome.add(new EventOutcome_BonusMonthlyLegacyPerc(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.BUTTON_START /* 108 */:
                                                eventOption.outcome.add(new EventOutcome_BonusTaxEfficiency(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.BUTTON_SELECT /* 109 */:
                                                eventOption.outcome.add(new EventOutcome_BonusProvinceMaintenance(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.BUTTON_MODE /* 110 */:
                                                eventOption.outcome.add(new EventOutcome_BonusBuildingsMaintenanceCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.ESCAPE /* 111 */:
                                                eventOption.outcome.add(new EventOutcome_BonusMaintenanceCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.FORWARD_DEL /* 112 */:
                                                eventOption.outcome.add(new EventOutcome_BonusGrowthRate(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 113:
                                                eventOption.outcome.add(new EventOutcome_BonusCorruption(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 114:
                                                eventOption.outcome.add(new EventOutcome_BonusInflation(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.CAPS_LOCK /* 115 */:
                                                eventOption.outcome.add(new EventOutcome_BonusProductionEfficiency(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.SCROLL_LOCK /* 116 */:
                                                eventOption.outcome.add(new EventOutcome_BonusIncomeTaxation(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 117:
                                                eventOption.outcome.add(new EventOutcome_BonusIncomeEconomy(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 118:
                                                eventOption.outcome.add(new EventOutcome_BonusIncomeProduction(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 119:
                                                eventOption.outcome.add(new EventOutcome_BonusMaxManpower(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.PRINT_SCREEN /* 120 */:
                                                eventOption.outcome.add(new EventOutcome_BonusMaxManpowerPercentage(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.PAUSE /* 121 */:
                                                eventOption.outcome.add(new EventOutcome_BonusManpowerRecoverySpeed(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 122:
                                                eventOption.outcome.add(new EventOutcome_BonusReinforcementSpeed(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.END /* 123 */:
                                                eventOption.outcome.add(new EventOutcome_BonusArmyMoraleRecovery(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.INSERT /* 124 */:
                                                eventOption.outcome.add(new EventOutcome_BonusWarScoreCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 125:
                                                eventOption.outcome.add(new EventOutcome_BonusArmyMaintenance(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 126:
                                                eventOption.outcome.add(new EventOutcome_BonusRecruitmentTime(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 127:
                                                eventOption.outcome.add(new EventOutcome_BonusRecruitArmyCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 128:
                                                eventOption.outcome.add(new EventOutcome_BonusRecruitArmyFirstLineCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.CONTROL_LEFT /* 129 */:
                                                eventOption.outcome.add(new EventOutcome_BonusRecruitArmySecondLineCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.CONTROL_RIGHT /* 130 */:
                                                eventOption.outcome.add(new EventOutcome_BonusResearch(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.F1 /* 131 */:
                                                eventOption.outcome.add(new EventOutcome_BonusResearchPoints(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.F2 /* 132 */:
                                                eventOption.outcome.add(new EventOutcome_BonusConstructionCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.F3 /* 133 */:
                                                eventOption.outcome.add(new EventOutcome_BonusAdministrationBuildingsCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.F4 /* 134 */:
                                                eventOption.outcome.add(new EventOutcome_BonusMilitaryBuildingsCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.F5 /* 135 */:
                                                eventOption.outcome.add(new EventOutcome_BonusEconomyBuildingsCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.F6 /* 136 */:
                                                eventOption.outcome.add(new EventOutcome_BonusConstructionTime(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.F7 /* 137 */:
                                                eventOption.outcome.add(new EventOutcome_BonusInvestInEconomyCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.F8 /* 138 */:
                                                eventOption.outcome.add(new EventOutcome_BonusMaximumAmountOfGold(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.F9 /* 139 */:
                                                eventOption.outcome.add(new EventOutcome_BonusIncreaseManpowerCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.F10 /* 140 */:
                                                eventOption.outcome.add(new EventOutcome_BonusIncreaseTaxEfficiencyCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.F11 /* 141 */:
                                                eventOption.outcome.add(new EventOutcome_BonusDevelopInfrastructureCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.F12 /* 142 */:
                                                eventOption.outcome.add(new EventOutcome_BonusIncreaseGrowthRateCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUM_LOCK /* 143 */:
                                                eventOption.outcome.add(new EventOutcome_BonusGeneralAttack(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_0 /* 144 */:
                                                eventOption.outcome.add(new EventOutcome_BonusGeneralDefense(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_1 /* 145 */:
                                                eventOption.outcome.add(new EventOutcome_BonusUnitsAttack(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_2 /* 146 */:
                                                eventOption.outcome.add(new EventOutcome_BonusUnitsDefense(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_3 /* 147 */:
                                                eventOption.outcome.add(new EventOutcome_BonusMaxMorale(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_4 /* 148 */:
                                                eventOption.outcome.add(new EventOutcome_BonusArmyMovementSpeed(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_5 /* 149 */:
                                                eventOption.outcome.add(new EventOutcome_BonusSiegeEffectiveness(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 150:
                                                eventOption.outcome.add(new EventOutcome_BonusImproveRelationsModifier(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_7 /* 151 */:
                                                eventOption.outcome.add(new EventOutcome_BonusLoanInterest(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_8 /* 152 */:
                                                eventOption.outcome.add(new EventOutcome_BonusLoansLimit(Integer.parseInt(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_9 /* 153 */:
                                                eventOption.outcome.add(new EventOutcome_BonusAggressiveExpansion(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_DIVIDE /* 154 */:
                                                eventOption.outcome.add(new EventOutcome_BonusIncomeFromVassals(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_MULTIPLY /* 155 */:
                                                eventOption.outcome.add(new EventOutcome_BonusRevolutionaryRisk(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_SUBTRACT /* 156 */:
                                                eventOption.outcome.add(new EventOutcome_BonusCoreCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_ADD /* 157 */:
                                                eventOption.outcome.add(new EventOutcome_BonusReligionCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_DOT /* 158 */:
                                                eventOption.outcome.add(new EventOutcome_BonusAdvisorCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_COMMA /* 159 */:
                                                eventOption.outcome.add(new EventOutcome_BonusGeneralCost(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_ENTER /* 160 */:
                                                eventOption.outcome.add(new EventOutcome_BonusDiseaseDeathRate(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_EQUALS /* 161 */:
                                                eventOption.outcome.add(new EventOutcome_BonusDiplomacyPoints(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_LEFT_PAREN /* 162 */:
                                                eventOption.outcome.add(new EventOutcome_BonusBattleWidth(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case Input.Keys.NUMPAD_RIGHT_PAREN /* 163 */:
                                                eventOption.outcome.add(new EventOutcome_BonusDiscipline(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 164:
                                                eventOption.outcome.add(new EventOutcome_BonusManpowerRecoveryFromADisbandedArmy(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 165:
                                                eventOption.outcome.add(new EventOutcome_BonusAdvisorMaxLevel(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 166:
                                                eventOption.outcome.add(new EventOutcome_BonusAllCharactersLifeExpectancy(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            case 167:
                                                eventOption.outcome.add(new EventOutcome_BonusRegimentsLimit(Float.parseFloat(strArrSplit[1])));
                                                break;
                                            default:
                                                CFG.LOG(" MISSING IN OPTION -> " + strArrSplit[0] + str6 + (i13 + 1));
                                                break;
                                        }
                                    } else {
                                        try {
                                            String str17 = strArrSplit[0];
                                            try {
                                                switch (str17.hashCode()) {
                                                    case -1827064600:
                                                        b = str17.equals("mission_image") ? (byte) 8 : (byte) -1;
                                                        break;
                                                    case -59093660:
                                                        b = str17.equals("mission_desc") ? (byte) 3 : (byte) -1;
                                                        break;
                                                    case 3355:
                                                        b = str17.equals("id") ? (byte) 0 : (byte) -1;
                                                        break;
                                                    case 3079825:
                                                        b = str17.equals("desc") ? (byte) 2 : (byte) -1;
                                                        break;
                                                    case 100313435:
                                                        b = str17.equals(SwmJtrccN.hOv) ? (byte) 4 : (byte) -1;
                                                        break;
                                                    case 106851532:
                                                        b = str17.equals("popUp") ? (byte) 9 : (byte) -1;
                                                        break;
                                                    case 110371416:
                                                        b = str17.equals("title") ? (byte) 1 : (byte) -1;
                                                        break;
                                                    case 293053236:
                                                        b = str17.equals("only_once") ? (byte) 5 : (byte) -1;
                                                        break;
                                                    case 1165718527:
                                                        b = str17.equals("show_in_missions") ? (byte) 7 : (byte) -1;
                                                        break;
                                                    case 1696433493:
                                                        b = str17.equals("possible_to_run") ? (byte) 6 : (byte) -1;
                                                        break;
                                                    default:
                                                        b = -1;
                                                        break;
                                                }
                                                switch (b) {
                                                    case 0:
                                                        event.id = strArrSplit[1];
                                                        break;
                                                    case 1:
                                                        event.title = strArrSplit[1];
                                                        break;
                                                    case 2:
                                                        event.desc = strArrSplit[1];
                                                        break;
                                                    case 3:
                                                        event.mission_desc = strArrSplit[1];
                                                        break;
                                                    case 4:
                                                        event.image = strArrSplit[1];
                                                        break;
                                                    case 5:
                                                        event.only_once = Boolean.parseBoolean(strArrSplit[1]);
                                                        break;
                                                    case 6:
                                                        event.possible_to_run = Boolean.parseBoolean(strArrSplit[1]);
                                                        break;
                                                    case 7:
                                                        event.show_in_missions = Boolean.parseBoolean(strArrSplit[1]);
                                                        break;
                                                    case 8:
                                                        event.mission_image = Integer.parseInt(strArrSplit[1]);
                                                        break;
                                                    case 9:
                                                        event.popUp = Boolean.parseBoolean(strArrSplit[1]);
                                                        break;
                                                    default:
                                                        try {
                                                            CFG.LOG(" MISSING -> " + strArrSplit[0] + str6 + (i13 + 1));
                                                            i14 = i5;
                                                            i11 = i6;
                                                            i12 = i4;
                                                            i15 = i7;
                                                        } catch (Exception e37) {
                                                            e = e37;
                                                            exc = e;
                                                            i11 = i6;
                                                            i15 = i7;
                                                            CFG.exceptionStack(exc);
                                                            i14 = i5;
                                                            i12 = i4;
                                                        }
                                                        break;
                                                }
                                            } catch (Exception e38) {
                                                e = e38;
                                                exc = e;
                                                i11 = i6;
                                                i15 = i7;
                                                CFG.exceptionStack(exc);
                                                i14 = i5;
                                                i12 = i4;
                                                i13++;
                                                strArr2 = strArr;
                                                length = i2;
                                                i10 = i3;
                                            }
                                        } catch (Exception e39) {
                                            e = e39;
                                        }
                                    }
                                }
                                e = e17;
                                exc = e;
                                i11 = i6;
                                i15 = i7;
                                CFG.exceptionStack(exc);
                                i14 = i5;
                                i12 = i4;
                            } else {
                                i5 = i14;
                            }
                            i14 = i5;
                            i11 = i6;
                            i12 = i4;
                            i15 = i7;
                        } catch (Exception e40) {
                            e = e40;
                            i5 = i14;
                        }
                    }
                } catch (Exception e41) {
                    i2 = length;
                    i3 = i10;
                    i4 = i12;
                    i5 = i14;
                    exc = e41;
                }
                i13++;
                strArr2 = strArr;
                length = i2;
                i10 = i3;
            }
            int i18 = i10;
            int i19 = i11;
            int i20 = i12;
            if (!event.addEvent()) {
                return null;
            }
            if (i != 999 && i != 1000) {
                if (i == 0) {
                    events.add(event);
                    if (!z) {
                        return null;
                    }
                    exactDate_Events.add(new Event_ExactDate(events.size() - 1, i18, i19, i20));
                    return null;
                }
                if (i == 1) {
                    eventsSiege.add(event);
                    return null;
                }
                if (i == 2) {
                    eventsGlobal.add(event);
                    return null;
                }
                if (i == 3) {
                    eventsScenario.add(event);
                    if (!z) {
                        return null;
                    }
                    exactDate_EventsScenario.add(new Event_ExactDate(eventsScenario.size() - 1, i18, i19, i20));
                    return null;
                }
                if (i == 4) {
                    eventsSiegeScenario.add(event);
                    return null;
                }
                if (i != 5) {
                    return null;
                }
                eventsGlobalScenario.add(event);
                return null;
            }
            return event;
        } catch (Exception e42) {
            CFG.exceptionStack(e42);
            return null;
        }
    }

    public static void loadEventIMG(String str) {
        if (str.equals(loadedEventIMG)) {
            return;
        }
        Image image = eventIMG;
        if (image != null) {
            image.dispose();
            eventIMG = null;
        }
        try {
            if (FileManager.loadFile("game/events/images/" + CFG.getRescouresPath_Short() + str).exists()) {
                eventIMG = new Image(ImageManager.loadTexture_RGB888("game/events/images/" + CFG.getRescouresPath_Short() + str), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            } else {
                eventIMG = new Image(ImageManager.loadTexture_RGB888("game/events/images/" + CFG.getRescouresPath_Short_H() + str), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            }
            loadedEventIMG = str;
        } catch (Exception e) {
            eventIMG = new Image(ImageManager.loadTexture_RGB888("game/events/images/" + CFG.getRescouresPath_Short() + "default.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
            CFG.exceptionStack(e);
        }
    }

    public static final void loadEvents() {
        String str;
        if (CFG.isDesktop()) {
            try {
                if (Boolean.parseBoolean(FileManager.loadFile("game/events/generate_list.txt").readString())) {
                    FileHandle[] list = Gdx.files.local("game/events/common/").list();
                    FileHandle fileHandleLocal = Gdx.files.local("game/events/list_common.txt");
                    fileHandleLocal.writeString("", false);
                    int i = 0;
                    while (true) {
                        int length = list.length;
                        str = HTGgowNjn.IQdjj;
                        if (i >= length) {
                            break;
                        }
                        fileHandleLocal.writeString(list[i].name() + str, true);
                        i++;
                    }
                    FileHandle[] list2 = Gdx.files.local("game/events/siege/").list();
                    FileHandle fileHandleLocal2 = Gdx.files.local("game/events/list_siege.txt");
                    fileHandleLocal2.writeString("", false);
                    for (FileHandle fileHandle : list2) {
                        fileHandleLocal2.writeString(fileHandle.name() + str, true);
                    }
                    FileHandle[] list3 = Gdx.files.local("game/events/global/").list();
                    FileHandle fileHandleLocal3 = Gdx.files.local("game/events/list_global.txt");
                    fileHandleLocal3.writeString("", false);
                    for (FileHandle fileHandle2 : list3) {
                        fileHandleLocal3.writeString(fileHandle2.name() + str, true);
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        loadEvents(0);
        loadEvents(1);
        loadEvents(2);
        loadMissionImages();
    }

    public static final void loadEvents(int i) {
        String str = i == 0 ? CFG.FILE_GAME_EVENTS_COMMON_PATH : i == 1 ? CFG.FILE_GAME_EVENTS_SIEGE_PATH : CFG.FILE_GAME_EVENTS_GLOBAL_PATH;
        String str2 = i == 0 ? CFG.FILE_GAME_EVENTS_LIST_COMMON : i == 1 ? CFG.FILE_GAME_EVENTS_LIST_SIEGE : CFG.FILE_GAME_EVENTS_LIST_GLOBAL;
        if (CFG.isDesktop()) {
            if (FileManager.IS_MAC) {
                try {
                    String[] strArrSplit = FileManager.loadFile("game/events/".concat(str2)).readString().split(";");
                    int length = strArrSplit.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        try {
                            if (strArrSplit[i2].length() > 0) {
                                loadEvent(i, FileManager.loadFile("game/events/" + str + strArrSplit[i2]).readString().split("\\r?\\n"));
                            }
                        } catch (Exception e) {
                            CFG.exceptionStack(e);
                        }
                    }
                } catch (GdxRuntimeException e2) {
                    CFG.exceptionStack(e2);
                }
            }
            for (FileHandle fileHandle : Gdx.files.internal("game/events/".concat(str)).list()) {
                try {
                    loadEvent(i, fileHandle.readString().split("\\r?\\n"));
                } catch (Exception e3) {
                    CFG.exceptionStack(e3);
                }
            }
            for (int i3 = 0; i3 < SteamManager.modsFoldersSize; i3++) {
                for (FileHandle fileHandle2 : FileManager.IS_MAC ? Gdx.files.external(SteamManager.modsFolders.get(i3) + "game/events/" + str).list() : Gdx.files.internal(SteamManager.modsFolders.get(i3) + "game/events/" + str).list()) {
                    try {
                        loadEvent(i, fileHandle2.readString().split("\\r?\\n"));
                    } catch (Exception e4) {
                        CFG.exceptionStack(e4);
                    }
                }
            }
            for (int i4 = 0; i4 < SteamManager.itemsInstalledSize; i4++) {
                for (FileHandle fileHandle3 : Gdx.files.absolute(SteamManager.itemsInstalled.get(i4).getFolder() + "/game/events/" + str).list()) {
                    try {
                        loadEvent(i, fileHandle3.readString().split("\\r?\\n"));
                    } catch (Exception e5) {
                        CFG.exceptionStack(e5);
                    }
                }
            }
        } else {
            try {
                String[] strArrSplit2 = FileManager.loadFile("game/events/".concat(str2)).readString().split(";");
                int length2 = strArrSplit2.length;
                for (int i5 = 0; i5 < length2; i5++) {
                    try {
                        if (strArrSplit2[i5].length() > 0) {
                            loadEvent(i, FileManager.loadFile("game/events/" + str + strArrSplit2[i5]).readString().split("\\r?\\n"));
                        }
                    } catch (Exception e6) {
                        CFG.exceptionStack(e6);
                    }
                }
            } catch (GdxRuntimeException e7) {
                CFG.exceptionStack(e7);
            }
        }
        if (i == 0) {
            iEventsSize = events.size();
        } else if (i == 1) {
            iEventsSiegeSize = eventsSiege.size();
        } else if (i == 2) {
            iEventsGlobalSize = eventsGlobal.size();
            GameValues.events.RUN_GLOBAL_EVENTS_EVERY_X_TURNS = Math.max(10, GameValues.events.RUN_GLOBAL_EVENTS_EVERY_X_TURNS / Math.max(1, iEventsGlobalSize));
        }
        if (i == 3) {
            iEventsScenarioSize = eventsScenario.size();
        } else if (i == 4) {
            iEventsSiegeScenarioSize = eventsSiegeScenario.size();
        } else if (i == 5) {
            iEventsGlobalScenarioSize = eventsGlobalScenario.size();
        }
    }

    public static final void loadEvents_Scenario() {
        loadEvents_Scenario(3);
        loadEvents_Scenario(4);
        loadEvents_Scenario(5);
    }

    public static final void loadEvents_Scenario(int i) {
        String str = i == 3 ? CFG.FILE_GAME_EVENTS_COMMON_PATH : i == 4 ? CFG.FILE_GAME_EVENTS_SIEGE_PATH : CFG.FILE_GAME_EVENTS_GLOBAL_PATH;
        String str2 = i == 3 ? CFG.FILE_GAME_EVENTS_LIST_COMMON : i == 4 ? CFG.FILE_GAME_EVENTS_LIST_SIEGE : CFG.FILE_GAME_EVENTS_LIST_GLOBAL;
        try {
            if (CFG.isDesktop()) {
                try {
                    if (FileManager.IS_MAC) {
                        try {
                            if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + loadScenarioEventsTag + "/events/").exists()) {
                                String[] strArrSplit = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + loadScenarioEventsTag + "/events/" + str2).readString().split(";");
                                int length = strArrSplit.length;
                                for (int i2 = 0; i2 < length; i2++) {
                                    try {
                                        if (strArrSplit[i2].length() > 0) {
                                            loadEvent(i, FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + loadScenarioEventsTag + "/events/" + str + strArrSplit[i2]).readString().split("\\r?\\n"));
                                        }
                                    } catch (Exception e) {
                                        CFG.exceptionStack(e);
                                    }
                                }
                            }
                        } catch (Exception e2) {
                            CFG.exceptionStack(e2);
                        }
                    }
                } catch (GdxRuntimeException e3) {
                    CFG.exceptionStack(e3);
                }
                for (FileHandle fileHandle : Gdx.files.internal("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + loadScenarioEventsTag + "/events/" + str).list()) {
                    try {
                        loadEvent(i, fileHandle.readString().split("\\r?\\n"));
                    } catch (Exception e4) {
                        CFG.exceptionStack(e4);
                    }
                }
                for (int i3 = 0; i3 < SteamManager.modsFoldersSize; i3++) {
                    for (FileHandle fileHandle2 : FileManager.IS_MAC ? Gdx.files.external(SteamManager.modsFolders.get(i3) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + loadScenarioEventsTag + "/events/" + str).list() : Gdx.files.internal(SteamManager.modsFolders.get(i3) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + loadScenarioEventsTag + "/events/" + str).list()) {
                        try {
                            loadEvent(i, fileHandle2.readString().split("\\r?\\n"));
                        } catch (Exception e5) {
                            CFG.exceptionStack(e5);
                        }
                    }
                }
                for (int i4 = 0; i4 < SteamManager.itemsInstalledSize; i4++) {
                    for (FileHandle fileHandle3 : Gdx.files.absolute(SteamManager.itemsInstalled.get(i4).getFolder() + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + loadScenarioEventsTag + "/events/" + str).list()) {
                        try {
                            loadEvent(i, fileHandle3.readString().split("\\r?\\n"));
                        } catch (Exception e6) {
                            CFG.exceptionStack(e6);
                        }
                    }
                }
            } else {
                try {
                    if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + loadScenarioEventsTag + "/events/").exists()) {
                        String[] strArrSplit2 = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + loadScenarioEventsTag + "/events/" + str2).readString().split(";");
                        int length2 = strArrSplit2.length;
                        for (int i5 = 0; i5 < length2; i5++) {
                            try {
                                if (strArrSplit2[i5].length() > 0) {
                                    loadEvent(i, FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + loadScenarioEventsTag + "/events/" + str + strArrSplit2[i5]).readString().split("\\r?\\n"));
                                }
                            } catch (Exception e7) {
                                CFG.exceptionStack(e7);
                            }
                        }
                    }
                } catch (Exception e8) {
                    CFG.exceptionStack(e8);
                }
            }
        } catch (GdxRuntimeException e9) {
            CFG.exceptionStack(e9);
        }
        if (i == 0) {
            iEventsSize = events.size();
        } else if (i == 1) {
            iEventsSiegeSize = eventsSiege.size();
        } else if (i == 2) {
            iEventsGlobalSize = eventsGlobal.size();
            GameValues.events.RUN_GLOBAL_EVENTS_EVERY_X_TURNS = Math.max(10, GameValues.events.RUN_GLOBAL_EVENTS_EVERY_X_TURNS / Math.max(1, iEventsGlobalSize));
        }
        if (i == 3) {
            iEventsScenarioSize = eventsScenario.size();
        } else if (i == 4) {
            iEventsSiegeScenarioSize = eventsSiegeScenario.size();
        } else if (i == 5) {
            iEventsGlobalScenarioSize = eventsGlobalScenario.size();
        }
    }

    public static void loadMissionImages() {
        try {
            int i = Integer.parseInt(FileManager.loadFile("game/events/imagesMissions/numOfImages.txt").readString());
            for (int i2 = 0; i2 < i; i2++) {
                if (FileManager.loadFile("game/events/imagesMissions/" + CFG.getRescouresPath_Short() + i2 + ".png").exists()) {
                    missionImages.add(new Image(ImageManager.loadTexture("game/events/imagesMissions/" + CFG.getRescouresPath_Short() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                } else {
                    missionImages.add(new Image(ImageManager.loadTexture("game/events/imagesMissions/" + CFG.getRescouresPath_Short_H() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void runEvent(int i) {
        int i2;
        int i3;
        try {
            int i4 = 1;
            if (Game.SCENARIO_EVENTS) {
                for (int i5 = 0; i5 < iEventsScenarioSize; i5++) {
                    if (eventsScenario.get(i5).id.equals(runEvent.get(i))) {
                        while (i4 < Game.getCivsSize()) {
                            if (Game.getCiv(i4).getNumOfProvinces() > 0 && ((!eventsScenario.get(i5).only_once || !Game.getCiv(i4).eventsDataVariables.hasVariable(eventsScenario.get(i5).id)) && eventsScenario.get(i5).runTriggers(i4))) {
                                updateRandomProvinceID(i4);
                                if (i4 == Game.player.iCivID) {
                                    Game.player.addActiveEvent(3, i5, 0);
                                    Game.addSimpleTask(new AnonymousClass3(eventsScenario.get(i5).id + "3", i5));
                                } else if (eventsScenario.get(i5).options.size() > 0) {
                                    int i6 = 0;
                                    for (int i7 = 0; i7 < eventsScenario.get(i5).options.size(); i7++) {
                                        i6 = (int) (i6 + eventsScenario.get(i5).options.get(i7).ai);
                                    }
                                    if (i6 <= 0) {
                                        i3 = 0;
                                        break;
                                    }
                                    int iNextInt = Game.oR.nextInt(i6);
                                    i3 = 0;
                                    while (true) {
                                        if (i3 >= eventsScenario.get(i5).options.size()) {
                                            i3 = 0;
                                            break;
                                        } else if (iNextInt <= 0 + eventsScenario.get(i5).options.get(i3).ai) {
                                            break;
                                        } else {
                                            i3++;
                                        }
                                    }
                                    Game.getCiv(i4).eventsDataVariables.addVariable(eventsScenario.get(i5).id);
                                    eventsScenario.get(i5).options.get(i3).executeOutcome(i4);
                                }
                            }
                            i4++;
                        }
                        runEvent.remove(i);
                        return;
                    }
                }
            }
            for (int i8 = 0; i8 < iEventsSize; i8++) {
                if (events.get(i8).id.equals(runEvent.get(i))) {
                    while (i4 < Game.getCivsSize()) {
                        if (Game.getCiv(i4).getNumOfProvinces() > 0 && ((!events.get(i8).only_once || !Game.getCiv(i4).eventsDataVariables.hasVariable(events.get(i8).id)) && events.get(i8).runTriggers(i4))) {
                            updateRandomProvinceID(i4);
                            if (i4 == Game.player.iCivID) {
                                Game.player.addActiveEvent(0, i8, 0);
                                Game.addSimpleTask(new AnonymousClass4(events.get(i8).id + "0", i8));
                            } else if (events.get(i8).options.size() > 0) {
                                int i9 = 0;
                                for (int i10 = 0; i10 < events.get(i8).options.size(); i10++) {
                                    i9 = (int) (i9 + events.get(i8).options.get(i10).ai);
                                }
                                if (i9 <= 0) {
                                    i2 = 0;
                                    break;
                                }
                                int iNextInt2 = Game.oR.nextInt(i9);
                                i2 = 0;
                                while (true) {
                                    if (i2 >= events.get(i8).options.size()) {
                                        i2 = 0;
                                        break;
                                    } else if (iNextInt2 <= 0 + events.get(i8).options.get(i2).ai) {
                                        break;
                                    } else {
                                        i2++;
                                    }
                                }
                                Game.getCiv(i4).eventsDataVariables.addVariable(events.get(i8).id);
                                events.get(i8).options.get(i2).executeOutcome(i4);
                            }
                        }
                        i4++;
                    }
                    runEvent.remove(i);
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void runEvents(int i) {
        int i2;
        int i3;
        if (runEvent.size() > 0) {
            for (int size = runEvent.size() - 1; size >= 0; size--) {
                runEvent(size);
            }
        }
        runEvents_ExactDay();
        try {
            for (int i4 = i % GameValues.gameUpdate.GAME_UPDATE_EVENTS_EVENTS; i4 < iEventsSize; i4 += GameValues.gameUpdate.GAME_UPDATE_EVENTS_EVENTS) {
                for (int i5 = events.get(i4).runCivsID % GameValues.gameUpdate.GAME_UPDATE_EVENTS_CIVS; i5 < Game.getCivsSize(); i5 += GameValues.gameUpdate.GAME_UPDATE_EVENTS_CIVS) {
                    if (Game.getCiv(i5).getNumOfProvinces() > 0 && ((!events.get(i4).only_once || !Game.getCiv(i5).eventsDataVariables.hasVariable(events.get(i4).id)) && events.get(i4).possible_to_run && events.get(i4).runTriggers(i5))) {
                        updateRandomProvinceID(i5);
                        if (i5 == Game.player.iCivID) {
                            Game.player.addActiveEvent(0, i4, 0);
                            Game.addSimpleTask(new AnonymousClass1(events.get(i4).id + "0", i4));
                        } else if (events.get(i4).options.size() > 0) {
                            int i6 = 0;
                            for (int i7 = 0; i7 < events.get(i4).options.size(); i7++) {
                                i6 = (int) (i6 + events.get(i4).options.get(i7).ai);
                            }
                            if (i6 <= 0) {
                                i3 = 0;
                                break;
                            }
                            int iNextInt = Game.oR.nextInt(i6);
                            i3 = 0;
                            while (true) {
                                if (i3 >= events.get(i4).options.size()) {
                                    i3 = 0;
                                    break;
                                } else if (iNextInt <= 0 + events.get(i4).options.get(i3).ai) {
                                    break;
                                } else {
                                    i3++;
                                }
                            }
                            Game.getCiv(i5).eventsDataVariables.addVariable(events.get(i4).id);
                            events.get(i4).options.get(i3).executeOutcome(i5);
                        }
                    }
                }
                events.get(i4).runCivsID++;
                if (events.get(i4).runCivsID >= GameValues.gameUpdate.GAME_UPDATE_EVENTS_CIVS) {
                    events.get(i4).runCivsID = 0;
                }
            }
            if (Game.SCENARIO_EVENTS) {
                for (int i8 = i % GameValues.gameUpdate.GAME_UPDATE_EVENTS_EVENTS; i8 < iEventsScenarioSize; i8 += GameValues.gameUpdate.GAME_UPDATE_EVENTS_EVENTS) {
                    for (int i9 = eventsScenario.get(i8).runCivsID % GameValues.gameUpdate.GAME_UPDATE_EVENTS_CIVS; i9 < Game.getCivsSize(); i9 += GameValues.gameUpdate.GAME_UPDATE_EVENTS_CIVS) {
                        if (Game.getCiv(i9).getNumOfProvinces() > 0 && ((!eventsScenario.get(i8).only_once || !Game.getCiv(i9).eventsDataVariables.hasVariable(eventsScenario.get(i8).id)) && eventsScenario.get(i8).possible_to_run && eventsScenario.get(i8).runTriggers(i9))) {
                            updateRandomProvinceID(i9);
                            if (i9 == Game.player.iCivID) {
                                Game.player.addActiveEvent(3, i8, 0);
                                Game.addSimpleTask(new AnonymousClass2(eventsScenario.get(i8).id + "3", i8));
                            } else if (eventsScenario.get(i8).options.size() > 0) {
                                int i10 = 0;
                                for (int i11 = 0; i11 < eventsScenario.get(i8).options.size(); i11++) {
                                    i10 = (int) (i10 + eventsScenario.get(i8).options.get(i11).ai);
                                }
                                if (i10 <= 0) {
                                    i2 = 0;
                                    break;
                                }
                                int iNextInt2 = Game.oR.nextInt(i10);
                                i2 = 0;
                                while (true) {
                                    if (i2 >= eventsScenario.get(i8).options.size()) {
                                        i2 = 0;
                                        break;
                                    } else if (iNextInt2 <= 0 + eventsScenario.get(i8).options.get(i2).ai) {
                                        break;
                                    } else {
                                        i2++;
                                    }
                                }
                                Game.getCiv(i9).eventsDataVariables.addVariable(eventsScenario.get(i8).id);
                                eventsScenario.get(i8).options.get(i2).executeOutcome(i9);
                            }
                        }
                    }
                    eventsScenario.get(i8).runCivsID++;
                    if (eventsScenario.get(i8).runCivsID >= GameValues.gameUpdate.GAME_UPDATE_EVENTS_CIVS) {
                        eventsScenario.get(i8).runCivsID = 0;
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void runEvents_ExactDay() {
        int i;
        int i2;
        try {
            if (exactDate_Events.size() > 0) {
                for (int size = exactDate_Events.size() - 1; size >= 0; size--) {
                    if (Game_Calendar.currentYear > exactDate_Events.get(size).year || ((Game_Calendar.currentYear >= exactDate_Events.get(size).year && Game_Calendar.currentMonth > exactDate_Events.get(size).month) || (Game_Calendar.currentYear >= exactDate_Events.get(size).year && Game_Calendar.currentMonth >= exactDate_Events.get(size).month && Game_Calendar.currentDay >= exactDate_Events.get(size).day))) {
                        for (int i3 = 1; i3 < Game.getCivsSize(); i3++) {
                            if (Game.getCiv(i3).getNumOfProvinces() > 0 && ((!events.get(exactDate_Events.get(size).eventID).only_once || !Game.getCiv(i3).eventsDataVariables.hasVariable(events.get(exactDate_Events.get(size).eventID).id)) && events.get(exactDate_Events.get(size).eventID).runTriggers(i3))) {
                                updateRandomProvinceID(i3);
                                if (i3 == Game.player.iCivID) {
                                    Game.player.addActiveEvent(0, exactDate_Events.get(size).eventID, 0);
                                    Game.addSimpleTask(new AnonymousClass5(events.get(exactDate_Events.get(size).eventID).id + "0", exactDate_Events.get(size).eventID));
                                } else if (events.get(exactDate_Events.get(size).eventID).options.size() > 0) {
                                    int i4 = 0;
                                    for (int i5 = 0; i5 < events.get(exactDate_Events.get(size).eventID).options.size(); i5++) {
                                        i4 = (int) (i4 + events.get(exactDate_Events.get(size).eventID).options.get(i5).ai);
                                    }
                                    if (i4 <= 0) {
                                        i2 = 0;
                                        break;
                                    }
                                    int iNextInt = Game.oR.nextInt(i4);
                                    i2 = 0;
                                    while (true) {
                                        if (i2 >= events.get(exactDate_Events.get(size).eventID).options.size()) {
                                            i2 = 0;
                                            break;
                                        } else if (iNextInt <= 0 + events.get(exactDate_Events.get(size).eventID).options.get(i2).ai) {
                                            break;
                                        } else {
                                            i2++;
                                        }
                                    }
                                    Game.getCiv(i3).eventsDataVariables.addVariable(events.get(exactDate_Events.get(size).eventID).id);
                                    events.get(exactDate_Events.get(size).eventID).options.get(i2).executeOutcome(i3);
                                }
                            }
                        }
                        exactDate_Events.remove(size);
                    }
                }
            }
            if (exactDate_EventsScenario.size() > 0) {
                for (int size2 = exactDate_EventsScenario.size() - 1; size2 >= 0; size2--) {
                    if (Game_Calendar.currentYear > exactDate_EventsScenario.get(size2).year || ((Game_Calendar.currentYear >= exactDate_EventsScenario.get(size2).year && Game_Calendar.currentMonth > exactDate_EventsScenario.get(size2).month) || (Game_Calendar.currentYear >= exactDate_EventsScenario.get(size2).year && Game_Calendar.currentMonth >= exactDate_EventsScenario.get(size2).month && Game_Calendar.currentDay >= exactDate_EventsScenario.get(size2).day))) {
                        for (int i6 = 1; i6 < Game.getCivsSize(); i6++) {
                            if (Game.getCiv(i6).getNumOfProvinces() > 0 && ((!eventsScenario.get(exactDate_EventsScenario.get(size2).eventID).only_once || !Game.getCiv(i6).eventsDataVariables.hasVariable(eventsScenario.get(exactDate_EventsScenario.get(size2).eventID).id)) && eventsScenario.get(exactDate_EventsScenario.get(size2).eventID).runTriggers(i6))) {
                                updateRandomProvinceID(i6);
                                if (i6 == Game.player.iCivID) {
                                    Game.player.addActiveEvent(3, exactDate_EventsScenario.get(size2).eventID, 0);
                                    Game.addSimpleTask(new AnonymousClass6(eventsScenario.get(exactDate_EventsScenario.get(size2).eventID).id + "3", exactDate_EventsScenario.get(size2).eventID));
                                } else if (eventsScenario.get(exactDate_EventsScenario.get(size2).eventID).options.size() > 0) {
                                    int i7 = 0;
                                    for (int i8 = 0; i8 < eventsScenario.get(exactDate_EventsScenario.get(size2).eventID).options.size(); i8++) {
                                        i7 = (int) (i7 + eventsScenario.get(exactDate_EventsScenario.get(size2).eventID).options.get(i8).ai);
                                    }
                                    if (i7 <= 0) {
                                        i = 0;
                                        break;
                                    }
                                    int iNextInt2 = Game.oR.nextInt(i7);
                                    i = 0;
                                    while (true) {
                                        if (i >= eventsScenario.get(exactDate_EventsScenario.get(size2).eventID).options.size()) {
                                            i = 0;
                                            break;
                                        } else if (iNextInt2 <= 0 + eventsScenario.get(exactDate_EventsScenario.get(size2).eventID).options.get(i).ai) {
                                            break;
                                        } else {
                                            i++;
                                        }
                                    }
                                    Game.getCiv(i6).eventsDataVariables.addVariable(eventsScenario.get(exactDate_EventsScenario.get(size2).eventID).id);
                                    eventsScenario.get(exactDate_EventsScenario.get(size2).eventID).options.get(i).executeOutcome(i6);
                                }
                            }
                        }
                        exactDate_EventsScenario.remove(size2);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:60:0x01e5  */
    public static final void runEvents_Global(int i) {
        try {
            if (i % GameValues.events.RUN_GLOBAL_EVENTS_EVERY_X_TURNS == 0) {
                try {
                    int i2 = runEventGlobalID;
                    if (i2 < iEventsGlobalSize && ((!eventsGlobal.get(i2).only_once || !eventsGlobal_Variables.hasVariable(eventsGlobal.get(runEventGlobalID).id)) && eventsGlobal.get(runEventGlobalID).runTriggers(0))) {
                        updateRandomProvinceID(0);
                        eventsGlobal_Variables.addVariable(getActiveEvent(runEventGlobalID, 2).id);
                        boolean z = !GameValues.events.EVENT_CHANGE_PRICE_SHOW_ONLY_THOSE_THAT_PLAYER_HAS;
                        if (!z) {
                            if (z) {
                                z = true;
                            } else {
                                try {
                                    if (eventsGlobal.get(runEventGlobalID).options.size() < 1 || eventsGlobal.get(runEventGlobalID).options.get(0).outcome.size() <= 0 || !ResourcesManager.hasResource(Game.player.iCivID, eventsGlobal.get(runEventGlobalID).options.get(0).outcome.get(0).getValue1())) {
                                        z = false;
                                    } else {
                                        z = true;
                                    }
                                } catch (Exception unused) {
                                }
                            }
                        }
                        eventsGlobal.get(runEventGlobalID).options.get(0).executeOutcome();
                        if (z) {
                            Game.player.addActiveEvent(2, runEventGlobalID, -(GameValues.events.EVENT_TIME_TO_RESPOND / 2));
                            Game.addSimpleTask(new AnonymousClass9(eventsGlobal.get(runEventGlobalID).id + "2", runEventGlobalID));
                        } else if (eventsGlobal.get(runEventGlobalID).options.size() >= 1) {
                            eventsGlobal.get(runEventGlobalID).options.get(0).executeOutcome(0);
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
                int i3 = runEventGlobalID + 1;
                runEventGlobalID = i3;
                if (i3 >= iEventsGlobalSize) {
                    runEventGlobalID = 0;
                }
            }
            if (i % GameValues.events.RUN_GLOBAL_EVENTS_EVERY_X_TURNS == 0) {
                try {
                    int i4 = runEventGlobalID_Scenario;
                    if (i4 < iEventsGlobalScenarioSize && ((!eventsGlobalScenario.get(i4).only_once || !eventsGlobal_Variables.hasVariable(eventsGlobalScenario.get(runEventGlobalID_Scenario).id)) && eventsGlobalScenario.get(runEventGlobalID_Scenario).runTriggers(0))) {
                        updateRandomProvinceID(0);
                        eventsGlobal_Variables.addVariable(getActiveEvent(runEventGlobalID_Scenario, 5).id);
                        boolean z2 = !GameValues.events.EVENT_CHANGE_PRICE_SHOW_ONLY_THOSE_THAT_PLAYER_HAS;
                        if (!z2) {
                            if (z2) {
                                z2 = true;
                            } else {
                                try {
                                    if (eventsGlobalScenario.get(runEventGlobalID_Scenario).options.size() < 1 || eventsGlobalScenario.get(runEventGlobalID_Scenario).options.get(0).outcome.size() <= 0 || !ResourcesManager.hasResource(Game.player.iCivID, eventsGlobalScenario.get(runEventGlobalID_Scenario).options.get(0).outcome.get(0).getValue1())) {
                                        z2 = false;
                                    } else {
                                        z2 = true;
                                    }
                                } catch (Exception unused2) {
                                }
                            }
                        }
                        eventsGlobalScenario.get(runEventGlobalID_Scenario).options.get(0).executeOutcome();
                        if (z2) {
                            Game.player.addActiveEvent(5, runEventGlobalID_Scenario, -(GameValues.events.EVENT_TIME_TO_RESPOND / 2));
                            Game.addSimpleTask(new AnonymousClass10(eventsGlobalScenario.get(runEventGlobalID_Scenario).id + "5", runEventGlobalID_Scenario));
                        } else if (eventsGlobalScenario.get(runEventGlobalID_Scenario).options.size() >= 1) {
                            eventsGlobalScenario.get(runEventGlobalID_Scenario).options.get(0).executeOutcome(0);
                        }
                    }
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
                int i5 = runEventGlobalID_Scenario + 1;
                runEventGlobalID_Scenario = i5;
                if (i5 >= iEventsGlobalScenarioSize) {
                    runEventGlobalID_Scenario = 0;
                }
            }
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
    }

    public static final void runEvents_Siege(int i, int i2) {
        int i3;
        int i4 = 0;
        for (int i5 = 0; i5 < iEventsSiegeSize; i5++) {
            try {
                if (!(eventsSiege.get(i5).only_once && Game.getCiv(i).eventsDataVariables.hasVariable(eventsSiege.get(i5).id)) && eventsSiege.get(i5).runTriggers(i)) {
                    updateRandomProvinceID(i);
                    if (i != Game.player.iCivID) {
                        if (eventsSiege.get(i5).options.size() <= 0) {
                            break;
                        }
                        int i6 = 0;
                        for (int i7 = 0; i7 < eventsSiege.get(i5).options.size(); i7++) {
                            i6 = (int) (i6 + eventsSiege.get(i5).options.get(i7).ai);
                        }
                        if (i6 <= 0) {
                            i3 = 0;
                            break;
                        }
                        int iNextInt = Game.oR.nextInt(i6);
                        i3 = 0;
                        while (true) {
                            if (i3 >= eventsSiege.get(i5).options.size()) {
                                i3 = 0;
                                break;
                            } else if (iNextInt <= 0 + eventsSiege.get(i5).options.get(i3).ai) {
                                break;
                            } else {
                                i3++;
                            }
                        }
                        Game.getCiv(i).eventsDataVariables.addVariable(eventsSiege.get(i5).id);
                        eventsSiege.get(i5).options.get(i3).executeOutcome(i);
                        break;
                    }
                    Game.player.addActiveEvent(1, i5, 0);
                    Game.addSimpleTask(new AnonymousClass7(eventsSiege.get(i5).id + "1", i5));
                    break;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        for (int i8 = 0; i8 < iEventsSiegeScenarioSize; i8++) {
            if (!(eventsSiegeScenario.get(i8).only_once && Game.getCiv(i).eventsDataVariables.hasVariable(eventsSiegeScenario.get(i8).id)) && eventsSiegeScenario.get(i8).runTriggers(i)) {
                updateRandomProvinceID(i);
                if (i == Game.player.iCivID) {
                    Game.player.addActiveEvent(4, i8, 0);
                    Game.addSimpleTask(new AnonymousClass8(eventsSiegeScenario.get(i8).id + "4", i8));
                    return;
                }
                if (eventsSiegeScenario.get(i8).options.size() > 0) {
                    int i9 = 0;
                    for (int i10 = 0; i10 < eventsSiegeScenario.get(i8).options.size(); i10++) {
                        i9 = (int) (i9 + eventsSiegeScenario.get(i8).options.get(i10).ai);
                    }
                    if (i9 > 0) {
                        int iNextInt2 = Game.oR.nextInt(i9);
                        for (int i11 = 0; i11 < eventsSiegeScenario.get(i8).options.size(); i11++) {
                            if (iNextInt2 <= 0 + eventsSiegeScenario.get(i8).options.get(i11).ai) {
                                i4 = i11;
                                break;
                            }
                        }
                    }
                    Game.getCiv(i).eventsDataVariables.addVariable(eventsSiegeScenario.get(i8).id);
                    eventsSiegeScenario.get(i8).options.get(i4).executeOutcome(i);
                    return;
                }
                return;
            }
        }
    }

    public static final void takeEventDecision(int i, int i2, int i3, int i4) {
        try {
            if (i2 == 2 || i2 == 5) {
                eventsGlobal_Variables.addVariable(getActiveEvent(i3, i2).id);
            } else {
                Game.getCiv(i).eventsDataVariables.addVariable(getActiveEvent(i3, i2).id);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            getActiveEvent(i3, i2).options.get(i4).executeOutcome(i);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static final void updateRandomProvinceID(int i) {
        if (Game.getCiv(i).getNumOfProvinces() > 0) {
            Game.getCiv(i).eventProvinceID = Game.getCiv(i).getProvinceID(Game.oR.nextInt(Game.getCiv(i).getNumOfProvinces()));
            return;
        }
        if (Game.getCiv(i).getCapitalProvinceID() >= 0 && Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getCivID() == i) {
            Game.getCiv(i).eventProvinceID = Game.getCiv(i).getCapitalProvinceID();
        } else if (i == 0) {
            for (int i2 = 0; i2 < 500; i2++) {
                Game.getCiv(i).eventProvinceID = Game.oR.nextInt(Game.getProvincesSize());
                if (!Game.getProvince(Game.getCiv(i).eventProvinceID).getSeaProvince() && Game.getProvince(Game.getCiv(i).eventProvinceID).getWasteland() < 0) {
                    return;
                }
            }
        }
    }
}
