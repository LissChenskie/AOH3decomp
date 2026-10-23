package aoc.kingdoms.lukasz.jakowski.AI.Army;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.province.Province;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_MoveNoConnection {
    public Map<AI_MoveNoConnectionData, Integer> noConnectionMap = new HashMap();

    public final void addProvince(int i, int i2) {
        this.noConnectionMap.put(new AI_MoveNoConnectionData(i, i2), Integer.valueOf(Game_Calendar.TURN_ID + Game.aiValuesArmies.AT_WAR_NO_CONNECTION_DAYS));
    }

    public boolean contains(int i, int i2) {
        AI_MoveNoConnectionData aI_MoveNoConnectionData = new AI_MoveNoConnectionData(i, i2);
        if (this.noConnectionMap.containsKey(aI_MoveNoConnectionData)) {
            if (this.noConnectionMap.get(aI_MoveNoConnectionData).intValue() >= Game_Calendar.TURN_ID) {
                return true;
            }
            this.noConnectionMap.remove(aI_MoveNoConnectionData);
            return false;
        }
        if (Game.getProvince(i).getCivID() != Game.getProvince(i2).getCivID()) {
            Iterator<Map.Entry<AI_MoveNoConnectionData, Integer>> it = this.noConnectionMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<AI_MoveNoConnectionData, Integer> next = it.next();
                AI_MoveNoConnectionData key = next.getKey();
                if (next.getValue().intValue() < Game_Calendar.TURN_ID) {
                    it.remove();
                } else if (isTheSameRegion(Game.getProvince(key.fromProvince), i) && isTheSameRegion(Game.getProvince(key.toProvince), i2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isTheSameRegion(Province province, int i) {
        return province.getCivRegionID() == Game.getProvince(i).getCivRegionID() && province.getCivRegionID() >= 0;
    }

    public void update() {
        Iterator<Map.Entry<AI_MoveNoConnectionData, Integer>> it = this.noConnectionMap.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().intValue() < Game_Calendar.TURN_ID) {
                it.remove();
            }
        }
    }
}
