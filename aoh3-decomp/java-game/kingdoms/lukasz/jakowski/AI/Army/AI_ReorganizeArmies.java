package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.army.ArmyPosition;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.province.Province;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_ReorganizeArmies {
    public static boolean borderWithPreparingForWar(Civilization civilization, Province province) {
        for (int i = 0; i < civilization.aiCivDiplomacy.w.size(); i++) {
            for (int i2 = 0; i2 < province.getNeighboringProvincesSize(); i2++) {
                if (province.getCivID() == civilization.aiCivDiplomacy.w.get(i).c) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final void buildProvincesScore(int i) {
        Civilization civ = Game.getCiv(i);
        for (int i2 = 0; i2 < civ.getNumOfProvinces(); i2++) {
            Province province = Game.getProvince(civ.getProvinceID(i2));
            province.aiArmyScore = (province.getGrowthRateWithBonuses() * Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_GROWTH_RATE) + (province.getEconomyWithBonuses() * Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_ECONOMY) + (province.fProvinceIncome * Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_PROVINCE_INCOME) + (province.aiDistanceToCapital * Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_DISTANCE);
        }
    }

    public static final void buildProvincesScore_PrepareForWar(int i) {
        Civilization civ = Game.getCiv(i);
        for (int i2 = 0; i2 < civ.getNumOfProvinces(); i2++) {
            Province province = Game.getProvince(civ.getProvinceID(i2));
            province.aiArmyScore = (borderWithPreparingForWar(civ, province) ? Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_PREPARE_FOR_WAR_BORDERS_WITH_CIV : 1.0f) * ((province.fProvinceIncome * Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_PREPARE_FOR_WAR_PROVINCE_INCOME) + (province.aiDistanceToCapital * Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_PREPARE_FOR_WAR_DISTANCE));
        }
    }

    /* JADX WARN: Code duplicated, block: B:234:0x0759 A[Catch: Exception -> 0x09ed, LOOP:6: B:172:0x0535->B:234:0x0759, LOOP_END, TryCatch #0 {Exception -> 0x09ed, blocks: (B:3:0x0002, B:4:0x0019, B:6:0x001d, B:8:0x002f, B:10:0x0033, B:12:0x0037, B:14:0x003b, B:16:0x0049, B:18:0x0066, B:20:0x006a, B:22:0x0072, B:17:0x0058, B:23:0x0076, B:24:0x0079, B:26:0x0083, B:28:0x00ac, B:29:0x0112, B:31:0x0119, B:33:0x011d, B:35:0x0125, B:38:0x014a, B:39:0x014f, B:40:0x015f, B:41:0x0165, B:43:0x016b, B:45:0x0171, B:47:0x0177, B:49:0x017b, B:54:0x018e, B:58:0x01a5, B:60:0x01b2, B:62:0x01c0, B:65:0x01d8, B:67:0x01f2, B:69:0x0200, B:71:0x025f, B:72:0x026d, B:74:0x0275, B:75:0x0283, B:77:0x028b, B:78:0x0299, B:80:0x02a1, B:81:0x02af, B:83:0x02b9, B:85:0x02c5, B:86:0x02cd, B:87:0x02d4, B:163:0x04fb, B:169:0x0528, B:171:0x052c, B:173:0x0537, B:175:0x0551, B:177:0x055e, B:179:0x0562, B:180:0x0576, B:182:0x057a, B:184:0x057e, B:185:0x0592, B:187:0x0596, B:189:0x059a, B:190:0x05ae, B:192:0x05b2, B:194:0x05b6, B:195:0x05ca, B:197:0x05d7, B:199:0x05db, B:202:0x0603, B:210:0x0684, B:231:0x0752, B:238:0x0773, B:240:0x0777, B:242:0x0782, B:244:0x079c, B:246:0x07a9, B:248:0x07ad, B:249:0x07c1, B:251:0x07c5, B:253:0x07c9, B:254:0x07dd, B:256:0x07e1, B:258:0x07e5, B:259:0x07f9, B:261:0x07fd, B:263:0x0801, B:264:0x0815, B:266:0x0822, B:268:0x0826, B:271:0x0842, B:279:0x08bd, B:272:0x0850, B:273:0x085e, B:275:0x0878, B:277:0x089d, B:278:0x08ab, B:281:0x08c5, B:283:0x08d1, B:286:0x08e4, B:296:0x0955, B:298:0x096f, B:299:0x0972, B:304:0x0980, B:302:0x0977, B:288:0x08ec, B:289:0x08f2, B:291:0x090c, B:293:0x0931, B:294:0x093f, B:234:0x0759, B:203:0x0613, B:204:0x0623, B:206:0x063f, B:208:0x0664, B:209:0x0672, B:212:0x068b, B:214:0x06a3, B:217:0x06b6, B:226:0x0725, B:228:0x073f, B:218:0x06bd, B:219:0x06c3, B:221:0x06dd, B:223:0x0702, B:224:0x0710, B:167:0x050b, B:88:0x02d9, B:90:0x02e7, B:92:0x02eb, B:94:0x02ef, B:96:0x02f6, B:98:0x0310, B:106:0x033d, B:108:0x0341, B:110:0x0345, B:112:0x034b, B:114:0x0362, B:117:0x037d, B:118:0x0380, B:120:0x0384, B:122:0x0388, B:124:0x038e, B:126:0x03a5, B:128:0x03cb, B:130:0x03f1, B:133:0x040c, B:134:0x0410, B:136:0x0414, B:138:0x0418, B:140:0x041e, B:142:0x0435, B:144:0x045b, B:146:0x0481, B:152:0x04a3, B:155:0x04bb, B:157:0x04bf, B:159:0x04e7, B:158:0x04d5, B:149:0x049c, B:103:0x032f, B:55:0x0194, B:56:0x019a, B:57:0x01a0, B:326:0x09e0, B:325:0x09dd, B:27:0x0098, B:309:0x09a5, B:311:0x09ab, B:313:0x09bd, B:315:0x09c1, B:317:0x09c5, B:319:0x09c9, B:321:0x09d1), top: B:331:0x0002, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:280:0x08c0 A[PHI: r14
      0x08c0: PHI (r14v6 java.lang.String) = (r14v5 java.lang.String), (r14v5 java.lang.String), (r14v13 java.lang.String) binds: [B:243:0x079a, B:265:0x0820, B:279:0x08bd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:298:0x096f A[Catch: Exception -> 0x09ed, TryCatch #0 {Exception -> 0x09ed, blocks: (B:3:0x0002, B:4:0x0019, B:6:0x001d, B:8:0x002f, B:10:0x0033, B:12:0x0037, B:14:0x003b, B:16:0x0049, B:18:0x0066, B:20:0x006a, B:22:0x0072, B:17:0x0058, B:23:0x0076, B:24:0x0079, B:26:0x0083, B:28:0x00ac, B:29:0x0112, B:31:0x0119, B:33:0x011d, B:35:0x0125, B:38:0x014a, B:39:0x014f, B:40:0x015f, B:41:0x0165, B:43:0x016b, B:45:0x0171, B:47:0x0177, B:49:0x017b, B:54:0x018e, B:58:0x01a5, B:60:0x01b2, B:62:0x01c0, B:65:0x01d8, B:67:0x01f2, B:69:0x0200, B:71:0x025f, B:72:0x026d, B:74:0x0275, B:75:0x0283, B:77:0x028b, B:78:0x0299, B:80:0x02a1, B:81:0x02af, B:83:0x02b9, B:85:0x02c5, B:86:0x02cd, B:87:0x02d4, B:163:0x04fb, B:169:0x0528, B:171:0x052c, B:173:0x0537, B:175:0x0551, B:177:0x055e, B:179:0x0562, B:180:0x0576, B:182:0x057a, B:184:0x057e, B:185:0x0592, B:187:0x0596, B:189:0x059a, B:190:0x05ae, B:192:0x05b2, B:194:0x05b6, B:195:0x05ca, B:197:0x05d7, B:199:0x05db, B:202:0x0603, B:210:0x0684, B:231:0x0752, B:238:0x0773, B:240:0x0777, B:242:0x0782, B:244:0x079c, B:246:0x07a9, B:248:0x07ad, B:249:0x07c1, B:251:0x07c5, B:253:0x07c9, B:254:0x07dd, B:256:0x07e1, B:258:0x07e5, B:259:0x07f9, B:261:0x07fd, B:263:0x0801, B:264:0x0815, B:266:0x0822, B:268:0x0826, B:271:0x0842, B:279:0x08bd, B:272:0x0850, B:273:0x085e, B:275:0x0878, B:277:0x089d, B:278:0x08ab, B:281:0x08c5, B:283:0x08d1, B:286:0x08e4, B:296:0x0955, B:298:0x096f, B:299:0x0972, B:304:0x0980, B:302:0x0977, B:288:0x08ec, B:289:0x08f2, B:291:0x090c, B:293:0x0931, B:294:0x093f, B:234:0x0759, B:203:0x0613, B:204:0x0623, B:206:0x063f, B:208:0x0664, B:209:0x0672, B:212:0x068b, B:214:0x06a3, B:217:0x06b6, B:226:0x0725, B:228:0x073f, B:218:0x06bd, B:219:0x06c3, B:221:0x06dd, B:223:0x0702, B:224:0x0710, B:167:0x050b, B:88:0x02d9, B:90:0x02e7, B:92:0x02eb, B:94:0x02ef, B:96:0x02f6, B:98:0x0310, B:106:0x033d, B:108:0x0341, B:110:0x0345, B:112:0x034b, B:114:0x0362, B:117:0x037d, B:118:0x0380, B:120:0x0384, B:122:0x0388, B:124:0x038e, B:126:0x03a5, B:128:0x03cb, B:130:0x03f1, B:133:0x040c, B:134:0x0410, B:136:0x0414, B:138:0x0418, B:140:0x041e, B:142:0x0435, B:144:0x045b, B:146:0x0481, B:152:0x04a3, B:155:0x04bb, B:157:0x04bf, B:159:0x04e7, B:158:0x04d5, B:149:0x049c, B:103:0x032f, B:55:0x0194, B:56:0x019a, B:57:0x01a0, B:326:0x09e0, B:325:0x09dd, B:27:0x0098, B:309:0x09a5, B:311:0x09ab, B:313:0x09bd, B:315:0x09c1, B:317:0x09c5, B:319:0x09c9, B:321:0x09d1), top: B:331:0x0002, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:361:0x04ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:363:0x050b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:365:0x0758 A[SYNTHETIC] */
    public static void reorganizeArmies_AtPeace(int i) {
        int i2;
        AI_Army_Composition aI_Army_Composition;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i3;
        AI_Army_Composition aI_Army_Composition2;
        int i4;
        AI_Army_Composition aI_Army_Composition3;
        int i5;
        AI_Army_Composition aI_Army_Composition4;
        ArrayList arrayList3;
        int i6;
        AI_Army_Composition aI_Army_Composition5;
        boolean z;
        try {
            Civilization civ = Game.getCiv(i);
            civ.aiMerge.aiMergeTasks.clear();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            int i7 = 0;
            for (int i8 = 0; i8 < civ.iArmyPositionSize; i8++) {
                ArmyDivision army = Game.getProvince(civ.getArmyPosition(i8)).getArmy(civ.getArmyPositionKey(i8));
                if (army != null && army.civID == i && !army.inBattle && !army.inRetreat) {
                    if (Game.getProvince(civ.getArmyPosition(i8)).getCivID() == i) {
                        arrayList4.add(new ArmyPosition(civ.getArmyPosition(i8), army.key));
                    } else {
                        arrayList5.add(new ArmyPosition(civ.getArmyPosition(i8), army.key));
                    }
                    if (army.inMovement && !civ.isInMoveUnits_ArmyKey(army.key)) {
                        army.inMovement = false;
                        army.inRetreat = false;
                    }
                }
            }
            if (civ.aiCivDiplomacy.w.isEmpty()) {
                buildProvincesScore(i);
                Game.getProvince(civ.getCapitalProvinceID()).aiArmyScore += Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_CAPITAL;
            } else {
                buildProvincesScore_PrepareForWar(i);
                Game.getProvince(civ.getCapitalProvinceID()).aiArmyScore += Game.aiValuesArmies.SCORE_REORGANIZE_ARMY_PREPARE_FOR_WAR_CAPITAL;
            }
            float battleWidth = BattleManager.getBattleWidth(i) * 2;
            AI_Army_Composition aI_Army_Composition6 = new AI_Army_Composition(i, (int) Math.max(4.0f, civ.aiCiv.army_First * battleWidth));
            AI_Army_Composition aI_Army_Composition7 = new AI_Army_Composition(i, (int) Math.max(4.0f, civ.aiCiv.army_Second * battleWidth));
            AI_Army_Composition aI_Army_Composition8 = new AI_Army_Composition(i, (int) Math.max(4.0f, civ.aiCiv.army_Third * battleWidth));
            AI_Army_Composition aI_Army_Composition9 = new AI_Army_Composition(i, (int) Math.max(4.0f, battleWidth * civ.aiCiv.army_Fourth));
            ArrayList arrayList6 = new ArrayList(civ.getProvinces());
            ArrayList arrayList7 = new ArrayList();
            int iCeil = (int) (Math.ceil(civ.getArmyRegimentSize() / aI_Army_Composition6.numOfRegiments) + 1.0d);
            while (true) {
                i2 = 1;
                if (arrayList6.size() <= 0) {
                    break;
                }
                int i9 = iCeil - 1;
                if (iCeil <= 0) {
                    break;
                }
                int i10 = i7;
                for (int size = arrayList6.size() - 1; size > 0; size--) {
                    if (Game.getProvince(((Integer) arrayList6.get(size)).intValue()).aiArmyScore > Game.getProvince(((Integer) arrayList6.get(i10)).intValue()).aiArmyScore) {
                        i10 = size;
                    }
                }
                arrayList7.add((Integer) arrayList6.get(i10));
                arrayList6.remove(i10);
                iCeil = i9;
                i7 = 0;
            }
            arrayList6.clear();
            int i11 = 100;
            int i12 = 0;
            while (!arrayList7.isEmpty() && (!arrayList4.isEmpty() || !arrayList5.isEmpty())) {
                int i13 = i11 - 1;
                if (i11 <= 0) {
                    break;
                }
                int iIntValue = ((Integer) arrayList7.get(i12)).intValue();
                int i14 = iIntValue % 4;
                if (i14 == 0) {
                    aI_Army_Composition = new AI_Army_Composition(aI_Army_Composition6);
                } else if (i14 != i2) {
                    aI_Army_Composition = i14 != 2 ? new AI_Army_Composition(aI_Army_Composition9) : new AI_Army_Composition(aI_Army_Composition8);
                } else {
                    aI_Army_Composition = new AI_Army_Composition(aI_Army_Composition7);
                }
                AI_Army_Composition aI_Army_Composition10 = aI_Army_Composition;
                int size2 = arrayList4.size() - 1;
                String str = null;
                while (true) {
                    if (size2 < 0) {
                        arrayList = arrayList7;
                        arrayList2 = arrayList6;
                        aI_Army_Composition9 = aI_Army_Composition9;
                        aI_Army_Composition6 = aI_Army_Composition6;
                        i3 = i13;
                        aI_Army_Composition2 = aI_Army_Composition7;
                        break;
                    }
                    arrayList = arrayList7;
                    if (((ArmyPosition) arrayList4.get(size2)).provinceID == iIntValue) {
                        arrayList2 = arrayList6;
                        ArmyDivision army2 = Game.getProvince(iIntValue).getArmy(((ArmyPosition) arrayList4.get(size2)).key);
                        if (army2 != null) {
                            if (str == null) {
                                str = army2.key;
                                Game.getCiv(i).aiMerge.addMerge(army2.provinceID, army2.key);
                            }
                            String str2 = str;
                            AI_Army_Composition armyComposition = army2.getArmyComposition();
                            if (!str2.equals(army2.key)) {
                                i3 = i13;
                                aI_Army_Composition2 = aI_Army_Composition7;
                                ArmyDivision army3 = Game.getProvince(iIntValue).getArmy(str2);
                                if (army3 != null) {
                                    if (aI_Army_Composition10.numFirstLine > 0 && armyComposition.numFirstLine > 0) {
                                        int i15 = army2.iArmyRegimentSize - 1;
                                        boolean z2 = false;
                                        while (true) {
                                            if (i15 < 0) {
                                                str = str2;
                                                z = z2;
                                                break;
                                            }
                                            str = str2;
                                            boolean z3 = z2;
                                            if (ArmyManager.lUnitsTypes.get(army2.lArmyRegiment.get(i15).uID).Line == 0) {
                                                army3.addRegiment(army2.lArmyRegiment.get(i15));
                                                army2.removeRegiment(i15);
                                                aI_Army_Composition10.numFirstLine--;
                                                if (aI_Army_Composition10.numFirstLine <= 0) {
                                                    z = true;
                                                    break;
                                                }
                                                z2 = true;
                                            } else {
                                                z2 = z3;
                                            }
                                            i15--;
                                            str2 = str;
                                        }
                                    } else {
                                        str = str2;
                                        z = false;
                                    }
                                    if (aI_Army_Composition10.numFlank > 0 && armyComposition.numFlank > 0) {
                                        for (int i16 = army2.iArmyRegimentSize - 1; i16 >= 0; i16--) {
                                            if (ArmyManager.lUnitsTypes.get(army2.lArmyRegiment.get(i16).uID).Line == 1) {
                                                army3.addRegiment(army2.lArmyRegiment.get(i16));
                                                army2.removeRegiment(i16);
                                                aI_Army_Composition10.numFlank--;
                                                z = true;
                                                if (aI_Army_Composition10.numFlank <= 0) {
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                    if (aI_Army_Composition10.numSupport > 0 && armyComposition.numSupport > 0) {
                                        for (int i17 = army2.iArmyRegimentSize - 1; i17 >= 0; i17--) {
                                            if (ArmyManager.lUnitsTypes.get(army2.lArmyRegiment.get(i17).uID).Line == 2 && !ArmyManager.lArmy.get(army2.lArmyRegiment.get(i17).uID).get(army2.lArmyRegiment.get(i17).aID).SiegeUnit && !ArmyManager.lArmy.get(army2.lArmyRegiment.get(i17).uID).get(army2.lArmyRegiment.get(i17).aID).isSettler) {
                                                army3.addRegiment(army2.lArmyRegiment.get(i17));
                                                army2.removeRegiment(i17);
                                                aI_Army_Composition10.numSupport--;
                                                z = true;
                                                if (aI_Army_Composition10.numSupport <= 0) {
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                    if (aI_Army_Composition10.numSiege <= 0 || armyComposition.numSiege <= 0) {
                                        break;
                                    }
                                    int i18 = army2.iArmyRegimentSize - 1;
                                    while (true) {
                                        if (i18 < 0) {
                                            break;
                                            break;
                                        }
                                        if (ArmyManager.lUnitsTypes.get(army2.lArmyRegiment.get(i18).uID).Line == 2 && ArmyManager.lArmy.get(army2.lArmyRegiment.get(i18).uID).get(army2.lArmyRegiment.get(i18).aID).SiegeUnit && !ArmyManager.lArmy.get(army2.lArmyRegiment.get(i18).uID).get(army2.lArmyRegiment.get(i18).aID).isSettler) {
                                            army3.addRegiment(army2.lArmyRegiment.get(i18));
                                            army2.removeRegiment(i18);
                                            aI_Army_Composition10.numSiege--;
                                            z = true;
                                            if (aI_Army_Composition10.numSiege <= 0) {
                                                break;
                                            }
                                        }
                                        i18--;
                                    }
                                    if (z) {
                                        int armyKeyID = Game.getProvince(iIntValue).getArmyKeyID(army2.key);
                                        int armyKeyID2 = Game.getProvince(iIntValue).getArmyKeyID(army3.key);
                                        if (armyKeyID >= 0 && armyKeyID2 >= 0) {
                                            if (army2.iArmyRegimentSize <= 0) {
                                                Game.getProvince(iIntValue).updateRegiment(armyKeyID2, army3.lArmyRegiment);
                                                Game.getProvince(iIntValue).removeArmy(army2.key);
                                                arrayList4.remove(size2);
                                            } else {
                                                Game.getProvince(iIntValue).updateRegiment(armyKeyID, army2.lArmyRegiment);
                                                Game.getProvince(iIntValue).updateRegiment(armyKeyID2, army3.lArmyRegiment);
                                            }
                                            Game.getProvince(iIntValue).updateArmyPosY();
                                        }
                                    }
                                }
                                if (aI_Army_Composition10.numOfRegiments <= 0) {
                                    break;
                                }
                            } else {
                                i3 = i13;
                                int iMin = Math.min(aI_Army_Composition10.numFirstLine, armyComposition.numFirstLine);
                                aI_Army_Composition10.numFirstLine -= iMin;
                                armyComposition.numFirstLine -= iMin;
                                int iMin2 = Math.min(aI_Army_Composition10.numFlank, armyComposition.numFlank);
                                aI_Army_Composition10.numFlank -= iMin2;
                                armyComposition.numFlank -= iMin2;
                                int iMin3 = Math.min(aI_Army_Composition10.numSupport, armyComposition.numSupport);
                                aI_Army_Composition10.numSupport -= iMin3;
                                armyComposition.numSupport -= iMin3;
                                int iMin4 = Math.min(aI_Army_Composition10.numSiege, armyComposition.numSiege);
                                aI_Army_Composition10.numSiege -= iMin4;
                                armyComposition.numSiege -= iMin4;
                                aI_Army_Composition10.updateNumOfRegiments();
                                armyComposition.updateNumOfRegiments();
                                AI_Army_Composition aI_Army_Composition11 = new AI_Army_Composition();
                                aI_Army_Composition2 = aI_Army_Composition7;
                                if (armyComposition.numFirstLine > Game.aiValuesArmies.REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX) {
                                    int i19 = armyComposition.numFirstLine - Game.aiValuesArmies.REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX;
                                    armyComposition.numFirstLine -= i19;
                                    aI_Army_Composition11.numFirstLine = i19;
                                }
                                if (armyComposition.numFlank > Game.aiValuesArmies.REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX) {
                                    int i20 = armyComposition.numFlank - Game.aiValuesArmies.REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX;
                                    armyComposition.numFlank -= i20;
                                    aI_Army_Composition11.numFlank = i20;
                                }
                                if (armyComposition.numSupport > Game.aiValuesArmies.REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX) {
                                    int i21 = armyComposition.numSupport - Game.aiValuesArmies.REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX;
                                    armyComposition.numSupport -= i21;
                                    aI_Army_Composition11.numSupport = i21;
                                }
                                if (armyComposition.numSiege > Game.aiValuesArmies.REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX) {
                                    int i22 = armyComposition.numSiege - Game.aiValuesArmies.REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX;
                                    armyComposition.numSiege -= i22;
                                    aI_Army_Composition11.numSiege = i22;
                                }
                                armyComposition.updateNumOfRegiments();
                                aI_Army_Composition11.updateNumOfRegiments();
                                if (aI_Army_Composition11.numOfRegiments > 0) {
                                    int i23 = army2.provinceID;
                                    String strSplitArmy = AI_SplitArmy.splitArmy(aI_Army_Composition11, army2.provinceID, army2.key);
                                    if (strSplitArmy != null) {
                                        arrayList4.add(new ArmyPosition(i23, strSplitArmy));
                                    }
                                    Game.getProvince(iIntValue).updateArmyPosY();
                                }
                                arrayList4.remove(size2);
                            }
                            str = str2;
                        } else {
                            aI_Army_Composition9 = aI_Army_Composition9;
                            aI_Army_Composition6 = aI_Army_Composition6;
                            i3 = i13;
                            aI_Army_Composition2 = aI_Army_Composition7;
                        }
                        if (aI_Army_Composition10.numOfRegiments <= 0) {
                            break;
                            break;
                        }
                    } else {
                        arrayList2 = arrayList6;
                        aI_Army_Composition9 = aI_Army_Composition9;
                        aI_Army_Composition6 = aI_Army_Composition6;
                        i3 = i13;
                        aI_Army_Composition2 = aI_Army_Composition7;
                    }
                    size2--;
                    aI_Army_Composition9 = aI_Army_Composition9;
                    arrayList7 = arrayList;
                    arrayList6 = arrayList2;
                    aI_Army_Composition6 = aI_Army_Composition6;
                    i13 = i3;
                    aI_Army_Composition7 = aI_Army_Composition2;
                }
                if (aI_Army_Composition10.numOfRegiments > 0) {
                    int i24 = 1;
                    int size3 = arrayList5.size() - 1;
                    String str3 = str;
                    while (true) {
                        if (size3 < 0) {
                            i4 = iIntValue;
                            i5 = i24;
                            aI_Army_Composition3 = aI_Army_Composition8;
                            aI_Army_Composition4 = aI_Army_Composition10;
                            break;
                        }
                        ArmyDivision army4 = Game.getProvince(((ArmyPosition) arrayList5.get(size3)).provinceID).getArmy(((ArmyPosition) arrayList5.get(size3)).key);
                        if (army4 != null) {
                            AI_Army_Composition armyComposition2 = army4.getArmyComposition();
                            AI_Army_Composition aI_Army_Composition12 = new AI_Army_Composition();
                            if (aI_Army_Composition10.numFirstLine > 0 && armyComposition2.numFirstLine > 0) {
                                int iMin5 = Math.min(aI_Army_Composition10.numFirstLine, armyComposition2.numFirstLine);
                                armyComposition2.numFirstLine -= iMin5;
                                aI_Army_Composition10.numFirstLine -= iMin5;
                                aI_Army_Composition12.numFirstLine = iMin5;
                            }
                            if (aI_Army_Composition10.numFlank > 0 && armyComposition2.numFlank > 0) {
                                int iMin6 = Math.min(aI_Army_Composition10.numFlank, armyComposition2.numFlank);
                                armyComposition2.numFlank -= iMin6;
                                aI_Army_Composition10.numFlank -= iMin6;
                                aI_Army_Composition12.numFlank = iMin6;
                            }
                            if (aI_Army_Composition10.numSupport > 0 && armyComposition2.numSupport > 0) {
                                int iMin7 = Math.min(aI_Army_Composition10.numSupport, armyComposition2.numSupport);
                                armyComposition2.numSupport -= iMin7;
                                aI_Army_Composition10.numSupport -= iMin7;
                                aI_Army_Composition12.numSupport = iMin7;
                            }
                            if (aI_Army_Composition10.numSiege > 0 && armyComposition2.numSiege > 0) {
                                int iMin8 = Math.min(aI_Army_Composition10.numSiege, armyComposition2.numSiege);
                                armyComposition2.numSiege -= iMin8;
                                aI_Army_Composition10.numSiege -= iMin8;
                                aI_Army_Composition12.numSiege = iMin8;
                            }
                            armyComposition2.updateNumOfRegiments();
                            aI_Army_Composition12.updateNumOfRegiments();
                            aI_Army_Composition10.updateNumOfRegiments();
                            if (aI_Army_Composition12.numOfRegiments <= 0) {
                                i4 = iIntValue;
                                aI_Army_Composition5 = aI_Army_Composition10;
                                aI_Army_Composition3 = aI_Army_Composition8;
                                i5 = 1;
                            } else if (armyComposition2.numOfRegiments == 0) {
                                int i25 = iIntValue;
                                i5 = 1;
                                aI_Army_Composition5 = aI_Army_Composition10;
                                if (!civ.newMove(((ArmyPosition) arrayList5.get(size3)).provinceID, i25, ((ArmyPosition) arrayList5.get(size3)).key, 0, false)) {
                                    i4 = i25;
                                    ArmyDivision army5 = Game.getProvince(((ArmyPosition) arrayList5.get(size3)).provinceID).getArmy(((ArmyPosition) arrayList5.get(size3)).key);
                                    if (army5 != null) {
                                        army5.inBattle = false;
                                        army5.inRetreat = false;
                                        Game.getProvince(((ArmyPosition) arrayList5.get(size3)).provinceID).removeArmy(((ArmyPosition) arrayList5.get(size3)).key);
                                        Game.getProvince(i4).addArmy(army5);
                                        if (str3 == null) {
                                            str3 = ((ArmyPosition) arrayList5.get(size3)).key;
                                            civ.aiMerge.addMerge(i4, str3);
                                        } else {
                                            civ.aiMerge.addMerge(i4, ((ArmyPosition) arrayList5.get(size3)).key);
                                            civ.aiMerge.checkMerge(i4, str3);
                                        }
                                    }
                                } else if (str3 == null) {
                                    str3 = ((ArmyPosition) arrayList5.get(size3)).key;
                                    i4 = i25;
                                    civ.aiMerge.addMerge(i4, str3);
                                } else {
                                    i4 = i25;
                                    civ.aiMerge.addMerge(i4, ((ArmyPosition) arrayList5.get(size3)).key);
                                }
                                arrayList5.remove(size3);
                            } else {
                                i4 = iIntValue;
                                aI_Army_Composition5 = aI_Army_Composition10;
                                i5 = 1;
                                int i26 = army4.provinceID;
                                String strSplitArmy2 = AI_SplitArmy.splitArmy(aI_Army_Composition12, army4.provinceID, army4.key);
                                Game.getProvince(i26).updateArmyPosY();
                                if (strSplitArmy2 != null) {
                                    aI_Army_Composition3 = aI_Army_Composition8;
                                    if (!civ.newMove(i26, i4, strSplitArmy2, 0, false)) {
                                        ArmyDivision army6 = Game.getProvince(((ArmyPosition) arrayList5.get(size3)).provinceID).getArmy(((ArmyPosition) arrayList5.get(size3)).key);
                                        if (army6 != null) {
                                            army6.inBattle = false;
                                            army6.inRetreat = false;
                                            Game.getProvince(((ArmyPosition) arrayList5.get(size3)).provinceID).removeArmy(((ArmyPosition) arrayList5.get(size3)).key);
                                            Game.getProvince(i4).addArmy(army6);
                                            if (str3 == null) {
                                                str3 = ((ArmyPosition) arrayList5.get(size3)).key;
                                                civ.aiMerge.addMerge(i4, str3);
                                            } else {
                                                civ.aiMerge.addMerge(i4, ((ArmyPosition) arrayList5.get(size3)).key);
                                                civ.aiMerge.checkMerge(i4, str3);
                                            }
                                        }
                                    } else if (str3 == null) {
                                        civ.aiMerge.addMerge(i4, strSplitArmy2);
                                        str3 = strSplitArmy2;
                                    } else {
                                        civ.aiMerge.addMerge(i4, strSplitArmy2);
                                    }
                                } else {
                                    aI_Army_Composition3 = aI_Army_Composition8;
                                }
                                if (Game.getProvince(((ArmyPosition) arrayList5.get(size3)).provinceID).getArmy(((ArmyPosition) arrayList5.get(size3)).key) == null) {
                                    arrayList5.remove(size3);
                                }
                            }
                            aI_Army_Composition4 = aI_Army_Composition5;
                            if (aI_Army_Composition4.numOfRegiments <= 0) {
                                break;
                            }
                            size3--;
                            iIntValue = i4;
                            aI_Army_Composition10 = aI_Army_Composition4;
                            i24 = i5;
                            aI_Army_Composition8 = aI_Army_Composition3;
                        } else {
                            i4 = iIntValue;
                            aI_Army_Composition5 = aI_Army_Composition10;
                            i5 = i24;
                        }
                        aI_Army_Composition3 = aI_Army_Composition8;
                        aI_Army_Composition4 = aI_Army_Composition5;
                        if (aI_Army_Composition4.numOfRegiments <= 0) {
                            break;
                            break;
                        }
                        size3--;
                        iIntValue = i4;
                        aI_Army_Composition10 = aI_Army_Composition4;
                        i24 = i5;
                        aI_Army_Composition8 = aI_Army_Composition3;
                    }
                    str = str3;
                } else {
                    i4 = iIntValue;
                    aI_Army_Composition3 = aI_Army_Composition8;
                    i5 = 1;
                    aI_Army_Composition4 = aI_Army_Composition10;
                }
                if (aI_Army_Composition4.numOfRegiments <= 0) {
                    arrayList3 = arrayList5;
                    i6 = 0;
                    break;
                }
                int size4 = arrayList4.size() - 1;
                String str4 = str;
                while (true) {
                    if (size4 < 0) {
                        arrayList3 = arrayList5;
                        i6 = 0;
                        break;
                    }
                    ArmyDivision army7 = Game.getProvince(((ArmyPosition) arrayList4.get(size4)).provinceID).getArmy(((ArmyPosition) arrayList4.get(size4)).key);
                    if (army7 != null) {
                        AI_Army_Composition armyComposition3 = army7.getArmyComposition();
                        AI_Army_Composition aI_Army_Composition13 = new AI_Army_Composition();
                        if (aI_Army_Composition4.numFirstLine > 0 && armyComposition3.numFirstLine > 0) {
                            int iMin9 = Math.min(aI_Army_Composition4.numFirstLine, armyComposition3.numFirstLine);
                            armyComposition3.numFirstLine -= iMin9;
                            aI_Army_Composition4.numFirstLine -= iMin9;
                            aI_Army_Composition13.numFirstLine = iMin9;
                        }
                        if (aI_Army_Composition4.numFlank > 0 && armyComposition3.numFlank > 0) {
                            int iMin10 = Math.min(aI_Army_Composition4.numFlank, armyComposition3.numFlank);
                            armyComposition3.numFlank -= iMin10;
                            aI_Army_Composition4.numFlank -= iMin10;
                            aI_Army_Composition13.numFlank = iMin10;
                        }
                        if (aI_Army_Composition4.numSupport > 0 && armyComposition3.numSupport > 0) {
                            int iMin11 = Math.min(aI_Army_Composition4.numSupport, armyComposition3.numSupport);
                            armyComposition3.numSupport -= iMin11;
                            aI_Army_Composition4.numSupport -= iMin11;
                            aI_Army_Composition13.numSupport = iMin11;
                        }
                        if (aI_Army_Composition4.numSiege > 0 && armyComposition3.numSiege > 0) {
                            int iMin12 = Math.min(aI_Army_Composition4.numSiege, armyComposition3.numSiege);
                            armyComposition3.numSiege -= iMin12;
                            aI_Army_Composition4.numSiege -= iMin12;
                            aI_Army_Composition13.numSiege = iMin12;
                        }
                        armyComposition3.updateNumOfRegiments();
                        aI_Army_Composition13.updateNumOfRegiments();
                        aI_Army_Composition4.updateNumOfRegiments();
                        if (aI_Army_Composition13.numOfRegiments <= 0) {
                            arrayList3 = arrayList5;
                            i6 = 0;
                        } else if (armyComposition3.numOfRegiments == 0) {
                            if (!civ.newMove(((ArmyPosition) arrayList4.get(size4)).provinceID, i4, ((ArmyPosition) arrayList4.get(size4)).key, 0, false)) {
                                ArmyDivision army8 = Game.getProvince(((ArmyPosition) arrayList4.get(size4)).provinceID).getArmy(((ArmyPosition) arrayList4.get(size4)).key);
                                if (army8 != null) {
                                    army8.inBattle = false;
                                    army8.inRetreat = false;
                                    Game.getProvince(((ArmyPosition) arrayList4.get(size4)).provinceID).removeArmy(((ArmyPosition) arrayList4.get(size4)).key);
                                    Game.getProvince(i4).addArmy(army8);
                                    if (str4 == null) {
                                        str4 = ((ArmyPosition) arrayList4.get(size4)).key;
                                        civ.aiMerge.addMerge(i4, str4);
                                    } else {
                                        civ.aiMerge.addMerge(i4, ((ArmyPosition) arrayList4.get(size4)).key);
                                        civ.aiMerge.checkMerge(i4, str4);
                                    }
                                }
                            } else if (str4 == null) {
                                str4 = ((ArmyPosition) arrayList4.get(size4)).key;
                                civ.aiMerge.addMerge(i4, str4);
                            } else {
                                civ.aiMerge.addMerge(i4, ((ArmyPosition) arrayList4.get(size4)).key);
                            }
                            arrayList4.remove(size4);
                            arrayList3 = arrayList5;
                            i6 = 0;
                        } else {
                            int i27 = army7.provinceID;
                            String strSplitArmy3 = AI_SplitArmy.splitArmy(aI_Army_Composition13, army7.provinceID, army7.key);
                            if (strSplitArmy3 != null) {
                                arrayList3 = arrayList5;
                                if (!civ.newMove(i27, i4, strSplitArmy3, 0, false)) {
                                    ArmyDivision army9 = Game.getProvince(((ArmyPosition) arrayList4.get(size4)).provinceID).getArmy(((ArmyPosition) arrayList4.get(size4)).key);
                                    if (army9 != null) {
                                        i6 = 0;
                                        army9.inBattle = false;
                                        army9.inRetreat = false;
                                        Game.getProvince(((ArmyPosition) arrayList4.get(size4)).provinceID).removeArmy(((ArmyPosition) arrayList4.get(size4)).key);
                                        Game.getProvince(i4).addArmy(army9);
                                        if (str4 == null) {
                                            str4 = ((ArmyPosition) arrayList4.get(size4)).key;
                                            civ.aiMerge.addMerge(i4, str4);
                                        } else {
                                            civ.aiMerge.addMerge(i4, ((ArmyPosition) arrayList4.get(size4)).key);
                                            civ.aiMerge.checkMerge(i4, str4);
                                        }
                                    }
                                    if (Game.getProvince(((ArmyPosition) arrayList4.get(size4)).provinceID).getArmy(((ArmyPosition) arrayList4.get(size4)).key) == null) {
                                        arrayList4.remove(size4);
                                    }
                                } else if (str4 == null) {
                                    civ.aiMerge.addMerge(i4, strSplitArmy3);
                                    str4 = strSplitArmy3;
                                } else {
                                    civ.aiMerge.addMerge(i4, strSplitArmy3);
                                }
                            } else {
                                arrayList3 = arrayList5;
                            }
                            i6 = 0;
                            if (Game.getProvince(((ArmyPosition) arrayList4.get(size4)).provinceID).getArmy(((ArmyPosition) arrayList4.get(size4)).key) == null) {
                                arrayList4.remove(size4);
                            }
                        }
                    } else {
                        arrayList3 = arrayList5;
                        i6 = 0;
                    }
                    if (aI_Army_Composition4.numOfRegiments <= 0) {
                        break;
                    }
                    size4--;
                    arrayList5 = arrayList3;
                }
                i12++;
                if (i12 >= arrayList.size()) {
                    i12 = i6;
                }
                i2 = i5;
                aI_Army_Composition9 = aI_Army_Composition9;
                arrayList7 = arrayList;
                arrayList6 = arrayList2;
                aI_Army_Composition6 = aI_Army_Composition6;
                i11 = i3;
                aI_Army_Composition7 = aI_Army_Composition2;
                aI_Army_Composition8 = aI_Army_Composition3;
                arrayList5 = arrayList3;
            }
            ArrayList arrayList8 = arrayList7;
            ArrayList arrayList9 = arrayList6;
            ArrayList arrayList10 = arrayList5;
            try {
                for (int i28 = civ.iArmyPositionSize - 1; i28 >= 0; i28--) {
                    ArmyDivision army10 = Game.getProvince(civ.getArmyPosition(i28)).getArmy(civ.getArmyPositionKey(i28));
                    if (army10 != null && !army10.inMovement && !army10.inBattle && !army10.inRetreat && army10.iArmyRegimentSize < Game.aiValuesArmies.REORGANIZE_MERGE_ALL_IN_PROVINCE_WITH_REGIMENTS_BELOW) {
                        AI_MoveAtWar.mergeArmy_InProvince(i, army10.provinceID, army10.key);
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            arrayList4.clear();
            arrayList10.clear();
            arrayList8.clear();
            arrayList9.clear();
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }
}
