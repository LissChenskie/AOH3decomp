package aoc.kingdoms.lukasz.jakowski.AI.Invest;

import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_IncreaseTaxEfficiency {
    public static final void buildScore_InvestInEconomy_Distance(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            buildScore_InvestInEconomy_Distance_ProvinceID(Game.getCiv(i).getProvinceID(i2));
        }
    }

    public static final void buildScore_InvestInEconomy_Distance_ProvinceID(int i) {
        Game.getProvince(i).aiInvestScore = Game.aiValues.SCORE_BASE + (Game.aiValues.SCORE_INVEST_ECONOMY_DISTANCE * Game.aiValues.SCORE_INVEST_ECONOMY_DISTANCE_W_GR * (Game.getProvince(i).getGrowthRateWithBonuses() / Game.getProvince(i).getEconomyWithBonuses()) * Game.aiValues.SCORE_INVEST_ECONOMY_DISTANCE_W_DIS * (1.0f - Game.getProvince(i).aiDistanceToCapital));
        Game.getProvince(i).aiInvestScore *= AI_InvestInEconomy.buildScore_CoreReligion(i);
    }

    public static final void buildScore_InvestInEconomy_GrowthRate(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            buildScore_InvestInEconomy_GrowthRate_ProvinceID(Game.getCiv(i).getProvinceID(i2));
        }
    }

    public static final void buildScore_InvestInEconomy_GrowthRate_ProvinceID(int i) {
        Game.getProvince(i).aiInvestScore = Game.aiValues.SCORE_BASE + (Game.aiValues.SCORE_INVEST_ECONOMY_GROWTH_RATE * (Game.getProvince(i).getGrowthRateWithBonuses() / Game.getProvince(i).getEconomyWithBonuses()));
        Game.getProvince(i).aiInvestScore *= AI_InvestInEconomy.buildScore_CoreReligion(i);
    }

    public static final void buildScore_Invest_PayOff(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            buildScore_Invest_PayOff_ProvinceID(Game.getCiv(i).getProvinceID(i2));
        }
    }

    public static final void buildScore_Invest_PayOff_ProvinceID(int i) {
        Game.getProvince(i).aiInvestScore = 100000.0f - (Game.getIncreaseTaxEfficiencyCost(i) / Game.getIncomePopulationTaxation_Invest(i));
        Game.getProvince(i).aiInvestScore *= AI_InvestInEconomy.buildScore_CoreReligion(i);
    }

    public static final void increaseTaxEfficiency(int i, float f) {
        int i2;
        int iNextInt = Game.oR.nextInt(100);
        if (iNextInt < Game.aiValuesBuild.INCREASE_TAX_EFFICIENCY_SCORE_RANDOM) {
            for (int iMin = Math.min(Game.aiValues.INVEST_LIMIT_PER_TURN_RANDOM_LIMIT, (Game.getCiv(i).getNumOfProvinces() / 2) + 1); iMin >= 0 && Game.getProvince(Game.aiManager.getRandomProvince(i)).addIncreaseTaxEfficiencyInProvince() && f < Game.getCiv(i).fGold; iMin--) {
            }
            return;
        }
        if (iNextInt < Game.aiValuesBuild.INCREASE_TAX_EFFICIENCY_SCORE_GROWTH_RATE) {
            buildScore_InvestInEconomy_GrowthRate(i);
        } else if (iNextInt < Game.aiValuesBuild.INCREASE_TAX_EFFICIENCY_SCORE_DISTANCE) {
            buildScore_InvestInEconomy_Distance(i);
        } else {
            buildScore_Invest_PayOff(i);
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = Game.aiValues.INVEST_LIMIT_PER_TURN; i3 > 0; i3--) {
            int i4 = 0;
            while (true) {
                if (i4 >= Game.getCiv(i).getNumOfProvinces()) {
                    i2 = -1;
                    break;
                } else {
                    if (!arrayList.contains(Integer.valueOf(Game.getCiv(i).getProvinceID(i4))) && Game.getProvince(Game.getCiv(i).getProvinceID(i4)).aiInvestScore > 0.0f) {
                        i2 = i4;
                        break;
                    }
                    i4++;
                }
            }
            if (i2 < 0) {
                arrayList.clear();
                return;
            }
            while (i4 < Game.getCiv(i).getNumOfProvinces()) {
                if (Game.getProvince(Game.getCiv(i).getProvinceID(i4)).aiInvestScore > 0.0f && Game.getProvince(Game.getCiv(i).getProvinceID(i2)).aiInvestScore < Game.getProvince(Game.getCiv(i).getProvinceID(i4)).aiInvestScore && !arrayList.contains(Integer.valueOf(Game.getCiv(i).getProvinceID(i4)))) {
                    i2 = i4;
                }
                i4++;
            }
            for (int iNextInt2 = Game.oR.nextInt(Game.aiValuesBuild.INCREASE_TAX_EFFICIENCY_RANDOM) + 1; iNextInt2 >= 0; iNextInt2--) {
                if (!Game.getProvince(Game.getCiv(i).getProvinceID(i2)).addIncreaseTaxEfficiencyInProvince()) {
                    if (Game.getCiv(i).fGold < Game.getIncreaseTaxEfficiencyCost(Game.getCiv(i).getProvinceID(i2))) {
                        arrayList.clear();
                        return;
                    } else if (Game.getCiv(i).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(Game.getCiv(i).getProvinceID(i2))) {
                        arrayList.clear();
                        return;
                    } else if (Game.oR.nextInt(100) < Game.aiValuesBuild.INVEST_IN_ECONOMY_AFTER_INCREASE_TAXATION_IN_PROVINCE_CHANCE) {
                        Game.getProvince(Game.getCiv(i).getProvinceID(i2)).addInvestInProvince();
                    }
                }
            }
            if (f >= Game.getCiv(i).fGold) {
                arrayList.clear();
                return;
            }
            arrayList.add(Integer.valueOf(Game.getCiv(i).getProvinceID(i2)));
            if (arrayList.size() == Game.getCiv(i).getNumOfProvinces()) {
                arrayList.clear();
                return;
            }
        }
    }
}
