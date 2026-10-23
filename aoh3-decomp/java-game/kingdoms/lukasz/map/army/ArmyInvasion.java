package aoc.kingdoms.lukasz.map.army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ArmyInvasion {
    public String armyKey;
    public List<Integer> lProvinces;

    public ArmyInvasion() {
        this.lProvinces = new ArrayList();
    }

    public ArmyInvasion(int i, String str, List<Integer> list) {
        this.lProvinces = new ArrayList();
        this.armyKey = str;
        this.lProvinces = new ArrayList(list);
        invasionMoveArmy(i);
    }

    public final boolean invasionMoveArmy(int i) {
        try {
            Game.ArmyPos armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(i, this.armyKey);
            if (armyPosFindArmy_FullCheck == null) {
                return false;
            }
            for (int size = this.lProvinces.size() - 1; size >= 0; size--) {
                if (!Game.getProvince(this.lProvinces.get(size).intValue()).isOccupied() || Game.getCiv(Game.getProvince(this.lProvinces.get(size).intValue()).getCivID()).getPuppetOfCivID() != Game.player.iCivID) {
                    if (Game.getProvince(this.lProvinces.get(size).intValue()).getCivID() == i) {
                        this.lProvinces.remove(size);
                    } else if (!DiplomacyManager.isAtWar(i, Game.getProvince(this.lProvinces.get(size).intValue()).getCivID())) {
                        this.lProvinces.remove(size);
                    } else if (this.lProvinces.get(size).intValue() == armyPosFindArmy_FullCheck.iProvinceID) {
                        this.lProvinces.remove(size);
                    } else if (Game.getProvince(this.lProvinces.get(size).intValue()).isOccupied()) {
                        this.lProvinces.remove(size);
                    }
                }
            }
            if (this.lProvinces.size() == 0) {
                return false;
            }
            float distanceFromProvinceToProvince = Game.getDistanceFromProvinceToProvince(armyPosFindArmy_FullCheck.iProvinceID, this.lProvinces.get(0).intValue());
            int size2 = this.lProvinces.size();
            int i2 = 0;
            for (int i3 = 1; i3 < size2; i3++) {
                float distanceFromProvinceToProvince2 = Game.getDistanceFromProvinceToProvince(armyPosFindArmy_FullCheck.iProvinceID, this.lProvinces.get(i3).intValue());
                if (distanceFromProvinceToProvince > distanceFromProvinceToProvince2) {
                    i2 = i3;
                    distanceFromProvinceToProvince = distanceFromProvinceToProvince2;
                }
            }
            int iIntValue = this.lProvinces.get(i2).intValue();
            if (Game.getProvince(iIntValue).getFortLevel() == 0) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int i4 = 0;
                for (int i5 = 0; i5 < Game.getProvince(iIntValue).getNeighboringProvincesSize(); i5++) {
                    if (this.lProvinces.contains(Integer.valueOf(Game.getProvince(iIntValue).getNeighboringProvinces(i5)))) {
                        i4++;
                        arrayList.add(Integer.valueOf(Game.getProvince(iIntValue).getNeighboringProvinces(i5)));
                        int i6 = 0;
                        for (int i7 = 0; i7 < Game.getProvince(Game.getProvince(iIntValue).getNeighboringProvinces(i5)).getNeighboringProvincesSize(); i7++) {
                            if (this.lProvinces.contains(Integer.valueOf(Game.getProvince(Game.getProvince(iIntValue).getNeighboringProvinces(i5)).getNeighboringProvinces(i7)))) {
                                i6++;
                            }
                        }
                        arrayList2.add(Integer.valueOf(i6));
                    }
                }
                for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                    if (((Integer) arrayList2.get(size3)).intValue() > i4) {
                        iIntValue = ((Integer) arrayList.get(size3)).intValue();
                    }
                }
                arrayList.clear();
                arrayList2.clear();
            }
            Game.getCiv(i).newMove(armyPosFindArmy_FullCheck.iProvinceID, iIntValue, this.armyKey, 0, false);
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }
}
