package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class LuckyCivsManager {
    public static void buildLuckyCivs() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).getNumOfProvinces() > 0 && i != Game.player.iCivID) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        for (int iMin = Math.min(Math.min(arrayList.size(), GameValues.luckyCivs.LUCKY_CIVS_LIMIT), (int) (arrayList.size() * GameValues.luckyCivs.LUCKY_CIVS_LIMIT_PERC_ALL_CIVS)) - 1; iMin >= 0; iMin--) {
            int iNextInt = Game.oR.nextInt(arrayList.size());
            luckyCiv(((Integer) arrayList.get(iNextInt)).intValue());
            arrayList.remove(iNextInt);
        }
        arrayList.clear();
    }

    public static void luckyCiv(int i) {
        CivilizationBonuses civilizationBonuses = new CivilizationBonuses();
        civilizationBonuses.MonthlyIncome = GameValues.luckyCivs.BONUS_MONTHLY_INCOME;
        civilizationBonuses.ProductionEfficiency = GameValues.luckyCivs.BONUS_PRODUCTION_EFFICIENCY;
        civilizationBonuses.MaxManpower = GameValues.luckyCivs.BONUS_MAX_MANPOWER;
        civilizationBonuses.RegimentsLimit = GameValues.luckyCivs.BONUS_REGIMENTS_LIMIT;
        civilizationBonuses.UnitsAttack = GameValues.luckyCivs.BONUS_UNITS_ATTACK;
        civilizationBonuses.TempTurnID = Game_Calendar.TURN_ID + GameValues.luckyCivs.BONUS_EXPIRES;
        Game.getCiv(i).addCivilizationBonus_Temporary(civilizationBonuses);
    }
}
