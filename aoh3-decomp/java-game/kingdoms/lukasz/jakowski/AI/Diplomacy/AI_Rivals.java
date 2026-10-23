package aoc.kingdoms.lukasz.jakowski.AI.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.RivalsManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Rivals {
    public static float calculateScore(float f) {
        return ((f * (-0.5f)) + 50.0f) / 100.0f;
    }

    public static void chooseRivals(int i) {
        try {
            if (Game.getCiv(i).diplomacy.rivals.size() < GameValues.rivals.RIVALS_LIMIT) {
                List<Integer> listBuildRivals = RivalsManager.buildRivals(i, GameValues.rivals.NUM_OF_RIVALS_TO_CHOOSE_FROM);
                List<Float> listChooseRivals_BuildScore = chooseRivals_BuildScore(i, listBuildRivals);
                int size = listBuildRivals.size();
                for (int size2 = Game.getCiv(i).diplomacy.rivals.size(); size2 < GameValues.rivals.RIVALS_LIMIT && listBuildRivals.size() > 0; size2++) {
                    int i2 = 0;
                    for (int i3 = 1; i3 < size; i3++) {
                        if (listChooseRivals_BuildScore.get(i2).floatValue() > listChooseRivals_BuildScore.get(i3).floatValue()) {
                            i2 = i3;
                        }
                    }
                    Game.getCiv(i).diplomacy.addRival(i, listBuildRivals.get(i2).intValue());
                    listBuildRivals.remove(i2);
                    listChooseRivals_BuildScore.remove(i2);
                    size = listBuildRivals.size();
                }
                listBuildRivals.clear();
                listChooseRivals_BuildScore.clear();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static List<Float> chooseRivals_BuildScore(int i, List<Integer> list) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (DiplomacyManager.isAlly(i, list.get(i2).intValue())) {
                arrayList.add(Float.valueOf(Game.getCiv(i).diplomacy.getRelation(list.get(i2).intValue()) + 999333.0f));
            } else if (Game.getCiv(i).diplomacy.haveDefensivePact(list.get(i2).intValue())) {
                arrayList.add(Float.valueOf(Game.getCiv(i).diplomacy.getRelation(list.get(i2).intValue()) + 899999.0f));
            } else {
                float fAbs = Math.abs(Game.getCiv(i).iCivRankScore - Game.getCiv(list.get(i2).intValue()).iCivRankScore);
                arrayList.add(Float.valueOf(((GameValues.rivals.RIVALS_SCORE_MIN * fAbs) + (fAbs * GameValues.rivals.RIVALS_SCORE_DISTANCE * (Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(list.get(i2).intValue()).getCapitalProvinceID()) / Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).RIVALS_DISTANCE))) * (Math.max(0.0f, 1.0f - GameValues.rivals.AI_RIVALS_SCORE_RELATION) + (GameValues.rivals.AI_RIVALS_SCORE_RELATION * calculateScore(Game.getCiv(i).diplomacy.getRelation(list.get(i2).intValue()))))));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0033 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x000f, B:7:0x0019, B:8:0x001c, B:9:0x0022, B:11:0x0028, B:12:0x002c, B:13:0x002d, B:15:0x0033, B:17:0x003d, B:18:0x0040), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003d A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x000f, B:7:0x0019, B:8:0x001c, B:9:0x0022, B:11:0x0028, B:12:0x002c, B:13:0x002d, B:15:0x0033, B:17:0x003d, B:18:0x0040), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0040 A[Catch: Exception -> 0x0045, TRY_LEAVE, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x000f, B:7:0x0019, B:8:0x001c, B:9:0x0022, B:11:0x0028, B:12:0x002c, B:13:0x002d, B:15:0x0033, B:17:0x003d, B:18:0x0040), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:29:? A[RETURN, SYNTHETIC] */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public static void updateAI_Rivals() {
        /*
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L45
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_CHOOSE_RIVALS     // Catch: java.lang.Exception -> L45
            int r0 = r0 % r1
            int r0 = r0 + 1
        L9:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L22
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L1c
            chooseRivals(r0)     // Catch: java.lang.Exception -> L45
        L1c:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_CHOOSE_RIVALS     // Catch: java.lang.Exception -> L45
            int r0 = r0 + r1
            goto L9
        L22:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 != r1) goto L2d
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_CHOOSE_RIVALS     // Catch: java.lang.Exception -> L45
        L2c:
            int r0 = r0 + r1
        L2d:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L49
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L40
            chooseRivals(r0)     // Catch: java.lang.Exception -> L45
        L40:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_CHOOSE_RIVALS     // Catch: java.lang.Exception -> L45
            goto L2c
        L45:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_Rivals.updateAI_Rivals():void");
    }
}
