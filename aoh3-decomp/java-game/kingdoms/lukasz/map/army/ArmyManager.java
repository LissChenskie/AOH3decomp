package aoc.kingdoms.lukasz.map.army;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ArmyManager {
    public static final int FIRST_LINE_FLANK = 1;
    public static final int FIRST_LINE_MIDDLE = 0;
    public static final int SECOND_LINE = 2;
    public static int iUnitsTypesSize;
    public static List<Data_UnitTypes> lUnitsTypes = new ArrayList();
    public static ArrayList<ArrayList<Data_Army>> lArmy = new ArrayList<>();
    public static List<Integer> lArmySize = new ArrayList();
    public static List<Image> armyImages = new ArrayList();
    public static float averageArmyCost = 0.0f;

    public static class ConfigUnitsData {
        public String Age_of_History;
        public ArrayList Army;
    }

    public static class Data_Army {
        private int Attack;
        public int AttackRange;
        public int Cost;
        private int Defense;
        public int ImageID;
        public float MaintenanceCost;
        public float MovementSpeed;
        public String Name;
        public int RecruitmentTime;
        public int RequiredTechID;
        public float SiegeProgress;
        public int UnitLevel;
        public boolean isSettler = false;
        public boolean SiegeUnit = false;

        public int getAttack() {
            return this.Attack;
        }

        public int getAttack(int i) {
            return Math.max(1, this.Attack + Game.getCiv(i).civBonuses.UnitsAttack + GameValues.battleTactics.BATTLE_TACTICS_ATTACK[Game.getCiv(i).getBattleTacticsID()]);
        }

        public int getDefense() {
            return this.Defense;
        }

        public int getDefense(int i) {
            return Math.max(1, this.Defense + Game.getCiv(i).civBonuses.UnitsDefense + GameValues.battleTactics.BATTLE_TACTICS_DEFENSE[Game.getCiv(i).getBattleTacticsID()]);
        }
    }

    public static class Data_UnitTypes {
        public String File;
        public int ID;
        public int Line;
    }

    public static boolean armyCanBeUpgraded(int i, int i2, int i3) {
        int i4 = i3 + 1;
        if (i4 >= lArmySize.get(i2).intValue()) {
            return false;
        }
        try {
            return Game.getCiv(i).getTechResearched(lArmy.get(i2).get(i4).RequiredTechID);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static int getRecruitmentCost(int i, int i2, int i3, int i4) {
        return getRecruitmentCost(i, i2, i3, i4, getRecruitmentCost_Regiments(i));
    }

    public static int getRecruitmentCost(int i, int i2, int i3, int i4, int i5) {
        float f = i5 >= Game.getCiv(i).iRegimentsLimit ? GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER : 1.0f;
        float f2 = lArmy.get(i3).get(i4).Cost;
        float f3 = (i2 >= 0 ? Game.getProvince(i2).provBonuses.RecruitArmyCostInProvince : 0.0f) + Game.getCiv(i).civBonuses.RecruitArmyCost;
        int i6 = lUnitsTypes.get(i3).Line;
        CivilizationBonuses civilizationBonuses = Game.getCiv(i).civBonuses;
        return (int) (f * Math.max(1.0f, f2 * (((f3 + (i6 == 2 ? civilizationBonuses.RecruitArmySecondLineCost : civilizationBonuses.RecruitArmyFirstLineCost)) / 100.0f) + 1.0f)));
    }

    public static int getRecruitmentCost_Regiments(int i) {
        return Game.getCiv(i).getArmyRegimentSize() + Game.getCiv(i).iArmyRecruitSize_Total;
    }

    public static int getRecruitmentTime(int i, int i2, int i3, int i4) {
        return (int) Math.max(1.0f, lArmy.get(i3).get(i4).RecruitmentTime * ((i2 >= 0 ? Game.getProvince(i2).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_RECRUITMENT_TIME_PER_LVL : 0.0f) + 1.0f + (Game.getCiv(i).getWarWeariness() * GameValues.warWeariness.WW_RECRUITMENT_TIME_PER_POINT) + (Game.getCiv(i).civBonuses.RecruitmentTime / 100.0f)));
    }

    public static int getRegimentsAvailableToUpgrade(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < Game.getCiv(i).iArmyPositionSize; i3++) {
            int armyPosition = Game.getCiv(i).getArmyPosition(i3);
            if (armyPosition >= 0) {
                for (int armySize = Game.getProvince(armyPosition).getArmySize() - 1; armySize >= 0; armySize--) {
                    if (Game.getProvince(armyPosition).getArmy(armySize).civID == i) {
                        for (int i4 = Game.getProvince(armyPosition).getArmy(armySize).iArmyRegimentSize - 1; i4 >= 0; i4--) {
                            if (armyCanBeUpgraded(i, Game.getProvince(armyPosition).getArmy(armySize).lArmyRegiment.get(i4).uID, Game.getProvince(armyPosition).getArmy(armySize).lArmyRegiment.get(i4).aID)) {
                                i2++;
                            }
                        }
                    }
                }
            }
        }
        return i2;
    }

    public static int getUpgradeMaxArmyID(int i, int i2, int i3) {
        for (int iIntValue = lArmySize.get(i2).intValue() - 1; iIntValue >= i3; iIntValue--) {
            if (Game.getCiv(i).getTechResearched(lArmy.get(i2).get(iIntValue).RequiredTechID)) {
                return iIntValue;
            }
        }
        return i3;
    }

    public static float getUpgradeRegimentCost(int i) {
        return GameValues.army.UPGRADE_REGIMENT_COST;
    }

    public static final void loadArmies() {
        for (int i = 0; i < iUnitsTypesSize; i++) {
            try {
                lArmy.add(new ArrayList<>());
                String string = FileManager.loadFile(ATsAGKCnv.AzfKMzZczdEQY + lUnitsTypes.get(i).File).readString();
                Json json = new Json();
                json.setElementType(ConfigUnitsData.class, XjthpFh.JQRy, Data_Army.class);
                for (Data_Army data_Army : ((ConfigUnitsData) json.fromJson(ConfigUnitsData.class, string)).Army) {
                    data_Army.MaintenanceCost *= Game.map.getActiveMap_MapData().mapData.UnitsMaintenanceCost;
                    data_Army.Cost = (int) (data_Army.Cost * Game.map.getActiveMap_MapData().mapData.UnitsRecruitCost);
                    lArmy.get(i).add(data_Army);
                }
                lArmySize.add(Integer.valueOf(lArmy.get(i).size()));
            } catch (GdxRuntimeException e) {
                CFG.exceptionStack(e);
            }
        }
        int i2 = 0;
        for (int i3 = 0; i3 < iUnitsTypesSize; i3++) {
            for (int i4 = 0; i4 < lArmySize.get(i3).intValue(); i4++) {
                lArmy.get(i3).get(i4).Name = Game.lang.get(lArmy.get(i3).get(i4).Name);
                averageArmyCost += lArmy.get(i3).get(i4).Cost;
                i2++;
            }
        }
        averageArmyCost /= i2;
    }

    public static final void loadArmyImages() {
        int i = Integer.parseInt(FileManager.loadFile("game/units/unitsImages/numOfImages.txt").readString());
        for (int i2 = 0; i2 < i; i2++) {
            if (FileManager.loadFile("game/units/unitsImages/" + CFG.getRescouresPath_Short() + i2 + ".png").exists()) {
                armyImages.add(new Image(ImageManager.loadTexture_RGB888("game/units/unitsImages/" + CFG.getRescouresPath_Short() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
            } else {
                armyImages.add(new Image(ImageManager.loadTexture_RGB888("game/units/unitsImages/" + CFG.getRescouresPath_Short_H() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
            }
        }
    }

    public static final void loadUnits() {
        try {
            String string = FileManager.loadFile(TGqtTWl.RrvpAofaN).readString();
            Json json = new Json();
            json.setElementType(ConfigUnitsData.class, "Army", Data_UnitTypes.class);
            Iterator it = ((ConfigUnitsData) json.fromJson(ConfigUnitsData.class, string)).Army.iterator();
            while (it.hasNext()) {
                lUnitsTypes.add((Data_UnitTypes) it.next());
            }
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        iUnitsTypesSize = lUnitsTypes.size();
        try {
            loadArmies();
            loadArmyImages();
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static final int upgradeAllArmies(int i) {
        int upgradeMaxArmyID;
        int i2 = 0;
        for (int i3 = 0; i3 < Game.getCiv(i).iArmyPositionSize; i3++) {
            int armyPosition = Game.getCiv(i).getArmyPosition(i3);
            if (armyPosition >= 0) {
                for (int armySize = Game.getProvince(armyPosition).getArmySize() - 1; armySize >= 0; armySize--) {
                    if (Game.getProvince(armyPosition).getArmy(armySize).civID == i) {
                        for (int i4 = Game.getProvince(armyPosition).getArmy(armySize).iArmyRegimentSize - 1; i4 >= 0; i4--) {
                            if (armyCanBeUpgraded(i, Game.getProvince(armyPosition).getArmy(armySize).lArmyRegiment.get(i4).uID, Game.getProvince(armyPosition).getArmy(armySize).lArmyRegiment.get(i4).aID) && Game.getProvince(armyPosition).getArmy(armySize).lArmyRegiment.get(i4).aID < (upgradeMaxArmyID = getUpgradeMaxArmyID(i, Game.getProvince(armyPosition).getArmy(armySize).lArmyRegiment.get(i4).uID, Game.getProvince(armyPosition).getArmy(armySize).lArmyRegiment.get(i4).aID))) {
                                Game.getProvince(armyPosition).getArmy(armySize).lArmyRegiment.get(i4).aID = upgradeMaxArmyID;
                                Game.getCiv(i).fGold -= getUpgradeRegimentCost(i);
                                i2++;
                            }
                        }
                    }
                }
            }
        }
        return i2;
    }

    public static final void upgradeDivisionArmy(int i, int i2, int i3, int i4, int i5) {
        if (i == Game.getProvince(i4).getArmy(i5).civID) {
            int upgradeMaxArmyID = getUpgradeMaxArmyID(i, i2, i3);
            for (int i6 = Game.getProvince(i4).getArmy(i5).iArmyRegimentSize - 1; i6 >= 0; i6--) {
                if (Game.getProvince(i4).getArmy(i5).lArmyRegiment.get(i6).uID == i2 && Game.getProvince(i4).getArmy(i5).lArmyRegiment.get(i6).aID < upgradeMaxArmyID) {
                    Game.getProvince(i4).getArmy(i5).lArmyRegiment.get(i6).aID = upgradeMaxArmyID;
                    Game.getCiv(i).fGold -= getUpgradeRegimentCost(i);
                }
            }
        }
    }
}
