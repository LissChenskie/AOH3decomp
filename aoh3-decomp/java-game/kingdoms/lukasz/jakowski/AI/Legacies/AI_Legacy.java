package aoc.kingdoms.lukasz.jakowski.AI.Legacies;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.LegacyManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Legacy {
    public static void unlockLegacy(int i) {
        try {
            if (Game.getCiv(i).fLegacy > LegacyManager.minLegacyCost) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int iIntValue = 0;
                for (int i2 = 0; i2 < LegacyManager.iLegaciesSize; i2++) {
                    int legacyLevel = Game.getCiv(i).getLegacyLevel(i2);
                    if (legacyLevel >= 0) {
                        int i3 = legacyLevel + 1;
                        if (i3 < LegacyManager.legacies.get(i2).CostLegacy.length && LegacyManager.legacies.get(i2).CostLegacy[i3] < Game.getCiv(i).fLegacy) {
                            arrayList.add(Integer.valueOf(i2));
                            iIntValue += LegacyManager.legacies.get(i2).AI[i3];
                            arrayList2.add(Integer.valueOf(i3));
                        }
                    } else if (LegacyManager.legacies.get(i2).CostLegacy[0] < Game.getCiv(i).fLegacy) {
                        arrayList.add(Integer.valueOf(i2));
                        iIntValue += LegacyManager.legacies.get(i2).AI[0];
                        arrayList2.add(0);
                    }
                }
                if (arrayList.size() > 0) {
                    for (int i4 = 0; i4 < Game.aiValues.UNLOCK_LEGACIES; i4++) {
                        if (iIntValue > 0 && arrayList.size() > 0) {
                            int iNextInt = Game.oR.nextInt(iIntValue);
                            int size = arrayList.size();
                            int i5 = 0;
                            int i6 = 0;
                            while (true) {
                                if (i5 >= size) {
                                    i5 = 0;
                                    break;
                                }
                                i6 += LegacyManager.legacies.get(((Integer) arrayList.get(i5)).intValue()).AI[((Integer) arrayList2.get(i5)).intValue()];
                                if (iNextInt < i6) {
                                    break;
                                } else {
                                    i5++;
                                }
                            }
                            Game.getCiv(i).unlockLegacy(((Integer) arrayList.get(i5)).intValue());
                            iIntValue -= ((Integer) arrayList2.get(i5)).intValue();
                            arrayList.remove(i5);
                            arrayList2.remove(i5);
                        }
                    }
                }
                arrayList.clear();
                arrayList2.clear();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
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
    public static void updateCiv_Legacies() {
        /*
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L45
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_UNLOCK_LEGACY     // Catch: java.lang.Exception -> L45
            int r0 = r0 % r1
            int r0 = r0 + 1
        L9:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L22
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L1c
            unlockLegacy(r0)     // Catch: java.lang.Exception -> L45
        L1c:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_UNLOCK_LEGACY     // Catch: java.lang.Exception -> L45
            int r0 = r0 + r1
            goto L9
        L22:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 != r1) goto L2d
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_UNLOCK_LEGACY     // Catch: java.lang.Exception -> L45
        L2c:
            int r0 = r0 + r1
        L2d:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L49
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L40
            unlockLegacy(r0)     // Catch: java.lang.Exception -> L45
        L40:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_UNLOCK_LEGACY     // Catch: java.lang.Exception -> L45
            goto L2c
        L45:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.AI.Legacies.AI_Legacy.updateCiv_Legacies():void");
    }
}
