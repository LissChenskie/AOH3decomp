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
public class AI_PrepareForWar {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_PrepareForWar$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.aiManager.update_ReorganizeArmiesAtPeace(this.id);
        }
    }

    public static class CivDistance {
        public int civID;
        public float distance;

        public CivDistance(int i, float f) {
            this.civID = i;
            this.distance = f;
        }
    }

    public static void buildScoreManpower(int i, int i2) {
        if (Game.getCiv(i2).getNumOfProvinces() <= 0) {
            Game.getCiv(i2).aiScore = 999876.0f;
        } else {
            Game.getCiv(i2).aiScore = (float) (Game.getCiv(i).fManpowerMax / Game.getCiv(i2).fManpowerMax);
        }
    }

    public static boolean differentGovernment(int i, int i2) {
        return Game.getCiv(i).getIdeologyID() != Game.getCiv(i2).getIdeologyID();
    }

    public static boolean differentReligion(int i, int i2) {
        return Game.getCiv(i).getReligionID() != Game.getCiv(i2).getReligionID();
    }

    public static List<Integer> getClosestCivs(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        for (int i3 = 1; i3 < Game.getCivsSize(); i3++) {
            if (Game.getCiv(i3).getNumOfProvinces() > 0 && !DiplomacyManager.isAlly(i, i3)) {
                arrayList.add(new CivDistance(i3, Game.getManhattanDistance(Game.getCiv(i).getCapitalProvinceID(), Game.getCiv(i3).getCapitalProvinceID())));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        while (!arrayList.isEmpty() && arrayList2.size() < i2) {
            int i4 = 0;
            for (int size = arrayList.size() - 1; size > 0; size--) {
                if (((CivDistance) arrayList.get(i4)).distance > ((CivDistance) arrayList.get(size)).distance) {
                    i4 = size;
                }
            }
            arrayList2.add(Integer.valueOf(((CivDistance) arrayList.get(i4)).civID));
            arrayList.remove(i4);
        }
        return arrayList2;
    }

    public static boolean isCivAlly(int i, int i2) {
        return DiplomacyManager.isAlly_AllianceCheck(i, i2) || Game.getCiv(i).diplomacy.haveNonAggressionPact(i2) || Game.getCiv(i2).diplomacy.haveNonAggressionPact(i) || Game.getCiv(i).diplomacy.haveDefensivePact(i2) || Game.getCiv(i2).diplomacy.haveDefensivePact(i);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0034 A[Catch: Exception -> 0x0046, TryCatch #0 {Exception -> 0x0046, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x0010, B:7:0x001a, B:8:0x001d, B:9:0x0023, B:11:0x0029, B:12:0x002d, B:13:0x002e, B:15:0x0034, B:17:0x003e, B:18:0x0041), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003e A[Catch: Exception -> 0x0046, TryCatch #0 {Exception -> 0x0046, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x0010, B:7:0x001a, B:8:0x001d, B:9:0x0023, B:11:0x0029, B:12:0x002d, B:13:0x002e, B:15:0x0034, B:17:0x003e, B:18:0x0041), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0041 A[Catch: Exception -> 0x0046, TRY_LEAVE, TryCatch #0 {Exception -> 0x0046, blocks: (B:2:0x0000, B:3:0x0009, B:5:0x0010, B:7:0x001a, B:8:0x001d, B:9:0x0023, B:11:0x0029, B:12:0x002d, B:13:0x002e, B:15:0x0034, B:17:0x003e, B:18:0x0041), top: B:23:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:29:? A[RETURN, SYNTHETIC] */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public static final void prepareForWar() {
        /*
            int r0 = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID     // Catch: java.lang.Exception -> L46
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L46
            int r1 = r1.GAME_UPDATE_AI_PREPARE_FOR_WAR     // Catch: java.lang.Exception -> L46
            int r0 = r0 % r1
            int r0 = r0 + 1
        L9:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L46
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L46
            r2 = 0
            if (r0 >= r1) goto L23
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L46
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L46
            if (r1 <= 0) goto L1d
            prepareForWar(r0, r2)     // Catch: java.lang.Exception -> L46
        L1d:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L46
            int r1 = r1.GAME_UPDATE_AI_PREPARE_FOR_WAR     // Catch: java.lang.Exception -> L46
            int r0 = r0 + r1
            goto L9
        L23:
            aoc.kingdoms.lukasz.jakowski.Player.Player r1 = aoc.kingdoms.lukasz.jakowski.Game.player     // Catch: java.lang.Exception -> L46
            int r1 = r1.iCivID     // Catch: java.lang.Exception -> L46
            if (r0 != r1) goto L2e
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L46
            int r1 = r1.GAME_UPDATE_AI_PREPARE_FOR_WAR     // Catch: java.lang.Exception -> L46
        L2d:
            int r0 = r0 + r1
        L2e:
            int r1 = aoc.kingdoms.lukasz.jakowski.Game.getCivsSize()     // Catch: java.lang.Exception -> L46
            if (r0 >= r1) goto L4a
            aoc.kingdoms.lukasz.map.civilization.Civilization r1 = aoc.kingdoms.lukasz.jakowski.Game.getCiv(r0)     // Catch: java.lang.Exception -> L46
            int r1 = r1.getNumOfProvinces()     // Catch: java.lang.Exception -> L46
            if (r1 <= 0) goto L41
            prepareForWar(r0, r2)     // Catch: java.lang.Exception -> L46
        L41:
            aoc.kingdoms.lukasz.jakowski.GameValues$GameValue_GameUpdate_AI r1 = aoc.kingdoms.lukasz.jakowski.GameValues.gameUpdateAI     // Catch: java.lang.Exception -> L46
            int r1 = r1.GAME_UPDATE_AI_PREPARE_FOR_WAR     // Catch: java.lang.Exception -> L46
            goto L2d
        L46:
            r0 = move-exception
            aoc.kingdoms.lukasz.jakowski.CFG.exceptionStack(r0)
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.jakowski.AI.Diplomacy.AI_PrepareForWar.prepareForWar():void");
    }

    public static final void prepareForWar(int i, int i2) {
        int iNextInt;
        boolean z;
        try {
            Civilization civ = Game.getCiv(i);
            if (civ.fGold < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_ONLY_IF_GOLD_OVER) {
                civ.aiCivDiplomacy.clearPrepareForWar();
                return;
            }
            if (civ.civStability_LostFrom100 <= Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_ONLY_IF_CIV_STABILITY_IS_BELOW_100 && civ.getAggressiveExpansion() <= Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_ONLY_IF_AE_IS_BELOW && civ.fManpower / civ.fManpowerMax >= Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_ONLY_IF_MANPOWER_PERC_OVER) {
                if ((civ.getPuppetOfCivID() == i || Game.getCiv(civ.getPuppetOfCivID()).diplomacy.getVassal_CanDeclareWar(i)) && !civ.diplomacy.isAtWar() && civ.aiCivDiplomacy.w.isEmpty() && Game.oR.nextInt(Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_RANDOM_MAX) <= Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CHANCE + Game.getCiv(i).getExtraAggressiveness() + Game.ideologiesManager.getIdeology(civ.getIdeologyID()).AI_EXTRA_AGGRESSIVENESS + GameValues.civRank.CIV_RANK_AI_EXTRA_AGGRESSIVENESS[Game.getCiv(i).iCivRankID] + Game.aiAggressivnes + i2) {
                    ArrayList arrayList = new ArrayList();
                    if (Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_PRIORITIZE_TRIBAL && Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_PRIORITIZE_NEIGBORS_TRIBAL_CHANCE && !Game.ideologiesManager.getIdeology(civ.getIdeologyID()).TRIBAL && !Game.religionManager.getReligion(civ.getReligionID()).Tribal) {
                        for (int i3 = 0; i3 < civ.civNeighbors.civsSize; i3++) {
                            if ((Game.ideologiesManager.getIdeology(Game.getCiv(civ.civNeighbors.civs.get(i3).civID).getIdeologyID()).TRIBAL || Game.religionManager.getReligion(Game.getCiv(civ.civNeighbors.civs.get(i3).civID).getReligionID()).Tribal) && Game.getCiv(civ.civNeighbors.civs.get(i3).civID).getNumOfProvinces() > 0 && !isCivAlly(i, civ.civNeighbors.civs.get(i3).civID) && civ.getResearchedTechnologies() > Game.getCiv(civ.civNeighbors.civs.get(i3).civID).getResearchedTechnologies() && civ.getNumOfProvinces() > Game.getCiv(civ.civNeighbors.civs.get(i3).civID).getNumOfProvinces()) {
                                arrayList.add(Integer.valueOf(civ.civNeighbors.civs.get(i3).civID));
                            }
                        }
                    }
                    if (arrayList.isEmpty() && civ.iCivRankPosition < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_TOP_RANK_CIVS && civ.haveAccessSea && Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_TOP_RANK_CIVS_CHANCE) {
                        ArrayList arrayList2 = new ArrayList();
                        int i4 = 1;
                        while (true) {
                            if (i4 >= i) {
                                break;
                            }
                            if (Game.getCiv(i4).getNumOfProvinces() > 0 && (Game.ideologiesManager.getIdeology(Game.getCiv(i4).getIdeologyID()).TRIBAL || Game.religionManager.getReligion(Game.getCiv(i4).getReligionID()).Tribal)) {
                                arrayList2.add(new CivDistance(i4, Game.getManhattanDistance_PercOfMax(civ.getCapitalProvinceID(), Game.getCiv(i4).getCapitalProvinceID()) * (Game.continents.lContinents.get(Game.getProvince(Game.getCiv(i4).getCapitalProvinceID()).getContinent()).prioritizeColonization ? Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_PRIORITIZE_CONTINENT_MODIFIER : 1.0f)));
                            }
                            i4++;
                        }
                        for (int i5 = i + 1; i5 < Game.getCivsSize(); i5++) {
                            if (Game.getCiv(i5).getNumOfProvinces() > 0 && (Game.ideologiesManager.getIdeology(Game.getCiv(i5).getIdeologyID()).TRIBAL || Game.religionManager.getReligion(Game.getCiv(i5).getReligionID()).Tribal)) {
                                arrayList2.add(new CivDistance(i5, Game.getManhattanDistance_PercOfMax(civ.getCapitalProvinceID(), Game.getCiv(i5).getCapitalProvinceID()) * (Game.continents.lContinents.get(Game.getProvince(Game.getCiv(i5).getCapitalProvinceID()).getContinent()).prioritizeColonization ? Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_PRIORITIZE_CONTINENT_MODIFIER : 1.0f)));
                            }
                        }
                        int i6 = 0;
                        while (!arrayList2.isEmpty() && i6 < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_LIMIT) {
                            int size = arrayList2.size();
                            int i7 = 0;
                            for (int i8 = 1; i8 < size; i8++) {
                                if (((CivDistance) arrayList2.get(i7)).distance > ((CivDistance) arrayList2.get(i8)).distance) {
                                    i7 = i8;
                                }
                            }
                            if (isCivAlly(i, ((CivDistance) arrayList2.get(i7)).civID)) {
                                i6--;
                            } else {
                                arrayList.add(Integer.valueOf(((CivDistance) arrayList2.get(i7)).civID));
                            }
                            arrayList2.remove(i7);
                            i6++;
                        }
                    }
                    if (arrayList.isEmpty()) {
                        if (civ.diplomacy.iVassalsSize <= 0 || civ.diplomacy.iVassalsSize <= Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).AI_CONQUER_OWN_VASSALS_IF_OVER || Game.oR.nextInt(100) >= Game.aiValuesDiplomacy.AI_CONQUER_OWN_VASSALS_CHANCE) {
                            z = false;
                        } else {
                            z = false;
                            for (int i9 = 0; i9 < civ.civNeighbors.civsSize; i9++) {
                                if (Game.getCiv(civ.civNeighbors.civs.get(i9).civID).getPuppetOfCivID() == i && !isCivAlly(i, civ.civNeighbors.civs.get(i9).civID)) {
                                    arrayList.add(Integer.valueOf(civ.civNeighbors.civs.get(i9).civID));
                                    z = true;
                                }
                            }
                        }
                        if (!z && civ.civNeighbors.civsSize > 0) {
                            for (int i10 = 0; i10 < civ.civNeighbors.civsSize; i10++) {
                                if (Game.getCiv(civ.civNeighbors.civs.get(i10).civID).getPuppetOfCivID() == i) {
                                    if (Game.oR.nextInt(100) >= Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_AGAINST_OWN_VASSAL_CHANCE || isCivAlly(i, civ.civNeighbors.civs.get(i10).civID)) {
                                        for (int i11 = 0; i11 < Game.getCiv(civ.civNeighbors.civs.get(i10).civID).civNeighbors.civsSize; i11++) {
                                            if (Game.getCiv(civ.civNeighbors.civs.get(i10).civID).civNeighbors.civs.get(i11).civID != i && !isCivAlly(i, Game.getCiv(civ.civNeighbors.civs.get(i10).civID).civNeighbors.civs.get(i11).civID) && !arrayList.contains(Integer.valueOf(Game.getCiv(civ.civNeighbors.civs.get(i10).civID).civNeighbors.civs.get(i11).civID))) {
                                                arrayList.add(Integer.valueOf(Game.getCiv(civ.civNeighbors.civs.get(i10).civID).civNeighbors.civs.get(i11).civID));
                                            }
                                        }
                                    } else {
                                        arrayList.add(Integer.valueOf(civ.civNeighbors.civs.get(i10).civID));
                                    }
                                } else if (!isCivAlly(i, civ.civNeighbors.civs.get(i10).civID) && !arrayList.contains(Integer.valueOf(civ.civNeighbors.civs.get(i10).civID))) {
                                    arrayList.add(Integer.valueOf(civ.civNeighbors.civs.get(i10).civID));
                                }
                            }
                        }
                    }
                    if (arrayList.isEmpty() && Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CLOSEST_CIV_CHANCE) {
                        ArrayList arrayList3 = new ArrayList();
                        for (int i12 = 1; i12 < i; i12++) {
                            if (Game.getCiv(i12).getNumOfProvinces() > 0) {
                                arrayList3.add(new CivDistance(i12, Game.getManhattanDistance_PercOfMax(civ.getCapitalProvinceID(), Game.getCiv(i12).getCapitalProvinceID())));
                            }
                        }
                        for (int i13 = i + 1; i13 < Game.getCivsSize(); i13++) {
                            if (Game.getCiv(i13).getNumOfProvinces() > 0) {
                                arrayList3.add(new CivDistance(i13, Game.getManhattanDistance_PercOfMax(civ.getCapitalProvinceID(), Game.getCiv(i13).getCapitalProvinceID())));
                            }
                        }
                        int i14 = 0;
                        while (!arrayList3.isEmpty() && i14 < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CLOSEST_CIV_CIVS_LIMIT) {
                            int size2 = arrayList3.size();
                            int i15 = 0;
                            for (int i16 = 1; i16 < size2; i16++) {
                                if (((CivDistance) arrayList3.get(i15)).distance > ((CivDistance) arrayList3.get(i16)).distance) {
                                    i15 = i16;
                                }
                            }
                            if (isCivAlly(i, ((CivDistance) arrayList3.get(i15)).civID)) {
                                i14--;
                            } else {
                                arrayList.add(Integer.valueOf(((CivDistance) arrayList3.get(i15)).civID));
                            }
                            arrayList3.remove(i15);
                            i14++;
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        for (int i17 = 0; i17 < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CHECK_LIMIT && !arrayList.isEmpty() && !civ.diplomacy.isAtWar(); i17++) {
                            int iNextInt2 = Game.oR.nextInt(Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_RANDOM_NUMBER);
                            if (iNextInt2 < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CLOSEST_CIV_ALL_PROVINCES_CHANCE) {
                                ArrayList arrayList4 = new ArrayList();
                                int capitalProvinceID = Game.getCiv(i).getCapitalProvinceID();
                                for (int i18 = 0; i18 < arrayList.size(); i18++) {
                                    Civilization civ2 = Game.getCiv(((Integer) arrayList.get(i18)).intValue());
                                    float manhattanDistance = 0.0f;
                                    for (int i19 = 0; i19 < civ2.getNumOfProvinces(); i19++) {
                                        manhattanDistance += Game.getManhattanDistance(capitalProvinceID, civ2.getProvinceID(i19));
                                    }
                                    arrayList4.add(Float.valueOf(manhattanDistance / civ2.getNumOfProvinces()));
                                }
                                iNextInt = 0;
                                for (int i20 = 1; i20 < arrayList.size(); i20++) {
                                    if (((Float) arrayList4.get(iNextInt)).floatValue() > ((Float) arrayList4.get(i20)).floatValue()) {
                                        iNextInt = i20;
                                    }
                                }
                            } else if (iNextInt2 < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CLOSEST_CIV_CAPITAL_CHANCE) {
                                float manhattanDistance_PercOfMax = Game.getManhattanDistance_PercOfMax(civ.getCapitalProvinceID(), Game.getCiv(((Integer) arrayList.get(0)).intValue()).getCapitalProvinceID());
                                iNextInt = 0;
                                for (int i21 = 1; i21 < arrayList.size(); i21++) {
                                    if (manhattanDistance_PercOfMax > Game.getManhattanDistance_PercOfMax(civ.getCapitalProvinceID(), Game.getCiv(((Integer) arrayList.get(i21)).intValue()).getCapitalProvinceID())) {
                                        manhattanDistance_PercOfMax = Game.getManhattanDistance_PercOfMax(civ.getCapitalProvinceID(), Game.getCiv(((Integer) arrayList.get(i21)).intValue()).getCapitalProvinceID());
                                        iNextInt = i21;
                                    }
                                }
                            } else if (iNextInt2 < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CIV_PROVINCES_CHANCE) {
                                iNextInt = 0;
                                for (int i22 = 1; i22 < arrayList.size(); i22++) {
                                    if (Game.getCiv(((Integer) arrayList.get(iNextInt)).intValue()).getNumOfProvinces() + Game.getCiv(Game.getCiv(((Integer) arrayList.get(iNextInt)).intValue()).getPuppetOfCivID()).getNumOfProvinces() > Game.getCiv(Game.getCiv(((Integer) arrayList.get(i22)).intValue()).getPuppetOfCivID()).getNumOfProvinces() + Game.getCiv(((Integer) arrayList.get(i22)).intValue()).getNumOfProvinces()) {
                                        iNextInt = i22;
                                    }
                                }
                            } else if (iNextInt2 < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CIV_MANPOWER_MAX_CHANCE) {
                                iNextInt = 0;
                                for (int i23 = 1; i23 < arrayList.size(); i23++) {
                                    if (Game.getCiv(((Integer) arrayList.get(iNextInt)).intValue()).fManpowerMax + Game.getCiv(Game.getCiv(((Integer) arrayList.get(iNextInt)).intValue()).getPuppetOfCivID()).fManpowerMax > Game.getCiv(Game.getCiv(((Integer) arrayList.get(i23)).intValue()).getPuppetOfCivID()).fManpowerMax + Game.getCiv(((Integer) arrayList.get(i23)).intValue()).fManpowerMax) {
                                        iNextInt = i23;
                                    }
                                }
                            } else if (iNextInt2 < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CIV_REGIMENTS_CHANCE) {
                                iNextInt = 0;
                                for (int i24 = 1; i24 < arrayList.size(); i24++) {
                                    if (Game.getCiv(((Integer) arrayList.get(iNextInt)).intValue()).iRegiments + Game.getCiv(Game.getCiv(((Integer) arrayList.get(iNextInt)).intValue()).getPuppetOfCivID()).iRegiments > Game.getCiv(Game.getCiv(((Integer) arrayList.get(i24)).intValue()).getPuppetOfCivID()).iRegiments + Game.getCiv(((Integer) arrayList.get(i24)).intValue()).iRegiments) {
                                        iNextInt = i24;
                                    }
                                }
                            } else {
                                iNextInt = Game.oR.nextInt(arrayList.size());
                            }
                            int iIntValue = ((Integer) arrayList.get(iNextInt)).intValue();
                            if (!Game.getCiv(i).diplomacy.haveNonAggressionPact(iIntValue)) {
                                if (AI_DeclareWar.checkRegiments_ForWar(i, iIntValue)) {
                                    if (civ.diplomacy.getRelation(iIntValue) <= GameValues.war.RELATIONS_TO_DECLARE_WAR && Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_DECLARE_WAR_IMMEDIATELY_IF_POSSIBLE_CHANCE && AI_DeclareWar.declareWar(i, iIntValue)) {
                                        civ.updateMilitaryLevel(Math.max(GameValues.war.AI_AT_WAR_MIN_MILITARY_LEVEL, Game.getCiv(i).getMilitaryLevel()));
                                        arrayList.clear();
                                        return;
                                    }
                                    if (civ.diplomacy.getRelation(iIntValue) > GameValues.war.RELATIONS_TO_DECLARE_WAR * Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_DECREASE_RELATIONS_MODIFIER) {
                                        civ.diplomacy.addDamageRelations(i, iIntValue);
                                    }
                                    if ((civ.diplomacy.getRelation(iIntValue) > Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_SEND_INSULT_IF_RELATIONS_OVER || Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_SEND_INSULT_IF_RELATIONS_OVER_RANDOM_CHANCE) && Game.oR.nextInt(100) < Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_SEND_INSULT_CHANCE) {
                                        DiplomacyManager.sendInsult(i, iIntValue);
                                    }
                                    if (civ.aiCivDiplomacy.addPrepareForWar(iIntValue)) {
                                        Game.gameThread.addAI_SimpleTask(new AnonymousClass1("update_ReorganizeArmiesAtPeace" + i, i));
                                    }
                                    civ.updateMilitaryLevel(Math.max(GameValues.war.AI_AT_WAR_MIN_MILITARY_LEVEL, Game.getCiv(i).getMilitaryLevel()));
                                    if (civ.aiCivDiplomacy.w.size() >= Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CIVS_LIMIT) {
                                        break;
                                    }
                                } else {
                                    arrayList.remove(iNextInt);
                                }
                            } else {
                                civ.diplomacy.addDamageRelations(i, iIntValue);
                                arrayList.remove(iNextInt);
                            }
                        }
                    }
                    arrayList.clear();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
