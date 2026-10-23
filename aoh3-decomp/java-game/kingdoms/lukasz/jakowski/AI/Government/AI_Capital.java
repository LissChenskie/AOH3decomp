package aoc.kingdoms.lukasz.jakowski.AI.Government;

import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Capital {
    public static void checkCapital(int i) {
        if (Game.getCiv(i).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getCivID() != i) {
            Game.getCiv(i).moveCapital_ToLargestProvince();
        }
    }
}
