package aoc.kingdoms.lukasz.jakowski.AI;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Missions.MissionTree;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Missions {
    /* JADX WARN: Code duplicated, block: B:15:0x0033 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x000f, B:7:0x0019, B:8:0x001c, B:9:0x0022, B:11:0x0028, B:12:0x002c, B:13:0x002d, B:15:0x0033, B:17:0x003d, B:18:0x0040), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003d A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x000f, B:7:0x0019, B:8:0x001c, B:9:0x0022, B:11:0x0028, B:12:0x002c, B:13:0x002d, B:15:0x0033, B:17:0x003d, B:18:0x0040), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0040 A[Catch: Exception -> 0x0045, TRY_LEAVE, TryCatch #0 {Exception -> 0x0045, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x000f, B:7:0x0019, B:8:0x001c, B:9:0x0022, B:11:0x0028, B:12:0x002c, B:13:0x002d, B:15:0x0033, B:17:0x003d, B:18:0x0040), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:29:? A[RETURN, SYNTHETIC] */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public static final void updateMissions() {
        /*
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L45
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_MISSIONS     // Catch: java.lang.Exception -> L45
            int r0 = r0 % r1
            int r0 = r0 + 1
        L9:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L22
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L1c
            updateMissions(r0)     // Catch: java.lang.Exception -> L45
        L1c:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_MISSIONS     // Catch: java.lang.Exception -> L45
            int r0 = r0 + r1
            goto L9
        L22:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 != r1) goto L2d
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_MISSIONS     // Catch: java.lang.Exception -> L45
        L2c:
            int r0 = r0 + r1
        L2d:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L49
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L40
            updateMissions(r0)     // Catch: java.lang.Exception -> L45
        L40:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_MISSIONS     // Catch: java.lang.Exception -> L45
            goto L2c
        L45:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.AI.AI_Missions.updateMissions():void");
    }

    public static final void updateMissions(int i) {
        int i2;
        int i3;
        try {
            if (Game.getCiv(i).iMissionsSize > 0) {
                for (int i4 = 0; i4 < Game.getCiv(i).iMissionsSize; i4++) {
                    if (MissionTree.canRunMission_Civ(i, i4) && Game.getCiv(i).lMissions.get(i4).event.options.size() > 0) {
                        int i5 = 0;
                        for (int i6 = 0; i6 < Game.getCiv(i).lMissions.get(i4).event.options.size(); i6++) {
                            i5 = (int) (i5 + Game.getCiv(i).lMissions.get(i4).event.options.get(i6).ai);
                        }
                        if (i5 <= 0) {
                            i3 = 0;
                            break;
                        }
                        int iNextInt = Game.oR.nextInt(i5);
                        i3 = 0;
                        while (true) {
                            if (i3 >= Game.getCiv(i).lMissions.get(i4).event.options.size()) {
                                i3 = 0;
                                break;
                            } else if (iNextInt <= 0 + Game.getCiv(i).lMissions.get(i4).event.options.get(i3).ai) {
                                break;
                            } else {
                                i3++;
                            }
                        }
                        Game.getCiv(i).eventsDataVariables.addVariable(Game.getCiv(i).lMissions.get(i4).event.id);
                        Game.getCiv(i).lMissions.get(i4).event.options.get(i3).executeOutcome(i);
                    }
                }
                return;
            }
            for (int i7 = 0; i7 < MissionTree.iMissionsSize; i7++) {
                if (MissionTree.canRunMission(i, i7) && MissionTree.lMissions.get(i7).event.options.size() > 0) {
                    int i8 = 0;
                    for (int i9 = 0; i9 < MissionTree.lMissions.get(i7).event.options.size(); i9++) {
                        i8 = (int) (i8 + MissionTree.lMissions.get(i7).event.options.get(i9).ai);
                    }
                    if (i8 <= 0) {
                        i2 = 0;
                        break;
                    }
                    int iNextInt2 = Game.oR.nextInt(i8);
                    i2 = 0;
                    while (true) {
                        if (i2 >= MissionTree.lMissions.get(i7).event.options.size()) {
                            i2 = 0;
                            break;
                        } else if (iNextInt2 <= 0 + MissionTree.lMissions.get(i7).event.options.get(i2).ai) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                    Game.getCiv(i).eventsDataVariables.addVariable(MissionTree.lMissions.get(i7).event.id);
                    MissionTree.lMissions.get(i7).event.options.get(i2).executeOutcome(i);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
