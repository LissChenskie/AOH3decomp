package aoc.kingdoms.lukasz.jakowski.AI;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageTruce;
import aoc.kingdoms.lukasz.map.PeaceTreaty;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.war.War;
import aoc.kingdoms.lukasz.map.war.WarManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_PeaceTreaty {
    public static void buildProvinceScore(int i, int i2, int i3) {
        Province province = Game.getProvince(i2);
        boolean z = false;
        province.aiPeaceScore = 0;
        int i4 = 0;
        float f = 0.0f;
        for (int i5 = 0; i5 < province.getNeighboringProvincesSize(); i5++) {
            if (Game.getProvince(province.getNeighboringProvinces(i5)).getWasteland() < 0) {
                if (Game.getProvince(province.getNeighboringProvinces(i5)).aiPeaceCivID == i || Game.getProvince(province.getNeighboringProvinces(i5)).aiPeaceCivID == Game.getProvince(province.getNeighboringProvinces(i5)).getCivID()) {
                    f += 1.0f;
                }
                if (Game.getProvince(province.getNeighboringProvinces(i5)).aiPeaceCivID == i3) {
                    province.aiPeaceScore = (int) (province.aiPeaceScore + GameValues.peace.AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_LOSER_SCORE);
                }
                if (Game.getProvince(province.getNeighboringProvinces(i5)).aiPeaceCivID == i) {
                    province.aiPeaceScore = (int) (province.aiPeaceScore + GameValues.peace.AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_SCORE);
                    i4++;
                }
            }
        }
        if (f > 0.0f) {
            province.aiPeaceScore = (int) (province.aiPeaceScore + (GameValues.peace.AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_PERC * (i4 / f)));
        }
        if (province.accessToMainSea) {
            province.aiPeaceScore = (int) (province.aiPeaceScore + GameValues.peace.AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA);
            for (int i6 = 0; i6 < province.getNeighboringProvincesSize(); i6++) {
                if (Game.getProvince(province.getNeighboringProvinces(i6)).getWasteland() < 0 && Game.getProvince(province.getNeighboringProvinces(i6)).aiPeaceCivID != province.getCivID()) {
                    z = true;
                    break;
                }
            }
            if (z) {
                province.aiPeaceScore = (int) (province.aiPeaceScore + GameValues.peace.AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA_BEGIN);
            }
        }
        province.aiPeaceScore += (int) (GameValues.peace.AI_PEACE_DEMAND_PROVINCE_DISTANCE * Math.max(0.0f, 1.0f - Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), i2)));
    }

    public static int buildProvinceScore_Player(List<Integer> list, int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        for (int i5 = 0; i5 < Game.getProvince(i2).getNeighboringProvincesSize(); i5++) {
            if (Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getWasteland() < 0) {
                if (list.get(Game.getProvince(i2).getNeighboringProvinces(i5)).intValue() == i || list.get(Game.getProvince(i2).getNeighboringProvinces(i5)).intValue() == Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getCivID()) {
                    f += 1.0f;
                }
                if (list.get(Game.getProvince(i2).getNeighboringProvinces(i5)).intValue() == i) {
                    i3 = (int) (i3 + GameValues.peace.AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_SCORE);
                    i4++;
                }
            }
        }
        if (f > 0.0f) {
            i3 = (int) (i3 + (GameValues.peace.AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_PERC * (i4 / f)));
        }
        if (Game.getProvince(i2).accessToMainSea) {
            i3 = (int) (i3 + GameValues.peace.AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA);
        }
        return i3 + ((int) (GameValues.peace.AI_PEACE_DEMAND_PROVINCE_DISTANCE * Math.max(0.0f, 1.0f - Game.getDistance_PercOfMax(Game.getCiv(i).getCapitalProvinceID(), i2))));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:117:0x02af  */
    /* JADX WARN: Code duplicated, block: B:162:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:42:0x00d4. Please report as an issue. */
    public static void peaceTreaty(String str, int i, int i2) {
        boolean z;
        boolean z2;
        if (i == Game.player.iCivID) {
            return;
        }
        PeaceTreaty peaceTreaty = new PeaceTreaty(i, str, false);
        try {
            War war = WarManager.lWars.get(str);
            z = war.conquerVassal;
            try {
                z2 = war.isCoalition;
            } catch (Exception e) {
                e = e;
                CFG.exceptionStack(e);
                z2 = false;
            }
        } catch (Exception e2) {
            e = e2;
            z = false;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Civilization civ = Game.getCiv(i);
            Civilization civ2 = Game.getCiv(i2);
            for (int i3 = 0; i3 < civ2.getNumOfProvinces(); i3++) {
                arrayList.add(Integer.valueOf(civ2.getProvinceID(i3)));
                buildProvinceScore(i, civ2.getProvinceID(i3), i2);
            }
            int[] iArr = Game.oR.nextInt(Game.ideologiesManager.getIdeology(civ.getIdeologyID()).AI_PEACE_ORDER_CHANCE + Game.ideologiesManager.getIdeology(civ.getIdeologyID()).AI_PEACE_ORDER_CHANCE2) < Game.ideologiesManager.getIdeology(civ.getIdeologyID()).AI_PEACE_ORDER_CHANCE ? Game.ideologiesManager.getIdeology(civ.getIdeologyID()).AI_PEACE_ORDER : Game.ideologiesManager.getIdeology(civ.getIdeologyID()).AI_PEACE_ORDER2;
            if (z2) {
                iArr = GameValues.peace.AI_PEACE_DEMAND_COALITION;
            } else if (z) {
                iArr = GameValues.peace.AI_PEACE_DEMAND_ANNEX_VASSAL_PEACE_ORDER;
            } else if (i2 == Game.player.iCivID && GameValues.peace.AI_PEACE_DEMAND_VASSALIZE_PLAYER && !Game.player.playerData.wasVassalized && civ2.getPuppetOfCivID() != i && peaceTreaty.fScore >= peaceTreaty.getScore_DemandVassalization()) {
                Game.player.playerData.wasVassalized = true;
                iArr = GameValues.peace.AI_PEACE_DEMAND_VASSALIZE_PLAYER_PEACE_ORDER;
            }
            for (int i4 : iArr) {
                switch (i4) {
                    case 0:
                        while (peaceTreaty.fScore > 0.0f && arrayList.size() > 0) {
                            int i5 = 0;
                            for (int size = arrayList.size() - 1; size >= 0; size--) {
                                if (Game.getProvince(((Integer) arrayList.get(i5)).intValue()).aiPeaceScore < Game.getProvince(((Integer) arrayList.get(size)).intValue()).aiPeaceScore) {
                                    i5 = size;
                                }
                            }
                            if (!peaceTreaty.addProvince(((Integer) arrayList.get(i5)).intValue())) {
                            }
                            Game.getProvince(((Integer) arrayList.get(i5)).intValue()).aiPeaceCivID = i;
                            for (int i6 = 0; i6 < Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getNeighboringProvincesSize(); i6++) {
                                buildProvinceScore(i, Game.getProvince(((Integer) arrayList.get(i5)).intValue()).getNeighboringProvinces(i6), i2);
                            }
                            arrayList.remove(i5);
                            break;
                        }
                        break;
                    case 1:
                        if (peaceTreaty.fScore >= peaceTreaty.getScore_DemandVassalization()) {
                            peaceTreaty.demandVassalization();
                        }
                        break;
                    case 2:
                        if (civ2.diplomacy.iVassalsSize > 0) {
                            try {
                                ArrayList arrayList2 = new ArrayList();
                                for (int i7 = 0; i7 < civ2.diplomacy.iVassalsSize; i7++) {
                                    arrayList2.add(Integer.valueOf(civ2.diplomacy.lVassals.get(i7).c));
                                }
                                while (arrayList2.size() > 0) {
                                    float distanceFromProvinceToProvince = Game.getDistanceFromProvinceToProvince(civ.getCapitalProvinceID(), Game.getCiv(((Integer) arrayList2.get(0)).intValue()).getCapitalProvinceID());
                                    int i8 = 0;
                                    for (int size2 = arrayList2.size() - 1; size2 > 0; size2--) {
                                        if (distanceFromProvinceToProvince > Game.getDistanceFromProvinceToProvince(civ.getCapitalProvinceID(), Game.getCiv(((Integer) arrayList2.get(size2)).intValue()).getCapitalProvinceID())) {
                                            distanceFromProvinceToProvince = Game.getDistanceFromProvinceToProvince(civ.getCapitalProvinceID(), Game.getCiv(((Integer) arrayList2.get(size2)).intValue()).getCapitalProvinceID());
                                            i8 = size2;
                                        }
                                    }
                                    peaceTreaty.demandSubjectTransfer(((Integer) arrayList2.get(i8)).intValue());
                                    arrayList2.remove(i8);
                                }
                                arrayList2.clear();
                            } catch (Exception e3) {
                                CFG.exceptionStack(e3);
                            }
                        }
                        break;
                    case 3:
                        if (civ.getReligionID() != civ2.getReligionID() && peaceTreaty.fScore >= peaceTreaty.getScore_DemandReligionConversion()) {
                            peaceTreaty.demandReligionConversion();
                        }
                        break;
                    case 4:
                        if (civ.getIdeologyID() != civ2.getIdeologyID() && peaceTreaty.fScore >= peaceTreaty.getScore_DemandGovernmentChange()) {
                            peaceTreaty.demandGovernmentChange();
                        }
                        break;
                    case 5:
                        for (int i9 = 0; i9 < GameValues.peace.PEACE_GOLD_MAX && peaceTreaty.demandGold(); i9++) {
                        }
                        break;
                    case 6:
                        List<Integer> civsPossibleToLiberate = PeaceTreaty.getCivsPossibleToLiberate(i2);
                        for (int i10 = 0; i10 < civsPossibleToLiberate.size(); i10++) {
                            peaceTreaty.demandLiberateCiv(i2, civsPossibleToLiberate.get(i10).intValue());
                        }
                        break;
                    case 7:
                        if (peaceTreaty.fScore >= peaceTreaty.getScore_DemandWarReparations()) {
                            peaceTreaty.demandWarReparations();
                        }
                        break;
                    case 8:
                        if (peaceTreaty.fScore >= peaceTreaty.getScore_DemandHumiliate()) {
                            peaceTreaty.demandHumiliate();
                        }
                        break;
                    case 9:
                        peaceTreaty.demandReturnProvinces = true;
                        break;
                    default:
                        break;
                }
                peaceTreaty.enforceDemands(false);
                if (i2 == Game.player.iCivID) {
                    Game.player.addMessage(new PMessageTruce(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS, peaceTreaty));
                }
            }
        } catch (Exception e4) {
            CFG.exceptionStack(e4);
        }
        peaceTreaty.enforceDemands(false);
        if (i2 == Game.player.iCivID) {
            Game.player.addMessage(new PMessageTruce(i, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS, peaceTreaty));
        }
    }
}
