package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_RecruitArmy {

    public static class RecruitArmy_ExistingArmy {
        public int armyID;
        public int provinceID;
        public int regimentsSize;

        public RecruitArmy_ExistingArmy(int i, int i2, int i3) {
            this.provinceID = i;
            this.armyID = i2;
            this.regimentsSize = i3;
        }
    }

    private static void buildProvincesRecruitArmyScore(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            int provinceID = Game.getCiv(i).getProvinceID(i2);
            Game.getProvince(provinceID).aiRecruitArmyScore = (int) ((Game.getProvince(provinceID).getGrowthRateWithBonuses() * Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_GROWTH_RATE) + (Game.getProvince(provinceID).getEconomyWithBonuses() * Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_ECONOMY) + (Game.getProvince(provinceID).fProvinceIncome * Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_PROVINCE_INCOME) + (Game.getProvince(provinceID).getArmyRegimentSize_InProvince() * Game.aiValuesArmies.RECRUIT_ARMY_SCORE_PER_REGIMENT) + (Game.getProvince(provinceID).aiDistanceToCapital * Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_DISTANCE));
        }
    }

    public static List<AI_CreateNewArmy> getArmyToRecruit(int i, AI_Army_Composition aI_Army_Composition) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Civilization civ = Game.getCiv(i);
        if (aI_Army_Composition.numFirstLine > 0) {
            if (civ.unitsBest_FirstLineSize > 1) {
                for (int i2 = 0; i2 < civ.unitsBest_FirstLineSize; i2++) {
                    arrayList2.add(new AI_CreateNewArmy(civ.unitsBest_FirstLine.get(i2).unitID, civ.unitsBest_FirstLine.get(i2).armyID, 0));
                }
                for (int i3 = 0; i3 < aI_Army_Composition.numFirstLine; i3++) {
                    ((AI_CreateNewArmy) arrayList2.get(Game.oR.nextInt(civ.unitsBest_FirstLineSize))).n++;
                }
                for (int i4 = 0; i4 < civ.unitsBest_FirstLineSize; i4++) {
                    if (((AI_CreateNewArmy) arrayList2.get(i4)).n > 0) {
                        arrayList.add((AI_CreateNewArmy) arrayList2.get(i4));
                    }
                }
                arrayList2.clear();
            } else {
                arrayList.add(new AI_CreateNewArmy(civ.unitsBest_FirstLine.get(0).unitID, civ.unitsBest_FirstLine.get(0).armyID, aI_Army_Composition.numFirstLine));
            }
        }
        if (aI_Army_Composition.numFlank > 0) {
            if (civ.unitsBest_FlankSize > 1) {
                for (int i5 = 0; i5 < civ.unitsBest_FlankSize; i5++) {
                    arrayList2.add(new AI_CreateNewArmy(civ.unitsBest_Flank.get(i5).unitID, civ.unitsBest_Flank.get(i5).armyID, 0));
                }
                for (int i6 = 0; i6 < aI_Army_Composition.numFlank; i6++) {
                    ((AI_CreateNewArmy) arrayList2.get(Game.oR.nextInt(civ.unitsBest_FlankSize))).n++;
                }
                for (int i7 = 0; i7 < civ.unitsBest_FlankSize; i7++) {
                    if (((AI_CreateNewArmy) arrayList2.get(i7)).n > 0) {
                        arrayList.add((AI_CreateNewArmy) arrayList2.get(i7));
                    }
                }
                arrayList2.clear();
            } else {
                arrayList.add(new AI_CreateNewArmy(civ.unitsBest_Flank.get(0).unitID, civ.unitsBest_Flank.get(0).armyID, aI_Army_Composition.numFlank));
            }
        }
        if (aI_Army_Composition.numSupport > 0) {
            if (civ.unitsBest_SupportSize > 1) {
                for (int i8 = 0; i8 < civ.unitsBest_SupportSize; i8++) {
                    arrayList2.add(new AI_CreateNewArmy(civ.unitsBest_Support.get(i8).unitID, civ.unitsBest_Support.get(i8).armyID, 0));
                }
                for (int i9 = 0; i9 < aI_Army_Composition.numSupport; i9++) {
                    ((AI_CreateNewArmy) arrayList2.get(Game.oR.nextInt(civ.unitsBest_SupportSize))).n++;
                }
                for (int i10 = 0; i10 < civ.unitsBest_SupportSize; i10++) {
                    if (((AI_CreateNewArmy) arrayList2.get(i10)).n > 0) {
                        arrayList.add((AI_CreateNewArmy) arrayList2.get(i10));
                    }
                }
                arrayList2.clear();
            } else {
                arrayList.add(new AI_CreateNewArmy(civ.unitsBest_Support.get(0).unitID, civ.unitsBest_Support.get(0).armyID, aI_Army_Composition.numSupport));
            }
        }
        if (aI_Army_Composition.numSiege > 0) {
            if (civ.unitsBest_SiegeSize > 1) {
                for (int i11 = 0; i11 < civ.unitsBest_SiegeSize; i11++) {
                    arrayList2.add(new AI_CreateNewArmy(civ.unitsBest_Siege.get(i11).unitID, civ.unitsBest_Siege.get(i11).armyID, 0));
                }
                for (int i12 = 0; i12 < aI_Army_Composition.numSiege; i12++) {
                    ((AI_CreateNewArmy) arrayList2.get(Game.oR.nextInt(civ.unitsBest_SiegeSize))).n++;
                }
                for (int i13 = 0; i13 < civ.unitsBest_SiegeSize; i13++) {
                    if (((AI_CreateNewArmy) arrayList2.get(i13)).n > 0) {
                        arrayList.add((AI_CreateNewArmy) arrayList2.get(i13));
                    }
                }
                arrayList2.clear();
            } else {
                arrayList.add(new AI_CreateNewArmy(civ.unitsBest_Siege.get(0).unitID, civ.unitsBest_Siege.get(0).armyID, aI_Army_Composition.numSiege));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0052 A[Catch: Exception -> 0x0150, TryCatch #0 {Exception -> 0x0150, blocks: (B:2:0x0000, B:4:0x0019, B:6:0x002d, B:7:0x0031, B:11:0x0046, B:13:0x0052, B:15:0x006c, B:17:0x0078, B:19:0x0086, B:22:0x008d, B:24:0x0095, B:26:0x00eb, B:29:0x00f4, B:30:0x00ff, B:32:0x0112, B:34:0x0126, B:8:0x0033, B:10:0x0041, B:35:0x0129, B:37:0x0131, B:39:0x014c), top: B:44:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x008c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x008d A[Catch: Exception -> 0x0150, TryCatch #0 {Exception -> 0x0150, blocks: (B:2:0x0000, B:4:0x0019, B:6:0x002d, B:7:0x0031, B:11:0x0046, B:13:0x0052, B:15:0x006c, B:17:0x0078, B:19:0x0086, B:22:0x008d, B:24:0x0095, B:26:0x00eb, B:29:0x00f4, B:30:0x00ff, B:32:0x0112, B:34:0x0126, B:8:0x0033, B:10:0x0041, B:35:0x0129, B:37:0x0131, B:39:0x014c), top: B:44:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0095 A[Catch: Exception -> 0x0150, TryCatch #0 {Exception -> 0x0150, blocks: (B:2:0x0000, B:4:0x0019, B:6:0x002d, B:7:0x0031, B:11:0x0046, B:13:0x0052, B:15:0x006c, B:17:0x0078, B:19:0x0086, B:22:0x008d, B:24:0x0095, B:26:0x00eb, B:29:0x00f4, B:30:0x00ff, B:32:0x0112, B:34:0x0126, B:8:0x0033, B:10:0x0041, B:35:0x0129, B:37:0x0131, B:39:0x014c), top: B:44:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x00eb A[Catch: Exception -> 0x0150, TryCatch #0 {Exception -> 0x0150, blocks: (B:2:0x0000, B:4:0x0019, B:6:0x002d, B:7:0x0031, B:11:0x0046, B:13:0x0052, B:15:0x006c, B:17:0x0078, B:19:0x0086, B:22:0x008d, B:24:0x0095, B:26:0x00eb, B:29:0x00f4, B:30:0x00ff, B:32:0x0112, B:34:0x0126, B:8:0x0033, B:10:0x0041, B:35:0x0129, B:37:0x0131, B:39:0x014c), top: B:44:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x00f3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x00f4 A[Catch: Exception -> 0x0150, TryCatch #0 {Exception -> 0x0150, blocks: (B:2:0x0000, B:4:0x0019, B:6:0x002d, B:7:0x0031, B:11:0x0046, B:13:0x0052, B:15:0x006c, B:17:0x0078, B:19:0x0086, B:22:0x008d, B:24:0x0095, B:26:0x00eb, B:29:0x00f4, B:30:0x00ff, B:32:0x0112, B:34:0x0126, B:8:0x0033, B:10:0x0041, B:35:0x0129, B:37:0x0131, B:39:0x014c), top: B:44:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0112 A[Catch: Exception -> 0x0150, TryCatch #0 {Exception -> 0x0150, blocks: (B:2:0x0000, B:4:0x0019, B:6:0x002d, B:7:0x0031, B:11:0x0046, B:13:0x0052, B:15:0x006c, B:17:0x0078, B:19:0x0086, B:22:0x008d, B:24:0x0095, B:26:0x00eb, B:29:0x00f4, B:30:0x00ff, B:32:0x0112, B:34:0x0126, B:8:0x0033, B:10:0x0041, B:35:0x0129, B:37:0x0131, B:39:0x014c), top: B:44:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0126 A[Catch: Exception -> 0x0150, TryCatch #0 {Exception -> 0x0150, blocks: (B:2:0x0000, B:4:0x0019, B:6:0x002d, B:7:0x0031, B:11:0x0046, B:13:0x0052, B:15:0x006c, B:17:0x0078, B:19:0x0086, B:22:0x008d, B:24:0x0095, B:26:0x00eb, B:29:0x00f4, B:30:0x00ff, B:32:0x0112, B:34:0x0126, B:8:0x0033, B:10:0x0041, B:35:0x0129, B:37:0x0131, B:39:0x014c), top: B:44:0x0000 }] */
    public static final void recruitArmy(int i) {
        float f;
        int armyRegimentSize;
        float f2;
        float f3;
        float balance;
        float f4;
        try {
            Civilization civ = Game.getCiv(i);
            if (civ.fManpower >= Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE) {
                float f5 = civ.iRegimentsLimit * civ.aiCiv.regimentsLimit_UseMax_Perc;
                if (Game.getCiv(i).diplomacy.isAtWar()) {
                    f = Game.aiValuesArmies.RECRUIT_ARMY_REGIMENTS_LIMIT_AT_WAR;
                } else if (!Game.getCiv(i).aiCivDiplomacy.w.isEmpty()) {
                    f = Game.aiValuesArmies.RECRUIT_ARMY_REGIMENTS_LIMIT_PREPARING_FOR_WAR;
                } else if (civ.getArmyRegimentSize() + civ.iArmyRecruitSize_Total < f5) {
                    armyRegimentSize = (int) (f5 - ((civ.getArmyRegimentSize() + civ.iArmyRecruitSize_Total) + civ.aiCivCreateNewArmy.createNewArmy_RegimentsLeft()));
                    if (Game.getCiv(i).iRegiments > 2 && !Game.getCiv(i).diplomacy.isAtWar() && Game.getCiv(i).aiCivDiplomacy.w.isEmpty()) {
                        if (civ.getMilitaryLevel() == 0) {
                            return;
                        }
                        if (!civ.unitsBest_FirstLine.isEmpty()) {
                            f2 = ArmyManager.lArmy.get(civ.unitsBest_FirstLine.get(0).unitID).get(civ.unitsBest_FirstLine.get(0).armyID).MaintenanceCost * Game.aiValuesArmies.RECRUIT_ARMY_UNIT_MAINTENANCE_COST_MODIFIER;
                            f3 = civ.iArmyRecruitSize_Total * f2;
                            balance = (civ.getBalance() - f3) - (Game.getResearchCost(i, Math.max(0.0f, TechnologyTree.getMaxResearch(i) - civ.fResearchPerMonth)) * Game.aiValuesArmies.RECRUIT_ARMY_MIN_BALANCE_LEFT_RESEARCH_COST_MODIFIER);
                            f4 = armyRegimentSize;
                            if (balance - (f4 * f2) < Game.aiValuesArmies.RECRUIT_ARMY_MIN_BALANCE_LEFT) {
                                if (balance < Game.aiValuesArmies.RECRUIT_ARMY_MIN_BALANCE_LEFT) {
                                    return;
                                } else {
                                    armyRegimentSize = (int) Math.min(f4, (balance - Game.aiValuesArmies.RECRUIT_ARMY_MIN_BALANCE_LEFT) / f2);
                                }
                            }
                            if (civ.fTotalIncomePerMonth * Game.aiValuesArmies.MILITARY_SPENDINGS_PERC_OF_MAX_INCOME < civ.fArmyMaintenance + ((civ.iArmyRecruitSize_Total + armyRegimentSize) * f2)) {
                                armyRegimentSize = (int) Math.min(armyRegimentSize, (((civ.fTotalIncomePerMonth * Game.aiValuesArmies.MILITARY_SPENDINGS_PERC_OF_MAX_INCOME) - civ.fArmyMaintenance) - f3) / f2);
                            }
                        }
                    }
                    if (armyRegimentSize > 0) {
                        recruitArmy_ExistingArmy(i, armyRegimentSize);
                    }
                }
                f5 *= f;
                if (civ.getArmyRegimentSize() + civ.iArmyRecruitSize_Total < f5) {
                    armyRegimentSize = (int) (f5 - ((civ.getArmyRegimentSize() + civ.iArmyRecruitSize_Total) + civ.aiCivCreateNewArmy.createNewArmy_RegimentsLeft()));
                    if (Game.getCiv(i).iRegiments > 2) {
                        if (civ.getMilitaryLevel() == 0) {
                            return;
                        }
                        if (!civ.unitsBest_FirstLine.isEmpty()) {
                            f2 = ArmyManager.lArmy.get(civ.unitsBest_FirstLine.get(0).unitID).get(civ.unitsBest_FirstLine.get(0).armyID).MaintenanceCost * Game.aiValuesArmies.RECRUIT_ARMY_UNIT_MAINTENANCE_COST_MODIFIER;
                            f3 = civ.iArmyRecruitSize_Total * f2;
                            balance = (civ.getBalance() - f3) - (Game.getResearchCost(i, Math.max(0.0f, TechnologyTree.getMaxResearch(i) - civ.fResearchPerMonth)) * Game.aiValuesArmies.RECRUIT_ARMY_MIN_BALANCE_LEFT_RESEARCH_COST_MODIFIER);
                            f4 = armyRegimentSize;
                            if (balance - (f4 * f2) < Game.aiValuesArmies.RECRUIT_ARMY_MIN_BALANCE_LEFT) {
                                if (balance < Game.aiValuesArmies.RECRUIT_ARMY_MIN_BALANCE_LEFT) {
                                    return;
                                } else {
                                    armyRegimentSize = (int) Math.min(f4, (balance - Game.aiValuesArmies.RECRUIT_ARMY_MIN_BALANCE_LEFT) / f2);
                                }
                            }
                            if (civ.fTotalIncomePerMonth * Game.aiValuesArmies.MILITARY_SPENDINGS_PERC_OF_MAX_INCOME < civ.fArmyMaintenance + ((civ.iArmyRecruitSize_Total + armyRegimentSize) * f2)) {
                                armyRegimentSize = (int) Math.min(armyRegimentSize, (((civ.fTotalIncomePerMonth * Game.aiValuesArmies.MILITARY_SPENDINGS_PERC_OF_MAX_INCOME) - civ.fArmyMaintenance) - f3) / f2);
                            }
                        }
                    }
                    if (armyRegimentSize > 0) {
                        recruitArmy_ExistingArmy(i, armyRegimentSize);
                    }
                }
            }
            if (!civ.diplomacy.isAtWar() || civ.fManpower >= Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * Game.aiValuesArmies.RECRUIT_MERCENARIES_IF_MANPOWER_BELOW_MODIFIER) {
                return;
            }
            AI_RecruitMercenaries.recruitMercenaries(i);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void recruitArmy_ExistingArmy(int i, int i2) {
        int i3;
        int iMax;
        int recruitArmyInProgress;
        int iMax2;
        if (i2 <= 0) {
            return;
        }
        Civilization civ = Game.getCiv(i);
        if (civ.iArmyPositionSize > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i4 = 0; i4 < civ.iArmyPositionSize; i4++) {
                Province province = Game.getProvince(civ.getArmyPosition(i4));
                if (province.getCivID() == i) {
                    for (int i5 = 0; i5 < province.getArmySize(); i5++) {
                        ArmyDivision army = province.getArmy(i5);
                        if (army.civID == i && !army.inRetreat && !army.inBattle) {
                            arrayList.add(new RecruitArmy_ExistingArmy(civ.getArmyPosition(i4), i5, army.iArmyRegimentSize));
                        }
                    }
                }
            }
            int i6 = 2;
            float battleWidth = BattleManager.getBattleWidth(i) * 2;
            int iMax3 = (int) Math.max(4.0f, civ.aiCiv.army_First * battleWidth);
            int iMax4 = (int) Math.max(4.0f, civ.aiCiv.army_Second * battleWidth);
            int iMax5 = (int) Math.max(4.0f, civ.aiCiv.army_Third * battleWidth);
            int iMax6 = (int) Math.max(4.0f, battleWidth * civ.aiCiv.army_Fourth);
            i3 = i2;
            while (i3 > 0 && arrayList.size() > 0) {
                int i7 = ((RecruitArmy_ExistingArmy) arrayList.get(0)).provinceID % 4;
                int i8 = 1;
                if (i7 == 0) {
                    iMax = Math.max(0, iMax3 - Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(0)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(0)).armyID).iArmyRegimentSize);
                } else if (i7 != 1) {
                    iMax = i7 != i6 ? Math.max(0, iMax6 - Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(0)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(0)).armyID).iArmyRegimentSize) : Math.max(0, iMax5 - Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(0)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(0)).armyID).iArmyRegimentSize);
                } else {
                    iMax = Math.max(0, iMax4 - Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(0)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(0)).armyID).iArmyRegimentSize);
                }
                int size = arrayList.size();
                int i9 = 0;
                int i10 = 1;
                while (i10 < size) {
                    int i11 = ((RecruitArmy_ExistingArmy) arrayList.get(i10)).provinceID % 4;
                    if (i11 == 0) {
                        iMax2 = Math.max(0, iMax3 - Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(i10)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(i10)).armyID).iArmyRegimentSize);
                    } else if (i11 != i8) {
                        iMax2 = i11 != i6 ? Math.max(0, iMax6 - Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(i10)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(i10)).armyID).iArmyRegimentSize) : Math.max(0, iMax5 - Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(i10)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(i10)).armyID).iArmyRegimentSize);
                    } else {
                        iMax2 = Math.max(0, iMax4 - Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(i10)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(i10)).armyID).iArmyRegimentSize);
                    }
                    if (iMax2 > 0 && (iMax2 > iMax || (iMax2 == iMax && Game.oR.nextInt(100) < 50))) {
                        iMax = iMax2;
                        i9 = i10;
                    }
                    i10++;
                    i6 = 2;
                    i8 = 1;
                }
                int iMin = Math.min(i3, iMax);
                if (Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(i9)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(i9)).armyID).civID == i && (recruitArmyInProgress = (iMin - civ.getRecruitArmyInProgress(Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(i9)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(i9)).armyID).key)) - civ.aiCivCreateNewArmy.getCreateNewArmy_RegimentsInQueue(Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(i9)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(i9)).armyID).key)) > 0) {
                    AI_Army_Composition aI_Army_Composition = new AI_Army_Composition(i, Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(i9)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(i9)).armyID).iArmyRegimentSize + recruitArmyInProgress);
                    AI_Army_Composition armyComposition = Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(i9)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(i9)).armyID).getArmyComposition();
                    aI_Army_Composition.numFirstLine = Math.max(0, aI_Army_Composition.numFirstLine - armyComposition.numFirstLine);
                    aI_Army_Composition.numFlank = Math.max(0, aI_Army_Composition.numFlank - armyComposition.numFlank);
                    aI_Army_Composition.numSupport = Math.max(0, aI_Army_Composition.numSupport - armyComposition.numSupport);
                    aI_Army_Composition.numSiege = Math.max(0, aI_Army_Composition.numSiege - armyComposition.numSiege);
                    aI_Army_Composition.updateNumOfRegiments();
                    i3 -= aI_Army_Composition.numOfRegiments;
                    civ.aiCivCreateNewArmy.cNA.add(new AI_CreateNewArmy_Task(Game.getProvince(((RecruitArmy_ExistingArmy) arrayList.get(i9)).provinceID).getArmy(((RecruitArmy_ExistingArmy) arrayList.get(i9)).armyID).key, getArmyToRecruit(i, aI_Army_Composition), Game_Calendar.TURN_ID + Game.aiValuesArmies.RECRUIT_ARMY_EXPIRES_DAYS));
                    civ.aiCivCreateNewArmy.runCreateNewArmy_Task(i, civ.aiCivCreateNewArmy.cNA.size() - 1);
                }
                arrayList.remove(i9);
                i6 = 2;
            }
            arrayList.clear();
        } else {
            i3 = i2;
        }
        if (i3 > 0) {
            recruitArmy_New(i, i3);
        }
    }

    private static final void recruitArmy_New(int i, int i2) {
        buildProvincesRecruitArmyScore(i);
        recruitArmy_New_In(i, i2, 0);
    }

    private static final void recruitArmy_New_In(int i, int i2, int i3) {
        float fMax;
        if (i2 >= Game.aiValuesArmies.RECRUIT_ARMY_MIN_NUM_OF_REGIMENTS && i3 < 99) {
            try {
                int provinceID = Game.getCiv(i).getProvinceID(0);
                for (int i4 = 1; i4 < Game.getCiv(i).getNumOfProvinces(); i4++) {
                    if (Game.getProvince(Game.getCiv(i).getProvinceID(i4)).aiRecruitArmyScore > Game.getProvince(provinceID).aiRecruitArmyScore && (!Game.getProvince(Game.getCiv(i).getProvinceID(i4)).isOccupied() || Game.getProvinceData(provinceID).getOccupiedByCivID() <= 0)) {
                        provinceID = Game.getCiv(i).getProvinceID(i4);
                    }
                }
                if (!Game.getProvince(provinceID).isOccupied() || Game.getProvinceData(provinceID).getOccupiedByCivID() <= 0) {
                    int i5 = provinceID % 4;
                    if (i5 == 0) {
                        fMax = Math.max(2.0f, BattleManager.getBattleWidth(i) * 2 * Game.getCiv(i).aiCiv.army_First);
                    } else if (i5 != 1) {
                        fMax = i5 != 2 ? Math.max(2.0f, BattleManager.getBattleWidth(i) * 2 * Game.getCiv(i).aiCiv.army_Fourth) : Math.max(2.0f, BattleManager.getBattleWidth(i) * 2 * Game.getCiv(i).aiCiv.army_Third);
                    } else {
                        fMax = Math.max(2.0f, BattleManager.getBattleWidth(i) * 2 * Game.getCiv(i).aiCiv.army_Second);
                    }
                    AI_Army_Composition aI_Army_Composition = new AI_Army_Composition(i, Math.min(i2, (int) fMax));
                    List<AI_CreateNewArmy> armyToRecruit = getArmyToRecruit(i, aI_Army_Composition);
                    int i6 = i2 - aI_Army_Composition.numOfRegiments;
                    String strExtraRandomTag = CFG.extraRandomTag();
                    Game.getCiv(i).lCreateNewArmy.put(strExtraRandomTag, Integer.valueOf(provinceID));
                    Game.getCiv(i).aiCivCreateNewArmy.cNA.add(new AI_CreateNewArmy_Task(strExtraRandomTag, armyToRecruit, Game_Calendar.TURN_ID + Game.aiValuesArmies.RECRUIT_ARMY_EXPIRES_DAYS));
                    Game.getCiv(i).aiCivCreateNewArmy.runCreateNewArmy_Task(i, Game.getCiv(i).aiCivCreateNewArmy.cNA.size() - 1);
                    Game.getProvince(provinceID).aiRecruitArmyScore /= 4;
                    if (i6 >= Game.aiValuesArmies.RECRUIT_ARMY_MIN_NUM_OF_REGIMENTS) {
                        recruitArmy_New_In(i, i6, i3 + 1);
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }
}
