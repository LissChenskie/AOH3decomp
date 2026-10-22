package aoc.kingdoms.lukasz.map.technology;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.LawsManager;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TechnologyTree {
    public static final int PADDING_X = 100;
    public static final int PADDING_Y = 15;
    public static int iTechnologyHeight;
    public static int iTechnologyWidth;
    public static List<Image> technologyImages = new ArrayList();
    public static List<Technology> lTechnology = new ArrayList();
    public static int iTechnologySize = 0;
    public static List<List<Building>> lTechUnlocksBuildings = new ArrayList();
    public static List<List<LawTech>> lTechUnlocksLaws = new ArrayList();
    public static List<List<Unit>> lTechUnlocksUnits = new ArrayList();
    public static float MapResearchCost = 1.0f;

    public static class Building {
        public int building;
        public int buildingID;

        public Building(int i, int i2) {
            this.building = i;
            this.buildingID = i2;
        }
    }

    public static class ConfigTechnologyData {
        public String Age_of_History;
        public ArrayList Technology;
    }

    public static class LawTech {
        public int law;
        public int lawID;

        public LawTech(int i, int i2) {
            this.law = i;
            this.lawID = i2;
        }
    }

    public static class Technology {
        public int AI;
        public int ID;
        public int ImageID;
        public String Name;
        public boolean Repeatable;
        public int RequiredTech;
        public int RequiredTech2;
        public int ResearchCost;
        public int TreeColumn;
        public int TreeRow;
        public boolean MaintainTechnologyName = false;
        public boolean UnlocksNukes = false;
        public boolean UnlocksAccessToTheSea = false;
        public boolean UnlocksColonization = false;
        public int BattleWidth = 0;
        public int UnitsAttack = 0;
        public int UnitsDefense = 0;
        public int GeneralAttack = 0;
        public int GeneralDefense = 0;
        public int MaxMorale = 0;
        public int Discipline = 0;
        public int Legacy = 0;
        public int Gold = 0;
        public int MaximumLevelOfCapitalCity = 0;
        public int MaximumLevelOfTheMilitaryAcademy = 0;
        public int MaximumLevelOfTheMilitaryAcademyForGenerals = 0;

        public int getResearchCost() {
            return (int) (this.ResearchCost * TechnologyTree.MapResearchCost);
        }
    }

    public static class Unit {
        public int armyID;
        public int unitID;

        public Unit(int i, int i2) {
            this.unitID = i;
            this.armyID = i2;
        }
    }

    public static void buildTechUnlocks() {
        for (int i = 0; i < iTechnologySize; i++) {
            lTechUnlocksBuildings.add(new ArrayList());
        }
        for (int i2 = 0; i2 < BuildingsManager.buildingsResourceSize; i2++) {
            if (BuildingsManager.buildings.get(i2).RequiredTechID != null) {
                int length = BuildingsManager.buildings.get(i2).RequiredTechID.length;
                for (int i3 = 0; i3 < length; i3++) {
                    if (BuildingsManager.buildings.get(i2).RequiredTechID[i3] >= 0) {
                        lTechUnlocksBuildings.get(BuildingsManager.buildings.get(i2).RequiredTechID[i3]).add(new Building(i2, i3));
                    }
                }
            }
        }
    }

    public static void buildTechUnlocks_Laws() {
        for (int i = 0; i < iTechnologySize; i++) {
            lTechUnlocksLaws.add(new ArrayList());
        }
        for (int i2 = 0; i2 < LawsManager.iLawsSize; i2++) {
            for (int i3 = 0; i3 < LawsManager.laws.get(i2).RequiredTechID.length; i3++) {
                if (LawsManager.laws.get(i2).RequiredTechID[i3] >= 0) {
                    lTechUnlocksLaws.get(LawsManager.laws.get(i2).RequiredTechID[i3]).add(new LawTech(i2, i3));
                }
            }
        }
    }

    public static void buildTechUnlocks_Units() {
        for (int i = 0; i < iTechnologySize; i++) {
            lTechUnlocksUnits.add(new ArrayList());
        }
        for (int i2 = 0; i2 < ArmyManager.iUnitsTypesSize; i2++) {
            for (int i3 = 0; i3 < ArmyManager.lArmySize.get(i2).intValue(); i3++) {
                if (ArmyManager.lArmy.get(i2).get(i3).RequiredTechID >= 0) {
                    lTechUnlocksUnits.get(ArmyManager.lArmy.get(i2).get(i3).RequiredTechID).add(new Unit(i2, i3));
                }
            }
        }
    }

    public static final void buildTechnologiesNames() {
        for (int i = 0; i < iTechnologySize; i++) {
            if (lTechnology.get(i).MaintainTechnologyName) {
                lTechnology.get(i).Name = Game.lang.get(lTechnology.get(i).Name);
            } else if (lTechUnlocksLaws.get(i).size() > 0) {
                lTechnology.get(i).Name = Game.lang.get(LawsManager.laws.get(lTechUnlocksLaws.get(i).get(0).law).Law[lTechUnlocksLaws.get(i).get(0).lawID]);
            } else if (lTechUnlocksUnits.get(i).size() > 0) {
                lTechnology.get(i).Name = ArmyManager.lArmy.get(lTechUnlocksUnits.get(i).get(0).unitID).get(lTechUnlocksUnits.get(i).get(0).armyID).Name;
            } else if (lTechUnlocksBuildings.get(i).size() > 0) {
                lTechnology.get(i).Name = BuildingsManager.buildings.get(lTechUnlocksBuildings.get(i).get(0).building).Name[lTechUnlocksBuildings.get(i).get(0).buildingID];
            } else {
                lTechnology.get(i).Name = Game.lang.get(lTechnology.get(i).Name);
            }
        }
    }

    public static final float getMaxResearch(int i) {
        return GameValues.research.MAX_RESEARCH_BASE + ((Game.getCiv(i).getCapitalProvinceID() >= 0 ? Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getGrowthRateWithBonuses() : 1.0f) * GameValues.research.MAX_RESEARCH_PER_GROWTH_RATE_IN_CAPITAL) + (Game.getCiv(i).getCapitalLevel() * GameValues.capital.CAPITAL_MAX_RESEARCH_PER_LVL);
    }

    public static float getResearchCost(int i, int i2) {
        return Math.max(1.0f, lTechnology.get(i).getResearchCost() * ((Game.getCiv(i2).civBonuses.TechnologyCost / 100.0f) + 1.0f));
    }

    public static int getTechBG(int i, int i2) {
        if (Game.getCiv(i2).getActiveTechResearch() == i) {
            return Images.techBlue;
        }
        if (Game.getCiv(i2).getTechResearched(i)) {
            return Images.techResearched;
        }
        if (lTechnology.get(i).RequiredTech < 0 || Game.getCiv(i2).getTechResearched(lTechnology.get(i).RequiredTech)) {
            return (lTechnology.get(i).RequiredTech2 < 0 || Game.getCiv(i2).getTechResearched(lTechnology.get(i).RequiredTech2)) ? Images.techAvailable : Images.techGray;
        }
        return Images.techGray;
    }

    public static final void loadTechnology() {
        try {
            String string = FileManager.loadFile("game/technologies/Technologies.json").readString();
            Json json = new Json();
            json.setElementType(ConfigTechnologyData.class, "Technology", Technology.class);
            Iterator it = ((ConfigTechnologyData) json.fromJson(ConfigTechnologyData.class, string)).Technology.iterator();
            while (it.hasNext()) {
                lTechnology.add((Technology) it.next());
            }
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        iTechnologySize = lTechnology.size();
        loadTechnologyImages();
    }

    public static final void loadTechnologyImages() {
        int i = Integer.parseInt(FileManager.loadFile("game/technologies/technologiesImages/numOfImages.txt").readString());
        for (int i2 = 0; i2 < i; i2++) {
            technologyImages.add(new Image(ImageManager.loadTexture("game/technologies/technologiesImages/" + CFG.getRescouresPath_Short() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
        }
        iTechnologyWidth = ImageManager.getImage(Images.techBlue).getWidth();
        iTechnologyHeight = ImageManager.getImage(Images.techBlue).getHeight();
    }
}
