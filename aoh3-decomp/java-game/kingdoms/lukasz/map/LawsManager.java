package aoc.kingdoms.lukasz.map;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class LawsManager {
    public static List<Image> lawsImages = new ArrayList();
    public static List<Law> laws = new ArrayList();
    public static int iLawsSize = 0;

    public static class ConfigLawData {
        public String Age_of_History;
        public ArrayList Law;
    }

    public static class Law {
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
        public float[] GrowthRate;
        public int[] ImageID;
        public float[] ImproveRelationsModifier;
        public float[] IncomeEconomy;
        public float[] IncomeFromVassals;
        public float[] IncomeProduction;
        public float[] IncomeTaxation;
        public float[] IncreaseGrowthRateCost;
        public float[] IncreaseManpowerCost;
        public float[] IncreaseTaxEfficiencyCost;
        public float[] InvestInEconomyCost;
        public String[] Law;
        public String[] LawDesc;
        public float[] LoanInterest;
        public float[] Loot;
        public float[] ManpowerRecoveryFromADisbandedArmy;
        public float[] ManpowerRecoverySpeed;
        public int[] MaxInfrastructure;
        public int[] MaxManpower;
        public float[] MaxManpower_Percentage;
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
        public float[] MonthlyLegacy_Percentage;
        public float[] ProductionEfficiency;
        public float[] ProvinceMaintenance;
        public float[] RecruitArmyCost;
        public float[] RecruitArmyFirstLineCost;
        public float[] RecruitArmySecondLineCost;
        public float[] RecruitmentTime;
        public int[] RegimentsLimit;
        public float[] ReinforcementSpeed;
        public float[] ReligionCost;
        public int[] RequiredGovernmentID;
        public int[] RequiredTechID;
        public float[] Research;
        public float[] ResearchPoints;
        public float[] SiegeEffectiveness;
        public float[] TaxEfficiency;
        public String Title;
        public int[] UnitsAttack;
        public int[] UnitsDefense;
        public boolean[] UnlocksColonization;
        public float[] WarScoreCost;
        public float[] WonderConstructionCost;
    }

    public static final boolean adoptReform(int i, int i2, int i3) {
        if (Game.getCiv(i).fLegacy < GameValues.laws.LAW_ADAPT_REFORM_COST_LEGACY_POINTS || Game.getCiv(i).fGold < GameValues.laws.LAW_ADAPT_REFORM_COST_GOLD || Game.getCiv(i).laws.get(i2).intValue() == i3) {
            return false;
        }
        if (laws.get(i2).RequiredTechID[i3] >= 0 && !Game.getCiv(i).getTechResearched(laws.get(i2).RequiredTechID[i3])) {
            return false;
        }
        if (laws.get(i2).RequiredGovernmentID != null && laws.get(i2).RequiredGovernmentID[i3] >= 0 && laws.get(i2).RequiredGovernmentID[i3] != Game.getCiv(i).getIdeologyID()) {
            return false;
        }
        Game.getCiv(i).fGold -= GameValues.laws.LAW_ADAPT_REFORM_COST_GOLD;
        Game.getCiv(i).fLegacy -= GameValues.laws.LAW_ADAPT_REFORM_COST_LEGACY_POINTS;
        updateCivBonuses(i2, Game.getCiv(i).laws.get(i2).intValue(), i, -1.0f);
        try {
            Game.getCiv(i).adoptReform(i2, i3);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        updateCivBonuses(i2, Game.getCiv(i).laws.get(i2).intValue(), i, 1.0f);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003f  */
    public static final int getAvailableLaws(int i, int i2) {
        int length = laws.get(i2).RequiredTechID.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (laws.get(i2).RequiredTechID[i4] < 0 || Game.getCiv(i).getTechResearched(laws.get(i2).RequiredTechID[i4])) {
                if (laws.get(i2).RequiredGovernmentID == null) {
                    i3++;
                } else {
                    try {
                        if (laws.get(i2).RequiredGovernmentID[i4] < 0 || laws.get(i2).RequiredGovernmentID[i4] == Game.getCiv(i).getIdeologyID()) {
                            i3++;
                        }
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
            }
        }
        return i3;
    }

    public static MenuElement_Hover getHover(int i, int i2) {
        LanguageManager languageManager;
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(laws.get(i).Title), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.law, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(laws.get(i).Law[i2]), "", Images.law, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get(laws.get(i).LawDesc != null ? laws.get(i).LawDesc[i2] : laws.get(i).Law[i2] + ".d"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (laws.get(i).RequiredTechID[i2] >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RequiredTechnology") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + TechnologyTree.lTechnology.get(laws.get(i).RequiredTechID[i2]).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).RequiredGovernmentID != null) {
            try {
                if (laws.get(i).RequiredGovernmentID[i2] >= 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Government") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.ideologiesManager.getIdeology(laws.get(i).RequiredGovernmentID[i2]).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.government, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        if (laws.get(i).ConstructionCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructionCost") + ": ", "" + CFG.getPrecision2(laws.get(i).ConstructionCost[i2] * 100.0f, 10) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).AdministrationBuildingsCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdministrationBuildingsCost") + ": ", "" + CFG.getPrecision2(laws.get(i).AdministrationBuildingsCost[i2] * 100.0f, 10) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MilitaryBuildingsCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MilitaryBuildingsCost") + ": ", "" + CFG.getPrecision2(laws.get(i).MilitaryBuildingsCost[i2] * 100.0f, 10) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).EconomyBuildingsCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("EconomyBuildingsCost") + ": ", "" + CFG.getPrecision2(laws.get(i).EconomyBuildingsCost[i2] * 100.0f, 10) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).ConstructionTime != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructionTime") + ": ", "" + CFG.getPrecision2(laws.get(i).ConstructionTime[i2] * 100.0f, 10) + "%", Images.buildTime, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).WonderConstructionCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("WonderConstructionCost") + ": ", "" + CFG.getPrecision2(laws.get(i).WonderConstructionCost[i2] * 100.0f, 10) + "%", Images.mapModesWonders, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).IncomeEconomy != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncomeEconomy") + ": ", (laws.get(i).IncomeEconomy[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).IncomeEconomy[i2] * 100.0f, 10) + "%", Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).IncomeTaxation != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(kfGnwGN.npOaKtahittvqU) + ": ", (laws.get(i).IncomeTaxation[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).IncomeTaxation[i2] * 100.0f, 10) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).TaxEfficiency != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + ": ", (laws.get(i).TaxEfficiency[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).TaxEfficiency[i2], 10) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).ProvinceMaintenance != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(ALZmnpZHj.yxgm) + ": ", (laws.get(i).ProvinceMaintenance[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).ProvinceMaintenance[i2], 10) + "%", Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).BuildingsMaintenanceCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BuildingsMaintenanceCost") + ": ", (laws.get(i).BuildingsMaintenanceCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).BuildingsMaintenanceCost[i2] * 100.0f, 10) + "%", Images.buildings, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).ManpowerRecoverySpeed != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ManpowerRecoverySpeed") + ": ", (laws.get(i).ManpowerRecoverySpeed[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).ManpowerRecoverySpeed[i2] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).ArmyMoraleRecovery != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyMoraleRecovery") + ": ", (laws.get(i).ArmyMoraleRecovery[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).ArmyMoraleRecovery[i2] * 100.0f, 10) + "%", Images.morale, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).WarScoreCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("WarScoreCost") + ": ", (laws.get(i).WarScoreCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).WarScoreCost[i2] * 100.0f, 10) + "%", Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).ReinforcementSpeed != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ReinforcementSpeed") + ": ", (laws.get(i).ReinforcementSpeed[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).ReinforcementSpeed[i2] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MaxManpower != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", (laws.get(i).MaxManpower[i2] > 0 ? "+" : "") + CFG.getNumberWithSpaces("" + laws.get(i).MaxManpower[i2]), Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MaxManpower_Percentage != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", (laws.get(i).MaxManpower_Percentage[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).MaxManpower_Percentage[i2] * 100.0f, 100) + "%", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).Research != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Research") + ": ", (laws.get(i).Research[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).Research[i2], 10) + "%", Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).ResearchPoints != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ResearchPerMonth") + ": ", (laws.get(i).ResearchPoints[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).ResearchPoints[i2], 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).BuildingSlot != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdditionalBuildingsInProvince") + ": ", (laws.get(i).BuildingSlot[i2] > 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).BuildingSlot[i2], 1), Images.build, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MaxInfrastructure != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(CaiJWNfqszJNZ.huJ) + ": ", (laws.get(i).MaxInfrastructure[i2] > 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).MaxInfrastructure[i2], 1), Images.infrastructureUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).Devastation != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Devastation") + ": ", (laws.get(i).Devastation[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).Devastation[i2] * 100.0f, 10) + "%", Images.devastation, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).GrowthRate != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GrowthRate") + ": ", (laws.get(i).GrowthRate[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).GrowthRate[i2], 10) + "%", Images.populationGrowth, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MonthlyIncome != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", (laws.get(i).MonthlyIncome[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).MonthlyIncome[i2], 100), Images.goldPositive, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).Gold != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", (laws.get(i).Gold[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).Gold[i2], 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MonthlyLegacy != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + ": ", (laws.get(i).MonthlyLegacy[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).MonthlyLegacy[i2], 100), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MonthlyLegacy_Percentage != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + ": ", (laws.get(i).MonthlyLegacy_Percentage[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).MonthlyLegacy_Percentage[i2] * 100.0f, 100) + "%", Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).IncomeProduction != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeProduction") + ": ", (laws.get(i).IncomeProduction[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).IncomeProduction[i2], 10) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).ProductionEfficiency != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProductionEfficiency") + ": ", (laws.get(i).ProductionEfficiency[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).ProductionEfficiency[i2], 10) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).InvestInEconomyCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("InvestInEconomyCost") + ": ", (laws.get(i).InvestInEconomyCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).InvestInEconomyCost[i2] * 100.0f, 10) + "%", Game_Calendar.IMG_ECONOMY_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).IncreaseManpowerCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseManpowerCost") + ": ", (laws.get(i).IncreaseManpowerCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).IncreaseManpowerCost[i2], 10) + "%", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).IncreaseTaxEfficiencyCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseTaxEfficiencyCost") + ": ", (laws.get(i).IncreaseTaxEfficiencyCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).IncreaseTaxEfficiencyCost[i2] * 100.0f, 10) + "%", Images.taxUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).IncreaseGrowthRateCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseGrowthRateCost") + ": ", (laws.get(i).IncreaseGrowthRateCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).IncreaseGrowthRateCost[i2] * 100.0f, 10) + "%", Images.populationUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).DevelopInfrastructureCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DevelopInfrastructureCost") + ": ", (laws.get(i).DevelopInfrastructureCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).DevelopInfrastructureCost[i2] * 100.0f, 10) + "%", Images.infrastructure, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).GeneralAttack != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsAttack") + ": ", (laws.get(i).GeneralAttack[i2] > 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).GeneralAttack[i2], 1), Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).GeneralDefense != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsDefense") + ": ", (laws.get(i).GeneralDefense[i2] > 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).GeneralDefense[i2], 1), Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).UnitsAttack != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsAttack") + ": ", (laws.get(i).UnitsAttack[i2] > 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).UnitsAttack[i2], 1), Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).UnitsDefense != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsDefense") + ": ", (laws.get(i).UnitsDefense[i2] > 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).UnitsDefense[i2], 1), Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MaxMorale != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaxMorale") + ": ", (laws.get(i).MaxMorale[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).MaxMorale[i2] * 100.0f, 10) + "%", Images.morale, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).ArmyMovementSpeed != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyMovementSpeed") + ": ", (laws.get(i).ArmyMovementSpeed[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).ArmyMovementSpeed[i2], 10) + "%", Images.movementSpeed, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).SiegeEffectiveness != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("SiegeEffectiveness") + ": ", (laws.get(i).SiegeEffectiveness[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).SiegeEffectiveness[i2] * 100.0f, 10) + "%", Images.siege, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).ImproveRelationsModifier != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ImproveRelationsModifier") + ": ", (laws.get(i).ImproveRelationsModifier[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).ImproveRelationsModifier[i2], 10) + "%", Images.relations, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).IncomeFromVassals != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeFromVassals") + ": ", (laws.get(i).IncomeFromVassals[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).IncomeFromVassals[i2] * 100.0f, 10) + "%", Images.vassal, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).LoanInterest != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LoanInterest") + ": ", (laws.get(i).LoanInterest[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).LoanInterest[i2], 10) + "%", Images.loan, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).DiplomacyPoints != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(fTNtCctcBZcqKK.qgALRtYpYFsF) + ": ", (laws.get(i).DiplomacyPoints[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).DiplomacyPoints[i2] * 100.0f, 10) + "%", Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).RecruitmentTime != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RecruitmentTime") + ": ", (laws.get(i).RecruitmentTime[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).RecruitmentTime[i2], 10) + "%", Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).RecruitArmyCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyRecruitmentCost") + ": ", (laws.get(i).RecruitArmyCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).RecruitArmyCost[i2], 10) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).RecruitArmyFirstLineCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("FirstLineArmyRecruitmentCost") + ": ", (laws.get(i).RecruitArmyFirstLineCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).RecruitArmyFirstLineCost[i2], 10) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).RecruitArmySecondLineCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("SecondLineArmyRecruitmentCost") + ": ", (laws.get(i).RecruitArmySecondLineCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).RecruitArmySecondLineCost[i2], 10) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).ArmyMaintenance != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyMaintenance") + ": ", (laws.get(i).ArmyMaintenance[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).ArmyMaintenance[i2], 10) + "%", Images.armyMaintenance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).CoreCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CoreConstruction") + ": ", (laws.get(i).CoreCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).CoreCost[i2], 10) + "%", Images.core, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).ReligionCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ReligionConversionCost") + ": ", (laws.get(i).ReligionCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).ReligionCost[i2], 10) + "%", Images.religion, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MaxNumOfAlliances != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaxNumOfAlliances") + ": ", (laws.get(i).MaxNumOfAlliances[i2] > 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).MaxNumOfAlliances[i2], 1), Images.alliance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).AdvisorMaxLevel != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumAdvisorSkillLevel") + ": ", (laws.get(i).AdvisorMaxLevel[i2] >= 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).AdvisorMaxLevel[i2], 1), Images.skill, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).AdvisorPoolSize != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorPool") + ": ", (laws.get(i).AdvisorPoolSize[i2] >= 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).AdvisorPoolSize[i2], 1), Images.council, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MaxNumberOfLoans != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumNumberOfLoans") + ": ", (laws.get(i).MaxNumberOfLoans[i2] > 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).MaxNumberOfLoans[i2], 1), Images.loan, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumLevelOfTheMilitaryAcademyForGenerals") + ": ", (laws.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals[i2] >= 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals[i2], 1), Images.general, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MaximumLevelOfTheMilitaryAcademy != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumLevelOfTheMilitaryAcademy") + ": ", (laws.get(i).MaximumLevelOfTheMilitaryAcademy[i2] >= 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).MaximumLevelOfTheMilitaryAcademy[i2], 1), Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MaximumLevelOfTheSupremeCourt != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumLevelOfTheSupremeCourt") + ": ", (laws.get(i).MaximumLevelOfTheSupremeCourt[i2] >= 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).MaximumLevelOfTheSupremeCourt[i2], 1), Images.stability, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MaximumLevelOfCapitalCity != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumLevelOfCapitalCity") + ": ", (laws.get(i).MaximumLevelOfCapitalCity[i2] >= 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).MaximumLevelOfCapitalCity[i2], 1), Images.capital, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).AggressiveExpansion != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AggressiveExpansion") + ": ", (laws.get(i).AggressiveExpansion[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).AggressiveExpansion[i2], 10) + "%", Images.aggressiveExpansion, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).DiseaseDeathRate != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DiseasesDeathRate") + ": ", (laws.get(i).DiseaseDeathRate[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).DiseaseDeathRate[i2] * 100.0f, 10) + "%", Images.disease, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).ManpowerRecoveryFromADisbandedArmy != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ManpowerRecoveryFromADisbandedArmy") + ": ", (laws.get(i).ManpowerRecoveryFromADisbandedArmy[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).ManpowerRecoveryFromADisbandedArmy[i2] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER_DISBAND, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).AdvisorCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorCost") + ": ", (laws.get(i).AdvisorCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).AdvisorCost[i2] * 100.0f, 10) + "%", Images.council, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).GeneralCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralCost") + ": ", (laws.get(i).GeneralCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).GeneralCost[i2] * 100.0f, 10) + "%", Images.general, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).Discipline != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Discipline") + ": ", (laws.get(i).Discipline[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).Discipline[i2] * 100.0f, 10) + "%", Images.discipline, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MaximumAmountOfGold != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumAmountOfGold") + ": ", (laws.get(i).MaximumAmountOfGold[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).MaximumAmountOfGold[i2], 10), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).MaximumAmountOfGold_Percentage != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumAmountOfGold") + ": ", (laws.get(i).MaximumAmountOfGold_Percentage[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).MaximumAmountOfGold_Percentage[i2] * 100.0f, 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).Loot != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Loot") + ": ", (laws.get(i).Loot[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(laws.get(i).Loot[i2] * 100.0f, 10) + "%", Images.loot, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).BattleWidth != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BattleWidth") + ": ", (laws.get(i).BattleWidth[i2] > 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).BattleWidth[i2], 1), Images.battleWidth, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).RegimentsLimit != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(nEtnPpUF.jXzaKicgoPH) + ": ", (laws.get(i).RegimentsLimit[i2] > 0 ? "+" : "") + CFG.getPrecision2(laws.get(i).RegimentsLimit[i2], 1), Images.regimentsLimit, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).AllCharactersLifeExpectancy != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AllCharactersLifeExpectancy") + ": ", (laws.get(i).AllCharactersLifeExpectancy[i2] <= 0 ? "" : "+") + Game.lang.get("YearsX", laws.get(i).AllCharactersLifeExpectancy[i2]), Images.council, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (laws.get(i).UnlocksColonization != null) {
            if (laws.get(i).UnlocksColonization[i2]) {
                languageManager = Game.lang;
                str = PxHJ.YAiaQpRhlq;
            } else {
                languageManager = Game.lang;
                str = "NoColonizationAllowed";
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", languageManager.get(str), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.laws.LAW_ADAPT_REFORM_COST_GOLD, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(ClXgFvsSKQc.XbZltLVwgjsET) + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.laws.LAW_ADAPT_REFORM_COST_LEGACY_POINTS, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (CFG.debugMode) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(jkEBdieJhbh.OYUqZd, "" + i, Images.law, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("ID2: ", "" + i2, Images.law, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return new MenuElement_Hover(arrayList);
    }

    public static List<MenuElement> getLawBonuses(int i, int i2, int i3, int i4) {
        LanguageManager languageManager;
        String str;
        ArrayList arrayList = new ArrayList();
        int width = ImageManager.getImage(Images.gold).getWidth();
        int i5 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        if (laws.get(i).ConstructionCost != null && laws.get(i).ConstructionCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ConstructionCost") + ": ", "" + CFG.getPrecision2(laws.get(i).ConstructionCost[i2] * 100.0f, 10) + "%", Images.construction, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).AdministrationBuildingsCost != null && laws.get(i).AdministrationBuildingsCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("AdministrationBuildingsCost") + ": ", r8 + CFG.getPrecision2(laws.get(i).AdministrationBuildingsCost[i2] * 100.0f, 10) + "%", Images.construction, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MilitaryBuildingsCost != null && laws.get(i).MilitaryBuildingsCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MilitaryBuildingsCost") + r9, r8 + CFG.getPrecision2(laws.get(i).MilitaryBuildingsCost[i2] * 100.0f, 10) + "%", Images.construction, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).EconomyBuildingsCost != null && laws.get(i).EconomyBuildingsCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("EconomyBuildingsCost") + r9, r8 + CFG.getPrecision2(laws.get(i).EconomyBuildingsCost[i2] * 100.0f, 10) + "%", Images.construction, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).ConstructionTime != null && laws.get(i).ConstructionTime[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ConstructionTime") + r9, r8 + CFG.getPrecision2(laws.get(i).ConstructionTime[i2] * 100.0f, 10) + "%", Images.buildTime, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).WonderConstructionCost != null && laws.get(i).WonderConstructionCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("WonderConstructionCost") + r9, r8 + CFG.getPrecision2(laws.get(i).WonderConstructionCost[i2] * 100.0f, 10) + "%", Images.mapModesWonders, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).IncomeEconomy != null && laws.get(i).IncomeEconomy[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MonthlyIncomeEconomy") + r9, (laws.get(i).IncomeEconomy[i2] > 0.0f ? "+" : r8) + CFG.getPrecision2(laws.get(i).IncomeEconomy[i2] * 100.0f, 10) + "%", Game_Calendar.IMG_ECONOMY, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).IncomeTaxation != null && laws.get(i).IncomeTaxation[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncomeTaxation") + r9, (laws.get(i).IncomeTaxation[i2] > 0.0f ? "+" : r8) + CFG.getPrecision2(laws.get(i).IncomeTaxation[i2] * 100.0f, 10) + "%", Images.tax, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).TaxEfficiency != null && laws.get(i).TaxEfficiency[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("TaxEfficiency") + r9, (laws.get(i).TaxEfficiency[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).TaxEfficiency[i2], 10) + "%", Images.tax, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).ProvinceMaintenance != null && laws.get(i).ProvinceMaintenance[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ProvinceMaintenances") + r9, (laws.get(i).ProvinceMaintenance[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).ProvinceMaintenance[i2], 10) + "%", Images.provinces, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).BuildingsMaintenanceCost != null && laws.get(i).BuildingsMaintenanceCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("BuildingsMaintenanceCost") + r9, (laws.get(i).BuildingsMaintenanceCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).BuildingsMaintenanceCost[i2] * 100.0f, 10) + "%", Images.buildings, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).ManpowerRecoverySpeed != null && laws.get(i).ManpowerRecoverySpeed[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ManpowerRecoverySpeed") + r9, (laws.get(i).ManpowerRecoverySpeed[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).ManpowerRecoverySpeed[i2] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER_TIME, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).ArmyMoraleRecovery != null && laws.get(i).ArmyMoraleRecovery[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ArmyMoraleRecovery") + r9, (laws.get(i).ArmyMoraleRecovery[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).ArmyMoraleRecovery[i2] * 100.0f, 10) + "%", Images.morale, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).WarScoreCost != null && laws.get(i).WarScoreCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("WarScoreCost") + r9, (laws.get(i).WarScoreCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).WarScoreCost[i2] * 100.0f, 10) + "%", Images.victoryPoints, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).ReinforcementSpeed != null && laws.get(i).ReinforcementSpeed[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ReinforcementSpeed") + r9, (laws.get(i).ReinforcementSpeed[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).ReinforcementSpeed[i2] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER_TIME, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MaxManpower != null && laws.get(i).MaxManpower[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumManpower") + r9, (laws.get(i).MaxManpower[i2] > 0 ? r14 : r8) + CFG.getNumberWithSpaces("" + laws.get(i).MaxManpower[i2]), Game_Calendar.IMG_MANPOWER_UP, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MaxManpower_Percentage != null && laws.get(i).MaxManpower_Percentage[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumManpower") + r9, (laws.get(i).MaxManpower_Percentage[i2] > 0.0f ? r14 : "") + CFG.getPrecision2(laws.get(i).MaxManpower_Percentage[i2] * 100.0f, 100) + "%", Game_Calendar.IMG_MANPOWER_UP, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).Research != null && laws.get(i).Research[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("Research") + r9, (laws.get(i).Research[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).Research[i2], 10) + "%", Game_Calendar.IMG_TECHNOLOGY, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).ResearchPoints != null && laws.get(i).ResearchPoints[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ResearchPerMonth") + r9, (laws.get(i).ResearchPoints[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).ResearchPoints[i2], 100), Game_Calendar.IMG_TECHNOLOGY, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).BuildingSlot != null && laws.get(i).BuildingSlot[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("AdditionalBuildingsInProvince") + r9, (laws.get(i).BuildingSlot[i2] > 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).BuildingSlot[i2], 1), Images.build, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MaxInfrastructure != null && laws.get(i).MaxInfrastructure[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumInfrastructureLevel") + r9, (laws.get(i).MaxInfrastructure[i2] > 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).MaxInfrastructure[i2], 1), Images.infrastructureUp, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).Devastation != null && laws.get(i).Devastation[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("Devastation") + r9, (laws.get(i).Devastation[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).Devastation[i2] * 100.0f, 10) + "%", Images.devastation, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).GrowthRate != null && laws.get(i).GrowthRate[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("GrowthRate") + r9, (laws.get(i).GrowthRate[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).GrowthRate[i2], 10) + "%", Images.populationGrowth, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MonthlyIncome != null && laws.get(i).MonthlyIncome[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MonthlyIncome") + r9, (laws.get(i).MonthlyIncome[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).MonthlyIncome[i2], 100), Images.goldPositive, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).Gold != null && laws.get(i).Gold[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("Gold") + r9, (laws.get(i).Gold[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).Gold[i2], 100), Images.gold, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MonthlyLegacy != null && laws.get(i).MonthlyLegacy[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MonthlyLegacy") + r9, (laws.get(i).MonthlyLegacy[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).MonthlyLegacy[i2], 100), Images.legacy, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MonthlyLegacy_Percentage != null && laws.get(i).MonthlyLegacy_Percentage[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MonthlyLegacy") + r9, (laws.get(i).MonthlyLegacy_Percentage[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).MonthlyLegacy_Percentage[i2] * 100.0f, 100) + "%", Images.legacy, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).IncomeProduction != null && laws.get(i).IncomeProduction[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncomeProduction") + r9, (laws.get(i).IncomeProduction[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).IncomeProduction[i2], 10) + "%", Images.goods, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).ProductionEfficiency != null && laws.get(i).ProductionEfficiency[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ProductionEfficiency") + r9, (laws.get(i).ProductionEfficiency[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).ProductionEfficiency[i2], 10) + "%", Images.goods, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).InvestInEconomyCost != null && laws.get(i).InvestInEconomyCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("InvestInEconomyCost") + r9, (laws.get(i).InvestInEconomyCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).InvestInEconomyCost[i2] * 100.0f, 10) + "%", Game_Calendar.IMG_ECONOMY_UP, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).IncreaseManpowerCost != null && laws.get(i).IncreaseManpowerCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncreaseManpowerCost") + r9, (laws.get(i).IncreaseManpowerCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).IncreaseManpowerCost[i2], 10) + "%", Game_Calendar.IMG_MANPOWER_UP, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).IncreaseTaxEfficiencyCost != null && laws.get(i).IncreaseTaxEfficiencyCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncreaseTaxEfficiencyCost") + r9, (laws.get(i).IncreaseTaxEfficiencyCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).IncreaseTaxEfficiencyCost[i2] * 100.0f, 10) + "%", Images.taxUp, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).IncreaseGrowthRateCost != null && laws.get(i).IncreaseGrowthRateCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncreaseGrowthRateCost") + r9, (laws.get(i).IncreaseGrowthRateCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).IncreaseGrowthRateCost[i2] * 100.0f, 10) + "%", Images.populationUp, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).DevelopInfrastructureCost != null && laws.get(i).DevelopInfrastructureCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("DevelopInfrastructureCost") + r9, (laws.get(i).DevelopInfrastructureCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).DevelopInfrastructureCost[i2] * 100.0f, 10) + "%", Images.infrastructure, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).GeneralAttack != null && laws.get(i).GeneralAttack[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("GeneralsAttack") + r9, (laws.get(i).GeneralAttack[i2] > 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).GeneralAttack[i2], 1), Images.attack, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).GeneralDefense != null && laws.get(i).GeneralDefense[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("GeneralsDefense") + r9, (laws.get(i).GeneralDefense[i2] > 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).GeneralDefense[i2], 1), Images.defense, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).UnitsAttack != null && laws.get(i).UnitsAttack[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("UnitsAttack") + r9, (laws.get(i).UnitsAttack[i2] > 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).UnitsAttack[i2], 1), Images.attack, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).UnitsDefense != null && laws.get(i).UnitsDefense[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("UnitsDefense") + r9, (laws.get(i).UnitsDefense[i2] > 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).UnitsDefense[i2], 1), Images.defense, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MaxMorale != null && laws.get(i).MaxMorale[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaxMorale") + r9, (laws.get(i).MaxMorale[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).MaxMorale[i2] * 100.0f, 10) + "%", Images.morale, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).ArmyMovementSpeed != null && laws.get(i).ArmyMovementSpeed[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ArmyMovementSpeed") + r9, (laws.get(i).ArmyMovementSpeed[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).ArmyMovementSpeed[i2], 10) + "%", Images.movementSpeed, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).SiegeEffectiveness != null && laws.get(i).SiegeEffectiveness[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("SiegeEffectiveness") + r9, (laws.get(i).SiegeEffectiveness[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).SiegeEffectiveness[i2] * 100.0f, 10) + "%", Images.siege, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).ImproveRelationsModifier != null && laws.get(i).ImproveRelationsModifier[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ImproveRelationsModifier") + r9, (laws.get(i).ImproveRelationsModifier[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).ImproveRelationsModifier[i2], 10) + "%", Images.relations, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).IncomeFromVassals != null && laws.get(i).IncomeFromVassals[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncomeFromVassals") + r9, (laws.get(i).IncomeFromVassals[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).IncomeFromVassals[i2] * 100.0f, 10) + "%", Images.vassal, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).LoanInterest != null && laws.get(i).LoanInterest[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("LoanInterest") + r9, (laws.get(i).LoanInterest[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).LoanInterest[i2], 10) + "%", Images.loan, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).DiplomacyPoints != null && laws.get(i).DiplomacyPoints[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("DiplomacyPoints") + r9, (laws.get(i).DiplomacyPoints[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).DiplomacyPoints[i2] * 100.0f, 10) + "%", Images.diplomacy, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).RecruitmentTime != null && laws.get(i).RecruitmentTime[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("RecruitmentTime") + r9, (laws.get(i).RecruitmentTime[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).RecruitmentTime[i2], 10) + "%", Game_Calendar.IMG_MANPOWER_TIME, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).RecruitArmyCost != null && laws.get(i).RecruitArmyCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ArmyRecruitmentCost") + r9, (laws.get(i).RecruitArmyCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).RecruitArmyCost[i2], 10) + "%", Images.gold, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).RecruitArmyFirstLineCost != null && laws.get(i).RecruitArmyFirstLineCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("FirstLineArmyRecruitmentCost") + r9, (laws.get(i).RecruitArmyFirstLineCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).RecruitArmyFirstLineCost[i2], 10) + "%", Images.gold, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).RecruitArmySecondLineCost != null && laws.get(i).RecruitArmySecondLineCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("SecondLineArmyRecruitmentCost") + r9, (laws.get(i).RecruitArmySecondLineCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).RecruitArmySecondLineCost[i2], 10) + "%", Images.gold, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).ArmyMaintenance != null && laws.get(i).ArmyMaintenance[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ArmyMaintenance") + r9, (laws.get(i).ArmyMaintenance[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).ArmyMaintenance[i2], 10) + "%", Images.armyMaintenance, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).CoreCost != null && laws.get(i).CoreCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("CoreConstruction") + r9, (laws.get(i).CoreCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).CoreCost[i2], 10) + "%", Images.core, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).ReligionCost != null && laws.get(i).ReligionCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ReligionConversionCost") + r9, (laws.get(i).ReligionCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).ReligionCost[i2], 10) + "%", Images.religion, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MaxNumOfAlliances != null && laws.get(i).MaxNumOfAlliances[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaxNumOfAlliances") + r9, (laws.get(i).MaxNumOfAlliances[i2] > 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).MaxNumOfAlliances[i2], 1), Images.alliance, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).AdvisorMaxLevel != null && laws.get(i).AdvisorMaxLevel[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumAdvisorSkillLevel") + r9, (laws.get(i).AdvisorMaxLevel[i2] >= 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).AdvisorMaxLevel[i2], 1), Images.skill, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).AdvisorPoolSize != null && laws.get(i).AdvisorPoolSize[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("AdvisorPool") + r9, (laws.get(i).AdvisorPoolSize[i2] >= 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).AdvisorPoolSize[i2], 1), Images.council, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MaxNumberOfLoans != null && laws.get(i).MaxNumberOfLoans[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumNumberOfLoans") + r9, (laws.get(i).MaxNumberOfLoans[i2] > 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).MaxNumberOfLoans[i2], 1), Images.loan, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals != null && laws.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumLevelOfTheMilitaryAcademyForGenerals") + r9, (laws.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals[i2] >= 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals[i2], 1), Images.general, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MaximumLevelOfTheMilitaryAcademy != null && laws.get(i).MaximumLevelOfTheMilitaryAcademy[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumLevelOfTheMilitaryAcademy") + r9, (laws.get(i).MaximumLevelOfTheMilitaryAcademy[i2] >= 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).MaximumLevelOfTheMilitaryAcademy[i2], 1), Game_Calendar.IMG_MANPOWER, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MaximumLevelOfTheSupremeCourt != null && laws.get(i).MaximumLevelOfTheSupremeCourt[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumLevelOfTheSupremeCourt") + r9, (laws.get(i).MaximumLevelOfTheSupremeCourt[i2] >= 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).MaximumLevelOfTheSupremeCourt[i2], 1), Images.stability, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MaximumLevelOfCapitalCity != null && laws.get(i).MaximumLevelOfCapitalCity[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumLevelOfCapitalCity") + r9, (laws.get(i).MaximumLevelOfCapitalCity[i2] >= 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).MaximumLevelOfCapitalCity[i2], 1), Images.capital, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).AggressiveExpansion != null && laws.get(i).AggressiveExpansion[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("AggressiveExpansion") + r9, (laws.get(i).AggressiveExpansion[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).AggressiveExpansion[i2], 10) + "%", Images.aggressiveExpansion, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).DiseaseDeathRate != null && laws.get(i).DiseaseDeathRate[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("DiseasesDeathRate") + r9, (laws.get(i).DiseaseDeathRate[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).DiseaseDeathRate[i2] * 100.0f, 10) + "%", Images.disease, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).ManpowerRecoveryFromADisbandedArmy != null && laws.get(i).ManpowerRecoveryFromADisbandedArmy[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ManpowerRecoveryFromADisbandedArmy") + r9, (laws.get(i).ManpowerRecoveryFromADisbandedArmy[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).ManpowerRecoveryFromADisbandedArmy[i2] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER_DISBAND, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).AdvisorCost != null && laws.get(i).AdvisorCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("AdvisorCost") + r9, (laws.get(i).AdvisorCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).AdvisorCost[i2] * 100.0f, 10) + "%", Images.council, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).GeneralCost != null && laws.get(i).GeneralCost[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("GeneralCost") + r9, (laws.get(i).GeneralCost[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).GeneralCost[i2] * 100.0f, 10) + "%", Images.general, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).Discipline != null && laws.get(i).Discipline[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("Discipline") + r9, (laws.get(i).Discipline[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).Discipline[i2] * 100.0f, 10) + "%", Images.discipline, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MaximumAmountOfGold != null && laws.get(i).MaximumAmountOfGold[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumAmountOfGold") + r9, (laws.get(i).MaximumAmountOfGold[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).MaximumAmountOfGold[i2], 10), Images.gold, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).MaximumAmountOfGold_Percentage != null && laws.get(i).MaximumAmountOfGold_Percentage[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumAmountOfGold") + r9, (laws.get(i).MaximumAmountOfGold_Percentage[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).MaximumAmountOfGold_Percentage[i2] * 100.0f, 100) + "%", Images.gold, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).Loot != null && laws.get(i).Loot[i2] != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("Loot") + r9, (laws.get(i).Loot[i2] > 0.0f ? r14 : r8) + CFG.getPrecision2(laws.get(i).Loot[i2] * 100.0f, 10) + "%", Images.loot, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).BattleWidth != null && laws.get(i).BattleWidth[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get(MQYGMkZOAcS.qBaLpaJITNqyI) + r9, (laws.get(i).BattleWidth[i2] > 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).BattleWidth[i2], 1), Images.battleWidth, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).RegimentsLimit != null && laws.get(i).RegimentsLimit[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("RegimentsLimit") + r9, (laws.get(i).RegimentsLimit[i2] > 0 ? r14 : r8) + CFG.getPrecision2(laws.get(i).RegimentsLimit[i2], 1), Images.regimentsLimit, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).AllCharactersLifeExpectancy != null && laws.get(i).AllCharactersLifeExpectancy[i2] != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("AllCharactersLifeExpectancy") + r9, (laws.get(i).AllCharactersLifeExpectancy[i2] > 0 ? r14 : r8) + Game.lang.get("YearsX", laws.get(i).AllCharactersLifeExpectancy[i2]), Images.council, i3, 0, i4 - (i3 * 2), i5, width));
        }
        if (laws.get(i).UnlocksColonization != null) {
            if (laws.get(i).UnlocksColonization[i2]) {
                languageManager = Game.lang;
                str = "ColonizationAllowed";
            } else {
                languageManager = Game.lang;
                str = "NoColonizationAllowed";
            }
            arrayList.add(new ButtonStatsRectIMG_Bonuses("", languageManager.get(str), Images.population, i3, 0, i4 - (i3 * 2), i5, width));
        }
        return arrayList;
    }

    public static final void loadLaws() {
        try {
            String string = FileManager.loadFile("game/laws/Laws.json").readString();
            Json json = new Json();
            json.setElementType(ConfigLawData.class, "Law", Law.class);
            Iterator it = ((ConfigLawData) json.fromJson(ConfigLawData.class, string)).Law.iterator();
            while (it.hasNext()) {
                laws.add((Law) it.next());
            }
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        iLawsSize = laws.size();
        loadLawsImages();
    }

    public static final void loadLawsImages() {
        int i = Integer.parseInt(FileManager.loadFile("game/laws/lawsImages/numOfImages.txt").readString());
        for (int i2 = 0; i2 < i; i2++) {
            if (FileManager.loadFile("game/laws/lawsImages/" + CFG.getRescouresPath_Short() + i2 + ".png").exists()) {
                lawsImages.add(new Image(ImageManager.loadTexture_RGB888("game/laws/lawsImages/" + CFG.getRescouresPath_Short() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
            } else {
                lawsImages.add(new Image(ImageManager.loadTexture_RGB888("game/laws/lawsImages/" + CFG.getRescouresPath_Short_H() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
            }
        }
    }

    public static final void updateCivBonuses(int i, int i2, int i3, float f) {
        if (i2 >= laws.get(i).ImageID.length) {
            return;
        }
        if (laws.get(i).TaxEfficiency != null) {
            Game.getCiv(i3).civBonuses.TaxEfficiency += laws.get(i).TaxEfficiency[i2] * f;
        }
        if (laws.get(i).ProvinceMaintenance != null) {
            Game.getCiv(i3).civBonuses.ProvinceMaintenance += laws.get(i).ProvinceMaintenance[i2] * f;
        }
        if (laws.get(i).BuildingsMaintenanceCost != null) {
            Game.getCiv(i3).civBonuses.BuildingsMaintenanceCost += laws.get(i).BuildingsMaintenanceCost[i2] * f;
        }
        if (laws.get(i).ConstructionTime != null) {
            Game.getCiv(i3).civBonuses.ConstructionTime += laws.get(i).ConstructionTime[i2] * f;
        }
        if (laws.get(i).ConstructionCost != null) {
            Game.getCiv(i3).civBonuses.ConstructionCost += laws.get(i).ConstructionCost[i2] * f;
        }
        if (laws.get(i).AdministrationBuildingsCost != null) {
            Game.getCiv(i3).civBonuses.AdministrationBuildingsCost += laws.get(i).AdministrationBuildingsCost[i2] * f;
        }
        if (laws.get(i).MilitaryBuildingsCost != null) {
            Game.getCiv(i3).civBonuses.MilitaryBuildingsCost += laws.get(i).MilitaryBuildingsCost[i2] * f;
        }
        if (laws.get(i).EconomyBuildingsCost != null) {
            Game.getCiv(i3).civBonuses.EconomyBuildingsCost += laws.get(i).EconomyBuildingsCost[i2] * f;
        }
        if (laws.get(i).WonderConstructionCost != null) {
            Game.getCiv(i3).civBonuses.WonderConstructionCost += laws.get(i).WonderConstructionCost[i2] * f;
        }
        if (laws.get(i).MaxManpower != null) {
            Game.getCiv(i3).civBonuses.MaxManpower += laws.get(i).MaxManpower[i2] * f;
            Game.gameThreadTurns.addCivUpdateMaxManpower(i3);
        }
        if (laws.get(i).MaxManpower_Percentage != null) {
            Game.getCiv(i3).civBonuses.MaxManpower_Percentage += laws.get(i).MaxManpower_Percentage[i2] * f;
            Game.gameThreadTurns.addCivUpdateMaxManpower(i3);
        }
        if (laws.get(i).ManpowerRecoverySpeed != null) {
            Game.getCiv(i3).civBonuses.ManpowerRecoverySpeed += laws.get(i).ManpowerRecoverySpeed[i2] * f;
            Game.gameThreadTurns.addCivUpdateMaxManpower(i3);
        }
        if (laws.get(i).ArmyMoraleRecovery != null) {
            Game.getCiv(i3).civBonuses.ArmyMoraleRecovery += laws.get(i).ArmyMoraleRecovery[i2] * f;
        }
        if (laws.get(i).WarScoreCost != null) {
            Game.getCiv(i3).civBonuses.WarScoreCost += laws.get(i).WarScoreCost[i2] * f;
        }
        if (laws.get(i).Research != null) {
            Game.getCiv(i3).civBonuses.Research += laws.get(i).Research[i2] * f;
            Game.gameThread.addCivUpdateResearchPerMonth(i3);
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i3);
        }
        if (laws.get(i).ResearchPoints != null) {
            Game.getCiv(i3).civBonuses.ResearchPoints += laws.get(i).ResearchPoints[i2] * f;
            Game.gameThread.addCivUpdateResearchPerMonth(i3);
        }
        if (laws.get(i).Devastation != null) {
            Game.getCiv(i3).civBonuses.Devastation += laws.get(i).Devastation[i2] * f;
        }
        if (laws.get(i).BuildingSlot != null) {
            CivilizationBonuses civilizationBonuses = Game.getCiv(i3).civBonuses;
            civilizationBonuses.BuildingSlot = (int) (civilizationBonuses.BuildingSlot + (laws.get(i).BuildingSlot[i2] * f));
            Game.getCiv(i3).updateBuildingLimit();
        }
        if (laws.get(i).MaxInfrastructure != null) {
            CivilizationBonuses civilizationBonuses2 = Game.getCiv(i3).civBonuses;
            civilizationBonuses2.MaxInfrastructure = (int) (civilizationBonuses2.MaxInfrastructure + (laws.get(i).MaxInfrastructure[i2] * f));
            Game.getCiv(i3).updateInfrastructureMax();
        }
        if (laws.get(i).MonthlyIncome != null) {
            Game.getCiv(i3).civBonuses.MonthlyIncome += laws.get(i).MonthlyIncome[i2] * f;
        }
        if (laws.get(i).Gold != null) {
            Game.getCiv(i3).fGold += laws.get(i).Gold[i2] * f;
        }
        if (laws.get(i).MonthlyLegacy != null) {
            Game.getCiv(i3).civBonuses.MonthlyLegacy += laws.get(i).MonthlyLegacy[i2] * f;
            Game.gameThread.addCivUpdateLegacyPerMonth(i3);
        }
        if (laws.get(i).MonthlyLegacy_Percentage != null) {
            Game.getCiv(i3).civBonuses.MonthlyLegacy_Percentage += laws.get(i).MonthlyLegacy_Percentage[i2] * f;
            Game.gameThread.addCivUpdateLegacyPerMonth(i3);
        }
        if (laws.get(i).GrowthRate != null) {
            Game.getCiv(i3).civBonuses.GrowthRate += laws.get(i).GrowthRate[i2] * f;
            Game.getCiv(i3).updateResearchPerMonth();
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i3);
        }
        if (laws.get(i).IncomeProduction != null) {
            Game.getCiv(i3).civBonuses.IncomeProduction += laws.get(i).IncomeProduction[i2] * f;
        }
        if (laws.get(i).IncomeEconomy != null) {
            Game.getCiv(i3).civBonuses.IncomeEconomy += laws.get(i).IncomeEconomy[i2] * f;
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i3);
        }
        if (laws.get(i).IncomeTaxation != null) {
            Game.getCiv(i3).civBonuses.IncomeTaxation += laws.get(i).IncomeTaxation[i2] * f;
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i3);
        }
        if (laws.get(i).ProductionEfficiency != null) {
            Game.getCiv(i3).civBonuses.ProductionEfficiency += laws.get(i).ProductionEfficiency[i2] * f;
        }
        if (laws.get(i).IncreaseManpowerCost != null) {
            Game.getCiv(i3).civBonuses.IncreaseManpowerCost += laws.get(i).IncreaseManpowerCost[i2] * f;
        }
        if (laws.get(i).InvestInEconomyCost != null) {
            Game.getCiv(i3).civBonuses.InvestInEconomyCost += laws.get(i).InvestInEconomyCost[i2] * f;
        }
        if (laws.get(i).IncreaseTaxEfficiencyCost != null) {
            Game.getCiv(i3).civBonuses.IncreaseTaxEfficiencyCost += laws.get(i).IncreaseTaxEfficiencyCost[i2] * f;
        }
        if (laws.get(i).IncreaseGrowthRateCost != null) {
            Game.getCiv(i3).civBonuses.IncreaseGrowthRateCost += laws.get(i).IncreaseGrowthRateCost[i2] * f;
        }
        if (laws.get(i).DevelopInfrastructureCost != null) {
            Game.getCiv(i3).civBonuses.DevelopInfrastructureCost += laws.get(i).DevelopInfrastructureCost[i2] * f;
        }
        if (laws.get(i).GeneralAttack != null) {
            CivilizationBonuses civilizationBonuses3 = Game.getCiv(i3).civBonuses;
            civilizationBonuses3.GeneralAttack = (int) (civilizationBonuses3.GeneralAttack + (laws.get(i).GeneralAttack[i2] * f));
        }
        if (laws.get(i).GeneralDefense != null) {
            CivilizationBonuses civilizationBonuses4 = Game.getCiv(i3).civBonuses;
            civilizationBonuses4.GeneralDefense = (int) (civilizationBonuses4.GeneralDefense + (laws.get(i).GeneralDefense[i2] * f));
        }
        if (laws.get(i).UnitsAttack != null) {
            CivilizationBonuses civilizationBonuses5 = Game.getCiv(i3).civBonuses;
            civilizationBonuses5.UnitsAttack = (int) (civilizationBonuses5.UnitsAttack + (laws.get(i).UnitsAttack[i2] * f));
        }
        if (laws.get(i).UnitsDefense != null) {
            CivilizationBonuses civilizationBonuses6 = Game.getCiv(i3).civBonuses;
            civilizationBonuses6.UnitsDefense = (int) (civilizationBonuses6.UnitsDefense + (laws.get(i).UnitsDefense[i2] * f));
        }
        if (laws.get(i).MaxMorale != null) {
            Game.getCiv(i3).civBonuses.MaxMorale += laws.get(i).MaxMorale[i2] * f;
        }
        if (laws.get(i).ArmyMovementSpeed != null) {
            Game.getCiv(i3).civBonuses.ArmyMovementSpeed += laws.get(i).ArmyMovementSpeed[i2] * f;
        }
        if (laws.get(i).SiegeEffectiveness != null) {
            Game.getCiv(i3).civBonuses.SiegeEffectiveness += laws.get(i).SiegeEffectiveness[i2] * f;
        }
        if (laws.get(i).ImproveRelationsModifier != null) {
            Game.getCiv(i3).civBonuses.ImproveRelationsModifier += laws.get(i).ImproveRelationsModifier[i2] * f;
        }
        if (laws.get(i).IncomeFromVassals != null) {
            Game.getCiv(i3).civBonuses.IncomeFromVassals += laws.get(i).IncomeFromVassals[i2] * f;
            Game.gameThread.addCivUpdateTotalIncomePerMonth(i3);
        }
        if (laws.get(i).DiplomacyPoints != null) {
            Game.getCiv(i3).civBonuses.DiplomacyPoints += laws.get(i).DiplomacyPoints[i2] * f;
            Game.getCiv(i3).updateDiplomacyPerMonth();
        }
        if (laws.get(i).LoanInterest != null) {
            Game.getCiv(i3).civBonuses.LoanInterest += laws.get(i).LoanInterest[i2] * f;
        }
        if (laws.get(i).MaxNumberOfLoans != null) {
            CivilizationBonuses civilizationBonuses7 = Game.getCiv(i3).civBonuses;
            civilizationBonuses7.MaxNumberOfLoans = (int) (civilizationBonuses7.MaxNumberOfLoans + (laws.get(i).MaxNumberOfLoans[i2] * f));
        }
        if (laws.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals != null) {
            CivilizationBonuses civilizationBonuses8 = Game.getCiv(i3).civBonuses;
            civilizationBonuses8.MaximumLevelOfTheMilitaryAcademyForGenerals = (int) (civilizationBonuses8.MaximumLevelOfTheMilitaryAcademyForGenerals + (laws.get(i).MaximumLevelOfTheMilitaryAcademyForGenerals[i2] * f));
        }
        if (laws.get(i).MaximumLevelOfTheMilitaryAcademy != null) {
            CivilizationBonuses civilizationBonuses9 = Game.getCiv(i3).civBonuses;
            civilizationBonuses9.MaximumLevelOfTheMilitaryAcademy = (int) (civilizationBonuses9.MaximumLevelOfTheMilitaryAcademy + (laws.get(i).MaximumLevelOfTheMilitaryAcademy[i2] * f));
        }
        if (laws.get(i).MaximumLevelOfTheSupremeCourt != null) {
            CivilizationBonuses civilizationBonuses10 = Game.getCiv(i3).civBonuses;
            civilizationBonuses10.MaximumLevelOfTheSupremeCourt = (int) (civilizationBonuses10.MaximumLevelOfTheSupremeCourt + (laws.get(i).MaximumLevelOfTheSupremeCourt[i2] * f));
        }
        if (laws.get(i).MaximumLevelOfCapitalCity != null) {
            CivilizationBonuses civilizationBonuses11 = Game.getCiv(i3).civBonuses;
            civilizationBonuses11.MaximumLevelOfCapitalCity = (int) (civilizationBonuses11.MaximumLevelOfCapitalCity + (laws.get(i).MaximumLevelOfCapitalCity[i2] * f));
        }
        if (laws.get(i).RecruitmentTime != null) {
            Game.getCiv(i3).civBonuses.RecruitmentTime += laws.get(i).RecruitmentTime[i2] * f;
        }
        if (laws.get(i).CoreCost != null) {
            Game.getCiv(i3).civBonuses.CoreCost += laws.get(i).CoreCost[i2] * f;
        }
        if (laws.get(i).ReligionCost != null) {
            Game.getCiv(i3).civBonuses.ReligionCost += laws.get(i).ReligionCost[i2] * f;
        }
        if (laws.get(i).RecruitArmyCost != null) {
            Game.getCiv(i3).civBonuses.RecruitArmyCost += laws.get(i).RecruitArmyCost[i2] * f;
        }
        if (laws.get(i).RecruitArmyFirstLineCost != null) {
            Game.getCiv(i3).civBonuses.RecruitArmyFirstLineCost += laws.get(i).RecruitArmyFirstLineCost[i2] * f;
        }
        if (laws.get(i).RecruitArmySecondLineCost != null) {
            Game.getCiv(i3).civBonuses.RecruitArmySecondLineCost += laws.get(i).RecruitArmySecondLineCost[i2] * f;
        }
        if (laws.get(i).ArmyMaintenance != null) {
            Game.getCiv(i3).civBonuses.ArmyMaintenance += laws.get(i).ArmyMaintenance[i2] * f;
            Game.gameThread.addCivUpdateArmyMaintenance(i3);
        }
        if (laws.get(i).MaxNumOfAlliances != null) {
            CivilizationBonuses civilizationBonuses12 = Game.getCiv(i3).civBonuses;
            civilizationBonuses12.MaxNumOfAlliances = (int) (civilizationBonuses12.MaxNumOfAlliances + (laws.get(i).MaxNumOfAlliances[i2] * f));
        }
        if (laws.get(i).AdvisorMaxLevel != null) {
            CivilizationBonuses civilizationBonuses13 = Game.getCiv(i3).civBonuses;
            civilizationBonuses13.AdvisorMaxLevel = (int) (civilizationBonuses13.AdvisorMaxLevel + (laws.get(i).AdvisorMaxLevel[i2] * f));
        }
        if (laws.get(i).AdvisorPoolSize != null) {
            CivilizationBonuses civilizationBonuses14 = Game.getCiv(i3).civBonuses;
            civilizationBonuses14.AdvisorPoolSize = (int) (civilizationBonuses14.AdvisorPoolSize + (laws.get(i).AdvisorPoolSize[i2] * f));
        }
        if (laws.get(i).AdvisorCost != null) {
            Game.getCiv(i3).civBonuses.AdvisorCost += laws.get(i).AdvisorCost[i2] * f;
        }
        if (laws.get(i).GeneralCost != null) {
            Game.getCiv(i3).civBonuses.GeneralCost += laws.get(i).GeneralCost[i2] * f;
        }
        if (laws.get(i).AggressiveExpansion != null) {
            Game.getCiv(i3).civBonuses.AggressiveExpansion += laws.get(i).AggressiveExpansion[i2] * f;
        }
        if (laws.get(i).DiseaseDeathRate != null) {
            Game.getCiv(i3).civBonuses.DiseaseDeathRate += laws.get(i).DiseaseDeathRate[i2] * f;
        }
        if (laws.get(i).ManpowerRecoveryFromADisbandedArmy != null) {
            Game.getCiv(i3).civBonuses.ManpowerRecoveryFromADisbandedArmy += laws.get(i).ManpowerRecoveryFromADisbandedArmy[i2] * f;
        }
        if (laws.get(i).BattleWidth != null) {
            CivilizationBonuses civilizationBonuses15 = Game.getCiv(i3).civBonuses;
            civilizationBonuses15.BattleWidth = (int) (civilizationBonuses15.BattleWidth + (laws.get(i).BattleWidth[i2] * f));
        }
        if (laws.get(i).AllCharactersLifeExpectancy != null) {
            CivilizationBonuses civilizationBonuses16 = Game.getCiv(i3).civBonuses;
            civilizationBonuses16.AllCharactersLifeExpectancy = (int) (civilizationBonuses16.AllCharactersLifeExpectancy + (laws.get(i).AllCharactersLifeExpectancy[i2] * f));
        }
        if (laws.get(i).UnlocksColonization != null) {
            Game.getCiv(i3).canColonize = laws.get(i).UnlocksColonization[i2];
        }
        if (laws.get(i).Discipline != null) {
            Game.getCiv(i3).civBonuses.Discipline += laws.get(i).Discipline[i2] * f;
        }
        if (laws.get(i).MaximumAmountOfGold != null) {
            Game.getCiv(i3).civBonuses.MaximumAmountOfGold += laws.get(i).MaximumAmountOfGold[i2] * f;
        }
        if (laws.get(i).MaximumAmountOfGold_Percentage != null) {
            Game.getCiv(i3).civBonuses.MaximumAmountOfGold_Percentage += laws.get(i).MaximumAmountOfGold_Percentage[i2] * f;
        }
        if (laws.get(i).Loot != null) {
            Game.getCiv(i3).civBonuses.Loot += laws.get(i).Loot[i2] * f;
        }
        if (laws.get(i).RegimentsLimit != null) {
            CivilizationBonuses civilizationBonuses17 = Game.getCiv(i3).civBonuses;
            civilizationBonuses17.RegimentsLimit = (int) (civilizationBonuses17.RegimentsLimit + (laws.get(i).RegimentsLimit[i2] * f));
            Game.getCiv(i3).updateRegimentsLimit();
        }
        Game.getCiv(i3).updateProvincesIncomeAndExpenses();
    }
}
