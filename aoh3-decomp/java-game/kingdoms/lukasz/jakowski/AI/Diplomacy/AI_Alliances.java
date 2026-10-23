package aoc.kingdoms.lukasz.jakowski.AI.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Alliances {
    public static boolean canBeAlly(int i, int i2) {
        return (Game.getCiv(i).diplomacy.isRival(i2) || Game.getCiv(i2).diplomacy.isRival(i) || Game.getCiv(i).aiCivDiplomacy.isPreparingForWarWithCivID(i2) || Game.getCiv(i2).aiCivDiplomacy.isPreparingForWarWithCivID(i) || Game.getCiv(i2).diplomacy.alliance.size() >= DiplomacyManager.getMaxNumberOfAlliances(i2) || Game.getCiv(i2).diplomacy.haveAlliance(i) || Game.getCiv(i2).getNumOfProvinces() <= 0 || DiplomacyManager.isAtWar(i, i2) || (Game.ENABLE_CALL_VASSALS && (Game.getCiv(i).getPuppetOfCivID() == i2 || Game.getCiv(i2).getPuppetOfCivID() == i))) ? false : true;
    }

    public static void findAlly(int i) {
        try {
            Game.getCiv(i).diplomacy.updateAlliance_ConqueredProvinces(i);
            if (Game.getCiv(i).diplomacy.alliance.size() + Game.getCiv(i).aiCivDiplomacy.p.size() >= DiplomacyManager.getMaxNumberOfAlliances(i)) {
                Game.getCiv(i).aiCivDiplomacy.clearPrepareForAlliance();
            }
            boolean z = true;
            if (!Game.getCiv(i).aiCivDiplomacy.p.isEmpty()) {
                for (int size = Game.getCiv(i).aiCivDiplomacy.p.size() - 1; size >= 0; size--) {
                    if (!canBeAlly(i, Game.getCiv(i).aiCivDiplomacy.p.get(size).c)) {
                        Game.getCiv(i).aiCivDiplomacy.p.remove(size);
                    } else if (Game.getCiv(i).aiCivDiplomacy.p.get(size).t < Game_Calendar.TURN_ID) {
                        Game.getCiv(i).aiCivDiplomacy.p.remove(size);
                    } else if (DiplomacyManager.isAlly_AllianceCheck(i, Game.getCiv(i).aiCivDiplomacy.p.get(size).c)) {
                        Game.getCiv(i).aiCivDiplomacy.p.remove(size);
                    } else if (!canBeAlly(i, Game.getCiv(i).aiCivDiplomacy.p.get(size).c)) {
                        Game.getCiv(i).aiCivDiplomacy.p.remove(size);
                    }
                }
            }
            if (!Game.getCiv(i).aiCivDiplomacy.p.isEmpty()) {
                if (Game.getCiv(i).fDiplomacy >= GameValues.diplomacy.DIPLOMACY_ALLIANCE_COST) {
                    for (int size2 = Game.getCiv(i).aiCivDiplomacy.p.size() - 1; size2 >= 0; size2--) {
                        sendAllianceProposal(i, Game.getCiv(i).aiCivDiplomacy.p.get(size2).c);
                    }
                }
                for (int size3 = Game.getCiv(i).aiCivDiplomacy.p.size() - 1; size3 >= 0; size3--) {
                    Game.getCiv(i).diplomacy.addImproveRelations(i, Game.getCiv(i).aiCivDiplomacy.p.get(size3).c);
                }
            }
            if (Game.getCiv(i).diplomacy.alliance.size() + Game.getCiv(i).aiCivDiplomacy.p.size() < DiplomacyManager.getMaxNumberOfAlliances(i)) {
                Civilization civ = Game.getCiv(i);
                ArrayList arrayList = new ArrayList();
                if (Game.oR.nextInt(100) >= Game.aiValuesDiplomacy.AI_ALLIANCE_NEIGH_OF_NEIGH_OF_NEIGH_CHANCE) {
                    z = false;
                }
                for (int i2 = 0; i2 < civ.civNeighbors.civsSize; i2++) {
                    int i3 = civ.civNeighbors.civs.get(i2).civID;
                    if (!arrayList.contains(Integer.valueOf(i3)) && canBeAlly(i, i3) && i3 != i) {
                        arrayList.add(Integer.valueOf(i3));
                    }
                    for (int i4 = 0; i4 < Game.getCiv(i3).civNeighbors.civsSize; i4++) {
                        if (!arrayList.contains(Integer.valueOf(Game.getCiv(i3).civNeighbors.civs.get(i4).civID)) && canBeAlly(i, Game.getCiv(i3).civNeighbors.civs.get(i4).civID) && Game.getCiv(i3).civNeighbors.civs.get(i4).civID != i) {
                            arrayList.add(Integer.valueOf(Game.getCiv(i3).civNeighbors.civs.get(i4).civID));
                        }
                        if (z) {
                            int i5 = Game.getCiv(i3).civNeighbors.civs.get(i4).civID;
                            for (int i6 = 0; i6 < Game.getCiv(i5).civNeighbors.civsSize; i6++) {
                                if (!arrayList.contains(Integer.valueOf(Game.getCiv(i5).civNeighbors.civs.get(i6).civID)) && canBeAlly(i, Game.getCiv(i5).civNeighbors.civs.get(i6).civID) && Game.getCiv(i5).civNeighbors.civs.get(i6).civID != i) {
                                    arrayList.add(Integer.valueOf(Game.getCiv(i5).civNeighbors.civs.get(i6).civID));
                                }
                            }
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                int iFindBestAlly = findBestAlly(i, arrayList);
                Game.getCiv(i).diplomacy.addImproveRelations(i, ((Integer) arrayList.get(iFindBestAlly)).intValue());
                Game.getCiv(i).aiCivDiplomacy.addPrepareForAlliance(((Integer) arrayList.get(iFindBestAlly)).intValue());
                sendAllianceProposal(i, ((Integer) arrayList.get(iFindBestAlly)).intValue());
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static float findAllyScore(int i, int i2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float distance_PercOfMax = (Game.getCiv(i).getCapitalProvinceID() < 0 || Game.getCiv(i2).getCapitalProvinceID() < 0) ? 100.0f : ((1.0f - Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID())) * Game.aiValuesDiplomacy.AI_ALLY_SCORE_DISTANCE) + 100.0f;
        if (Game.getCiv(i).getReligionID() == Game.getCiv(i2).getReligionID()) {
            f = Game.aiValuesDiplomacy.AI_ALLY_SCORE_RELIGION_THE_SAME;
        } else {
            f = Game.religionManager.getReligion(Game.getCiv(i).getReligionID()).ReligionGroupID == Game.religionManager.getReligion(Game.getCiv(i2).getReligionID()).ReligionGroupID ? Game.aiValuesDiplomacy.AI_ALLY_SCORE_RELIGION_THE_SAME_GROUP : Game.aiValuesDiplomacy.AI_ALLY_SCORE_RELIGION_DIFFERENT_GROUP;
        }
        float relation = distance_PercOfMax + f + ((Game.getCiv(i).diplomacy.getRelation(i2) / 100.0f) * Game.aiValuesDiplomacy.AI_ALLY_SCORE_RELATIONS);
        if (Game.getCiv(i).getIdeologyID() == Game.getCiv(i2).getIdeologyID()) {
            f2 = Game.aiValuesDiplomacy.AI_ALLY_SCORE_GOVERNMENT_THE_SAME;
        } else {
            f2 = Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).GOV_GROUP_ID == Game.ideologiesManager.getIdeology(Game.getCiv(i2).getIdeologyID()).GOV_GROUP_ID ? Game.aiValuesDiplomacy.AI_ALLY_SCORE_GOVERNMENT_THE_SAME_GROUP : Game.aiValuesDiplomacy.AI_ALLY_SCORE_GOVERNMENT_DIFFERENT_GROUP;
        }
        float f6 = relation + f2;
        if (Game.aiValuesDiplomacy.AI_ALLY_SCORE_RANK_SCORE > 0.0f) {
            if (Game.getCiv(i).iCivRankScore > Game.getCiv(i2).iCivRankScore) {
                f3 = Game.aiValuesDiplomacy.AI_ALLY_SCORE_RANK_SCORE;
                f4 = Game.getCiv(i2).iCivRankScore;
                f5 = Game.getCiv(i).iCivRankScore;
            } else {
                f3 = Game.aiValuesDiplomacy.AI_ALLY_SCORE_RANK_SCORE;
                f4 = Game.getCiv(i).iCivRankScore;
                f5 = Game.getCiv(i2).iCivRankScore;
            }
            f6 += f3 * (f4 / f5);
        }
        return (Game.aiValuesDiplomacy.AI_ALLY_SCORE_HAVE_THE_SAME_RIVAL <= 0.0f || !Game.getCiv(i).diplomacy.haveTheSameRival(i, i2)) ? f6 : f6 + Game.aiValuesDiplomacy.AI_ALLY_SCORE_HAVE_THE_SAME_RIVAL;
    }

    public static int findBestAlly(int i, List<Integer> list) {
        int i2 = 0;
        float fFindAllyScore = findAllyScore(i, list.get(0).intValue());
        for (int size = list.size() - 1; size > 0; size--) {
            float fFindAllyScore2 = findAllyScore(i, list.get(size).intValue());
            if (fFindAllyScore2 > fFindAllyScore) {
                i2 = size;
                fFindAllyScore = fFindAllyScore2;
            }
        }
        return i2;
    }

    public static boolean sendAllianceProposal(int i, int i2) {
        if (Game.getCiv(i).fDiplomacy < GameValues.diplomacy.DIPLOMACY_ALLIANCE_COST || DiplomacyManager.getAlliance_Score(i, i2) < 0) {
            return false;
        }
        DiplomacyManager.offerAlliance(i, i2);
        return true;
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
    public static final void update() {
        /*
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L45
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_DIPLOMACY_ALLIANCES     // Catch: java.lang.Exception -> L45
            int r0 = r0 % r1
            int r0 = r0 + 1
        L9:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L22
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L1c
            update(r0)     // Catch: java.lang.Exception -> L45
        L1c:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_DIPLOMACY_ALLIANCES     // Catch: java.lang.Exception -> L45
            int r0 = r0 + r1
            goto L9
        L22:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 != r1) goto L2d
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_DIPLOMACY_ALLIANCES     // Catch: java.lang.Exception -> L45
        L2c:
            int r0 = r0 + r1
        L2d:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L49
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L40
            update(r0)     // Catch: java.lang.Exception -> L45
        L40:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_DIPLOMACY_ALLIANCES     // Catch: java.lang.Exception -> L45
            goto L2c
        L45:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_Alliances.update():void");
    }

    public static final void update(int i) {
        if (Game.getCiv(i).diplomacy.alliance.isEmpty()) {
            findAlly(i);
        }
    }
}
