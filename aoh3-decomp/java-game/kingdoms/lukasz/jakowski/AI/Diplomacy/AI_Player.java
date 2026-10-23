package aoc.kingdoms.lukasz.jakowski.AI.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Player {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_Player$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.aiManager.update_ReorganizeArmiesAtPeace(this.id);
        }
    }

    public static void reactOnLowArmy(int i) {
        List arrayList = new ArrayList();
        for (int i2 = 0; i2 < Game.getCiv(i).civNeighbors.civsSize; i2++) {
            if (!DiplomacyManager.isAlly(i, Game.getCiv(i).civNeighbors.civs.get(i2).civID)) {
                arrayList.add(Integer.valueOf(Game.getCiv(i).civNeighbors.civs.get(i2).civID));
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = AI_PrepareForWar.getClosestCivs(i, Game.aiValuesDiplomacy.AI_PLAYER_LOW_ARMY_REACT_CIVS_LIMIT);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        int iMax = (int) Math.max(Game.getCiv(Game.player.iCivID).iRegimentsLimit * Game.aiValuesDiplomacy.AI_PLAYER_LOW_ARMY_REACT_PLAYERS_REGIMENTS_LIMIT_MODIFIER, AI_DeclareWar.declareWar_CheckRegiments_Defender(((Integer) arrayList.get(0)).intValue(), Game.player.iCivID));
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (iMax > AI_DeclareWar.declareWar_CheckRegiments_Attacker(((Integer) arrayList.get(size)).intValue(), Game.player.iCivID) || Game.getCiv(((Integer) arrayList.get(size)).intValue()).diplomacy.isAtWar()) {
                arrayList.remove(size);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Civilization civ = Game.getCiv(((Integer) arrayList.get(Game.oR.nextInt(arrayList.size()))).intValue());
        int i3 = Game.player.iCivID;
        civ.aiCivDiplomacy.clearPrepareForWar();
        if (civ.diplomacy.getRelation(i3) <= GameValues.war.RELATIONS_TO_DECLARE_WAR && AI_DeclareWar.declareWar(civ.getCivID(), i3)) {
            civ.updateMilitaryLevel(Math.max(GameValues.war.AI_AT_WAR_MIN_MILITARY_LEVEL, Game.getCiv(civ.getCivID()).getMilitaryLevel()));
            arrayList.clear();
            return;
        }
        if (civ.diplomacy.getRelation(i3) > GameValues.war.RELATIONS_TO_DECLARE_WAR * Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_DECREASE_RELATIONS_MODIFIER) {
            civ.diplomacy.addDamageRelations(civ.getCivID(), i3);
        }
        if (civ.diplomacy.getRelation(i3) > Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_SEND_INSULT_IF_RELATIONS_OVER && Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_SEND_INSULT_CHANCE) {
            DiplomacyManager.sendInsult(civ.getCivID(), i3);
        }
        if (civ.aiCivDiplomacy.addPrepareForWar(i3)) {
            Game.gameThread.addAI_SimpleTask(new AnonymousClass1("update_ReorganizeArmiesAtPeace" + civ.getCivID(), civ.getCivID()));
        }
        civ.updateMilitaryLevel(Math.max(GameValues.war.AI_AT_WAR_MIN_MILITARY_LEVEL, Game.getCiv(civ.getCivID()).getMilitaryLevel()));
    }

    public static void update() {
        if (Game_Calendar.TURN_ID % GameValues.gameUpdate.GAME_UPDATE_PLAYER_WEAKNESS != 0 || Game.SPECTATOR_MODE || Game.getCiv(Game.player.iCivID).diplomacy.isAtWar() || Game.difficultyID < GameValues.difficulty.NORMAL_ID) {
            return;
        }
        if (Game.getCiv(Game.player.iCivID).iRegiments >= Game.aiValuesDiplomacy.AI_PLAYER_LOW_ARMY_REGIMENTS_BELOW || Game.getCiv(Game.player.iCivID).iRegiments / Game.getCiv(Game.player.iCivID).iRegimentsLimit >= Game.aiValuesDiplomacy.AI_PLAYER_LOW_ARMY_REGIMENTS_BELOW_PERC_OF_MAX) {
            Game.player.playerData.lowArmyTurnID = -1;
            return;
        }
        if (Game.player.playerData.lowArmyTurnID == -1) {
            Game.player.playerData.lowArmyTurnID = Game_Calendar.TURN_ID;
        } else if (Game_Calendar.TURN_ID > Game.player.playerData.lowArmyTurnID + Game.aiValuesDiplomacy.AI_PLAYER_LOW_ARMY_REACT_AFTER_X_DAYS) {
            Game.player.playerData.lowArmyTurnID = -1;
            reactOnLowArmy(Game.player.iCivID);
        }
    }
}
