package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ColonizationManager {
    public static boolean establishSettlement(int i, int i2, int i3) {
        int iMax;
        try {
            if (i == Game.player.iCivID && !GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD && ((!GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_PLAYER_TRIBAL || !Game.ideologiesManager.getIdeology(Game.getCiv(Game.player.iCivID).getIdeologyID()).TRIBAL) && ((!GameValues.colonization.AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS || Game_Calendar.TURN_ID < GameValues.colonization.AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS_MIN_TURN_ID) && !Game.getCiv(i).canColonize))) {
                Game.menuManager.addToast_Error(Game.lang.get("Law") + ": " + Game.lang.get("NoColonization"), Images.law);
                Game.menuManager.addToast_Error(Game.lang.get("NoColonization.d"), Images.provinces);
                return false;
            }
            Province province = Game.getProvince(i2);
            if (province.getCivID() != 0 || (iMax = Math.max(i3, getNumberOfSettlers(i, i2))) <= 0) {
                return false;
            }
            int iMin = Math.min(iMax, Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * GameValues.colonization.COLONIZATION_MAX_SETTLERS);
            province.setCivID(i);
            province.setReligion(Game.getCiv(i).getReligionID());
            province.addCore(i);
            province.clearPopulationData();
            province.setPopulationOfCivID(i, iMin);
            Game.getProvinceData9(i2).setColonizationStartedTurnID(Game_Calendar.TURN_ID);
            Game.getProvinceData9(i2).setColonizationGrowthRateExtra((int) (province.getGrowthRate() * GameValues.colonization.COLONIZATION_GROWTH_RATE_EXTRA));
            Game.getCiv(i).addColonizationProvince(i2);
            for (int armySize = province.getArmySize() - 1; armySize >= 0; armySize--) {
                if (province.getArmy(armySize).civID == i) {
                    province.getArmy(armySize).removeAllSettlers();
                    if (province.getArmy(armySize).iArmyRegimentSize == 0) {
                        if (province.getArmy(armySize).armyGeneral != null) {
                            Game.getCiv(province.getArmy(armySize).civID).addGeneral(province.getArmy(armySize).armyGeneral);
                        }
                        province.removeArmy(armySize);
                    }
                }
            }
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public static boolean establishSettlement_Gold(int i, int i2) {
        Province province = Game.getProvince(i2);
        if (province.getCivID() != 0) {
            return false;
        }
        Game.getCiv(i).fGold -= GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST;
        province.setCivID(i);
        province.setReligion(Game.getCiv(i).getReligionID());
        province.addCore(i);
        province.clearPopulationData();
        province.setPopulationOfCivID(i, GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_SETTLERS + Game.oR.nextInt(GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_SETTLERS_RANDOM));
        Game.getProvinceData9(i2).setColonizationStartedTurnID(Game_Calendar.TURN_ID);
        Game.getProvinceData9(i2).setColonizationGrowthRateExtra((int) (province.getGrowthRate() * GameValues.colonization.COLONIZATION_GROWTH_RATE_EXTRA));
        Game.getCiv(i).addColonizationProvince(i2);
        return true;
    }

    public static final int getNumberOfSettlers(int i, int i2) {
        Province province = Game.getProvince(i2);
        int numberOfSettlers = 0;
        for (int armySize = province.getArmySize() - 1; armySize >= 0; armySize--) {
            if (province.getArmy(armySize).civID == i) {
                numberOfSettlers += province.getArmy(armySize).getNumberOfSettlers();
            }
        }
        return numberOfSettlers;
    }

    public static final float getSettlementEstablishmentProgress(int i) {
        return Math.min(1.0f, (Game_Calendar.TURN_ID - Game.getProvinceData9(i).getColonizationStartedTurnID()) / GameValues.colonization.COLONIZATION_TIME);
    }
}
