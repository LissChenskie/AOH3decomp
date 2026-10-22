package aoc.kingdoms.lukasz.jakowski.AI.Laws;

import aoc.kingdoms.lukasz.jakowski.AI.Government.AI_Capital;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.LawsManager;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Laws {
    public static boolean adoptNewLaw(int i, int i2) {
        for (int length = LawsManager.laws.get(i2).RequiredTechID.length - 1; length > Game.getCiv(i).laws.get(i2).intValue(); length--) {
            if (Game.getCiv(i).getTechResearched(LawsManager.laws.get(i2).RequiredTechID[length]) && (LawsManager.laws.get(i2).RequiredGovernmentID == null || LawsManager.laws.get(i2).RequiredGovernmentID[length] < 0 || LawsManager.laws.get(i2).RequiredGovernmentID[length] == Game.getCiv(i).getIdeologyID())) {
                return LawsManager.adoptReform(i, i2, length);
            }
        }
        return true;
    }

    public static final void adoptNewLaws(int i) {
        AI_Capital.checkCapital(i);
        if (Game.getCiv(i).fLegacy >= GameValues.laws.LAW_ADAPT_REFORM_COST_LEGACY_POINTS && Game.getCiv(i).fGold >= GameValues.laws.LAW_ADAPT_REFORM_COST_GOLD) {
            for (int i2 = 0; i2 < LawsManager.iLawsSize; i2++) {
                if (Game.getCiv(i).laws.get(i2).intValue() + 1 < LawsManager.laws.get(i2).RequiredTechID.length && !adoptNewLaw(i, i2) && (Game.getCiv(i).fLegacy < GameValues.laws.LAW_ADAPT_REFORM_COST_LEGACY_POINTS || Game.getCiv(i).fGold < GameValues.laws.LAW_ADAPT_REFORM_COST_GOLD)) {
                    return;
                }
            }
        }
    }
}
