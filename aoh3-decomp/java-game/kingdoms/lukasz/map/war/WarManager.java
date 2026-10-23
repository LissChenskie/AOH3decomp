package aoc.kingdoms.lukasz.map.war;

import aoc.kingdoms.lukasz.jakowski.AI.AI_PeaceTreaty;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.moveUnits.MoveUnits;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.menusInGame.InGame_War;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class WarManager {
    public static ConcurrentHashMap<String, War> lWars = new ConcurrentHashMap<>();
    public static int iWarsSize = 0;
    public static int UPDATE_WARS_CHECK_PROVINCES = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.war.WarManager$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Wars();
        }
    }

    public static final String addWar(int i, int i2, boolean z, boolean z2) {
        if (i == 0 || i2 == 0 || Game.getCiv(i).getNumOfProvinces() == 0 || Game.getCiv(i2).getNumOfProvinces() == 0) {
            return null;
        }
        try {
            Iterator<War> it = lWars.values().iterator();
            while (it.hasNext()) {
                if (it.next().areInThisWar(i, i2)) {
                    return null;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        String strExtraRandomTag = CFG.extraRandomTag();
        lWars.put(strExtraRandomTag, new War(i, i2, strExtraRandomTag, z, z2));
        iWarsSize = lWars.size();
        Game.getCiv(i).diplomacy.addWar(strExtraRandomTag, i);
        Game.getCiv(i2).diplomacy.addWar(strExtraRandomTag, i2);
        return strExtraRandomTag;
    }

    protected static int buildPath(int i, List<Integer> list, List<Integer> list2, List<List<Integer>> list3, int i2, int i3, List<Integer> list4, List<List<Integer>> list5) {
        list4.clear();
        list5.clear();
        for (int i4 = 0; i4 < list2.size(); i4++) {
            Province province = Game.getProvince(list2.get(i4).intValue());
            if ((province.getCivID() == i3 || Game.getCiv(province.getCivID()).getPuppetOfCivID() == i3 || province.getCivID() == Game.getCiv(i3).getPuppetOfCivID()) && !province.isOccupied()) {
                clearWas(list);
                return list2.get(i4).intValue();
            }
        }
        for (int i5 = 0; i5 < list2.size(); i5++) {
            Province province2 = Game.getProvince(list2.get(i5).intValue());
            for (int i6 = 0; i6 < province2.getNeighboringProvincesSize(); i6++) {
                if (!Game.getProvince(Game.getProvince(province2.getNeighboringProvinces(i6)).getProvinceID()).wasRetreat && MoveUnits.canBeUsedInPath(i, Game.getProvince(province2.getNeighboringProvinces(i6)).getProvinceID(), false, i2)) {
                    if ((Game.getProvince(province2.getNeighboringProvinces(i6)).getCivID() == i3 || Game.getCiv(Game.getProvince(province2.getNeighboringProvinces(i6)).getCivID()).getPuppetOfCivID() == i3 || Game.getProvince(province2.getNeighboringProvinces(i6)).getCivID() == Game.getCiv(i3).getPuppetOfCivID()) && !Game.getProvince(province2.getNeighboringProvinces(i6)).isOccupied()) {
                        clearWas(list);
                        return province2.getNeighboringProvinces(i6);
                    }
                    list4.add(Integer.valueOf(Game.getProvince(province2.getNeighboringProvinces(i6)).getProvinceID()));
                    ArrayList arrayList = new ArrayList();
                    for (int i7 = 0; i7 < list3.get(i5).size(); i7++) {
                        arrayList.add(list3.get(i5).get(i7));
                    }
                    arrayList.add(Integer.valueOf(Game.getProvince(province2.getNeighboringProvinces(i6)).getProvinceID()));
                    list5.add(arrayList);
                    Game.getProvince(Game.getProvince(province2.getNeighboringProvinces(i6)).getProvinceID()).wasRetreat = true;
                    list.add(Integer.valueOf(Game.getProvince(province2.getNeighboringProvinces(i6)).getProvinceID()));
                }
            }
            if (!province2.getSeaProvince()) {
                for (int i8 = 0; i8 < province2.getNeighboringSeaProvincesSize(); i8++) {
                    if (!Game.getProvince(Game.getProvince(province2.getNeighboringSeaProvinces(i8)).getProvinceID()).wasRetreat) {
                        if (Game.getProvince(province2.getNeighboringSeaProvinces(i8)).getCivID() == i3 && !Game.getProvince(province2.getNeighboringSeaProvinces(i8)).isOccupied()) {
                            return province2.getNeighboringSeaProvinces(i8);
                        }
                        list4.add(Integer.valueOf(Game.getProvince(province2.getNeighboringSeaProvinces(i8)).getProvinceID()));
                        ArrayList arrayList2 = new ArrayList();
                        for (int i9 = 0; i9 < list3.get(i5).size(); i9++) {
                            arrayList2.add(list3.get(i5).get(i9));
                        }
                        arrayList2.add(Integer.valueOf(Game.getProvince(province2.getNeighboringSeaProvinces(i8)).getProvinceID()));
                        list5.add(arrayList2);
                        Game.getProvince(Game.getProvince(province2.getNeighboringSeaProvinces(i8)).getProvinceID()).wasRetreat = true;
                        list.add(Integer.valueOf(Game.getProvince(province2.getNeighboringSeaProvinces(i8)).getProvinceID()));
                    }
                }
            }
        }
        if (list4.isEmpty()) {
            return -1;
        }
        try {
            return buildPath(i, list, list4, list5, i2, i3, list2, list3);
        } catch (StackOverflowError unused) {
            clearWas(list);
            return -1;
        }
    }

    public static final void buildWars_Load() {
        try {
            for (War war : lWars.values()) {
                for (int i = 0; i < war.lAggressors.size(); i++) {
                    Game.getCiv(war.lAggressors.get(i).iCivID).diplomacy.addWar(war.key, war.lAggressors.get(i).iCivID);
                }
                for (int i2 = 0; i2 < war.lDefenders.size(); i2++) {
                    Game.getCiv(war.lDefenders.get(i2).iCivID).diplomacy.addWar(war.key, war.lDefenders.get(i2).iCivID);
                }
                for (int i3 = 0; i3 < war.lAggressors.size(); i3++) {
                    for (int i4 = 0; i4 < war.lDefenders.size(); i4++) {
                        Game.getCiv(war.lAggressors.get(i3).iCivID).diplomacy.addAtWar(war.lDefenders.get(i4).iCivID);
                        Game.getCiv(war.lDefenders.get(i4).iCivID).diplomacy.addAtWar(war.lAggressors.get(i3).iCivID);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void clearData() {
        lWars.clear();
        iWarsSize = 0;
    }

    protected static final void clearWas(List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            Game.getProvince(list.get(size).intValue()).wasRetreat = false;
        }
        list.clear();
    }

    public static String getWarKey(int i, int i2) {
        try {
            for (War war : lWars.values()) {
                if (war.areInThisWar(i, i2)) {
                    return war.key;
                }
            }
            return null;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    public static String getWarName(String str) {
        try {
            return Game.lang.get(GameValues.war.WAR_NAMES[str.charAt(0) % GameValues.war.WAR_NAMES.length]);
        } catch (Exception unused) {
            return Game.lang.get("WarOverview");
        }
    }

    public static final int retreatToProvinceID(int i, int i2) {
        if (i2 < 0) {
            return -1;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i2));
        for (int i3 = 0; i3 < Game.getProvincesSize(); i3++) {
            Game.getProvince(i3).wasRetreat = false;
        }
        Game.getProvince(i2).wasRetreat = true;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i4 = 0; i4 < Game.getProvince(i2).getNeighboringProvincesSize(); i4++) {
            if (MoveUnits.canBeUsedInPath(i, Game.getProvince(i2).getNeighboringProvinces(i4), true, i2)) {
                arrayList2.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i4)).getProvinceID()));
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i4)).getProvinceID()));
                arrayList3.add(arrayList4);
                arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i4)).getProvinceID()));
                Game.getProvince(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i4)).getProvinceID()).wasRetreat = true;
            }
        }
        if (!Game.getProvince(i2).getSeaProvince()) {
            for (int i5 = 0; i5 < Game.getProvince(i2).getNeighboringSeaProvincesSize(); i5++) {
                arrayList2.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i5)).getProvinceID()));
                ArrayList arrayList5 = new ArrayList();
                arrayList5.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i5)).getProvinceID()));
                arrayList3.add(arrayList5);
                arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i5)).getProvinceID()));
                Game.getProvince(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i5)).getProvinceID()).wasRetreat = true;
            }
        }
        return buildPath(i, arrayList, arrayList2, arrayList3, i2, i, new ArrayList(), new ArrayList());
    }

    public static final void updateWars_Peace() {
        try {
            for (War war : lWars.values()) {
                if (Math.abs(war.warScore) >= GameValues.peace.WAR_MAKE_DEMANDS_MIN_WAR_SCORE) {
                    int i = war.lAggressors.get(0).iCivID;
                    int i2 = war.lDefenders.get(0).iCivID;
                    if (war.warScore > 0.0f) {
                        AI_PeaceTreaty.peaceTreaty(war.key, i, i2);
                    } else {
                        AI_PeaceTreaty.peaceTreaty(war.key, i2, i);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void updateWars_TickingWarScore() {
        try {
            int i = UPDATE_WARS_CHECK_PROVINCES;
            UPDATE_WARS_CHECK_PROVINCES = i + 1;
            if (i <= GameValues.gameUpdate.GAME_UPDATE_WAR_ALL_PROVINCES_OCCUPIED_MONTHS) {
                Iterator<War> it = lWars.values().iterator();
                while (it.hasNext()) {
                    it.next().updateWars_TickingWarScore();
                }
            } else {
                UPDATE_WARS_CHECK_PROVINCES = 0;
                for (War war : lWars.values()) {
                    war.updateWars_AllProvincesOccupied();
                    war.updateWars_TickingWarScore();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void updateWars_WhitePeace() {
        try {
            ArrayList arrayList = new ArrayList();
            for (War war : lWars.values()) {
                try {
                    if ((war.lastFight_TurnID + GameValues.war.WAR_AUTO_WHITE_PEACE_IF_NOTHING_HAPPENS_IN_WAR_DAYS < Game_Calendar.TURN_ID && Math.abs(war.warScore) < GameValues.war.WAR_AUTO_WHITE_PEACE_IF_WARSCORE_BELOW) || ((war.iWarTurnID + GameValues.war.WAR_AUTO_WHITE_PEACE_AFTER_X_DAYS_OF_WAR < Game_Calendar.TURN_ID && Math.abs(war.warScore) < GameValues.war.WAR_AUTO_WHITE_PEACE_AFTER_X_DAYS_OF_WAR_IF_WARSCORE_BELOW) || Game.getCiv(war.lAggressors.get(0).iCivID).getNumOfProvinces() <= 0 || Game.getCiv(war.lDefenders.get(0).iCivID).getNumOfProvinces() <= 0)) {
                        int i = war.lAggressors.get(0).iCivID;
                        int i2 = war.lDefenders.get(0).iCivID;
                        if (DiplomacyManager.whitePeace(war.key) && (i == Game.player.iCivID || i2 == Game.player.iCivID)) {
                            InGame_Info.iCivID = i;
                            InGame_Info.iCivID2 = i2;
                            Game.menuManager.rebuildInGame_Info(Game.lang.get("WhitePeace"), Game_Calendar.getCurrentDate());
                            InGame_Info.imgID = Images.infoDiplomacy;
                            Game.addSimpleTask(new AnonymousClass1("rebuildInGame_Wars"));
                            if (Game.menuManager.getVisibleInGame_War() && InGame_War.key.equals(war.key)) {
                                Game.menuManager.setVisibleInGame_War(false);
                            }
                        }
                        arrayList.add(war.key);
                    }
                } catch (Exception unused) {
                }
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                lWars.remove(arrayList.get(size));
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
