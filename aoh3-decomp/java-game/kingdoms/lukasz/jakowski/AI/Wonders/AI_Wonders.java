package aoc.kingdoms.lukasz.jakowski.AI.Wonders;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.WondersManager;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Wonders {
    public static void buildWonder(int i) {
        if (i >= WondersManager.wondersSize || Game.getProvince(WondersManager.wonders.get(i).ProvinceID).getWonderBuilt() || Game.getProvince(WondersManager.wonders.get(i).ProvinceID).getCivID() <= 0 || Game.getProvince(WondersManager.wonders.get(i).ProvinceID).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(WondersManager.wonders.get(i).ProvinceID).getCivID()).fGold <= WondersManager.wonders.get(i).CostGold || Game.oR.nextInt(100) >= Game.aiValuesBuild.BUILD_WONDER_CHANCE) {
            return;
        }
        Game.getProvince(WondersManager.wonders.get(i).ProvinceID).buildWonder();
    }

    public static void buildWonders() {
        try {
            buildWonder(Game_Calendar.TURN_ID % GameValues.gameUpdateAI.GAME_UPDATE_AI_WONDERS);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
