package aoc.kingdoms.lukasz.jakowski.AI.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_RelationsDamage {
    public static void buildScore(int i, int i2, float f) {
        if (Game.getCiv(i2).getNumOfProvinces() <= 0) {
            Game.getCiv(i2).aiScore = 999876.0f;
        } else if (Game.getCiv(i2).fTotalIncomePerMonth >= f) {
            Game.getCiv(i2).aiScore = 999876.0f;
        } else {
            Game.getCiv(i2).aiScore = Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID());
        }
    }

    public static void buildScoreManpower(int i, int i2, double d) {
        if (Game.getCiv(i2).getNumOfProvinces() <= 0) {
            Game.getCiv(i2).aiScore = 999876.0f;
        } else if (Game.getCiv(i2).fManpowerMax >= d) {
            Game.getCiv(i2).aiScore = 999876.0f;
        } else {
            Game.getCiv(i2).aiScore = Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID());
        }
    }

    public static void buildScoreRegiments(int i, int i2, float f) {
        if (Game.getCiv(i2).getNumOfProvinces() <= 0) {
            Game.getCiv(i2).aiScore = 999876.0f;
        } else if (Game.getCiv(i2).iRegiments >= f) {
            Game.getCiv(i2).aiScore = 999876.0f;
        } else {
            Game.getCiv(i2).aiScore = Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i2).getCapitalProvinceID());
        }
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
    public static void updateRelations_Damage() {
        /*
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L45
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_RELATIONS_DAMAGE     // Catch: java.lang.Exception -> L45
            int r0 = r0 % r1
            int r0 = r0 + 1
        L9:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L22
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L1c
            updateRelations_Damage(r0)     // Catch: java.lang.Exception -> L45
        L1c:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_RELATIONS_DAMAGE     // Catch: java.lang.Exception -> L45
            int r0 = r0 + r1
            goto L9
        L22:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 != r1) goto L2d
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_RELATIONS_DAMAGE     // Catch: java.lang.Exception -> L45
        L2c:
            int r0 = r0 + r1
        L2d:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L49
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L40
            updateRelations_Damage(r0)     // Catch: java.lang.Exception -> L45
        L40:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_RELATIONS_DAMAGE     // Catch: java.lang.Exception -> L45
            goto L2c
        L45:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_RelationsDamage.updateRelations_Damage():void");
    }

    public static void updateRelations_Damage(int i) {
        if (Game.getCiv(i).diplomacy.iImprovingRelationsSize > 0 && Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_CLEAR_DECREASE_RELATIONS_CHANCE) {
            Game.getCiv(i).diplomacy.clearDamageRelations_AI(i);
        }
        if (Game.aiValuesDiplomacy.AI_DAMAGE_RELATIONS_PRIORITIZE_TRIBAL && Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_DAMAGE_RELATIONS_PRIORITIZE_TRIBAL_CHANCE && !Game.ideologiesManager.getIdeology(Game.getCiv(i).getIdeologyID()).TRIBAL) {
            boolean z = false;
            for (int i2 = 0; i2 < Game.getCiv(i).civNeighbors.civsSize; i2++) {
                if (Game.ideologiesManager.getIdeology(Game.getCiv(Game.getCiv(i).civNeighbors.civs.get(i2).civID).getIdeologyID()).TRIBAL && Game.getCiv(Game.getCiv(i).civNeighbors.civs.get(i2).civID).getNumOfProvinces() > 0 && !DiplomacyManager.isAlly(i, Game.getCiv(i).civNeighbors.civs.get(i2).civID) && Game.getCiv(i).getResearchedTechnologies() > Game.getCiv(Game.getCiv(i).civNeighbors.civs.get(i2).civID).getResearchedTechnologies() && Game.getCiv(i).getNumOfProvinces() > Game.getCiv(Game.getCiv(i).civNeighbors.civs.get(i2).civID).getNumOfProvinces() && Game.getCiv(i).diplomacy.addDamageRelations(i, Game.getCiv(i).civNeighbors.civs.get(i2).civID)) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
        }
        if (Game.getCiv(i).diplomacy.iDamagingRelationsSize < Game.aiValuesDiplomacy.AI_LIMIT_DECREASING_RELATIONS) {
            int iNextInt = Game.oR.nextInt(3);
            if (iNextInt == 0) {
                float f = Game.getCiv(i).fTotalIncomePerMonth * Game.aiValuesDiplomacy.AI_DAMAGE_RELATIONS_INCOME_MODIFIER;
                for (int i3 = 1; i3 < i; i3++) {
                    buildScore(i, i3, f);
                }
                for (int i4 = i + 1; i4 < Game.getCivsSize(); i4++) {
                    buildScore(i, i4, f);
                }
            } else if (iNextInt == 1) {
                double d = Game.getCiv(i).fManpowerMax * ((double) Game.aiValuesDiplomacy.AI_DAMAGE_RELATIONS_MANPOWER_MODIFIER);
                for (int i5 = 1; i5 < i; i5++) {
                    buildScoreManpower(i, i5, d);
                }
                for (int i6 = i + 1; i6 < Game.getCivsSize(); i6++) {
                    buildScoreManpower(i, i6, d);
                }
            } else if (iNextInt == 2) {
                float f2 = Game.getCiv(i).iRegiments * Game.aiValuesDiplomacy.AI_DAMAGE_RELATIONS_REGIMENTS_MODIFIER;
                for (int i7 = 1; i7 < i; i7++) {
                    buildScoreRegiments(i, i7, f2);
                }
                for (int i8 = i + 1; i8 < Game.getCivsSize(); i8++) {
                    buildScoreRegiments(i, i8, f2);
                }
            }
            ArrayList arrayList = new ArrayList();
            Game.getCiv(i).aiScore = 9.9998768E7f;
            for (int i9 = 0; i9 < Game.getCiv(i).diplomacy.iVassalsSize; i9++) {
                Game.getCiv(Game.getCiv(i).diplomacy.lVassals.get(i9).c).aiScore = 9.9999968E7f;
            }
            for (int i10 = Game.aiValuesDiplomacy.AI_DAMAGE_RELATIONS_NUM_TO_CHOOSE_FROM - 1; i10 >= 0; i10--) {
                int i11 = 1;
                for (int i12 = 2; i12 < Game.getCivsSize(); i12++) {
                    if (Game.getCiv(i11).aiScore > Game.getCiv(i12).aiScore && !Game.getCiv(i).diplomacy.isDamagingRelations(i12) && !Game.getCiv(i).diplomacy.isImprovingRelations(i12) && Game.getCiv(i).diplomacy.getRelation(i12) > GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_MAX) {
                        i11 = i12;
                    }
                }
                if (i11 == i) {
                    break;
                }
                if (Game.getCiv(i).diplomacy.isDamagingRelations(i11) || Game.getCiv(i).diplomacy.isImprovingRelations(i11) || Game.getCiv(i).diplomacy.getRelation(i11) < GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_MAX) {
                    if (Game.getCiv(i11).aiScore == 9.999832E7f) {
                        break;
                    }
                    Game.getCiv(i11).aiScore = 9.999832E7f;
                } else {
                    if (Game.getCiv(i11).getNumOfProvinces() <= 0 || Game.getCiv(i11).aiScore >= 999800.0f) {
                        break;
                    }
                    arrayList.add(Integer.valueOf(i11));
                    Game.getCiv(i11).aiScore = 9.9998768E7f;
                }
            }
            for (int iMin = Math.min(arrayList.size(), Game.aiValuesDiplomacy.AI_LIMIT_DECREASING_RELATIONS - Game.getCiv(i).diplomacy.iDamagingRelationsSize) - 1; iMin >= 0; iMin--) {
                int iNextInt2 = Game.oR.nextInt(arrayList.size());
                Game.getCiv(i).diplomacy.addDamageRelations(i, ((Integer) arrayList.get(iNextInt2)).intValue());
                arrayList.remove(iNextInt2);
            }
            arrayList.clear();
        }
    }
}
