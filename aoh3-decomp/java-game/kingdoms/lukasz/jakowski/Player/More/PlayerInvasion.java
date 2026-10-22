package aoc.kingdoms.lukasz.jakowski.Player.More;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.army.ArmyInvasion;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PlayerInvasion {
    public List<ArmyInvasion> invasions = new ArrayList();
    public int invasionsSize = 0;

    public final boolean addInvasion(int i) {
        if (Game.invasionArmyProvincesSize == 0 || InGame_ProvinceArmy.sActiveKEY == null || Game.findArmy_FullCheck(i, InGame_ProvinceArmy.sActiveKEY) == null) {
            return false;
        }
        for (int i2 = 0; i2 < this.invasionsSize; i2++) {
            if (this.invasions.get(i2).armyKey.equals(InGame_ProvinceArmy.sActiveKEY)) {
                this.invasions.get(i2).lProvinces = Game.invasionArmyProvinces;
                return false;
            }
        }
        this.invasions.add(new ArmyInvasion(i, InGame_ProvinceArmy.sActiveKEY, Game.invasionArmyProvinces));
        this.invasionsSize = this.invasions.size();
        return true;
    }

    public final void clearInvasions() {
        this.invasions.clear();
        this.invasionsSize = 0;
    }

    public final int getInvasionPlan_NumOfProvinces(String str) {
        for (int i = 0; i < this.invasionsSize; i++) {
            if (this.invasions.get(i).armyKey.equals(str)) {
                return this.invasions.get(i).lProvinces.size();
            }
        }
        return 0;
    }

    public final boolean haveInvasionPlan(String str) {
        for (int i = 0; i < this.invasionsSize; i++) {
            if (this.invasions.get(i).armyKey.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public final boolean moveInvasion(String str) {
        for (int i = 0; i < this.invasionsSize; i++) {
            if (this.invasions.get(i).armyKey.equals(str)) {
                if (this.invasions.get(i).invasionMoveArmy(Game.player.iCivID)) {
                    return true;
                }
                this.invasions.remove(i);
                this.invasionsSize = this.invasions.size();
                return true;
            }
        }
        return false;
    }

    public final boolean removeInvasion(String str) {
        for (int i = 0; i < this.invasionsSize; i++) {
            if (this.invasions.get(i).armyKey.equals(str)) {
                this.invasions.remove(i);
                this.invasionsSize = this.invasions.size();
                return true;
            }
        }
        return false;
    }
}
