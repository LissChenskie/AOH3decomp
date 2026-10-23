package aoc.kingdoms.lukasz.jakowski.AI;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Cores {
    public static final void buildProvince_AICoresScore_Default(int i, int i2) {
        if (Game.getProvince(i2).coreCreation != null) {
            Game.getProvince(i2).aiScore_CoresReligion = -999999.0f;
            return;
        }
        if (Game.getProvince(i2).haveACore(i)) {
            Game.getProvince(i2).aiScore_CoresReligion = -999999.0f;
            Game.getCiv(i).civilizationCores.removeProvince(i2);
            return;
        }
        Game.getProvince(i2).aiScore_CoresReligion = Game.aiValuesCores.BUILD_SCORE_MIN;
        Game.getProvince(i2).aiScore_CoresReligion += Game.aiValuesCores.SCORE_PER_GROWTH_RATE * Game.getProvince(i2).getGrowthRateWithBonuses();
        Game.getProvince(i2).aiScore_CoresReligion += Game.aiValuesCores.SCORE_PER_ECONOMY * Game.getProvince(i2).getEconomyWithBonuses();
        Game.getProvince(i2).aiScore_CoresReligion += Game.aiValuesCores.SCORE_DISTANCE_FROM_CAPITAL * Game.getProvince(i2).aiDistanceToCapital;
    }

    public static final void createCore(int i) {
        if (Game.getCiv(i).civilizationCores.provincesSize > 0) {
            for (int i2 = 0; i2 < Game.getCiv(i).civilizationCores.provincesSize; i2++) {
                try {
                    buildProvince_AICoresScore_Default(i, Game.getCiv(i).civilizationCores.provinces.get(i2).intValue());
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                    return;
                }
            }
            while (Game.getCiv(i).fGold > GameValues.core.CORE_CREATION_COST_DEFAULT && Game.getCiv(i).civilizationCores.provincesSize > 0) {
                int i3 = 0;
                for (int i4 = 1; i4 < Game.getCiv(i).civilizationCores.provincesSize; i4++) {
                    if (Game.getProvince(Game.getCiv(i).civilizationCores.provinces.get(i3).intValue()).aiScore_CoresReligion < Game.getProvince(Game.getCiv(i).civilizationCores.provinces.get(i4).intValue()).aiScore_CoresReligion) {
                        i3 = i4;
                    }
                }
                if (Game.getProvince(Game.getCiv(i).civilizationCores.provinces.get(i3).intValue()).aiScore_CoresReligion < 0.0f) {
                    return;
                }
                if (!Game.getProvince(Game.getCiv(i).civilizationCores.provinces.get(i3).intValue()).addCoreCreation()) {
                    Game.getCiv(i).civilizationCores.checkProvince(Game.getCiv(i).civilizationCores.provinces.get(i3).intValue(), i);
                    return;
                }
            }
        }
    }
}
