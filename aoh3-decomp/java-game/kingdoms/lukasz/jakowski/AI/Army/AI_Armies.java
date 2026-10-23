package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyPosition;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_Armies {
    public static final void regroupPeace(int i) {
        ArmyDivision army;
        try {
            if (Game.getCiv(i).diplomacy.isAtWar() || Game.getCiv(i).getNumOfProvinces() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < Game.getCiv(i).iArmyPositionSize; i2++) {
                if (Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getCivID() != i && (army = Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getArmy(Game.getCiv(i).getArmyPositionKey(i2))) != null && !army.inBattle && !army.inRetreat) {
                    arrayList.add(new ArmyPosition(Game.getCiv(i).getArmyPosition(i2), Game.getCiv(i).getArmyPositionKey(i2)));
                }
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                int provinceID = Game.getCiv(i).getProvinceID(0);
                float distanceFromProvinceToProvince = Game.getDistanceFromProvinceToProvince(((ArmyPosition) arrayList.get(size)).provinceID, Game.getCiv(i).getProvinceID(0));
                int provinceID2 = provinceID;
                for (int i3 = 1; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
                    if (distanceFromProvinceToProvince > Game.getDistanceFromProvinceToProvince(((ArmyPosition) arrayList.get(size)).provinceID, Game.getCiv(i).getProvinceID(i3))) {
                        provinceID2 = Game.getCiv(i).getProvinceID(i3);
                        distanceFromProvinceToProvince = Game.getDistanceFromProvinceToProvince(((ArmyPosition) arrayList.get(size)).provinceID, Game.getCiv(i).getProvinceID(i3));
                    }
                }
                Game.getCiv(i).newMove(((ArmyPosition) arrayList.get(size)).provinceID, provinceID2, ((ArmyPosition) arrayList.get(size)).key, 0, false);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
