package aoc.kingdoms.lukasz.map.diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class LibertyDesireManager {
    public static float getUpdateLibertyDesireValue(int i, int i2) {
        float f;
        int i3;
        int i4;
        float relation = GameValues.vassal.LIBERTY_DESIRE_CHANGE_PER_UPDATE + (Game.getCiv(i2).diplomacy.getRelation(i) * GameValues.vassal.LIBERTY_DESIRE_CHANGE_PER_RELATION);
        if (!Game.getCiv(i).diplomacy.getVassal_CanDeclareWar(i2)) {
            relation += GameValues.vassal.LIBERTY_DESIRE_CANT_DECLARE_WAR;
        }
        if (Game.getCiv(i2).iRegimentsLimit > Game.getCiv(i).iRegimentsLimit) {
            f = GameValues.vassal.LIBERTY_DESIRE_PER_REGIMENT_MORE_THAN_LORD;
            i3 = Game.getCiv(i2).iRegimentsLimit;
            i4 = Game.getCiv(i).iRegimentsLimit;
        } else {
            f = GameValues.vassal.LIBERTY_DESIRE_PER_REGIMENT_LESS_THAN_LORD;
            i3 = Game.getCiv(i).iRegimentsLimit;
            i4 = Game.getCiv(i2).iRegimentsLimit;
        }
        return relation + (f * (i3 - i4)) + (Game.getCiv(i2).iCivRankPosition < Game.getCiv(i).iCivRankPosition ? GameValues.vassal.LIBERTY_DESIRE_IF_RANK_POSITION_HIGHER_THAN_LORD : GameValues.vassal.LIBERTY_DESIRE_IF_NOT_RANK_POSITION_HIGHER_THAN_LORD);
    }

    public static void updateLibertyDesire() {
        try {
            for (int i = Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_VASSAL_LIBERTY_DESIRE; i < Game.getCivsSize(); i += GameValues.gameUpdate.GAME_UPDATE_VASSAL_LIBERTY_DESIRE) {
                if (Game.getCiv(i).diplomacy.iVassalsSize > 0) {
                    if (Game.getCiv(i).getNumOfProvinces() > 0) {
                        for (int i2 = 0; i2 < Game.getCiv(i).diplomacy.iVassalsSize; i2++) {
                            int i3 = Game.getCiv(i).diplomacy.lVassals.get(i2).c;
                            Game.getCiv(i).diplomacy.lVassals.get(i2).setLibertyDesire_Change(getUpdateLibertyDesireValue(i, i3));
                            if (i3 != Game.player.iCivID && Game.getCiv(i).diplomacy.lVassals.get(i2).lD > GameValues.vassal.AI_DAMAGE_RELATIONS_IF_LIBERTY_DESIRE_OVER) {
                                Game.getCiv(i3).diplomacy.addDamageRelations(i3, i);
                            }
                        }
                    } else {
                        for (int i4 = Game.getCiv(i).diplomacy.iVassalsSize - 1; i4 >= 0; i4--) {
                            int i5 = Game.getCiv(i).diplomacy.lVassals.get(i4).c;
                            Game.getCiv(i5).setPuppetOfCivID(i5);
                        }
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
