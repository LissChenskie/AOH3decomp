package aoc.kingdoms.lukasz.jakowski.AI.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_DeclareWar {
    /* JADX WARN: Code duplicated, block: B:26:0x0094  */
    /* JADX WARN: Code duplicated, block: B:30:0x0037 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:? A[RETURN, SYNTHETIC] */
    public static final boolean checkRegiments_ForWar(int i, int i2) {
        int armyRegimentSize;
        int armyRegimentSize2;
        int armyRegimentSize3;
        int iMax;
        int size;
        List<Integer> listDeclareWar_AlliesAttacker = DiplomacyManager.declareWar_AlliesAttacker(i, i2);
        List<Integer> listDeclareWar_AlliesDefender = DiplomacyManager.declareWar_AlliesDefender(i2, i);
        try {
            armyRegimentSize = 0;
            for (int size2 = listDeclareWar_AlliesAttacker.size() - 1; size2 >= 0; size2--) {
                try {
                    armyRegimentSize += Game.getCiv(listDeclareWar_AlliesAttacker.get(size2).intValue()).getArmyRegimentSize();
                } catch (Exception e) {
                    e = e;
                    CFG.exceptionStack(e);
                    armyRegimentSize2 = 0;
                    for (size = listDeclareWar_AlliesDefender.size() - 1; size >= 0; size--) {
                        try {
                            armyRegimentSize2 += Game.getCiv(listDeclareWar_AlliesDefender.get(size).intValue()).getArmyRegimentSize();
                        } catch (Exception e2) {
                            e = e2;
                            CFG.exceptionStack(e);
                            int i3 = (int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER);
                            int i4 = (int) (armyRegimentSize2 * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER_DEFENDERS);
                            armyRegimentSize3 = i3 + Game.getCiv(i).getArmyRegimentSize();
                            iMax = i4 + ((int) (Math.max(Game.getCiv(i2).iRegimentsLimit * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_LIMIT_MODIFIER, Game.getCiv(i2).getArmyRegimentSize()) * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_MODIFIER));
                            listDeclareWar_AlliesAttacker.clear();
                            listDeclareWar_AlliesDefender.clear();
                            if (armyRegimentSize3 >= iMax) {
                                return true;
                            }
                            return false;
                        }
                    }
                    int i5 = (int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER);
                    int i6 = (int) (armyRegimentSize2 * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER_DEFENDERS);
                    armyRegimentSize3 = i5 + Game.getCiv(i).getArmyRegimentSize();
                    iMax = i6 + ((int) (Math.max(Game.getCiv(i2).iRegimentsLimit * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_LIMIT_MODIFIER, Game.getCiv(i2).getArmyRegimentSize()) * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_MODIFIER));
                    listDeclareWar_AlliesAttacker.clear();
                    listDeclareWar_AlliesDefender.clear();
                    if (armyRegimentSize3 >= iMax) {
                        return true;
                    }
                    return false;
                }
            }
        } catch (Exception e3) {
            e = e3;
            armyRegimentSize = 0;
        }
        try {
            armyRegimentSize2 = 0;
            while (size >= 0) {
                armyRegimentSize2 += Game.getCiv(listDeclareWar_AlliesDefender.get(size).intValue()).getArmyRegimentSize();
            }
        } catch (Exception e4) {
            e = e4;
            armyRegimentSize2 = 0;
        }
        int i7 = (int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER);
        int i8 = (int) (armyRegimentSize2 * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER_DEFENDERS);
        armyRegimentSize3 = i7 + Game.getCiv(i).getArmyRegimentSize();
        iMax = i8 + ((int) (Math.max(Game.getCiv(i2).iRegimentsLimit * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_LIMIT_MODIFIER, Game.getCiv(i2).getArmyRegimentSize()) * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_MODIFIER));
        listDeclareWar_AlliesAttacker.clear();
        listDeclareWar_AlliesDefender.clear();
        if (armyRegimentSize3 >= iMax) {
            return true;
        }
        return false;
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
    public static final void declareWar() {
        /*
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L45
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_DECLARE_WAR     // Catch: java.lang.Exception -> L45
            int r0 = r0 % r1
            int r0 = r0 + 1
        L9:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L22
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L1c
            declareWar(r0)     // Catch: java.lang.Exception -> L45
        L1c:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_DECLARE_WAR     // Catch: java.lang.Exception -> L45
            int r0 = r0 + r1
            goto L9
        L22:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 != r1) goto L2d
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_DECLARE_WAR     // Catch: java.lang.Exception -> L45
        L2c:
            int r0 = r0 + r1
        L2d:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L49
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L40
            declareWar(r0)     // Catch: java.lang.Exception -> L45
        L40:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_DECLARE_WAR     // Catch: java.lang.Exception -> L45
            goto L2c
        L45:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_DeclareWar.declareWar():void");
    }

    public static final void declareWar(int i) {
        int i2;
        if (Game.getCiv(i).fGold < Game.aiValuesDiplomacy.AI_DECLARE_WAR_ONLY_IF_GOLD_OVER) {
            Game.getCiv(i).aiCivDiplomacy.clearPrepareForWar();
            return;
        }
        if (!Game.getCiv(i).diplomacy.isAtWar() || Game.aiValuesDiplomacy.AI_CAN_DECLARE_WAR_IF_AT_WAR) {
            if (!Game.getCiv(i).aiCivDiplomacy.w.isEmpty()) {
                for (int size = Game.getCiv(i).aiCivDiplomacy.w.size() - 1; size >= 0; size--) {
                    if (Game.getCiv(Game.getCiv(i).aiCivDiplomacy.w.get(size).c).getNumOfProvinces() <= 0 || AI_PrepareForWar.isCivAlly(i, Game.getCiv(i).aiCivDiplomacy.w.get(size).c)) {
                        Game.getCiv(i).aiCivDiplomacy.w.remove(size);
                    }
                }
            }
            if (Game.getCiv(i).civStability_LostFrom100 <= Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_ONLY_IF_CIV_STABILITY_IS_BELOW_100 && Game.getCiv(i).getAggressiveExpansion() <= Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_ONLY_IF_AE_IS_BELOW && Game.getCiv(i).fManpower / Game.getCiv(i).fManpowerMax >= Game.aiValuesDiplomacy.AI_DECLARE_WAR_ONLY_IF_MANPOWER_PERC_OVER && !Game.getCiv(i).aiCivDiplomacy.w.isEmpty()) {
                int i3 = 0;
                while (i3 < Math.min(Game.aiValuesDiplomacy.AI_DECLARE_WARS_LIMIT_PER_UPDATE, Game.getCiv(i).aiCivDiplomacy.w.size()) && !Game.getCiv(i).aiCivDiplomacy.w.isEmpty()) {
                    if (Game.getCiv(Game.getCiv(i).aiCivDiplomacy.w.get(i3).c).getNumOfProvinces() == 0) {
                        Game.getCiv(i).aiCivDiplomacy.w.remove(i3);
                        AI_PrepareForWar.prepareForWar(i, Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_RANDOM_MAX / 2);
                    } else if (Game_Calendar.TURN_ID >= Game.getCiv(i).aiCivDiplomacy.w.get(i3).t) {
                        if (Game.getCiv(i).diplomacy.getRelation(Game.getCiv(i).aiCivDiplomacy.w.get(i3).c) <= GameValues.war.RELATIONS_TO_DECLARE_WAR) {
                            if (declareWar(i, Game.getCiv(i).aiCivDiplomacy.w.get(i3).c)) {
                                i2 = i3 - 1;
                                Game.getCiv(i).aiCivDiplomacy.w.remove(i3);
                            } else {
                                i2 = i3 - 1;
                                Game.getCiv(i).aiCivDiplomacy.w.remove(i3);
                                AI_PrepareForWar.prepareForWar(i, Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_RANDOM_MAX / 2);
                            }
                            i3 = i2;
                        } else {
                            Game.getCiv(i).diplomacy.addDamageRelations(i, Game.getCiv(i).aiCivDiplomacy.w.get(i3).c);
                            if (Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_SEND_INSULT_CHANCE) {
                                DiplomacyManager.sendInsult(i, Game.getCiv(i).aiCivDiplomacy.w.get(i3).c);
                            }
                        }
                    }
                    i3++;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:43:0x0050 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static final boolean declareWar(int i, int i2) {
        int armyRegimentSize;
        int armyRegimentSize2;
        int size;
        List<Integer> listDeclareWar_AlliesAttacker = DiplomacyManager.declareWar_AlliesAttacker(i, i2);
        List<Integer> listDeclareWar_AlliesDefender = DiplomacyManager.declareWar_AlliesDefender(i2, i);
        try {
            armyRegimentSize = 0;
            for (int size2 = listDeclareWar_AlliesAttacker.size() - 1; size2 >= 0; size2--) {
                try {
                    if (listDeclareWar_AlliesAttacker.get(size2).intValue() != i && listDeclareWar_AlliesAttacker.get(size2).intValue() != i2) {
                        armyRegimentSize += Game.getCiv(listDeclareWar_AlliesAttacker.get(size2).intValue()).getArmyRegimentSize();
                    }
                } catch (Exception e) {
                    e = e;
                    CFG.exceptionStack(e);
                    armyRegimentSize2 = 0;
                    while (size >= 0) {
                        try {
                            if (listDeclareWar_AlliesDefender.get(size).intValue() == i) {
                            }
                        } catch (Exception e2) {
                            e = e2;
                            CFG.exceptionStack(e);
                            if (((int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER)) + Game.getCiv(i).getArmyRegimentSize() >= ((int) (armyRegimentSize2 * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER_DEFENDERS)) + ((int) (Game.getCiv(i2).getArmyRegimentSize() * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_MODIFIER))) {
                                return DiplomacyManager.declareWar(i, i2, false, listDeclareWar_AlliesAttacker);
                            }
                            listDeclareWar_AlliesAttacker.clear();
                            listDeclareWar_AlliesDefender.clear();
                            return false;
                        }
                    }
                    if (((int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER)) + Game.getCiv(i).getArmyRegimentSize() >= ((int) (armyRegimentSize2 * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER_DEFENDERS)) + ((int) (Game.getCiv(i2).getArmyRegimentSize() * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_MODIFIER))) {
                        return DiplomacyManager.declareWar(i, i2, false, listDeclareWar_AlliesAttacker);
                    }
                    listDeclareWar_AlliesAttacker.clear();
                    listDeclareWar_AlliesDefender.clear();
                    return false;
                }
            }
        } catch (Exception e3) {
            e = e3;
            armyRegimentSize = 0;
        }
        try {
            armyRegimentSize2 = 0;
            for (size = listDeclareWar_AlliesDefender.size() - 1; size >= 0; size--) {
                if (listDeclareWar_AlliesDefender.get(size).intValue() == i && listDeclareWar_AlliesDefender.get(size).intValue() != i2) {
                    armyRegimentSize2 += Game.getCiv(listDeclareWar_AlliesDefender.get(size).intValue()).getArmyRegimentSize();
                }
            }
        } catch (Exception e4) {
            e = e4;
            armyRegimentSize2 = 0;
        }
        if (((int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER)) + Game.getCiv(i).getArmyRegimentSize() >= ((int) (armyRegimentSize2 * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER_DEFENDERS)) + ((int) (Game.getCiv(i2).getArmyRegimentSize() * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_MODIFIER))) {
            return DiplomacyManager.declareWar(i, i2, false, listDeclareWar_AlliesAttacker);
        }
        listDeclareWar_AlliesAttacker.clear();
        listDeclareWar_AlliesDefender.clear();
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x007e A[Catch: Exception -> 0x008a, TryCatch #3 {Exception -> 0x008a, blocks: (B:3:0x0001, B:24:0x0055, B:26:0x007e, B:28:0x0083, B:23:0x0052, B:13:0x002c), top: B:39:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0083 A[Catch: Exception -> 0x008a, TRY_LEAVE, TryCatch #3 {Exception -> 0x008a, blocks: (B:3:0x0001, B:24:0x0055, B:26:0x007e, B:28:0x0083, B:23:0x0052, B:13:0x002c), top: B:39:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static final boolean declareWar_CheckRegiments(int i, int i2) {
        int armyRegimentSize;
        int armyRegimentSize2;
        int size;
        try {
            List<Integer> listDeclareWar_AlliesAttacker = DiplomacyManager.declareWar_AlliesAttacker(i, i2);
            List<Integer> listDeclareWar_AlliesDefender = DiplomacyManager.declareWar_AlliesDefender(i2, i);
            try {
                armyRegimentSize = 0;
                for (int size2 = listDeclareWar_AlliesAttacker.size() - 1; size2 >= 0; size2--) {
                    try {
                        armyRegimentSize += Game.getCiv(listDeclareWar_AlliesAttacker.get(size2).intValue()).getArmyRegimentSize();
                    } catch (Exception e) {
                        e = e;
                        CFG.exceptionStack(e);
                        armyRegimentSize2 = 0;
                        for (size = listDeclareWar_AlliesDefender.size() - 1; size >= 0; size--) {
                            try {
                                armyRegimentSize2 += Game.getCiv(listDeclareWar_AlliesDefender.get(size).intValue()).getArmyRegimentSize();
                            } catch (Exception e2) {
                                e = e2;
                                CFG.exceptionStack(e);
                                if (((int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER)) + Game.getCiv(i).getArmyRegimentSize() >= ((int) (armyRegimentSize2 * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER_DEFENDERS)) + ((int) (Game.getCiv(i2).getArmyRegimentSize() * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_MODIFIER))) {
                                    return DiplomacyManager.declareWar(i, i2, false, listDeclareWar_AlliesAttacker);
                                }
                                listDeclareWar_AlliesAttacker.clear();
                                listDeclareWar_AlliesDefender.clear();
                                return false;
                            }
                        }
                        if (((int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER)) + Game.getCiv(i).getArmyRegimentSize() >= ((int) (armyRegimentSize2 * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER_DEFENDERS)) + ((int) (Game.getCiv(i2).getArmyRegimentSize() * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_MODIFIER))) {
                            return DiplomacyManager.declareWar(i, i2, false, listDeclareWar_AlliesAttacker);
                        }
                        listDeclareWar_AlliesAttacker.clear();
                        listDeclareWar_AlliesDefender.clear();
                        return false;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                armyRegimentSize = 0;
            }
            try {
                armyRegimentSize2 = 0;
                while (size >= 0) {
                    armyRegimentSize2 += Game.getCiv(listDeclareWar_AlliesDefender.get(size).intValue()).getArmyRegimentSize();
                }
            } catch (Exception e4) {
                e = e4;
                armyRegimentSize2 = 0;
            }
            if (((int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER)) + Game.getCiv(i).getArmyRegimentSize() >= ((int) (armyRegimentSize2 * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER_DEFENDERS)) + ((int) (Game.getCiv(i2).getArmyRegimentSize() * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_MODIFIER))) {
                return DiplomacyManager.declareWar(i, i2, false, listDeclareWar_AlliesAttacker);
            }
            listDeclareWar_AlliesAttacker.clear();
            listDeclareWar_AlliesDefender.clear();
            return false;
        } catch (Exception e5) {
            CFG.exceptionStack(e5);
        }
    }

    public static final int declareWar_CheckRegiments_Attacker(int i, int i2) {
        int armyRegimentSize;
        try {
            List<Integer> listDeclareWar_AlliesAttacker = DiplomacyManager.declareWar_AlliesAttacker(i, i2);
            try {
                armyRegimentSize = 0;
                for (int size = listDeclareWar_AlliesAttacker.size() - 1; size >= 0; size--) {
                    try {
                        armyRegimentSize += Game.getCiv(listDeclareWar_AlliesAttacker.get(size).intValue()).getArmyRegimentSize();
                    } catch (Exception e) {
                        e = e;
                        CFG.exceptionStack(e);
                        return ((int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER)) + Game.getCiv(i).getArmyRegimentSize();
                    }
                }
            } catch (Exception e2) {
                e = e2;
                armyRegimentSize = 0;
            }
            return ((int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER)) + Game.getCiv(i).getArmyRegimentSize();
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
            return 0;
        }
    }

    public static final int declareWar_CheckRegiments_Defender(int i, int i2) {
        int armyRegimentSize;
        try {
            List<Integer> listDeclareWar_AlliesDefender = DiplomacyManager.declareWar_AlliesDefender(i2, i);
            try {
                armyRegimentSize = 0;
                for (int size = listDeclareWar_AlliesDefender.size() - 1; size >= 0; size--) {
                    try {
                        armyRegimentSize += Game.getCiv(listDeclareWar_AlliesDefender.get(size).intValue()).getArmyRegimentSize();
                    } catch (Exception e) {
                        e = e;
                        CFG.exceptionStack(e);
                        return ((int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER_DEFENDERS)) + ((int) (Game.getCiv(i2).getArmyRegimentSize() * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_MODIFIER));
                    }
                }
            } catch (Exception e2) {
                e = e2;
                armyRegimentSize = 0;
            }
            return ((int) (armyRegimentSize * Game.aiValuesDiplomacy.AI_DECLARE_WAR_ALLIES_REGIMENTS_MODIFIER_DEFENDERS)) + ((int) (Game.getCiv(i2).getArmyRegimentSize() * Game.aiValuesDiplomacy.AI_DECLARE_WAR_DEFENDER_REGIMENTS_MODIFIER));
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
            return 0;
        }
    }
}
