package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.moveUnits.MoveUnits;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menusInGame.InGame_War;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PeaceTreaty {
    public float fScore;
    public float fScoreTotal;
    public float fTotalProvinceWarScore_CivLost;
    public int iCivID;
    public int iCivID2;
    public String warKey;
    public List<Integer> lProvinces = new ArrayList();
    public List<Integer> lProvinces_Liberate = new ArrayList();
    public List<Integer> lSubjectTransfer = new ArrayList();
    public List<Integer> lLiberateCiv = new ArrayList();
    public int demandGold = 0;
    public float fAggressiveExpansion = 0.0f;
    public boolean demandWarReparations = false;
    public boolean demandVassalization = false;
    public boolean demandGovernmentChange = false;
    public boolean demandReligionConversion = false;
    public boolean demandMilitaryAccess = false;
    public boolean demandHumiliate = false;
    public boolean demandReturnProvinces = false;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.PeaceTreaty$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i, int i2) {
            super(str, i, i2);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.ideologiesManager.changeGovernmentType(this.id, this.id2, true);
            Game.getCiv(this.id).fGold += GameValues.government.CHANGE_GOVERNMENT_COST;
            Game.getCiv(this.id).fLegacy += GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.PeaceTreaty$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Wars();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.PeaceTreaty$3, reason: invalid class name */
    class AnonymousClass3 extends Game.SimpleTask {
        AnonymousClass3(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceBorderManager.updateProvinceBorder();
        }
    }

    public PeaceTreaty(int i, String str, boolean z) {
        this.warKey = str;
        this.iCivID = i;
        try {
            if (WarManager.lWars.get(this.warKey).isDefender(i)) {
                this.iCivID2 = WarManager.lWars.get(this.warKey).lAggressors.get(0).iCivID;
            } else {
                this.iCivID2 = WarManager.lWars.get(this.warKey).lDefenders.get(0).iCivID;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        this.fTotalProvinceWarScore_CivLost = getTotalProvinceValue(this.iCivID2);
        buildScore();
        if (z) {
            return;
        }
        for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
            Game.getProvince(i2).aiPeaceCivID = Game.getProvince(i2).getCivID();
        }
    }

    public static List<Integer> getCivsPossibleToLiberate(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            try {
                for (int i3 = 0; i3 < Game.getProvince(Game.getCiv(i).getProvinceID(i2)).iCoresSize; i3++) {
                    if (Game.getCiv(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getCore(i3)).getNumOfProvinces() == 0 && !arrayList.contains(Integer.valueOf(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getCore(i3)))) {
                        arrayList.add(Integer.valueOf(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getCore(i3)));
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        return arrayList;
    }

    public static int getLiberateCivEconomy(int i, int i2) {
        int economyWithBonuses = 0;
        for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
            if (Game.getProvince(Game.getCiv(i).getProvinceID(i3)).haveACore(i2)) {
                economyWithBonuses = (int) (economyWithBonuses + Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getEconomyWithBonuses());
            }
        }
        return economyWithBonuses;
    }

    public static long getLiberateCivPopulation(int i, int i2) {
        long populationTotal = 0;
        for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
            if (Game.getProvince(Game.getCiv(i).getProvinceID(i3)).haveACore(i2)) {
                populationTotal += (long) Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getPopulationTotal();
            }
        }
        return populationTotal;
    }

    public static int getLiberateCivProvinces(int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < Game.getCiv(i).getNumOfProvinces(); i4++) {
            if (Game.getProvince(Game.getCiv(i).getProvinceID(i4)).haveACore(i2)) {
                i3++;
            }
        }
        return i3;
    }

    public static float getTotalProvinceValue(int i) {
        float f = 0.0f;
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            f += Game.getProvince(Game.getCiv(i).getProvinceID(i2)).fProvinceValue;
        }
        return f;
    }

    public static float getTotalProvinceValue_Liberate(int i, int i2) {
        float f = 0.0f;
        for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
            if (Game.getProvince(Game.getCiv(i).getProvinceID(i3)).haveACore(i2)) {
                f += Game.getProvince(Game.getCiv(i).getProvinceID(i3)).fProvinceValue;
            }
        }
        return f;
    }

    public static float getWarReparationsPerMonth(int i) {
        return Math.max(0.0f, Game.getCiv(i).fTotalIncomePerMonth * GameValues.peace.PEACE_WAR_REPARATIONS);
    }

    public static void moveAllArmiesToOwnTerritory(int i) {
        int armyKeyID;
        if (Game.getCiv(i).getNumOfProvinces() > 0) {
            for (int i2 = Game.getCiv(i).iArmyPositionSize - 1; i2 >= 0; i2--) {
                if (!MoveUnits.isFriendlyProvince_OrAtWAr(i, Game.getCiv(i).getArmyPosition(i2)) && (armyKeyID = Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getArmyKeyID(Game.getCiv(i).getArmyPositionKey(i2), i)) >= 0) {
                    if (Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getArmy(armyKeyID).inMovement) {
                        Game.getCiv(i).removeMove(Game.getCiv(i).getArmyPositionKey(i2));
                    }
                    float distanceFromProvinceToProvince = Game.getDistanceFromProvinceToProvince(Game.getCiv(i).getArmyPosition(i2), Game.getCiv(i).getProvinceID(0));
                    int i3 = 0;
                    for (int i4 = 1; i4 < Game.getCiv(i).getNumOfProvinces(); i4++) {
                        if (!Game.getProvince(Game.getCiv(i).getProvinceID(i4)).isOccupied() && !Game.getProvinceData4(Game.getCiv(i).getProvinceID(i4)).isUnderSiege()) {
                            float distanceFromProvinceToProvince2 = Game.getDistanceFromProvinceToProvince(Game.getCiv(i).getArmyPosition(i2), Game.getCiv(i).getProvinceID(i4));
                            if (distanceFromProvinceToProvince > distanceFromProvinceToProvince2) {
                                i3 = i4;
                                distanceFromProvinceToProvince = distanceFromProvinceToProvince2;
                            }
                        }
                    }
                    ArmyDivision army = Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getArmy(Game.getCiv(i).getArmyPositionKey(i2));
                    if (army != null) {
                        army.inBattle = false;
                        army.inRetreat = false;
                        Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).removeArmy(Game.getCiv(i).getArmyPositionKey(i2));
                        Game.getProvince(Game.getCiv(i).getProvinceID(i3)).addArmy(army);
                    }
                }
            }
        }
    }

    public static void updateRivals(int i) {
        if (Game.getCiv(i).getNumOfProvinces() <= 0) {
            for (int i2 = 1; i2 < Game.getCivsSize(); i2++) {
                Game.getCiv(i2).diplomacy.removeRival(i);
            }
        }
    }

    public boolean addProvince(int i) {
        if (this.fScore >= Game.getProvince(i).fProvinceValue) {
            for (int size = this.lProvinces.size() - 1; size >= 0; size--) {
                if (this.lProvinces.get(size).intValue() == i) {
                    return true;
                }
            }
            if (this.fScore >= Game.getProvince(i).fProvinceValue) {
                this.lProvinces.add(Integer.valueOf(i));
                this.fScore -= Game.getProvince(i).fProvinceValue;
                return true;
            }
        }
        return false;
    }

    public final void addProvinces_LiberateCiv(int i, int i2) {
        for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
            if (Game.getProvince(Game.getCiv(i).getProvinceID(i3)).haveACore(i2) && !this.lProvinces_Liberate.contains(Integer.valueOf(Game.getCiv(i).getProvinceID(i3)))) {
                this.lProvinces_Liberate.add(Integer.valueOf(Game.getCiv(i).getProvinceID(i3)));
            }
        }
    }

    public void buildAggressiveExpansion() {
        this.fAggressiveExpansion = 0.0f;
        try {
            for (int size = this.lProvinces.size() - 1; size >= 0; size--) {
                this.fAggressiveExpansion += Math.min(GameValues.aggressiveExpansion.AE_PROVINCE_MAX, Game.getProvince(this.lProvinces.get(size).intValue()).fProvinceValue * GameValues.aggressiveExpansion.AE_PER_PROVINCE_VALUE * getAggressiveExpansion_Extra(this.lProvinces.get(size).intValue()));
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        if (this.demandVassalization) {
            for (int i = 0; i < Game.getCiv(this.iCivID2).getNumOfProvinces(); i++) {
                try {
                    if (!Game.getProvince(Game.getCiv(this.iCivID2).getProvinceID(i)).peaceTreatyIsTaken) {
                        this.fAggressiveExpansion += Math.min(GameValues.aggressiveExpansion.AE_PROVINCE_MAX, Game.getProvince(Game.getCiv(this.iCivID2).getProvinceID(i)).fProvinceValue * GameValues.aggressiveExpansion.AE_PER_PROVINCE_VALUE_VASSALIZATION * getAggressiveExpansion_Extra(Game.getCiv(this.iCivID2).getProvinceID(i)));
                    }
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
        }
        for (int i2 = 0; i2 < this.lSubjectTransfer.size(); i2++) {
            for (int i3 = 0; i3 < Game.getCiv(this.lSubjectTransfer.get(i2).intValue()).getNumOfProvinces(); i3++) {
                try {
                    this.fAggressiveExpansion += Math.min(GameValues.aggressiveExpansion.AE_PROVINCE_MAX, Game.getProvince(Game.getCiv(this.lSubjectTransfer.get(i2).intValue()).getProvinceID(i3)).fProvinceValue * GameValues.aggressiveExpansion.AE_PER_PROVINCE_VALUE_SUBJECT_TRANSFER * getAggressiveExpansion_Extra(Game.getCiv(this.lSubjectTransfer.get(i2).intValue()).getProvinceID(i3)));
                } catch (Exception e3) {
                    CFG.exceptionStack(e3);
                }
            }
        }
        if (this.demandHumiliate) {
            this.fAggressiveExpansion += GameValues.peace.PEACE_HUMILIATE_AGGRESSIVE_EXPANSION_GAIN;
        }
        this.fAggressiveExpansion *= Math.max(0.0f, (Game.getCiv(this.iCivID).civBonuses.AggressiveExpansion / 100.0f) + 1.0f);
    }

    public void buildScore() {
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i = 0; i < Game.getCiv(this.iCivID).getNumOfProvinces(); i++) {
            f2 += Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i)).fProvinceValue;
        }
        for (int i2 = 0; i2 < Game.getCiv(this.iCivID).diplomacy.iVassalsSize; i2++) {
            try {
                for (int i3 = 0; i3 < Game.getCiv(Game.getCiv(this.iCivID).diplomacy.lVassals.get(i2).c).getNumOfProvinces(); i3++) {
                    try {
                        f2 += Game.getProvince(Game.getCiv(Game.getCiv(this.iCivID).diplomacy.lVassals.get(i2).c).getProvinceID(i3)).fProvinceValue * GameValues.peace.PEACE_SCORE_WINNING_SIDE_VASSALS;
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
        for (int i4 = 0; i4 < Game.getCiv(this.iCivID2).getNumOfProvinces(); i4++) {
            f += Game.getProvince(Game.getCiv(this.iCivID2).getProvinceID(i4)).fProvinceValue;
        }
        this.fScoreTotal = f;
        this.fScore = Math.max(f2 * GameValues.peace.PEACE_SCORE_WINNING_SIDE, f * GameValues.peace.PEACE_SCORE_LOSING_SIDE);
        try {
            if (Game.getCiv(this.iCivID2).getCapitalProvinceID() >= 0) {
                int civID = Game.getProvince(Game.getCiv(this.iCivID2).getCapitalProvinceID()).getCivID();
                int i5 = this.iCivID2;
                if (civID == i5) {
                    this.fScore = Math.max(this.fScore, Game.getProvince(Game.getCiv(i5).getCapitalProvinceID()).fProvinceValue + 0.5f);
                }
            }
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
        if (WarManager.lWars.get(this.warKey).isCoalition) {
            this.fScore *= GameValues.peace.PEACE_SCORE_COALITION_WAR;
        }
        if (WarManager.lWars.get(this.warKey).conquerVassal) {
            this.fScore *= GameValues.peace.PEACE_SCORE_CONQUER_VASSAL_WAR;
        }
        this.fScore *= Math.max(0.05f, ((Game.getCiv(this.iCivID).civBonuses.WarScoreCost + (Game.getCiv(this.iCivID).civStability_LostFrom100 * GameValues.civStability.CS_WARSCORE_COST_PER_POINT) + GameValues.civRank.CIV_RANK_WAR_SCORE_COST[Game.getCiv(this.iCivID).iCivRankID]) * (-1.0f)) + 1.0f);
    }

    public final boolean demandGold() {
        if (this.demandGold >= GameValues.peace.PEACE_GOLD_MAX || this.fScore < getScore_DemandGold()) {
            return false;
        }
        this.demandGold++;
        this.fScore -= getScore_DemandGold();
        return true;
    }

    public final void demandGold_Cancel() {
        int i = this.demandGold;
        if (i > 0) {
            this.demandGold = i - 1;
            this.fScore += getScore_DemandGold();
        }
    }

    public final void demandGovernmentChange() {
        if (this.demandGovernmentChange) {
            this.demandGovernmentChange = false;
            this.fScore += getScore_DemandGovernmentChange();
        } else if (this.fScore >= getScore_DemandGovernmentChange()) {
            this.demandGovernmentChange = true;
            this.fScore -= getScore_DemandGovernmentChange();
        }
    }

    public final void demandHumiliate() {
        if (this.demandHumiliate) {
            this.demandHumiliate = false;
            this.fScore += getScore_DemandHumiliate();
        } else if (this.fScore >= getScore_DemandHumiliate()) {
            this.demandHumiliate = true;
            this.fScore -= getScore_DemandHumiliate();
        }
        buildAggressiveExpansion();
    }

    public final void demandLiberateCiv(int i, int i2) {
        if (this.lLiberateCiv.contains(Integer.valueOf(i2))) {
            for (int i3 = 0; i3 < this.lLiberateCiv.size(); i3++) {
                if (this.lLiberateCiv.get(i3).intValue() == i2) {
                    this.lLiberateCiv.remove(i3);
                    removeProvinces_LiberateCiv(i, i2);
                    break;
                }
            }
            this.fScore += getScore_LiberateCiv(i, i2);
        } else if (this.fScore >= getScore_LiberateCiv(i, i2)) {
            this.lLiberateCiv.add(Integer.valueOf(i2));
            addProvinces_LiberateCiv(i, i2);
            this.fScore -= getScore_LiberateCiv(i, i2);
        }
        buildAggressiveExpansion();
    }

    public final void demandMilitaryAccess() {
        if (this.demandMilitaryAccess) {
            this.demandMilitaryAccess = false;
            this.fScore += getScore_DemandMilitaryAccess();
        } else if (this.fScore >= getScore_DemandMilitaryAccess()) {
            this.demandMilitaryAccess = true;
            this.fScore -= getScore_DemandMilitaryAccess();
        }
    }

    public final void demandReligionConversion() {
        if (this.demandReligionConversion) {
            this.demandReligionConversion = false;
            this.fScore += getScore_DemandReligionConversion();
        } else if (this.fScore >= getScore_DemandReligionConversion()) {
            this.demandReligionConversion = true;
            this.fScore -= getScore_DemandReligionConversion();
        }
    }

    public final void demandSubjectTransfer(int i) {
        if (this.lSubjectTransfer.contains(Integer.valueOf(i))) {
            for (int i2 = 0; i2 < this.lSubjectTransfer.size(); i2++) {
                if (this.lSubjectTransfer.get(i2).intValue() == i) {
                    this.lSubjectTransfer.remove(i2);
                    break;
                }
            }
            this.fScore += getScore_SubjectTransfer(i);
        } else if (this.fScore >= getScore_SubjectTransfer(i)) {
            this.lSubjectTransfer.add(Integer.valueOf(i));
            this.fScore -= getScore_SubjectTransfer(i);
        }
        buildAggressiveExpansion();
    }

    public final void demandVassalization() {
        if (this.demandVassalization) {
            this.demandVassalization = false;
            this.fScore += getScore_DemandVassalization();
        } else if (this.fScore >= getScore_DemandVassalization()) {
            this.demandVassalization = true;
            this.fScore -= getScore_DemandVassalization();
        }
        buildAggressiveExpansion();
    }

    public final void demandWarReparations() {
        if (this.demandWarReparations) {
            this.demandWarReparations = false;
            this.fScore += getScore_DemandWarReparations();
        } else if (this.fScore >= getScore_DemandWarReparations()) {
            this.demandWarReparations = true;
            this.fScore -= getScore_DemandWarReparations();
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0259 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x0269 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x027b A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x028b A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x0292 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x02a7 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x02d4 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x02e4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:124:0x02ef A[Catch: Exception -> 0x04be, LOOP:4: B:123:0x02ed->B:124:0x02ef, LOOP_END, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x0309 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0323 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x0362 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x03b3 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:149:0x03c5 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:152:0x03db A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x03f2 A[Catch: Exception -> 0x0424, TryCatch #6 {Exception -> 0x0424, blocks: (B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:300:0x03ec, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x0046  */
    /* JADX WARN: Code duplicated, block: B:167:0x043b A[Catch: Exception -> 0x04b9, TryCatch #5 {Exception -> 0x04b9, blocks: (B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3), top: B:298:0x0428, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:170:0x0447 A[Catch: Exception -> 0x04b9, LOOP:5: B:168:0x0441->B:170:0x0447, LOOP_END, TryCatch #5 {Exception -> 0x04b9, blocks: (B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3), top: B:298:0x0428, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:173:0x0460 A[Catch: Exception -> 0x04b9, TryCatch #5 {Exception -> 0x04b9, blocks: (B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3), top: B:298:0x0428, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:177:0x0486 A[Catch: Exception -> 0x04b9, TryCatch #5 {Exception -> 0x04b9, blocks: (B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3), top: B:298:0x0428, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:298:0x0428 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:306:0x0228 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:309:0x029d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:310:0x029d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:312:0x0279 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:314:0x028d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:317:0x02dd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:79:0x017f A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0188 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01a9 A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x021f A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x022e A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x024f A[Catch: Exception -> 0x04be, TryCatch #2 {Exception -> 0x04be, blocks: (B:18:0x004a, B:20:0x0052, B:22:0x0058, B:24:0x0066, B:78:0x017c, B:79:0x017f, B:81:0x0188, B:83:0x01a9, B:84:0x01f9, B:86:0x021f, B:87:0x0228, B:89:0x022e, B:91:0x0236, B:93:0x023d, B:95:0x0243, B:96:0x0249, B:98:0x024f, B:100:0x0259, B:101:0x0263, B:103:0x0269, B:106:0x027b, B:108:0x028b, B:109:0x028d, B:111:0x0292, B:112:0x029d, B:113:0x02a0, B:115:0x02a7, B:117:0x02d4, B:118:0x02dd, B:119:0x02e0, B:122:0x02e6, B:124:0x02ef, B:125:0x0305, B:127:0x0309, B:129:0x030f, B:130:0x031f, B:132:0x0323, B:134:0x0329, B:135:0x035e, B:137:0x0362, B:139:0x036c, B:144:0x03af, B:146:0x03b3, B:147:0x03c1, B:149:0x03c5, B:150:0x03d7, B:152:0x03db, B:154:0x03e5, B:183:0x04ba, B:164:0x0425, B:143:0x03ac, B:140:0x039d, B:26:0x0074, B:28:0x007f, B:32:0x0095, B:34:0x009c, B:37:0x00af, B:38:0x00b2, B:42:0x00b9, B:44:0x00bf, B:50:0x00d3, B:55:0x00e4, B:57:0x00ed, B:58:0x0144, B:60:0x0148, B:61:0x014b, B:63:0x014f, B:64:0x0152, B:66:0x0156, B:67:0x0159, B:69:0x015d, B:70:0x0160, B:72:0x0164, B:73:0x0167, B:75:0x0177, B:47:0x00cd, B:165:0x0428, B:167:0x043b, B:168:0x0441, B:170:0x0447, B:171:0x0455, B:173:0x0460, B:175:0x0466, B:177:0x0486, B:179:0x049e, B:180:0x04b3, B:155:0x03ec, B:157:0x03f2, B:159:0x0402, B:161:0x0414), top: B:293:0x004a, inners: #3, #4, #5, #6 }] */
    public boolean enforceDemands(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int size;
        int iFloor;
        ArrayList arrayList;
        int i;
        int iMin;
        int iNextInt;
        int size2;
        ArrayList arrayList2;
        int i2;
        int size3;
        Province province;
        int i3;
        int i4;
        int iIntValue;
        boolean z6 = DiplomacyManager.isAlly(this.iCivID, Game.player.iCivID) || DiplomacyManager.isAlly(this.iCivID2, Game.player.iCivID);
        Civilization civ = Game.getCiv(this.iCivID);
        Civilization civ2 = Game.getCiv(this.iCivID2);
        if (z) {
            z3 = false;
        } else {
            try {
                if (WarManager.lWars.get(this.warKey).isInThisWar(Game.player.iCivID)) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            } catch (Exception unused) {
                z2 = false;
            }
        }
        z2 = z3;
        if (z) {
            for (size = this.lProvinces.size() - 1; size >= 0; size--) {
                iIntValue = this.lProvinces.get(size).intValue();
                Game.getProvince(iIntValue).setCivID(this.iCivID);
                if (!Game.getProvince(iIntValue).haveACore(this.iCivID)) {
                    Game.getProvince(iIntValue).setEconomy(Game.getProvince(iIntValue).getEconomy() * GameValues.peace.PEACE_ANNEX_PROVINCE_ECONOMY_CHANGE);
                    Game.getProvince(iIntValue).setTaxEfficiency(Game.getProvince(iIntValue).getTaxEfficiency() * GameValues.peace.PEACE_ANNEX_PROVINCE_TAX_CHANGE);
                    Game.getProvince(iIntValue).setGrowthRate(Game.getProvince(iIntValue).getGrowthRate() * GameValues.peace.PEACE_ANNEX_PROVINCE_GROWTH_RATE_CHANGE);
                    Game.getProvince(iIntValue).setManpower(Game.getProvince(iIntValue).getManpower() * GameValues.peace.PEACE_ANNEX_PROVINCE_MANPOWER_CHANGE);
                }
                Game.getProvince(iIntValue).setRevulutionaryRisk(Math.min(Game.getProvince(iIntValue).getRevulutionaryRisk(), GameValues.peace.PEACE_ANNEX_PROVINCE_MAX_UNREST));
                civ.eventsData3.addConqueredProvinces(1);
                if (civ.getCivID() == Game.player.iCivID) {
                    Game.stats.civStats.cp++;
                }
            }
            if (!z) {
                arrayList2 = new ArrayList();
                for (i2 = 0; i2 < civ2.getNumOfProvinces(); i2++) {
                    if (civ2.getCapitalProvinceID() != civ2.getProvinceID(i2)) {
                        province = Game.getProvince(civ2.getProvinceID(i2));
                        i4 = 0;
                        for (i3 = 0; i3 < province.getNeighboringProvincesSize(); i3++) {
                            if (Game.getProvince(province.getNeighboringProvinces(i3)).getCivID() == this.iCivID2) {
                                i4 = 0;
                                break;
                            }
                            if (Game.getProvince(province.getNeighboringProvinces(i3)).getCivID() == this.iCivID) {
                                i4++;
                            }
                        }
                        if (i4 > 0) {
                            arrayList2.add(Integer.valueOf(civ2.getProvinceID(i2)));
                        }
                    }
                }
                for (size3 = arrayList2.size() - 1; size3 >= 0; size3--) {
                    Game.getProvince(((Integer) arrayList2.get(size3)).intValue()).setCivID(this.iCivID);
                    this.lProvinces.add((Integer) arrayList2.get(size3));
                    civ.eventsData3.addConqueredProvinces(1);
                    if (civ.getCivID() == Game.player.iCivID) {
                        Game.stats.civStats.cp++;
                    }
                }
            }
            if (Game.FOG_OF_WAR) {
                for (size2 = this.lProvinces.size() - 1; size2 >= 0; size2--) {
                    Game.player.fog.updateFogOfWar_All(this.lProvinces.get(size2).intValue());
                }
            }
            if (this.demandVassalization) {
                int puppetOfCivID = civ2.getPuppetOfCivID();
                civ2.setPuppetOfCivID(this.iCivID);
                Game.getCiv(puppetOfCivID).updateArmyImgID();
            }
            if (this.demandWarReparations) {
                CivilizationBonuses civilizationBonuses = new CivilizationBonuses();
                civilizationBonuses.MonthlyIncome = getWarReparationsPerMonth(this.iCivID2);
                civilizationBonuses.TempTurnID = Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS;
                civ.addCivilizationBonus_Temporary(civilizationBonuses);
                CivilizationBonuses civilizationBonuses2 = new CivilizationBonuses();
                civilizationBonuses2.MonthlyIncome = getWarReparationsPerMonth(this.iCivID2) * (-1.0f);
                civilizationBonuses2.TempTurnID = Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS;
                civ2.addCivilizationBonus_Temporary(civilizationBonuses2);
            }
            if (this.demandGovernmentChange) {
                Game.addSimpleTask(new AnonymousClass1("changeGovernmentType" + this.iCivID2 + "_" + civ.getIdeologyID(), this.iCivID2, civ.getIdeologyID()));
            }
            WarManager.lWars.get(this.warKey).updateCapitalProvinceID();
            if (this.demandGold > 0) {
                float gold_PerDemand = getGold_PerDemand();
                civ.fGold += gold_PerDemand;
                civ2.fGold -= gold_PerDemand;
            }
            if (this.demandHumiliate) {
                civ.fLegacy += GameValues.peace.PEACE_HUMILIATE_LEGACY_GAIN;
                civ2.fLegacy -= GameValues.peace.PEACE_HUMILIATE_LEGACY_LOSER;
            }
            if (this.demandReligionConversion) {
                civ2.setReligionID_UpdateBonuses(civ.getReligionID());
                if (civ2.getCapitalProvinceID() >= 0) {
                    iFloor = ((int) Math.floor(civ2.getNumOfProvinces() * GameValues.peace.PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT)) - 1;
                    if (iFloor > 0) {
                        arrayList = new ArrayList();
                        for (i = 0; i < civ2.getNumOfProvinces(); i++) {
                            arrayList.add(Integer.valueOf(civ2.getProvinceID(i)));
                        }
                        for (iMin = Math.min(iFloor, arrayList.size()) - 1; iMin >= 0; iMin--) {
                            iNextInt = Game.oR.nextInt(arrayList.size());
                            if (Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getCivID() == this.iCivID2) {
                                Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).setReligion(civ2.getReligionID());
                            }
                            arrayList.remove(iNextInt);
                        }
                    }
                } else {
                    iFloor = ((int) Math.floor(civ2.getNumOfProvinces() * GameValues.peace.PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT)) - 1;
                    if (iFloor > 0) {
                        arrayList = new ArrayList();
                        while (i < civ2.getNumOfProvinces()) {
                            arrayList.add(Integer.valueOf(civ2.getProvinceID(i)));
                        }
                        while (iMin >= 0) {
                            iNextInt = Game.oR.nextInt(arrayList.size());
                            if (Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getCivID() == this.iCivID2) {
                                Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).setReligion(civ2.getReligionID());
                            }
                            arrayList.remove(iNextInt);
                        }
                    }
                }
            }
        } else {
            try {
                if (this.lProvinces.isEmpty() || !GameValues.peace.AI_ABANDON_DEMAND_PROVINCES_IF_ARE_NOT_CONNECTED || Game.ideologiesManager.getIdeology(civ2.getIdeologyID()).TRIBAL || Game.oR.nextInt(100) >= GameValues.peace.AI_ABANDON_DEMAND_PROVINCES_IF_ARE_NOT_CONNECTED_CHANCE) {
                    while (size >= 0) {
                        iIntValue = this.lProvinces.get(size).intValue();
                        Game.getProvince(iIntValue).setCivID(this.iCivID);
                        if (!Game.getProvince(iIntValue).haveACore(this.iCivID)) {
                            Game.getProvince(iIntValue).setEconomy(Game.getProvince(iIntValue).getEconomy() * GameValues.peace.PEACE_ANNEX_PROVINCE_ECONOMY_CHANGE);
                            Game.getProvince(iIntValue).setTaxEfficiency(Game.getProvince(iIntValue).getTaxEfficiency() * GameValues.peace.PEACE_ANNEX_PROVINCE_TAX_CHANGE);
                            Game.getProvince(iIntValue).setGrowthRate(Game.getProvince(iIntValue).getGrowthRate() * GameValues.peace.PEACE_ANNEX_PROVINCE_GROWTH_RATE_CHANGE);
                            Game.getProvince(iIntValue).setManpower(Game.getProvince(iIntValue).getManpower() * GameValues.peace.PEACE_ANNEX_PROVINCE_MANPOWER_CHANGE);
                        }
                        Game.getProvince(iIntValue).setRevulutionaryRisk(Math.min(Game.getProvince(iIntValue).getRevulutionaryRisk(), GameValues.peace.PEACE_ANNEX_PROVINCE_MAX_UNREST));
                        civ.eventsData3.addConqueredProvinces(1);
                        if (civ.getCivID() == Game.player.iCivID) {
                            Game.stats.civStats.cp++;
                        }
                    }
                    if (!z && !this.lProvinces.isEmpty() && civ2.getNumOfProvinces() > 2 && GameValues.peace.AI_PEACE_EXTRA_DEMAND_SURROUNDED_PROVINCES) {
                        arrayList2 = new ArrayList();
                        while (i2 < civ2.getNumOfProvinces()) {
                            if (civ2.getCapitalProvinceID() != civ2.getProvinceID(i2)) {
                                province = Game.getProvince(civ2.getProvinceID(i2));
                                i4 = 0;
                                while (i3 < province.getNeighboringProvincesSize()) {
                                    if (Game.getProvince(province.getNeighboringProvinces(i3)).getCivID() == this.iCivID2) {
                                        i4 = 0;
                                        break;
                                    }
                                    if (Game.getProvince(province.getNeighboringProvinces(i3)).getCivID() == this.iCivID) {
                                        i4++;
                                    }
                                }
                                if (i4 > 0) {
                                    arrayList2.add(Integer.valueOf(civ2.getProvinceID(i2)));
                                }
                            }
                        }
                        while (size3 >= 0) {
                            Game.getProvince(((Integer) arrayList2.get(size3)).intValue()).setCivID(this.iCivID);
                            this.lProvinces.add((Integer) arrayList2.get(size3));
                            civ.eventsData3.addConqueredProvinces(1);
                            if (civ.getCivID() == Game.player.iCivID) {
                                Game.stats.civStats.cp++;
                            }
                        }
                    }
                    if (Game.FOG_OF_WAR && z6) {
                        while (size2 >= 0) {
                            Game.player.fog.updateFogOfWar_All(this.lProvinces.get(size2).intValue());
                        }
                    }
                    if (this.demandVassalization && civ2.getNumOfProvinces() > 0) {
                        int puppetOfCivID2 = civ2.getPuppetOfCivID();
                        civ2.setPuppetOfCivID(this.iCivID);
                        Game.getCiv(puppetOfCivID2).updateArmyImgID();
                    }
                    if (this.demandWarReparations && civ2.getNumOfProvinces() > 0) {
                        CivilizationBonuses civilizationBonuses3 = new CivilizationBonuses();
                        civilizationBonuses3.MonthlyIncome = getWarReparationsPerMonth(this.iCivID2);
                        civilizationBonuses3.TempTurnID = Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS;
                        civ.addCivilizationBonus_Temporary(civilizationBonuses3);
                        CivilizationBonuses civilizationBonuses4 = new CivilizationBonuses();
                        civilizationBonuses4.MonthlyIncome = getWarReparationsPerMonth(this.iCivID2) * (-1.0f);
                        civilizationBonuses4.TempTurnID = Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS;
                        civ2.addCivilizationBonus_Temporary(civilizationBonuses4);
                    }
                    if (this.demandGovernmentChange && civ2.getIdeologyID() != civ.getIdeologyID()) {
                        Game.addSimpleTask(new AnonymousClass1("changeGovernmentType" + this.iCivID2 + "_" + civ.getIdeologyID(), this.iCivID2, civ.getIdeologyID()));
                    }
                    try {
                        WarManager.lWars.get(this.warKey).updateCapitalProvinceID();
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                    if (this.demandGold > 0) {
                        float gold_PerDemand2 = getGold_PerDemand();
                        civ.fGold += gold_PerDemand2;
                        civ2.fGold -= gold_PerDemand2;
                    }
                    if (this.demandHumiliate) {
                        civ.fLegacy += GameValues.peace.PEACE_HUMILIATE_LEGACY_GAIN;
                        civ2.fLegacy -= GameValues.peace.PEACE_HUMILIATE_LEGACY_LOSER;
                    }
                    if (this.demandReligionConversion && civ2.getReligionID() != civ.getReligionID()) {
                        civ2.setReligionID_UpdateBonuses(civ.getReligionID());
                        try {
                            if (civ2.getCapitalProvinceID() >= 0 || Game.getProvince(civ2.getCapitalProvinceID()).getCivID() != this.iCivID2 || Game.getProvince(civ2.getCapitalProvinceID()).getReligion() == civ2.getReligionID()) {
                                try {
                                    iFloor = ((int) Math.floor(civ2.getNumOfProvinces() * GameValues.peace.PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT)) - 1;
                                    if (iFloor > 0) {
                                        arrayList = new ArrayList();
                                        while (i < civ2.getNumOfProvinces()) {
                                            arrayList.add(Integer.valueOf(civ2.getProvinceID(i)));
                                        }
                                        while (iMin >= 0 && arrayList.size() > 0) {
                                            iNextInt = Game.oR.nextInt(arrayList.size());
                                            if (Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getCivID() == this.iCivID2 && Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getReligion() != civ2.getReligionID()) {
                                                Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).setReligion(civ2.getReligionID());
                                            }
                                            arrayList.remove(iNextInt);
                                        }
                                    }
                                } catch (Exception e2) {
                                    CFG.exceptionStack(e2);
                                }
                            } else {
                                Game.getProvince(civ2.getCapitalProvinceID()).setReligion(civ2.getReligionID());
                                iFloor = ((int) Math.floor(civ2.getNumOfProvinces() * GameValues.peace.PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT)) - 1;
                                if (iFloor > 0) {
                                    arrayList = new ArrayList();
                                    while (i < civ2.getNumOfProvinces()) {
                                        arrayList.add(Integer.valueOf(civ2.getProvinceID(i)));
                                    }
                                    while (iMin >= 0) {
                                        iNextInt = Game.oR.nextInt(arrayList.size());
                                        if (Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getCivID() == this.iCivID2) {
                                            Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).setReligion(civ2.getReligionID());
                                        }
                                        arrayList.remove(iNextInt);
                                    }
                                }
                            }
                        } catch (Exception e3) {
                            CFG.exceptionStack(e3);
                        }
                    }
                } else {
                    try {
                        int size4 = this.lProvinces.size() - 1;
                        boolean z7 = false;
                        boolean z8 = false;
                        while (size4 >= 0) {
                            Province province2 = Game.getProvince(this.lProvinces.get(size4).intValue());
                            if (province2.accessToMainSea) {
                                z8 = true;
                            }
                            for (int i5 = 0; i5 < province2.getNeighboringProvincesSize(); i5++) {
                                if (Game.getProvince(province2.getNeighboringProvinces(i5)).getCivID() == this.iCivID) {
                                    z7 = true;
                                    size4 = -1;
                                    break;
                                }
                            }
                            size4--;
                        }
                        if (z7) {
                            while (size >= 0) {
                                iIntValue = this.lProvinces.get(size).intValue();
                                Game.getProvince(iIntValue).setCivID(this.iCivID);
                                if (!Game.getProvince(iIntValue).haveACore(this.iCivID)) {
                                    Game.getProvince(iIntValue).setEconomy(Game.getProvince(iIntValue).getEconomy() * GameValues.peace.PEACE_ANNEX_PROVINCE_ECONOMY_CHANGE);
                                    Game.getProvince(iIntValue).setTaxEfficiency(Game.getProvince(iIntValue).getTaxEfficiency() * GameValues.peace.PEACE_ANNEX_PROVINCE_TAX_CHANGE);
                                    Game.getProvince(iIntValue).setGrowthRate(Game.getProvince(iIntValue).getGrowthRate() * GameValues.peace.PEACE_ANNEX_PROVINCE_GROWTH_RATE_CHANGE);
                                    Game.getProvince(iIntValue).setManpower(Game.getProvince(iIntValue).getManpower() * GameValues.peace.PEACE_ANNEX_PROVINCE_MANPOWER_CHANGE);
                                }
                                Game.getProvince(iIntValue).setRevulutionaryRisk(Math.min(Game.getProvince(iIntValue).getRevulutionaryRisk(), GameValues.peace.PEACE_ANNEX_PROVINCE_MAX_UNREST));
                                civ.eventsData3.addConqueredProvinces(1);
                                if (civ.getCivID() == Game.player.iCivID) {
                                    Game.stats.civStats.cp++;
                                }
                            }
                            if (!z) {
                                arrayList2 = new ArrayList();
                                while (i2 < civ2.getNumOfProvinces()) {
                                    if (civ2.getCapitalProvinceID() != civ2.getProvinceID(i2)) {
                                        province = Game.getProvince(civ2.getProvinceID(i2));
                                        i4 = 0;
                                        while (i3 < province.getNeighboringProvincesSize()) {
                                            if (Game.getProvince(province.getNeighboringProvinces(i3)).getCivID() == this.iCivID2) {
                                                i4 = 0;
                                                break;
                                            }
                                            if (Game.getProvince(province.getNeighboringProvinces(i3)).getCivID() == this.iCivID) {
                                                i4++;
                                            }
                                        }
                                        if (i4 > 0) {
                                            arrayList2.add(Integer.valueOf(civ2.getProvinceID(i2)));
                                        }
                                    }
                                }
                                while (size3 >= 0) {
                                    Game.getProvince(((Integer) arrayList2.get(size3)).intValue()).setCivID(this.iCivID);
                                    this.lProvinces.add((Integer) arrayList2.get(size3));
                                    civ.eventsData3.addConqueredProvinces(1);
                                    if (civ.getCivID() == Game.player.iCivID) {
                                        Game.stats.civStats.cp++;
                                    }
                                }
                            }
                            if (Game.FOG_OF_WAR) {
                                while (size2 >= 0) {
                                    Game.player.fog.updateFogOfWar_All(this.lProvinces.get(size2).intValue());
                                }
                            }
                            if (this.demandVassalization) {
                                int puppetOfCivID3 = civ2.getPuppetOfCivID();
                                civ2.setPuppetOfCivID(this.iCivID);
                                Game.getCiv(puppetOfCivID3).updateArmyImgID();
                            }
                            if (this.demandWarReparations) {
                                CivilizationBonuses civilizationBonuses5 = new CivilizationBonuses();
                                civilizationBonuses5.MonthlyIncome = getWarReparationsPerMonth(this.iCivID2);
                                civilizationBonuses5.TempTurnID = Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS;
                                civ.addCivilizationBonus_Temporary(civilizationBonuses5);
                                CivilizationBonuses civilizationBonuses6 = new CivilizationBonuses();
                                civilizationBonuses6.MonthlyIncome = getWarReparationsPerMonth(this.iCivID2) * (-1.0f);
                                civilizationBonuses6.TempTurnID = Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS;
                                civ2.addCivilizationBonus_Temporary(civilizationBonuses6);
                            }
                            if (this.demandGovernmentChange) {
                                Game.addSimpleTask(new AnonymousClass1("changeGovernmentType" + this.iCivID2 + "_" + civ.getIdeologyID(), this.iCivID2, civ.getIdeologyID()));
                            }
                            WarManager.lWars.get(this.warKey).updateCapitalProvinceID();
                            if (this.demandGold > 0) {
                                float gold_PerDemand3 = getGold_PerDemand();
                                civ.fGold += gold_PerDemand3;
                                civ2.fGold -= gold_PerDemand3;
                            }
                            if (this.demandHumiliate) {
                                civ.fLegacy += GameValues.peace.PEACE_HUMILIATE_LEGACY_GAIN;
                                civ2.fLegacy -= GameValues.peace.PEACE_HUMILIATE_LEGACY_LOSER;
                            }
                            if (this.demandReligionConversion) {
                                civ2.setReligionID_UpdateBonuses(civ.getReligionID());
                                if (civ2.getCapitalProvinceID() >= 0) {
                                    iFloor = ((int) Math.floor(civ2.getNumOfProvinces() * GameValues.peace.PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT)) - 1;
                                    if (iFloor > 0) {
                                        arrayList = new ArrayList();
                                        while (i < civ2.getNumOfProvinces()) {
                                            arrayList.add(Integer.valueOf(civ2.getProvinceID(i)));
                                        }
                                        while (iMin >= 0) {
                                            iNextInt = Game.oR.nextInt(arrayList.size());
                                            if (Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getCivID() == this.iCivID2) {
                                                Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).setReligion(civ2.getReligionID());
                                            }
                                            arrayList.remove(iNextInt);
                                        }
                                    }
                                } else {
                                    iFloor = ((int) Math.floor(civ2.getNumOfProvinces() * GameValues.peace.PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT)) - 1;
                                    if (iFloor > 0) {
                                        arrayList = new ArrayList();
                                        while (i < civ2.getNumOfProvinces()) {
                                            arrayList.add(Integer.valueOf(civ2.getProvinceID(i)));
                                        }
                                        while (iMin >= 0) {
                                            iNextInt = Game.oR.nextInt(arrayList.size());
                                            if (Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getCivID() == this.iCivID2) {
                                                Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).setReligion(civ2.getReligionID());
                                            }
                                            arrayList.remove(iNextInt);
                                        }
                                    }
                                }
                            }
                        } else {
                            if (z8) {
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= civ.getNumOfProvinces()) {
                                        z5 = false;
                                        break;
                                    }
                                    if (Game.getProvince(civ.getProvinceID(i6)).accessToMainSea) {
                                        z5 = true;
                                        break;
                                    }
                                    i6++;
                                }
                                if (!z5 || Game.oR.nextInt(100) < GameValues.peace.AI_ABANDON_DEMAND_PROVINCES_HAVE_ONLY_ACCESS_TO_MAIN_SEA_CHANCE) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                            } else {
                                z4 = true;
                            }
                            if (z4) {
                                for (int size5 = this.lProvinces.size() - 1; size5 >= 0; size5--) {
                                    Game.getProvince(this.lProvinces.get(size5).intValue()).peaceTreatyIsTaken = false;
                                    Game.getProvince(this.lProvinces.get(size5).intValue()).aiPeaceCivID = Game.getProvince(this.lProvinces.get(size5).intValue()).getCivID();
                                    this.fScore += Game.getProvince(this.lProvinces.get(size5).intValue()).fProvinceValue;
                                    this.lProvinces.remove(size5);
                                }
                                if (!this.demandReligionConversion) {
                                    demandReligionConversion();
                                }
                                if (!this.demandGovernmentChange) {
                                    demandGovernmentChange();
                                }
                                if (!this.demandVassalization) {
                                    demandVassalization();
                                }
                                if (!this.demandWarReparations) {
                                    demandWarReparations();
                                }
                                if (!this.demandHumiliate) {
                                    demandHumiliate();
                                }
                                demandGold();
                                demandGold();
                                demandGold();
                                demandGold();
                                if (this.demandMilitaryAccess) {
                                    while (size >= 0) {
                                        iIntValue = this.lProvinces.get(size).intValue();
                                        Game.getProvince(iIntValue).setCivID(this.iCivID);
                                        if (!Game.getProvince(iIntValue).haveACore(this.iCivID)) {
                                            Game.getProvince(iIntValue).setEconomy(Game.getProvince(iIntValue).getEconomy() * GameValues.peace.PEACE_ANNEX_PROVINCE_ECONOMY_CHANGE);
                                            Game.getProvince(iIntValue).setTaxEfficiency(Game.getProvince(iIntValue).getTaxEfficiency() * GameValues.peace.PEACE_ANNEX_PROVINCE_TAX_CHANGE);
                                            Game.getProvince(iIntValue).setGrowthRate(Game.getProvince(iIntValue).getGrowthRate() * GameValues.peace.PEACE_ANNEX_PROVINCE_GROWTH_RATE_CHANGE);
                                            Game.getProvince(iIntValue).setManpower(Game.getProvince(iIntValue).getManpower() * GameValues.peace.PEACE_ANNEX_PROVINCE_MANPOWER_CHANGE);
                                        }
                                        Game.getProvince(iIntValue).setRevulutionaryRisk(Math.min(Game.getProvince(iIntValue).getRevulutionaryRisk(), GameValues.peace.PEACE_ANNEX_PROVINCE_MAX_UNREST));
                                        civ.eventsData3.addConqueredProvinces(1);
                                        if (civ.getCivID() == Game.player.iCivID) {
                                            Game.stats.civStats.cp++;
                                        }
                                    }
                                    if (!z) {
                                        arrayList2 = new ArrayList();
                                        while (i2 < civ2.getNumOfProvinces()) {
                                            if (civ2.getCapitalProvinceID() != civ2.getProvinceID(i2)) {
                                                province = Game.getProvince(civ2.getProvinceID(i2));
                                                i4 = 0;
                                                while (i3 < province.getNeighboringProvincesSize()) {
                                                    if (Game.getProvince(province.getNeighboringProvinces(i3)).getCivID() == this.iCivID2) {
                                                        i4 = 0;
                                                        break;
                                                    }
                                                    if (Game.getProvince(province.getNeighboringProvinces(i3)).getCivID() == this.iCivID) {
                                                        i4++;
                                                    }
                                                }
                                                if (i4 > 0) {
                                                    arrayList2.add(Integer.valueOf(civ2.getProvinceID(i2)));
                                                }
                                            }
                                        }
                                        while (size3 >= 0) {
                                            Game.getProvince(((Integer) arrayList2.get(size3)).intValue()).setCivID(this.iCivID);
                                            this.lProvinces.add((Integer) arrayList2.get(size3));
                                            civ.eventsData3.addConqueredProvinces(1);
                                            if (civ.getCivID() == Game.player.iCivID) {
                                                Game.stats.civStats.cp++;
                                            }
                                        }
                                    }
                                    if (Game.FOG_OF_WAR) {
                                        while (size2 >= 0) {
                                            Game.player.fog.updateFogOfWar_All(this.lProvinces.get(size2).intValue());
                                        }
                                    }
                                    if (this.demandVassalization) {
                                        int puppetOfCivID4 = civ2.getPuppetOfCivID();
                                        civ2.setPuppetOfCivID(this.iCivID);
                                        Game.getCiv(puppetOfCivID4).updateArmyImgID();
                                    }
                                    if (this.demandWarReparations) {
                                        CivilizationBonuses civilizationBonuses7 = new CivilizationBonuses();
                                        civilizationBonuses7.MonthlyIncome = getWarReparationsPerMonth(this.iCivID2);
                                        civilizationBonuses7.TempTurnID = Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS;
                                        civ.addCivilizationBonus_Temporary(civilizationBonuses7);
                                        CivilizationBonuses civilizationBonuses8 = new CivilizationBonuses();
                                        civilizationBonuses8.MonthlyIncome = getWarReparationsPerMonth(this.iCivID2) * (-1.0f);
                                        civilizationBonuses8.TempTurnID = Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS;
                                        civ2.addCivilizationBonus_Temporary(civilizationBonuses8);
                                    }
                                    if (this.demandGovernmentChange) {
                                        Game.addSimpleTask(new AnonymousClass1("changeGovernmentType" + this.iCivID2 + "_" + civ.getIdeologyID(), this.iCivID2, civ.getIdeologyID()));
                                    }
                                    WarManager.lWars.get(this.warKey).updateCapitalProvinceID();
                                    if (this.demandGold > 0) {
                                        float gold_PerDemand4 = getGold_PerDemand();
                                        civ.fGold += gold_PerDemand4;
                                        civ2.fGold -= gold_PerDemand4;
                                    }
                                    if (this.demandHumiliate) {
                                        civ.fLegacy += GameValues.peace.PEACE_HUMILIATE_LEGACY_GAIN;
                                        civ2.fLegacy -= GameValues.peace.PEACE_HUMILIATE_LEGACY_LOSER;
                                    }
                                    if (this.demandReligionConversion) {
                                        civ2.setReligionID_UpdateBonuses(civ.getReligionID());
                                        if (civ2.getCapitalProvinceID() >= 0) {
                                            iFloor = ((int) Math.floor(civ2.getNumOfProvinces() * GameValues.peace.PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT)) - 1;
                                            if (iFloor > 0) {
                                                arrayList = new ArrayList();
                                                while (i < civ2.getNumOfProvinces()) {
                                                    arrayList.add(Integer.valueOf(civ2.getProvinceID(i)));
                                                }
                                                while (iMin >= 0) {
                                                    iNextInt = Game.oR.nextInt(arrayList.size());
                                                    if (Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getCivID() == this.iCivID2) {
                                                        Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).setReligion(civ2.getReligionID());
                                                    }
                                                    arrayList.remove(iNextInt);
                                                }
                                            }
                                        } else {
                                            iFloor = ((int) Math.floor(civ2.getNumOfProvinces() * GameValues.peace.PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT)) - 1;
                                            if (iFloor > 0) {
                                                arrayList = new ArrayList();
                                                while (i < civ2.getNumOfProvinces()) {
                                                    arrayList.add(Integer.valueOf(civ2.getProvinceID(i)));
                                                }
                                                while (iMin >= 0) {
                                                    iNextInt = Game.oR.nextInt(arrayList.size());
                                                    if (Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getCivID() == this.iCivID2) {
                                                        Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).setReligion(civ2.getReligionID());
                                                    }
                                                    arrayList.remove(iNextInt);
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    demandMilitaryAccess();
                                    while (size >= 0) {
                                        iIntValue = this.lProvinces.get(size).intValue();
                                        Game.getProvince(iIntValue).setCivID(this.iCivID);
                                        if (!Game.getProvince(iIntValue).haveACore(this.iCivID)) {
                                            Game.getProvince(iIntValue).setEconomy(Game.getProvince(iIntValue).getEconomy() * GameValues.peace.PEACE_ANNEX_PROVINCE_ECONOMY_CHANGE);
                                            Game.getProvince(iIntValue).setTaxEfficiency(Game.getProvince(iIntValue).getTaxEfficiency() * GameValues.peace.PEACE_ANNEX_PROVINCE_TAX_CHANGE);
                                            Game.getProvince(iIntValue).setGrowthRate(Game.getProvince(iIntValue).getGrowthRate() * GameValues.peace.PEACE_ANNEX_PROVINCE_GROWTH_RATE_CHANGE);
                                            Game.getProvince(iIntValue).setManpower(Game.getProvince(iIntValue).getManpower() * GameValues.peace.PEACE_ANNEX_PROVINCE_MANPOWER_CHANGE);
                                        }
                                        Game.getProvince(iIntValue).setRevulutionaryRisk(Math.min(Game.getProvince(iIntValue).getRevulutionaryRisk(), GameValues.peace.PEACE_ANNEX_PROVINCE_MAX_UNREST));
                                        civ.eventsData3.addConqueredProvinces(1);
                                        if (civ.getCivID() == Game.player.iCivID) {
                                            Game.stats.civStats.cp++;
                                        }
                                    }
                                    if (!z) {
                                        arrayList2 = new ArrayList();
                                        while (i2 < civ2.getNumOfProvinces()) {
                                            if (civ2.getCapitalProvinceID() != civ2.getProvinceID(i2)) {
                                                province = Game.getProvince(civ2.getProvinceID(i2));
                                                i4 = 0;
                                                while (i3 < province.getNeighboringProvincesSize()) {
                                                    if (Game.getProvince(province.getNeighboringProvinces(i3)).getCivID() == this.iCivID2) {
                                                        i4 = 0;
                                                        break;
                                                    }
                                                    if (Game.getProvince(province.getNeighboringProvinces(i3)).getCivID() == this.iCivID) {
                                                        i4++;
                                                    }
                                                }
                                                if (i4 > 0) {
                                                    arrayList2.add(Integer.valueOf(civ2.getProvinceID(i2)));
                                                }
                                            }
                                        }
                                        while (size3 >= 0) {
                                            Game.getProvince(((Integer) arrayList2.get(size3)).intValue()).setCivID(this.iCivID);
                                            this.lProvinces.add((Integer) arrayList2.get(size3));
                                            civ.eventsData3.addConqueredProvinces(1);
                                            if (civ.getCivID() == Game.player.iCivID) {
                                                Game.stats.civStats.cp++;
                                            }
                                        }
                                    }
                                    if (Game.FOG_OF_WAR) {
                                        while (size2 >= 0) {
                                            Game.player.fog.updateFogOfWar_All(this.lProvinces.get(size2).intValue());
                                        }
                                    }
                                    if (this.demandVassalization) {
                                        int puppetOfCivID5 = civ2.getPuppetOfCivID();
                                        civ2.setPuppetOfCivID(this.iCivID);
                                        Game.getCiv(puppetOfCivID5).updateArmyImgID();
                                    }
                                    if (this.demandWarReparations) {
                                        CivilizationBonuses civilizationBonuses9 = new CivilizationBonuses();
                                        civilizationBonuses9.MonthlyIncome = getWarReparationsPerMonth(this.iCivID2);
                                        civilizationBonuses9.TempTurnID = Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS;
                                        civ.addCivilizationBonus_Temporary(civilizationBonuses9);
                                        CivilizationBonuses civilizationBonuses10 = new CivilizationBonuses();
                                        civilizationBonuses10.MonthlyIncome = getWarReparationsPerMonth(this.iCivID2) * (-1.0f);
                                        civilizationBonuses10.TempTurnID = Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS;
                                        civ2.addCivilizationBonus_Temporary(civilizationBonuses10);
                                    }
                                    if (this.demandGovernmentChange) {
                                        Game.addSimpleTask(new AnonymousClass1("changeGovernmentType" + this.iCivID2 + "_" + civ.getIdeologyID(), this.iCivID2, civ.getIdeologyID()));
                                    }
                                    WarManager.lWars.get(this.warKey).updateCapitalProvinceID();
                                    if (this.demandGold > 0) {
                                        float gold_PerDemand5 = getGold_PerDemand();
                                        civ.fGold += gold_PerDemand5;
                                        civ2.fGold -= gold_PerDemand5;
                                    }
                                    if (this.demandHumiliate) {
                                        civ.fLegacy += GameValues.peace.PEACE_HUMILIATE_LEGACY_GAIN;
                                        civ2.fLegacy -= GameValues.peace.PEACE_HUMILIATE_LEGACY_LOSER;
                                    }
                                    if (this.demandReligionConversion) {
                                        civ2.setReligionID_UpdateBonuses(civ.getReligionID());
                                        if (civ2.getCapitalProvinceID() >= 0) {
                                            iFloor = ((int) Math.floor(civ2.getNumOfProvinces() * GameValues.peace.PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT)) - 1;
                                            if (iFloor > 0) {
                                                arrayList = new ArrayList();
                                                while (i < civ2.getNumOfProvinces()) {
                                                    arrayList.add(Integer.valueOf(civ2.getProvinceID(i)));
                                                }
                                                while (iMin >= 0) {
                                                    iNextInt = Game.oR.nextInt(arrayList.size());
                                                    if (Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getCivID() == this.iCivID2) {
                                                        Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).setReligion(civ2.getReligionID());
                                                    }
                                                    arrayList.remove(iNextInt);
                                                }
                                            }
                                        } else {
                                            iFloor = ((int) Math.floor(civ2.getNumOfProvinces() * GameValues.peace.PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT)) - 1;
                                            if (iFloor > 0) {
                                                arrayList = new ArrayList();
                                                while (i < civ2.getNumOfProvinces()) {
                                                    arrayList.add(Integer.valueOf(civ2.getProvinceID(i)));
                                                }
                                                while (iMin >= 0) {
                                                    iNextInt = Game.oR.nextInt(arrayList.size());
                                                    if (Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getCivID() == this.iCivID2) {
                                                        Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).setReligion(civ2.getReligionID());
                                                    }
                                                    arrayList.remove(iNextInt);
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                while (size >= 0) {
                                    iIntValue = this.lProvinces.get(size).intValue();
                                    Game.getProvince(iIntValue).setCivID(this.iCivID);
                                    if (!Game.getProvince(iIntValue).haveACore(this.iCivID)) {
                                        Game.getProvince(iIntValue).setEconomy(Game.getProvince(iIntValue).getEconomy() * GameValues.peace.PEACE_ANNEX_PROVINCE_ECONOMY_CHANGE);
                                        Game.getProvince(iIntValue).setTaxEfficiency(Game.getProvince(iIntValue).getTaxEfficiency() * GameValues.peace.PEACE_ANNEX_PROVINCE_TAX_CHANGE);
                                        Game.getProvince(iIntValue).setGrowthRate(Game.getProvince(iIntValue).getGrowthRate() * GameValues.peace.PEACE_ANNEX_PROVINCE_GROWTH_RATE_CHANGE);
                                        Game.getProvince(iIntValue).setManpower(Game.getProvince(iIntValue).getManpower() * GameValues.peace.PEACE_ANNEX_PROVINCE_MANPOWER_CHANGE);
                                    }
                                    Game.getProvince(iIntValue).setRevulutionaryRisk(Math.min(Game.getProvince(iIntValue).getRevulutionaryRisk(), GameValues.peace.PEACE_ANNEX_PROVINCE_MAX_UNREST));
                                    civ.eventsData3.addConqueredProvinces(1);
                                    if (civ.getCivID() == Game.player.iCivID) {
                                        Game.stats.civStats.cp++;
                                    }
                                }
                                if (!z) {
                                    arrayList2 = new ArrayList();
                                    while (i2 < civ2.getNumOfProvinces()) {
                                        if (civ2.getCapitalProvinceID() != civ2.getProvinceID(i2)) {
                                            province = Game.getProvince(civ2.getProvinceID(i2));
                                            i4 = 0;
                                            while (i3 < province.getNeighboringProvincesSize()) {
                                                if (Game.getProvince(province.getNeighboringProvinces(i3)).getCivID() == this.iCivID2) {
                                                    i4 = 0;
                                                    break;
                                                }
                                                if (Game.getProvince(province.getNeighboringProvinces(i3)).getCivID() == this.iCivID) {
                                                    i4++;
                                                }
                                            }
                                            if (i4 > 0) {
                                                arrayList2.add(Integer.valueOf(civ2.getProvinceID(i2)));
                                            }
                                        }
                                    }
                                    while (size3 >= 0) {
                                        Game.getProvince(((Integer) arrayList2.get(size3)).intValue()).setCivID(this.iCivID);
                                        this.lProvinces.add((Integer) arrayList2.get(size3));
                                        civ.eventsData3.addConqueredProvinces(1);
                                        if (civ.getCivID() == Game.player.iCivID) {
                                            Game.stats.civStats.cp++;
                                        }
                                    }
                                }
                                if (Game.FOG_OF_WAR) {
                                    while (size2 >= 0) {
                                        Game.player.fog.updateFogOfWar_All(this.lProvinces.get(size2).intValue());
                                    }
                                }
                                if (this.demandVassalization) {
                                    int puppetOfCivID6 = civ2.getPuppetOfCivID();
                                    civ2.setPuppetOfCivID(this.iCivID);
                                    Game.getCiv(puppetOfCivID6).updateArmyImgID();
                                }
                                if (this.demandWarReparations) {
                                    CivilizationBonuses civilizationBonuses11 = new CivilizationBonuses();
                                    civilizationBonuses11.MonthlyIncome = getWarReparationsPerMonth(this.iCivID2);
                                    civilizationBonuses11.TempTurnID = Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS;
                                    civ.addCivilizationBonus_Temporary(civilizationBonuses11);
                                    CivilizationBonuses civilizationBonuses12 = new CivilizationBonuses();
                                    civilizationBonuses12.MonthlyIncome = getWarReparationsPerMonth(this.iCivID2) * (-1.0f);
                                    civilizationBonuses12.TempTurnID = Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS;
                                    civ2.addCivilizationBonus_Temporary(civilizationBonuses12);
                                }
                                if (this.demandGovernmentChange) {
                                    Game.addSimpleTask(new AnonymousClass1("changeGovernmentType" + this.iCivID2 + "_" + civ.getIdeologyID(), this.iCivID2, civ.getIdeologyID()));
                                }
                                WarManager.lWars.get(this.warKey).updateCapitalProvinceID();
                                if (this.demandGold > 0) {
                                    float gold_PerDemand6 = getGold_PerDemand();
                                    civ.fGold += gold_PerDemand6;
                                    civ2.fGold -= gold_PerDemand6;
                                }
                                if (this.demandHumiliate) {
                                    civ.fLegacy += GameValues.peace.PEACE_HUMILIATE_LEGACY_GAIN;
                                    civ2.fLegacy -= GameValues.peace.PEACE_HUMILIATE_LEGACY_LOSER;
                                }
                                if (this.demandReligionConversion) {
                                    civ2.setReligionID_UpdateBonuses(civ.getReligionID());
                                    if (civ2.getCapitalProvinceID() >= 0) {
                                        iFloor = ((int) Math.floor(civ2.getNumOfProvinces() * GameValues.peace.PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT)) - 1;
                                        if (iFloor > 0) {
                                            arrayList = new ArrayList();
                                            while (i < civ2.getNumOfProvinces()) {
                                                arrayList.add(Integer.valueOf(civ2.getProvinceID(i)));
                                            }
                                            while (iMin >= 0) {
                                                iNextInt = Game.oR.nextInt(arrayList.size());
                                                if (Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getCivID() == this.iCivID2) {
                                                    Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).setReligion(civ2.getReligionID());
                                                }
                                                arrayList.remove(iNextInt);
                                            }
                                        }
                                    } else {
                                        iFloor = ((int) Math.floor(civ2.getNumOfProvinces() * GameValues.peace.PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT)) - 1;
                                        if (iFloor > 0) {
                                            arrayList = new ArrayList();
                                            while (i < civ2.getNumOfProvinces()) {
                                                arrayList.add(Integer.valueOf(civ2.getProvinceID(i)));
                                            }
                                            while (iMin >= 0) {
                                                iNextInt = Game.oR.nextInt(arrayList.size());
                                                if (Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).getCivID() == this.iCivID2) {
                                                    Game.getProvince(((Integer) arrayList.get(iNextInt)).intValue()).setReligion(civ2.getReligionID());
                                                }
                                                arrayList.remove(iNextInt);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Exception e4) {
                        CFG.exceptionStack(e4);
                    }
                }
            } catch (Exception e5) {
                CFG.exceptionStack(e5);
            }
        }
        civ.setAggressiveExpansion(civ.getAggressiveExpansion() + Math.min(GameValues.aggressiveExpansion.PEACE_TREATY_AE_FROM_WAR_LIMIT, this.fAggressiveExpansion));
        for (int i7 = 0; i7 < this.lSubjectTransfer.size(); i7++) {
            if (Game.getCiv(this.lSubjectTransfer.get(i7).intValue()).getPuppetOfCivID() == this.iCivID2) {
                Game.getCiv(this.lSubjectTransfer.get(i7).intValue()).setPuppetOfCivID(this.iCivID);
                if (this.iCivID2 == Game.player.iCivID) {
                    Game.getCiv(this.lSubjectTransfer.get(i7).intValue()).updateArmyImgID();
                }
            }
        }
        for (int i8 = 0; i8 < this.lLiberateCiv.size(); i8++) {
            boolean z9 = false;
            for (int numOfProvinces = civ2.getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
                if (Game.getProvince(civ2.getProvinceID(numOfProvinces)).haveACore(this.lLiberateCiv.get(i8).intValue())) {
                    Game.getProvince(civ2.getProvinceID(numOfProvinces)).setCivID(this.lLiberateCiv.get(i8).intValue());
                    z9 = true;
                }
            }
            if (z9 && Game.getCiv(this.lLiberateCiv.get(i8).intValue()).getNumOfProvinces() > 0) {
                if (Game.getCiv(this.lLiberateCiv.get(i8).intValue()).getPuppetOfCivID() != this.lLiberateCiv.get(i8).intValue()) {
                    Game.getCiv(this.lLiberateCiv.get(i8).intValue()).setPuppetOfCivID(this.lLiberateCiv.get(i8).intValue());
                }
                if (Game.getProvince(Game.getCiv(this.lLiberateCiv.get(i8).intValue()).getCapitalProvinceID()).getCivID() == this.lLiberateCiv.get(i8).intValue()) {
                    Game.getCiv(this.lLiberateCiv.get(i8).intValue()).setCapitalProvinceID(Game.getCiv(this.lLiberateCiv.get(i8).intValue()).getCapitalProvinceID());
                } else if (Game.getCiv(this.lLiberateCiv.get(i8).intValue()).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(this.lLiberateCiv.get(i8).intValue()).getCapitalProvinceID()).getCivID() != this.lLiberateCiv.get(i8).intValue()) {
                    Game.getCiv(this.lLiberateCiv.get(i8).intValue()).moveCapital_ToLargestProvince();
                }
                civ.diplomacy.setRelation(civ.getCivID(), this.lLiberateCiv.get(i8).intValue(), GameValues.peace.PEACE_LIBERATE_CIV_RELATIONS);
                Game.getCiv(this.lLiberateCiv.get(i8).intValue()).diplomacy.setRelation(this.lLiberateCiv.get(i8).intValue(), this.iCivID, GameValues.peace.PEACE_LIBERATE_CIV_RELATIONS);
                civ.fLegacy += GameValues.peace.PEACE_LIBERATE_CIV_LEGACY;
                if (Game.getCiv(this.iCivID).getResearchedTechnologies() > Game.getCiv(this.lLiberateCiv.get(i8).intValue()).getResearchedTechnologies()) {
                    for (int i9 = 0; i9 < TechnologyTree.iTechnologySize; i9++) {
                        if (Game.getCiv(this.iCivID).getTechResearched(i9)) {
                            Game.getCiv(this.lLiberateCiv.get(i8).intValue()).addTechnology(i9, false);
                        }
                    }
                }
                DiplomacyManager.addGuarantee(this.iCivID, this.lLiberateCiv.get(i8).intValue());
            }
        }
        try {
            WarManager.lWars.get(this.warKey).peaceTreaty();
        } catch (Exception e6) {
            CFG.LOG("enforceDemands");
            CFG.exceptionStack(e6);
        }
        if (Game.FOG_OF_WAR && z6) {
            if (this.demandVassalization && civ2.getNumOfProvinces() > 0) {
                for (int i10 = 0; i10 < civ2.getNumOfProvinces(); i10++) {
                    Game.player.fog.updateFogOfWar_All(civ2.getProvinceID(i10));
                }
            }
            for (int i11 = 0; i11 < this.lSubjectTransfer.size(); i11++) {
                for (int i12 = 0; i12 < Game.getCiv(this.lSubjectTransfer.get(i11).intValue()).getNumOfProvinces(); i12++) {
                    Game.player.fog.updateFogOfWar_All(Game.getCiv(this.lSubjectTransfer.get(i11).intValue()).getProvinceID(i12));
                }
            }
        }
        if (this.demandReturnProvinces) {
            ArrayList arrayList3 = new ArrayList();
            for (int i13 = 0; i13 < civ2.getNumOfProvinces(); i13++) {
                if (civ2.getProvinceID(i13) != civ2.getCapitalProvinceID() && Game.getProvince(civ2.getProvinceID(i13)).getCivID() == this.iCivID2 && Game.getProvince(civ2.getProvinceID(i13)).iCoresSize > 0 && Game.getProvince(civ2.getProvinceID(i13)).getCore(0) != this.iCivID2) {
                    arrayList3.add(Integer.valueOf(civ2.getProvinceID(i13)));
                }
            }
            for (int size6 = arrayList3.size() - 1; size6 >= 0; size6--) {
                Game.getProvince(((Integer) arrayList3.get(size6)).intValue()).setCivID(Game.getProvince(((Integer) arrayList3.get(size6)).intValue()).getCore(0));
            }
        }
        WarManager.lWars.remove(this.warKey);
        WarManager.iWarsSize = WarManager.lWars.size();
        Game.gameThread.addCivUpdateTotalIncomePerMonth(this.iCivID);
        Game.gameThread.addCivUpdateTotalIncomePerMonth(this.iCivID2);
        updateRivals(this.iCivID);
        updateRivals(this.iCivID2);
        updateSpecialAlliances(this.iCivID);
        updateSpecialAlliances(this.iCivID2);
        updateVassals(this.iCivID);
        updateVassals(this.iCivID2);
        moveArmiesToOwnTerritory(this.iCivID);
        moveArmiesToOwnTerritory(this.iCivID2);
        Game.getCiv(this.iCivID).diplomacy.updateAlliance_ConqueredProvinces(this.iCivID);
        Game.getCiv(this.iCivID2).diplomacy.updateAlliance_ConqueredProvinces(this.iCivID2);
        if (civ2.getNumOfProvinces() <= 0) {
            int puppetOfCivID7 = civ2.getPuppetOfCivID();
            int i14 = this.iCivID2;
            if (puppetOfCivID7 != i14) {
                civ2.setPuppetOfCivID(i14);
            }
        }
        if (z2) {
            try {
                InGame_Info.iCivID = this.iCivID;
                InGame_Info.iCivID2 = this.iCivID2;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("PeaceTreaty"), Game_Calendar.getCurrentDate());
                InGame_Info.imgID = Images.infoDiplomacy;
                Game.addSimpleTask(new AnonymousClass2("rebuildInGame_Wars"));
                if (GameValues.provinceBorderWar.ENABLE_WAR_BORDER) {
                    Game.addSimpleTask(new AnonymousClass3("updateProvinceBorder"));
                }
                if (Game.menuManager.getVisibleInGame_War() && InGame_War.key.equals(this.warKey)) {
                    Game.menuManager.setVisibleInGame_War(false);
                }
            } catch (Exception e7) {
                CFG.exceptionStack(e7);
            }
        }
        return true;
    }

    public float getAggressiveExpansion_Extra(int i) {
        return (Game.getCiv(this.iCivID).getReligionID() == Game.getProvince(i).getReligion() ? GameValues.aggressiveExpansion.AE_SAME_RELIGION : GameValues.aggressiveExpansion.AE_DIFFERENT_RELIGION) + 1.0f + (Game.getDistance_PercOfMax(Game.getCiv(this.iCivID).getCapitalProvinceID(), i) * GameValues.aggressiveExpansion.AE_DISTANCE);
    }

    public float getGold_PerDemand() {
        return getGold_PerDemand_One() * this.demandGold;
    }

    public float getGold_PerDemand_One() {
        return Game.getLoanValue(this.iCivID2) * GameValues.peace.PEACE_GOLD_MODIFIER;
    }

    public int getPopulation() {
        int populationTotal = 0;
        for (int size = this.lProvinces.size() - 1; size >= 0; size--) {
            populationTotal += Game.getProvince(this.lProvinces.get(size).intValue()).getPopulationTotal();
        }
        return populationTotal;
    }

    public final float getScore_DemandGold() {
        return this.fScoreTotal * GameValues.peace.PEACE_GOLD_COST_SCORE;
    }

    public final float getScore_DemandGovernmentChange() {
        return this.fTotalProvinceWarScore_CivLost * GameValues.peace.PEACE_GOVERNMENT_CHANGE_COST_SCORE;
    }

    public final float getScore_DemandHumiliate() {
        return GameValues.peace.PEACE_HUMILIATE_COST_SCORE;
    }

    public final float getScore_DemandMilitaryAccess() {
        return this.fScoreTotal * GameValues.peace.PEACE_MILITARY_ACCESS_COST_SCORE;
    }

    public final float getScore_DemandReligionConversion() {
        return this.fTotalProvinceWarScore_CivLost * GameValues.peace.PEACE_RELIGION_CONVERSION_COST_SCORE;
    }

    public final float getScore_DemandVassalization() {
        return this.fTotalProvinceWarScore_CivLost * GameValues.peace.PEACE_VASSALIZATION_COST_SCORE;
    }

    public final float getScore_DemandWarReparations() {
        return this.fScoreTotal * GameValues.peace.PEACE_WAR_REPARATIONS_COST_SCORE;
    }

    public final float getScore_LiberateCiv(int i, int i2) {
        return getTotalProvinceValue_Liberate(i, i2) * GameValues.peace.PEACE_LIBERATE_CIV_COST_SCORE;
    }

    public final float getScore_SubjectTransfer(int i) {
        return getTotalProvinceValue(i) * GameValues.peace.PEACE_SUBJECT_TRANSFER_COST_SCORE;
    }

    public boolean isProvinceTaken(int i) {
        for (int size = this.lProvinces.size() - 1; size >= 0; size--) {
            if (this.lProvinces.get(size).intValue() == i) {
                return true;
            }
        }
        return false;
    }

    public final void moveArmiesToOwnTerritory(int i) {
        try {
            Civilization civ = Game.getCiv(i);
            for (int i2 = 0; i2 < civ.getNumOfProvinces(); i2++) {
                int provinceID = civ.getProvinceID(i2);
                for (int armySize = Game.getProvince(provinceID).getArmySize() - 1; armySize >= 0; armySize--) {
                    ArmyDivision army = Game.getProvince(provinceID).getArmy(armySize);
                    if (!MoveUnits.isFriendlyProvince_OrAtWAr(army.civID, provinceID) && Game.getCiv(army.civID).getNumOfProvinces() > 0) {
                        int provinceID2 = Game.getCiv(army.civID).getProvinceID(0);
                        float distanceFromProvinceToProvince = Game.getDistanceFromProvinceToProvince(provinceID, Game.getCiv(army.civID).getProvinceID(0));
                        for (int i3 = 1; i3 < Game.getCiv(army.civID).getNumOfProvinces(); i3++) {
                            if (distanceFromProvinceToProvince > Game.getDistanceFromProvinceToProvince(provinceID, Game.getCiv(army.civID).getProvinceID(i3))) {
                                provinceID2 = Game.getCiv(army.civID).getProvinceID(i3);
                                distanceFromProvinceToProvince = Game.getDistanceFromProvinceToProvince(provinceID, Game.getCiv(army.civID).getProvinceID(i3));
                            }
                        }
                        army.inBattle = false;
                        army.inRetreat = false;
                        Game.getProvince(provinceID).removeArmy(army.key);
                        Game.getProvince(provinceID2).addArmy(army);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void removeProvince(int i) {
        for (int size = this.lProvinces.size() - 1; size >= 0; size--) {
            if (this.lProvinces.get(size).intValue() == i) {
                Game.getProvince(i).peaceTreatyIsTaken = false;
                this.lProvinces.remove(size);
                this.fScore += Game.getProvince(i).fProvinceValue;
                return;
            }
        }
    }

    public final void removeProvinces_LiberateCiv(int i, int i2) {
        int size = this.lLiberateCiv.size();
        for (int size2 = this.lProvinces_Liberate.size() - 1; size2 >= 0; size2--) {
            boolean z = false;
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    z = true;
                    break;
                } else if (Game.getProvince(this.lProvinces_Liberate.get(size2).intValue()).haveACore(this.lLiberateCiv.get(i3).intValue())) {
                    break;
                } else {
                    i3++;
                }
            }
            if (z) {
                this.lProvinces_Liberate.remove(size2);
            }
        }
    }

    public void resetProvinces() {
        for (int size = this.lProvinces.size() - 1; size >= 0; size--) {
            this.fScore += Game.getProvince(this.lProvinces.get(size).intValue()).fProvinceValue;
            Game.getProvince(this.lProvinces.get(size).intValue()).peaceTreatyIsTaken = false;
            this.lProvinces.remove(size);
        }
        buildAggressiveExpansion();
    }

    public void takeProvince(int i) {
        if (isProvinceTaken(i)) {
            removeProvince(i);
            Game.getProvince(i).peaceTreatyIsTaken = false;
        } else if (addProvince(i)) {
            Game.getProvince(i).peaceTreatyIsTaken = true;
        }
        buildAggressiveExpansion();
    }

    public final void updateSpecialAlliances(int i) {
        if (Game.getCiv(i).getNumOfProvinces() <= 0) {
            for (int i2 = 0; i2 < Game.getCiv(i).inAllianceSize; i2++) {
                if (Game.alliancesSpecial.get(Game.getCiv(i).inAlliance.get(i2).intValue()).iLeaderCivID == i) {
                    Game.alliancesSpecial.get(Game.getCiv(i).inAlliance.get(i2).intValue()).elections();
                }
            }
        }
    }

    public final void updateVassals(int i) {
        try {
            if (Game.getCiv(i).getNumOfProvinces() <= 0) {
                for (int i2 = Game.getCiv(i).diplomacy.iVassalsSize - 1; i2 >= 0; i2--) {
                    Game.getCiv(Game.getCiv(i).diplomacy.lVassals.get(i2).c).setPuppetOfCivID(Game.getCiv(i).diplomacy.lVassals.get(i2).c);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
