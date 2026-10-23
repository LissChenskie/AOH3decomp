package aoc.kingdoms.lukasz.jakowski.AI.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_RelationsImprove {
    public static final void addImproveRelations(int i, int i2) {
        Game.getCiv(i).diplomacy.addImproveRelations(i, i2);
        if (Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_SEND_GIFT_CHANCE) {
            DiplomacyManager.giftGold(i, i2, Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_SEND_GIFT_CLICKS + Game.oR.nextInt(Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_SEND_GIFT_CLICKS_RANDOM));
        }
    }

    public static void buildScore(int i, int i2, float f, float f2) {
        if (Game.getCiv(i2).getNumOfProvinces() > 0) {
            Game.getCiv(i2).aiScore = (f * Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID())) + ((f2 + (differentReligion(i, i2) ? Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_DISTANCE_SCORE_EXTRA_DIFFERENT_RELIGION : 0.0f)) * (1.0f - (Math.min(Game.getCiv(i).fTotalIncomePerMonth, Game.getCiv(i2).fTotalIncomePerMonth) / Math.max(Game.getCiv(i).fTotalIncomePerMonth, Game.getCiv(i2).fTotalIncomePerMonth))));
        } else {
            Game.getCiv(i2).aiScore = 999876.0f;
        }
    }

    public static void buildScoreManpower(int i, int i2, float f, float f2) {
        if (Game.getCiv(i2).getNumOfProvinces() > 0) {
            Game.getCiv(i2).aiScore = (float) (((double) (f * Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID()))) + (((double) (f2 + (differentReligion(i, i2) ? Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_DISTANCE_SCORE_EXTRA_DIFFERENT_RELIGION : 0.0f))) * (1.0d - (Math.min(Game.getCiv(i).fManpowerMax, Game.getCiv(i2).fManpowerMax) / ((double) ((float) Math.max(Game.getCiv(i).fManpowerMax, Game.getCiv(i2).fManpowerMax)))))));
        } else {
            Game.getCiv(i2).aiScore = 999876.0f;
        }
    }

    public static void buildScoreNumOfProvinces(int i, int i2, float f, float f2) {
        if (Game.getCiv(i2).getNumOfProvinces() > 0) {
            Game.getCiv(i2).aiScore = (f * Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID())) + ((f2 + (differentReligion(i, i2) ? Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_DISTANCE_SCORE_EXTRA_DIFFERENT_RELIGION : 0.0f)) * (1.0f - (Math.min(Game.getCiv(i).getNumOfProvinces(), Game.getCiv(i2).getNumOfProvinces()) / Math.max(Game.getCiv(i).getNumOfProvinces(), Game.getCiv(i2).getNumOfProvinces()))));
        } else {
            Game.getCiv(i2).aiScore = 999876.0f;
        }
    }

    public static boolean canBeAdded(int i, int i2) {
        return (Game.getCiv(i).diplomacy.isRival(i2) || Game.getCiv(i).diplomacy.isDamagingRelations(i2) || Game.getCiv(i).diplomacy.isImprovingRelations(i2) || DiplomacyManager.isAtWar(i, i2) || Game.getCiv(i).diplomacy.getRelation(i2) >= GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_MAX) ? false : true;
    }

    public static boolean differentGovernment(int i, int i2) {
        return Game.getCiv(i).getIdeologyID() != Game.getCiv(i2).getIdeologyID();
    }

    public static boolean differentReligion(int i, int i2) {
        return Game.getCiv(i).getReligionID() != Game.getCiv(i2).getReligionID();
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
    public static void updateRelations_Improve() {
        /*
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L45
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_RELATIONS     // Catch: java.lang.Exception -> L45
            int r0 = r0 % r1
            int r0 = r0 + 1
        L9:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L22
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L1c
            updateRelations_Improve(r0)     // Catch: java.lang.Exception -> L45
        L1c:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_RELATIONS     // Catch: java.lang.Exception -> L45
            int r0 = r0 + r1
            goto L9
        L22:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 != r1) goto L2d
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_RELATIONS     // Catch: java.lang.Exception -> L45
        L2c:
            int r0 = r0 + r1
        L2d:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L49
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L40
            updateRelations_Improve(r0)     // Catch: java.lang.Exception -> L45
        L40:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_RELATIONS     // Catch: java.lang.Exception -> L45
            goto L2c
        L45:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_RelationsImprove.updateRelations_Improve():void");
    }

    public static void updateRelations_Improve(int i) {
        Civilization civ = Game.getCiv(i);
        if (civ.diplomacy.iImprovingRelationsSize > 0) {
            if (Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_CLEAR_IMPROVE_RELATIONS_CHANCE) {
                civ.diplomacy.clearImproveRelations_AI(i);
            }
            if (civ.diplomacy.iImprovingRelationsSize >= Game.aiValuesDiplomacy.AI_LIMIT_IMPROVING_RELATIONS) {
                return;
            }
        }
        for (int i2 = 0; i2 < civ.diplomacy.iVassalsSize; i2++) {
            if (civ.diplomacy.getRelation(civ.diplomacy.lVassals.get(i2).c) < Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_WITH_VASSAL_IF_RELATIONS_BELOW) {
                addImproveRelations(i, civ.diplomacy.lVassals.get(i2).c);
            }
        }
        ArrayList arrayList = new ArrayList();
        if (Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_NEIGHBORS_OF_NEIGHBORS) {
            for (int i3 = 0; i3 < civ.civNeighbors.civsSize; i3++) {
                Civilization civ2 = Game.getCiv(civ.civNeighbors.civs.get(i3).civID);
                for (int i4 = 0; i4 < civ2.civNeighbors.civsSize; i4++) {
                    if (Game.getCiv(civ2.civNeighbors.civs.get(i4).civID).getNumOfProvinces() > 0 && !arrayList.contains(civ2.civNeighbors.civs.get(i4)) && civ2.civNeighbors.civs.get(i4).civID != i && canBeAdded(i, civ2.civNeighbors.civs.get(i4).civID)) {
                        arrayList.add(Integer.valueOf(civ2.civNeighbors.civs.get(i4).civID));
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                for (int iMin = Math.min(arrayList.size(), Game.aiValuesDiplomacy.AI_LIMIT_IMPROVING_RELATIONS - civ.diplomacy.iImprovingRelationsSize) - 1; iMin >= 0; iMin--) {
                    int iNextInt = Game.oR.nextInt(arrayList.size());
                    addImproveRelations(i, ((Integer) arrayList.get(iNextInt)).intValue());
                    arrayList.remove(iNextInt);
                }
                return;
            }
        }
        int iNextInt2 = Game.oR.nextInt(3);
        float fNextInt = Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_DISTANCE_SCORE + (Game.oR.nextInt(Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_DISTANCE_SCORE_RANDOM) / 100.0f);
        float fNextInt2 = Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_SECOND_SCORE + (Game.oR.nextInt(Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_SECOND_SCORE_RANDOM) / 100.0f);
        if (iNextInt2 == 0) {
            for (int i5 = 1; i5 < i; i5++) {
                buildScore(i, i5, fNextInt, fNextInt2);
            }
            for (int i6 = i + 1; i6 < Game.getCivsSize(); i6++) {
                buildScore(i, i6, fNextInt, fNextInt2);
            }
        } else if (iNextInt2 == 1) {
            for (int i7 = 1; i7 < i; i7++) {
                buildScoreManpower(i, i7, fNextInt, fNextInt2);
            }
            for (int i8 = i + 1; i8 < Game.getCivsSize(); i8++) {
                buildScoreManpower(i, i8, fNextInt, fNextInt2);
            }
        } else if (iNextInt2 == 2) {
            for (int i9 = 1; i9 < i; i9++) {
                buildScoreNumOfProvinces(i, i9, fNextInt, fNextInt2);
            }
            for (int i10 = i + 1; i10 < Game.getCivsSize(); i10++) {
                buildScoreNumOfProvinces(i, i10, fNextInt, fNextInt2);
            }
        }
        civ.aiScore = 9.9998768E7f;
        for (int i11 = ((Game.aiValuesDiplomacy.AI_LIMIT_IMPROVING_RELATIONS - civ.diplomacy.iImprovingRelationsSize) * 2) - 1; i11 >= 0; i11--) {
            int i12 = 1;
            for (int i13 = 2; i13 < Game.getCivsSize(); i13++) {
                if (Game.getCiv(i12).aiScore > Game.getCiv(i13).aiScore && !civ.diplomacy.isRival(i13) && !civ.diplomacy.isDamagingRelations(i13) && !civ.diplomacy.isImprovingRelations(i13) && civ.diplomacy.getRelation(i13) < GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_MAX) {
                    i12 = i13;
                }
            }
            if (i12 == i) {
                break;
            }
            if (civ.diplomacy.isRival(i12) || civ.diplomacy.isDamagingRelations(i12) || civ.diplomacy.isImprovingRelations(i12)) {
                if (Game.getCiv(i12).aiScore == 9.999832E7f) {
                    break;
                }
                Game.getCiv(i12).aiScore = 9.999832E7f;
            } else {
                if (Game.getCiv(i12).getNumOfProvinces() <= 0) {
                    break;
                }
                arrayList.add(Integer.valueOf(i12));
                Game.getCiv(i12).aiScore = 9.9998768E7f;
            }
        }
        if (Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_IMPROVE_RELATIONS_BEST_CIVS_RANDOMLY) {
            for (int iMin2 = Math.min(arrayList.size(), Game.aiValuesDiplomacy.AI_LIMIT_IMPROVING_RELATIONS - civ.diplomacy.iImprovingRelationsSize) - 1; iMin2 >= 0; iMin2--) {
                int iNextInt3 = Game.oR.nextInt(arrayList.size());
                addImproveRelations(i, ((Integer) arrayList.get(iNextInt3)).intValue());
                arrayList.remove(iNextInt3);
            }
        } else {
            for (int i14 = 0; i14 < Math.min(arrayList.size(), Game.aiValuesDiplomacy.AI_LIMIT_IMPROVING_RELATIONS - civ.diplomacy.iImprovingRelationsSize); i14++) {
                addImproveRelations(i, ((Integer) arrayList.get(i14)).intValue());
            }
        }
        arrayList.clear();
    }
}
