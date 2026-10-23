package aoc.kingdoms.lukasz.jakowski.AI.Technology;

import aoc.kingdoms.lukasz.jakowski.AI.Advantages.AI_Advantages;
import aoc.kingdoms.lukasz.jakowski.AI.Laws.AI_Laws;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.army.ArmyManager;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_UnlockedTechnology {
    public static final void unlockedTechnology(int i, int i2) {
        AI_Advantages.takeAdvantages(i);
        if (Game.getCiv(i).getNumOfProvinces() > 0) {
            AI_Laws.adoptNewLaws(i);
            ArmyManager.upgradeAllArmies(i);
            AI_SelectTechnology.selectTechnology(i);
        }
    }
}
