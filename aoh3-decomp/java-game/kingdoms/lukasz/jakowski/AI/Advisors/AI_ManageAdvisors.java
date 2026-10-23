package aoc.kingdoms.lukasz.jakowski.AI.Advisors;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.civilization.CivilizationAdvisorsPool;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_ManageAdvisors {
    public static boolean recruitAdvisor(int i, int i2) {
        if (Game.getCiv(i).fGold < AdvisorManager.getRecruitGoldCost(i) || Game.getCiv(i).fLegacy < AdvisorManager.getRecruitCostLegacy(i)) {
            return false;
        }
        Game.getCiv(i).fGold -= AdvisorManager.getRecruitGoldCost(i);
        Game.getCiv(i).fLegacy -= AdvisorManager.getRecruitCostLegacy(i);
        Game.getCiv(i).eventsData3.addRecruitedAdvisors(1);
        if (i == Game.player.iCivID) {
            Game.stats.civStats.ra++;
        }
        if (i2 == 0) {
            Game.getCiv(i).advisorAdministration = CivilizationAdvisorsPool.generateAdvisor_Random(i, i2);
            AdvisorManager advisorManager = Game.advisorManager;
            AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorAdministration, i, 1);
        } else if (i2 == 1) {
            Game.getCiv(i).advisorEconomy = CivilizationAdvisorsPool.generateAdvisor_Random(i, i2);
            AdvisorManager advisorManager2 = Game.advisorManager;
            AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorEconomy, i, 1);
        } else if (i2 != 2) {
            Game.getCiv(i).advisorMilitary = CivilizationAdvisorsPool.generateAdvisor_Random(i, i2);
            AdvisorManager advisorManager3 = Game.advisorManager;
            AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorMilitary, i, 1);
        } else {
            Game.getCiv(i).advisorTechnology = CivilizationAdvisorsPool.generateAdvisor_Random(i, i2);
            AdvisorManager advisorManager4 = Game.advisorManager;
            AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorTechnology, i, 1);
        }
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
    public static void updateAdvisors() {
        /*
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L45
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_RECRUIT_ADVISORS     // Catch: java.lang.Exception -> L45
            int r0 = r0 % r1
            int r0 = r0 + 1
        L9:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L22
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L1c
            updateAdvisors(r0)     // Catch: java.lang.Exception -> L45
        L1c:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_RECRUIT_ADVISORS     // Catch: java.lang.Exception -> L45
            int r0 = r0 + r1
            goto L9
        L22:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L45
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L45
            if (r0 != r1) goto L2d
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_RECRUIT_ADVISORS     // Catch: java.lang.Exception -> L45
        L2c:
            int r0 = r0 + r1
        L2d:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L45
            if (r0 >= r1) goto L49
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L45
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L45
            if (r1 <= 0) goto L40
            updateAdvisors(r0)     // Catch: java.lang.Exception -> L45
        L40:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L45
            int r1 = r1.GAME_UPDATE_AI_RECRUIT_ADVISORS     // Catch: java.lang.Exception -> L45
            goto L2c
        L45:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.AI.Advisors.AI_ManageAdvisors.updateAdvisors():void");
    }

    public static void updateAdvisors(int i) {
        Civilization civ = Game.getCiv(i);
        if (civ.fGold <= GameValues.advisors.RECRUIT_ADVISOR_GOLD_COST || civ.fLegacy <= GameValues.advisors.RECRUIT_ADVISOR_LEGACY_COST) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (civ.advisorAdministration.sName == null) {
            arrayList.add(0);
        }
        if (civ.advisorEconomy.sName == null) {
            arrayList.add(1);
        }
        if (civ.advisorTechnology.sName == null) {
            arrayList.add(2);
        }
        if (civ.advisorMilitary.sName == null) {
            arrayList.add(3);
        }
        while (arrayList.size() > 0) {
            int iNextInt = Game.oR.nextInt(arrayList.size());
            if (!recruitAdvisor(i, ((Integer) arrayList.get(iNextInt)).intValue())) {
                break;
            } else {
                arrayList.remove(iNextInt);
            }
        }
        arrayList.clear();
        if (civ.fGold > GameValues.advisors.ADVISOR_PROMOTE_COST_PER_LEVEL * 2.0f) {
            if (civ.advisorAdministration.iLevel < AdvisorManager.getAdvisorMaxLevel(i)) {
                arrayList.add(0);
            }
            if (civ.advisorEconomy.iLevel < AdvisorManager.getAdvisorMaxLevel(i)) {
                arrayList.add(1);
            }
            if (civ.advisorTechnology.iLevel < AdvisorManager.getAdvisorMaxLevel(i)) {
                arrayList.add(2);
            }
            if (civ.advisorMilitary.iLevel < AdvisorManager.getAdvisorMaxLevel(i)) {
                arrayList.add(3);
            }
            while (arrayList.size() > 0) {
                int iNextInt2 = Game.oR.nextInt(arrayList.size());
                if (!AdvisorManager.promoteAdvisor(i, ((Integer) arrayList.get(iNextInt2)).intValue(), false)) {
                    break;
                }
                int iIntValue = ((Integer) arrayList.get(iNextInt2)).intValue();
                if (iIntValue != 0) {
                    if (iIntValue != 1) {
                        if (iIntValue != 2) {
                            if (iIntValue == 3 && civ.advisorMilitary.iLevel >= AdvisorManager.getAdvisorMaxLevel(i)) {
                                arrayList.remove(iNextInt2);
                            }
                        } else if (civ.advisorTechnology.iLevel >= AdvisorManager.getAdvisorMaxLevel(i)) {
                            arrayList.remove(iNextInt2);
                        }
                    } else if (civ.advisorEconomy.iLevel >= AdvisorManager.getAdvisorMaxLevel(i)) {
                        arrayList.remove(iNextInt2);
                    }
                } else if (civ.advisorAdministration.iLevel >= AdvisorManager.getAdvisorMaxLevel(i)) {
                    arrayList.remove(iNextInt2);
                }
            }
        }
        arrayList.clear();
    }
}
