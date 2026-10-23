package aoc.kingdoms.lukasz.jakowski.AI;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_ConvertReligion {
    public static final void buildProvince_AIConvertScore_Default(int i, int i2) {
        if (Game.getProvince(i2).religionConversion != null) {
            Game.getProvince(i2).aiScore_CoresReligion = -999999.0f;
            return;
        }
        if (Game.getProvince(i2).getReligion() == Game.getCiv(i).getReligionID()) {
            Game.getProvince(i2).aiScore_CoresReligion = -999999.0f;
            Game.getCiv(i).convertReligion.removeProvince(i2);
            return;
        }
        Game.getProvince(i2).aiScore_CoresReligion = Game.aiValuesConvert.BUILD_SCORE_MIN;
        Game.getProvince(i2).aiScore_CoresReligion += Game.aiValuesConvert.SCORE_PER_GROWTH_RATE * Game.getProvince(i2).getGrowthRateWithBonuses();
        Game.getProvince(i2).aiScore_CoresReligion += Game.aiValuesConvert.SCORE_PER_ECONOMY * Game.getProvince(i2).getEconomyWithBonuses();
        Game.getProvince(i2).aiScore_CoresReligion += Game.aiValuesConvert.SCORE_DISTANCE_FROM_CAPITAL * Game.getProvince(i2).aiDistanceToCapital;
    }

    public static final void convertReligion(int i) {
        if (Game.getCiv(i).convertReligion.provincesSize > 0) {
            for (int i2 = 0; i2 < Game.getCiv(i).convertReligion.provincesSize; i2++) {
                try {
                    buildProvince_AIConvertScore_Default(i, Game.getCiv(i).convertReligion.provinces.get(i2).intValue());
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                    return;
                }
            }
            while (Game.getCiv(i).fGold > GameValues.religion.DEFAULT_CONVERSION_COST && Game.getCiv(i).convertReligion.provincesSize > 0) {
                int i3 = 0;
                for (int i4 = 1; i4 < Game.getCiv(i).convertReligion.provincesSize; i4++) {
                    if (Game.getProvince(Game.getCiv(i).convertReligion.provinces.get(i3).intValue()).aiScore_CoresReligion < Game.getProvince(Game.getCiv(i).convertReligion.provinces.get(i4).intValue()).aiScore_CoresReligion) {
                        i3 = i4;
                    }
                }
                if (Game.getProvince(Game.getCiv(i).convertReligion.provinces.get(i3).intValue()).aiScore_CoresReligion < 0.0f) {
                    return;
                }
                if (!Game.getProvince(Game.getCiv(i).convertReligion.provinces.get(i3).intValue()).addReligionConversion()) {
                    Game.getCiv(i).convertReligion.checkProvince(Game.getCiv(i).convertReligion.provinces.get(i3).intValue(), i);
                    return;
                }
            }
        }
    }
}
