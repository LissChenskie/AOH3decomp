package aoc.kingdoms.lukasz.map.rebels;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;
import aoc.kingdoms.lukasz.map.SiegeManager;
import aoc.kingdoms.lukasz.map.moveUnits.MoveUnits;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class RevolutionMoveUnits {
    public int iMoveUnitsSize;
    public List<MoveUnits> lMoveUnits = new ArrayList();

    public void clearData() {
        this.lMoveUnits.clear();
        this.iMoveUnitsSize = 0;
    }

    public boolean isArmyAlreadyMoving(int i, int i2) {
        for (int i3 = 0; i3 < this.iMoveUnitsSize; i3++) {
            if (this.lMoveUnits.get(i3).getFromProvinceID() == i && this.lMoveUnits.get(i3).getToProvinceLastID() == i2) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00b2  */
    public final boolean newMove(int i, int i2, String str, int i3, boolean z) {
        MoveUnits moveUnits;
        if (i == i2) {
            return false;
        }
        try {
            SiegeManager.checkForSiege(i);
            if (Game.getProvinceData4(i).isUnderSiege()) {
                int armyKeyID = Game.getProvince(i).getArmyKeyID(str);
                if (armyKeyID >= 0) {
                    Game.getProvince(i).getArmy(armyKeyID).inMovement = false;
                    removeMove(Game.getProvince(i).getArmy(armyKeyID).key);
                }
                return true;
            }
            int armyKeyID2 = Game.getProvince(i).getArmyKeyID(str);
            if (armyKeyID2 < 0) {
                return false;
            }
            if (Game.getProvince(i).getArmy(armyKeyID2).inBattle && Game.battleManager.isArmyInBattle(i, str)) {
                return false;
            }
            int i4 = Game.getProvince(i).getArmy(armyKeyID2).civID;
            MoveUnits moveUnits2 = new MoveUnits(i4, i, i2, str, i3, z, false);
            if (moveUnits2.iRouteSize <= 2 || !moveUnits2.haveSeaProvince()) {
                moveUnits = moveUnits2;
            } else {
                MoveUnits moveUnits3 = new MoveUnits(i4, i, i2, str, i3, z, true);
                if (moveUnits3.iRouteSize <= 1 || moveUnits3.getWidthTotal() >= moveUnits2.getWidthTotal()) {
                    moveUnits = moveUnits2;
                } else {
                    moveUnits = moveUnits3;
                }
            }
            if (moveUnits.iRouteSize <= 1) {
                return false;
            }
            for (int i5 = 0; i5 < this.iMoveUnitsSize; i5++) {
                if (this.lMoveUnits.get(i5).key.equals(str)) {
                    if (!this.lMoveUnits.get(i5).inRetreat) {
                        if (this.lMoveUnits.get(i5).getToProvinceID() != moveUnits.getToProvinceID()) {
                            if (this.lMoveUnits.get(i5).getProgressPerc() < GameValues.army.MOVE_UNITS_LOCKED_MOVE) {
                                this.lMoveUnits.remove(i5);
                                this.iMoveUnitsSize = this.lMoveUnits.size();
                                break;
                            }
                            MoveUnits moveUnits4 = new MoveUnits(i4, this.lMoveUnits.get(i5).getToProvinceID(), i2, str, this.lMoveUnits.get(i5).extraArmyY, this.lMoveUnits.get(i5).getFromProvinceID());
                            if (moveUnits4.iRouteSize <= 1) {
                                return false;
                            }
                            moveUnits4.doneMovementProgressWidth = this.lMoveUnits.get(i5).doneMovementProgressWidth;
                            moveUnits4.movementProgressOverWidth = this.lMoveUnits.get(i5).movementProgressOverWidth;
                            moveUnits4.currentMovementProgressWidth = this.lMoveUnits.get(i5).currentMovementProgressWidth;
                            moveUnits4.lCurrentMovingTime = this.lMoveUnits.get(i5).lCurrentMovingTime;
                            moveUnits4.fCurrentMovingPercentage = this.lMoveUnits.get(i5).fCurrentMovingPercentage;
                            this.lMoveUnits.set(i5, moveUnits4);
                            Game.getProvince(i).getArmy(armyKeyID2).inRetreat = z;
                            return true;
                        }
                        moveUnits.doneMovementProgressWidth = this.lMoveUnits.get(i5).doneMovementProgressWidth;
                        moveUnits.movementProgressOverWidth = this.lMoveUnits.get(i5).movementProgressOverWidth;
                        moveUnits.currentMovementProgressWidth = this.lMoveUnits.get(i5).currentMovementProgressWidth;
                        moveUnits.lCurrentMovingTime = this.lMoveUnits.get(i5).lCurrentMovingTime;
                        moveUnits.fCurrentMovingPercentage = this.lMoveUnits.get(i5).fCurrentMovingPercentage;
                        this.lMoveUnits.remove(i5);
                        this.iMoveUnitsSize = this.lMoveUnits.size();
                        break;
                    }
                    return false;
                }
            }
            this.lMoveUnits.add(moveUnits);
            this.iMoveUnitsSize = this.lMoveUnits.size();
            Game.getProvince(i).getArmy(armyKeyID2).inRetreat = z;
            Game.getProvince(i).getArmy(armyKeyID2).setInMovement(true);
            Game.getProvince(i).updateArmyPosY();
            Game.getProvince(i).updateIsUnderSiege();
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public final void removeAllRebelsArmiesMovingToCiv(int i) {
        for (int size = this.lMoveUnits.size() - 1; size >= 0; size--) {
            if (Game.getProvince(this.lMoveUnits.get(size).getToProvinceLastID()).getCivID() == i) {
                Game.getProvince(this.lMoveUnits.get(size).getFromProvinceID()).removeArmy(this.lMoveUnits.get(size).key);
                Game.revolutionManager.removeArmyPosition(this.lMoveUnits.get(size).getFromProvinceID(), this.lMoveUnits.get(size).key);
                this.lMoveUnits.remove(size);
                this.iMoveUnitsSize = this.lMoveUnits.size();
            }
        }
    }

    public final void removeMove(int i) {
        int armyKeyID = Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmyKeyID(this.lMoveUnits.get(i).key);
        if (armyKeyID >= 0) {
            Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).setInMovement(false);
            Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).inRetreat = false;
            Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).iShiftX_Scaled = 0;
            Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).iShiftY_Scaled = 0;
        }
        this.lMoveUnits.remove(i);
        this.iMoveUnitsSize = this.lMoveUnits.size();
    }

    public final boolean removeMove(String str) {
        for (int i = 0; i < this.iMoveUnitsSize; i++) {
            if (this.lMoveUnits.get(i).key.equals(str)) {
                int armyKeyID = Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmyKeyID(this.lMoveUnits.get(i).key);
                if (armyKeyID >= 0) {
                    Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).setInMovement(false);
                    Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).iShiftX_Scaled = 0;
                    Game.getProvince(this.lMoveUnits.get(i).getFromProvinceID()).getArmy(armyKeyID).iShiftY_Scaled = 0;
                }
                this.lMoveUnits.remove(i);
                this.iMoveUnitsSize = this.lMoveUnits.size();
                return true;
            }
        }
        return false;
    }

    public final void updateMoveInBattle(String str, boolean z) {
        for (int i = 0; i < this.iMoveUnitsSize; i++) {
            try {
                if (this.lMoveUnits.get(i).key.equals(str)) {
                    this.lMoveUnits.get(i).inBattle = z;
                    return;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public final void updateMoveUnits_Load(SaveGameManager.Save_Civ_MoveUnits save_Civ_MoveUnits, boolean z, boolean z2) {
        for (int i = this.iMoveUnitsSize - 1; i >= 0; i--) {
            if (this.lMoveUnits.get(i).key.equals(save_Civ_MoveUnits.k)) {
                this.lMoveUnits.get(i).currentMovementProgressWidth = save_Civ_MoveUnits.m;
                this.lMoveUnits.get(i).inRetreat = z;
                this.lMoveUnits.get(i).inBattle = z2;
                return;
            }
        }
    }
}
