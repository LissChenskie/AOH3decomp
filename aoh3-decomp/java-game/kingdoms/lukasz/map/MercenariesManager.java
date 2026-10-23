package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.army.ArmyRegiment;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MercenariesManager {

    public static class BestArmy {
        public int iArmyID;
        public int iUnitID;

        public BestArmy(int i, int i2) {
            this.iUnitID = i;
            this.iArmyID = i2;
        }
    }

    public static class MercenaryArmy {
        public int iCost;
        public List<Integer> iUnitID = new ArrayList();
        public List<Integer> iArmyID = new ArrayList();

        public void addArmy(int i, int i2) {
            this.iUnitID.add(Integer.valueOf(i));
            this.iArmyID.add(Integer.valueOf(i2));
        }

        public void buildCost(int i) {
            for (int size = this.iUnitID.size() - 1; size >= 0; size--) {
                this.iCost += ArmyManager.getRecruitmentCost(i, -1, this.iUnitID.get(size).intValue(), this.iArmyID.get(size).intValue(), ArmyManager.getRecruitmentCost_Regiments(i) + size);
            }
            this.iCost = (int) (this.iCost * GameValues.army.MERCENARIES_COST_EXTRA_PER_REGIMENT);
        }
    }

    public static List<MercenaryArmy> getMercenaryArmies(int i) {
        ArrayList arrayList = new ArrayList();
        int battleWidth = BattleManager.getBattleWidth(i);
        if (battleWidth > 3) {
            for (int i2 = 0; i2 < GameValues.army.MERCENARIES_LIMIT_TO_CHOOSE_FROM; i2++) {
                ArrayList arrayList2 = new ArrayList();
                MercenaryArmy mercenaryArmy = new MercenaryArmy();
                int iMax = (int) Math.max(2.0f, battleWidth * ((i2 + 1.0f) / GameValues.army.MERCENARIES_LIMIT_TO_CHOOSE_FROM));
                ArrayList arrayList3 = new ArrayList();
                for (int i3 = 0; i3 < Game.getCiv(i).unitsBest.size(); i3++) {
                    if ((ArmyManager.lUnitsTypes.get(Game.getCiv(i).unitsBest.get(i3).unitID).Line == 0 || ArmyManager.lUnitsTypes.get(Game.getCiv(i).unitsBest.get(i3).unitID).Line == 1) && !ArmyManager.lArmy.get(Game.getCiv(i).unitsBest.get(i3).unitID).get(Game.getCiv(i).unitsBest.get(i3).armyID).isSettler) {
                        arrayList2.add(new BestArmy(Game.getCiv(i).unitsBest.get(i3).unitID, Game.getCiv(i).unitsBest.get(i3).armyID));
                    }
                }
                if (arrayList2.size() > 0) {
                    for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                        arrayList3.add(new MercenaryArmy());
                    }
                    for (int i5 = 0; i5 < iMax; i5++) {
                        int iNextInt = Game.oR.nextInt(arrayList2.size());
                        ((MercenaryArmy) arrayList3.get(iNextInt)).addArmy(((BestArmy) arrayList2.get(iNextInt)).iUnitID, ((BestArmy) arrayList2.get(iNextInt)).iArmyID);
                    }
                    for (int i6 = 0; i6 < arrayList3.size(); i6++) {
                        for (int i7 = 0; i7 < ((MercenaryArmy) arrayList3.get(i6)).iUnitID.size(); i7++) {
                            mercenaryArmy.addArmy(((MercenaryArmy) arrayList3.get(i6)).iUnitID.get(i7).intValue(), ((MercenaryArmy) arrayList3.get(i6)).iArmyID.get(i7).intValue());
                        }
                    }
                }
                arrayList3.clear();
                arrayList2.clear();
                for (int i8 = 0; i8 < Game.getCiv(i).unitsBest.size(); i8++) {
                    if (ArmyManager.lUnitsTypes.get(Game.getCiv(i).unitsBest.get(i8).unitID).Line == 2 && !ArmyManager.lArmy.get(Game.getCiv(i).unitsBest.get(i8).unitID).get(Game.getCiv(i).unitsBest.get(i8).armyID).isSettler) {
                        arrayList2.add(new BestArmy(Game.getCiv(i).unitsBest.get(i8).unitID, Game.getCiv(i).unitsBest.get(i8).armyID));
                    }
                }
                if (arrayList2.size() > 0) {
                    for (int i9 = 0; i9 < arrayList2.size(); i9++) {
                        arrayList3.add(new MercenaryArmy());
                    }
                    for (int i10 = 0; i10 < iMax; i10++) {
                        int iNextInt2 = Game.oR.nextInt(arrayList2.size());
                        ((MercenaryArmy) arrayList3.get(iNextInt2)).addArmy(((BestArmy) arrayList2.get(iNextInt2)).iUnitID, ((BestArmy) arrayList2.get(iNextInt2)).iArmyID);
                    }
                    for (int i11 = 0; i11 < arrayList3.size(); i11++) {
                        for (int i12 = 0; i12 < ((MercenaryArmy) arrayList3.get(i11)).iUnitID.size(); i12++) {
                            mercenaryArmy.addArmy(((MercenaryArmy) arrayList3.get(i11)).iUnitID.get(i12).intValue(), ((MercenaryArmy) arrayList3.get(i11)).iArmyID.get(i12).intValue());
                        }
                    }
                }
                arrayList3.clear();
                arrayList2.clear();
                if (mercenaryArmy.iUnitID.size() > 0) {
                    mercenaryArmy.buildCost(i);
                    arrayList.add(mercenaryArmy);
                }
            }
        }
        return arrayList;
    }

    public static final boolean recruitMercenaries(int i, int i2, MercenaryArmy mercenaryArmy) {
        if (Game.getCiv(i).fGold < mercenaryArmy.iCost) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        int size = mercenaryArmy.iUnitID.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.add(new ArmyRegiment(mercenaryArmy.iUnitID.get(i3).intValue(), mercenaryArmy.iArmyID.get(i3).intValue()));
        }
        Game.getProvince(i2).addArmy(new ArmyDivision(i, i2, arrayList));
        Game.getCiv(i).fGold -= mercenaryArmy.iCost;
        Game.gameThread.addCivUpdateArmyMaintenance(i);
        return true;
    }
}
