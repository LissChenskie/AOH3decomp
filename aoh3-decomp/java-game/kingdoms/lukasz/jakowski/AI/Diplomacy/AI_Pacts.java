package aoc.kingdoms.lukasz.jakowski.AI.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Pacts {
    public static boolean canSignPact(int i, int i2) {
        return (Game.getCiv(i).diplomacy.getRelation(i2) < Game.aiValuesDiplomacy.AI_SIGN_PACT_MIN_RELATIONS || DiplomacyManager.isAlly_AllianceCheck(i, i2) || Game.getCiv(i).diplomacy.isRival(i2) || Game.getCiv(i2).diplomacy.isRival(i) || Game.getCiv(i).diplomacy.isDamagingRelations(i2) || Game.getCiv(i).diplomacy.haveDefensivePact(i2) || Game.getCiv(i).diplomacy.haveNonAggressionPact(i2) || Game.getCiv(i).aiCivDiplomacy.isPreparingForWarWithCivID(i2) || Game.getCiv(i2).aiCivDiplomacy.isPreparingForWarWithCivID(i) || Game.getCiv(i).aiCivDiplomacy.isPreparingForAllianceWithCivID(i2) || Game.getCiv(i2).aiCivDiplomacy.isPreparingForAllianceWithCivID(i)) ? false : true;
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
            int r1 = r1.GAME_UPDATE_AI_DIPLOMACY_PACTS     // Catch: java.lang.Exception -> L45
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
            int r1 = r1.GAME_UPDATE_AI_DIPLOMACY_PACTS     // Catch: java.lang.Exception -> L45
            int r0 = r0 + r1
            goto L9
        L22:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 != r1) goto L2d
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_DIPLOMACY_PACTS     // Catch: java.lang.Exception -> L45
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
            int r1 = r1.GAME_UPDATE_AI_DIPLOMACY_PACTS     // Catch: java.lang.Exception -> L45
            goto L2c
        L45:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_Pacts.update():void");
    }

    public static final void update(int i) {
        if (!Game.getCiv(i).diplomacy.isAtWar() && Game.getCiv(i).diplomacy.defensivePact.size() + Game.getCiv(i).diplomacy.nonAggressionPact.size() < Game.aiValuesDiplomacy.AI_SIGN_PACT_DEFENSIVE_NON_AGGRESSION_LIMIT && Game.getCiv(i).fDiplomacy >= GameValues.diplomacy.DIPLOMACY_DEFENSIVE_PACT_COST && Game.getCiv(i).civNeighbors.civsSize > 0) {
            Civilization civ = Game.getCiv(i);
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            for (int i3 = 0; i3 < civ.civNeighbors.civsSize; i3++) {
                if (canSignPact(i, civ.civNeighbors.civs.get(i3).civID)) {
                    arrayList.add(Integer.valueOf(civ.civNeighbors.civs.get(i3).civID));
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            for (int size = arrayList.size() - 1; size > 0; size--) {
                if (civ.diplomacy.getRelation(((Integer) arrayList.get(i2)).intValue()) < civ.diplomacy.getRelation(((Integer) arrayList.get(size)).intValue())) {
                    i2 = size;
                }
            }
            if (Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_SIGN_PACT_DEFENSIVE_CHANCE) {
                if (DiplomacyManager.getDefensivePact_Score(i, ((Integer) arrayList.get(i2)).intValue()) >= 0) {
                    DiplomacyManager.offerDefensivePact(i, ((Integer) arrayList.get(i2)).intValue());
                }
            } else if (DiplomacyManager.getNonAggression_Score(i, ((Integer) arrayList.get(i2)).intValue()) >= 0) {
                DiplomacyManager.offerNonAggressionPact(i, ((Integer) arrayList.get(i2)).intValue());
            }
        }
    }
}
