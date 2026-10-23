package aoc.kingdoms.lukasz.jakowski.AI.Invest;

import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_GrowthRate {
    public static final void buildScore_IncreaseGrowthRate(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            buildScore_IncreaseGrowthRate_ProvinceID(Game.getCiv(i).getProvinceID(i2));
        }
    }

    public static final void buildScore_IncreaseGrowthRate_ProvinceID(int i) {
        Game.getProvince(i).aiInvestScore = Game.aiValues.SCORE_BASE + Game.getProvince(i).getEconomyWithBonuses();
        Game.getProvince(i).aiInvestScore *= AI_InvestInEconomy.buildScore_CoreReligion(i);
    }

    public static final void increaseGrowthRate(int i, float f) {
        int i2;
        if (Game.oR.nextInt(100) < Game.aiValuesBuild.INCREASE_GROWTH_RATE_SCORE_RANDOM) {
            for (int iMin = Math.min(Game.aiValues.INVEST_LIMIT_PER_TURN_RANDOM_LIMIT, (Game.getCiv(i).getNumOfProvinces() / 2) + 1); iMin >= 0 && Game.getProvince(Game.aiManager.getRandomProvince(i)).addIncreaseGrowthRateInProvince() && f < Game.getCiv(i).fGold; iMin--) {
            }
            return;
        }
        buildScore_IncreaseGrowthRate(i);
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
            for (int iNextInt = Game.oR.nextInt(Game.aiValuesBuild.INCREASE_GROWTH_RATE_RANDOM) + 1; iNextInt >= 0; iNextInt--) {
                if (!Game.getProvince(Game.getCiv(i).getProvinceID(i2)).addIncreaseGrowthRateInProvince() && Game.getCiv(i).fGold < Game.getIncreaseGrowthRateCost(Game.getCiv(i).getProvinceID(i2))) {
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
