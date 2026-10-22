package aoc.kingdoms.lukasz.jakowski.AI.Invest;

import aoc.kingdoms.lukasz.jakowski.AI.AI_Loan;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.province.Province;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_InvestInEconomy {
    public static final float SCORE_CANT_INVEST = 0.0f;

    public static float buildScore_CoreReligion(int i) {
        return (Game.getProvince(i).haveACore ? Game.aiValues.SCORE_INVEST_NON_CORE : 0.0f) + 1.0f + (Game.getProvince(i).getReligion() != Game.getCiv(Game.getProvince(i).getReligion()).getReligionID() ? Game.aiValues.SCORE_INVEST_DIFFERENT_RELIGION : 0.0f);
    }

    public static final void buildScore_InvestInEconomy(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            buildScore_InvestInEconomy_ProvinceID(Game.getCiv(i).getProvinceID(i2));
        }
    }

    public static final void buildScore_InvestInEconomy_Distance(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            buildScore_InvestInEconomy_Distance_ProvinceID(Game.getCiv(i).getProvinceID(i2));
        }
    }

    public static final void buildScore_InvestInEconomy_Distance_ProvinceID(int i) {
        if (Game.canInvestInEconomy(i)) {
            Game.getProvince(i).aiInvestScore = 0.0f;
            return;
        }
        Game.getProvince(i).aiInvestScore = Game.aiValues.SCORE_BASE + (Game.aiValues.SCORE_INVEST_ECONOMY_DISTANCE * Game.aiValues.SCORE_INVEST_ECONOMY_DISTANCE_W_GR * (Game.getProvince(i).getGrowthRateWithBonuses() / Game.getProvince(i).getEconomyWithBonuses()) * Game.aiValues.SCORE_INVEST_ECONOMY_DISTANCE_W_DIS * (1.0f - Game.getProvince(i).aiDistanceToCapital));
        Game.getProvince(i).aiInvestScore *= buildScore_CoreReligion(i);
    }

    public static final void buildScore_InvestInEconomy_GrowthRate(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            buildScore_InvestInEconomy_GrowthRate_ProvinceID(Game.getCiv(i).getProvinceID(i2));
        }
    }

    public static final void buildScore_InvestInEconomy_GrowthRate_ProvinceID(int i) {
        if (Game.canInvestInEconomy(i)) {
            Game.getProvince(i).aiInvestScore = 0.0f;
            return;
        }
        Game.getProvince(i).aiInvestScore = Game.aiValues.SCORE_BASE + (Game.aiValues.SCORE_INVEST_ECONOMY_GROWTH_RATE * (Game.getProvince(i).getGrowthRateWithBonuses() / Game.getProvince(i).getEconomyWithBonuses()));
        Game.getProvince(i).aiInvestScore *= buildScore_CoreReligion(i);
    }

    public static final void buildScore_InvestInEconomy_PayOff(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            buildScore_InvestInEconomy_PayOff_ProvinceID(Game.getCiv(i).getProvinceID(i2));
        }
    }

    public static final void buildScore_InvestInEconomy_PayOff_ProvinceID(int i) {
        if (Game.canInvestInEconomy(i)) {
            Game.getProvince(i).aiInvestScore = 0.0f;
            return;
        }
        Game.getProvince(i).aiInvestScore = 100000.0f - (Game.getInvestCost(i) / (Game.getIncomeFromEconomy_Invest(i) + ((ResourcesManager.getMonthlyIncome(i, Game.getProvince(i).getResourceID(), ResourcesManager.getProductionEfficiency(i) + ResourcesManager.getProductionEfficiency_FromEconomy(Game.getInvestEconomyGrowth(i))) - ResourcesManager.getMonthlyIncome(i, Game.getProvince(i).getResourceID(), ResourcesManager.getProductionEfficiency(i))) / 100.0f)));
        Game.getProvince(i).aiInvestScore *= buildScore_CoreReligion(i);
    }

    public static final void buildScore_InvestInEconomy_ProvinceID(int i) {
        float price = 0.0f;
        if (Game.canInvestInEconomy(i)) {
            Game.getProvince(i).aiInvestScore = 0.0f;
            return;
        }
        Province province = Game.getProvince(i);
        float growthRate = Game.aiValues.SCORE_BASE + (Game.getProvince(i).getGrowthRate() / 10.0f);
        if (Game.getProvince(i).getResourceID() >= 0 && Game.getCiv(Game.getProvince(i).getCivID()).getTechResearched(ResourcesManager.lResources.get(Game.getProvince(i).getResourceID()).RequiredTechID)) {
            price = Game.aiValues.SCORE_INVEST_ECONOMY_RESOURCE_MIN + (Game.aiValues.SCORE_INVEST_ECONOMY_RESOURCE_PRICE * ResourcesManager.getPrice(Game.getProvince(i).getResourceID()));
        }
        province.aiInvestScore = growthRate + ((price + (Game.aiValues.SCORE_INVEST_ECONOMY_PER_INFRASTRUCTURE * Game.getProvince(i).getInfrastructure())) / Game.getProvince(i).getEconomyWithBonuses());
        Game.getProvince(i).aiInvestScore *= buildScore_CoreReligion(i);
    }

    public static final void investInEconomy(int i, float f) {
        int i2;
        if (Game.getCiv(i).fLegacy < GameValues.economy.INVEST_COST_LEGACY * 4.0f) {
            return;
        }
        int iNextInt = Game.oR.nextInt(100);
        if (iNextInt < Game.aiValuesBuild.INVEST_IN_ECONOMY_SCORE_RANDOM || Game.getCiv(i).getNumOfProvinces() < Game.aiValues.INVEST_RANDOM_IF_PROVINCES_BELOW) {
            for (int iMin = Math.min(Game.aiValues.INVEST_LIMIT_PER_TURN_RANDOM_LIMIT, (Game.getCiv(i).getNumOfProvinces() / 2) + 1); iMin >= 0 && Game.getProvince(Game.aiManager.getRandomProvince(i)).addInvestInProvince() && f < Game.getCiv(i).fGold; iMin--) {
            }
            return;
        }
        if (iNextInt < Game.aiValuesBuild.INVEST_IN_ECONOMY_SCORE_GROWTH_RATE) {
            buildScore_InvestInEconomy_GrowthRate(i);
        } else if (iNextInt < Game.aiValuesBuild.INVEST_IN_ECONOMY_SCORE_DISTANCE) {
            buildScore_InvestInEconomy_Distance(i);
        } else if (iNextInt < Game.aiValuesBuild.INVEST_IN_ECONOMY_SCORE_PAYOFF) {
            buildScore_InvestInEconomy_PayOff(i);
        } else {
            buildScore_InvestInEconomy(i);
        }
        AI_Loan.takeLoan_Chance(i, Game.aiValues.TAKE_LOAN_CHANCE_INVEST_IN_ECONOMY);
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
                if (Game.oR.nextInt(100) < Game.aiValuesBuild.INVEST_IN_ECONOMY_MAX_VALUE_INCREASE_GROWTH_RATE_CHANCE) {
                    AI_GrowthRate.increaseGrowthRate(i, f);
                    return;
                } else {
                    AI_IncreaseManpower.increaseManpower(i, f);
                    return;
                }
            }
            while (i4 < Game.getCiv(i).getNumOfProvinces()) {
                if (Game.getProvince(Game.getCiv(i).getProvinceID(i4)).aiInvestScore > 0.0f && Game.getProvince(Game.getCiv(i).getProvinceID(i2)).aiInvestScore < Game.getProvince(Game.getCiv(i).getProvinceID(i4)).aiInvestScore && !arrayList.contains(Integer.valueOf(Game.getCiv(i).getProvinceID(i4)))) {
                    i2 = i4;
                }
                i4++;
            }
            for (int iNextInt2 = Game.oR.nextInt(Game.aiValuesBuild.INVEST_IN_ECONOMY_RANDOM) + 1; iNextInt2 >= 0; iNextInt2--) {
                if (!Game.getProvince(Game.getCiv(i).getProvinceID(i2)).addInvestInProvince() && (Game.getCiv(i).fGold < Game.getInvestCost(Game.getCiv(i).getProvinceID(i2)) || Game.getCiv(i).fLegacy < Game.getInvestCost_Legacy(Game.getCiv(i).getProvinceID(i2)))) {
                    arrayList.clear();
                    return;
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
