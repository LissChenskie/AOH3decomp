package aoc.kingdoms.lukasz.map.civilization.data;

import aoc.kingdoms.lukasz.jakowski.Game;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Civilization_ArmiesWithoutGenerals {
    public List<String> keys = new ArrayList();
    public int keysSize = 0;

    public final void addArmyKey(String str) {
        if (this.keys.contains(str)) {
            return;
        }
        this.keys.add(str);
        this.keysSize = this.keys.size();
    }

    public final void buildArmiesWithoutGenerals(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).iArmyPositionSize; i2++) {
            for (int i3 = 0; i3 < Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getArmySize(); i3++) {
                if (Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getArmy(i3).civID == i && Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getArmy(i3).armyGeneral == null) {
                    addArmyKey(Game.getProvince(Game.getCiv(i).getArmyPosition(i2)).getArmy(i3).key);
                }
            }
        }
    }

    public final void removeArmyKey(String str) {
        for (int i = 0; i < this.keysSize; i++) {
            try {
                if (this.keys.get(i).equals(str)) {
                    this.keys.remove(i);
                    this.keysSize = this.keys.size();
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
    }
}
