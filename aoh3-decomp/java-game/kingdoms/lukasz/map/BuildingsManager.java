package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class BuildingsManager {
    public static final int GROUP_CAPITAL = 3;
    public static List<Buildings> buildings = new ArrayList();
    public static List<Integer> buildingSize = new ArrayList();
    public static int buildingsSize = 0;
    public static int buildingsResourceStartID = 0;
    public static int buildingsResourceSize = 0;
    public static List<Image> buildingImages = new ArrayList();

    public static class Buildings {
        public int[] AI;
        public float[] ArmyMovementSpeed;
        public int[] BuildingSlots;
        public float[] CasualtiesNuclearAttacks;
        public int[] ConstructionCost;
        public int[] ConstructionTime;
        public int[] ConstructionTimeBonus;
        public float[] CostGold;
        public int[] DefenseBonus;
        public float[] DevelopInfrastructureCost;
        public float[] DiseaseDeathRate;
        public float[] Economy;
        public int[] FortDefense;
        public int[] FortLevel;
        public int GroupID;
        public int[] ImageID;
        public float[] IncomeProduction;
        public float[] IncreaseGrowthRateCost;
        public float[] IncreaseManpowerCost;
        public float[] IncreaseTaxEfficiencyCost;
        public float[] InvestInEconomyCost;
        public float[] LocalGrowthRate;
        public float[] LocalManpower;
        public float[] LocalTaxEfficiency;
        public float[] MaintenanceCost;
        public int[] MaxInfrastructure;
        public int[] MaximumManpower;
        public float[] MonthlyIncome;
        public float[] MonthlyLegacy;
        public String[] Name;
        public String[] NameDesc;
        public float[] ProductionEfficiency;
        public float[] ProvinceMaintenance;
        public float[] RecruitArmyCostInProvince;
        public int[] RequiredTechID;
        public float[] ResearchPoints;
        public float[] TaxEfficiency;
        public int RequiredGovernmentID = -1;
        public int RequiredReligionID = -1;
        public int RequiredResource = -1;
        public boolean UniqueCapitalBuilding = false;
        public boolean SeaAccessRequired = false;
        public boolean ShowUpgrades = true;
    }

    public static class ConfigBuildingsData {
        public String Age_of_History;
        public ArrayList Buildings;
    }

    public static final void loadBuildings() {
        int i;
        try {
            String string = FileManager.loadFile("game/buildings/Buildings.json").readString();
            Json json = new Json();
            json.setElementType(ConfigBuildingsData.class, "Buildings", Buildings.class);
            i = 0;
            for (Buildings buildings2 : ((ConfigBuildingsData) json.fromJson(ConfigBuildingsData.class, string)).Buildings) {
                try {
                    if (buildings2.CostGold != null) {
                        for (int length = buildings2.CostGold.length - 1; length >= 0; length--) {
                            buildings2.CostGold[length] = (int) (buildings2.CostGold[length] * Game.map.getActiveMap_MapData().mapData.BuildingsCost);
                        }
                    }
                    if (buildings2.MaintenanceCost != null) {
                        for (int length2 = buildings2.MaintenanceCost.length - 1; length2 >= 0; length2--) {
                            buildings2.MaintenanceCost[length2] = (int) (buildings2.MaintenanceCost[length2] * Game.map.getActiveMap_MapData().mapData.BuildingsMaintenanceCost);
                        }
                    }
                    if (buildings2.ConstructionTime != null) {
                        for (int length3 = buildings2.ConstructionTime.length - 1; length3 >= 0; length3--) {
                            buildings2.ConstructionTime[length3] = (int) (buildings2.ConstructionTime[length3] * Game.map.getActiveMap_MapData().mapData.BuildingsConstructionTime);
                        }
                    }
                    buildings.add(buildings2);
                    buildingSize.add(Integer.valueOf(buildings.get(i).Name.length));
                    i++;
                } catch (GdxRuntimeException e) {
                    e = e;
                    CFG.exceptionStack(e);
                }
            }
        } catch (GdxRuntimeException e2) {
            e = e2;
            i = 0;
        }
        int size = buildings.size();
        buildingsSize = size;
        buildingsResourceStartID = size;
        try {
            String string2 = FileManager.loadFile("game/buildings/BuildingsResources.json").readString();
            Json json2 = new Json();
            json2.setElementType(ConfigBuildingsData.class, "Buildings", Buildings.class);
            Iterator it = ((ConfigBuildingsData) json2.fromJson(ConfigBuildingsData.class, string2)).Buildings.iterator();
            while (it.hasNext()) {
                buildings.add((Buildings) it.next());
                buildingSize.add(Integer.valueOf(buildings.get(i).Name.length));
                i++;
            }
        } catch (GdxRuntimeException e3) {
            CFG.exceptionStack(e3);
        }
        buildingsResourceSize = buildings.size();
        for (int i2 = 0; i2 < buildingsResourceSize; i2++) {
            if (buildings.get(i2).NameDesc == null) {
                buildings.get(i2).NameDesc = new String[buildings.get(i2).Name.length];
                for (int i3 = 0; i3 < buildings.get(i2).Name.length; i3++) {
                    buildings.get(i2).NameDesc[i3] = buildings.get(i2).Name[i3] + "Desc";
                }
            }
        }
        for (int i4 = 0; i4 < buildingsResourceSize; i4++) {
            try {
                for (int i5 = 0; i5 < buildingSize.get(i4).intValue(); i5++) {
                    buildings.get(i4).Name[i5] = Game.lang.get(buildings.get(i4).Name[i5]);
                }
            } catch (Exception e4) {
                CFG.exceptionStack(e4);
            }
        }
        loadBuildingsImages();
    }

    public static final void loadBuildingsImages() {
        try {
            int i = Integer.parseInt(FileManager.loadFile("game/buildings/buildingsImages/numOfImages.txt").readString());
            for (int i2 = 0; i2 < i; i2++) {
                if (FileManager.loadFile("game/buildings/buildingsImages/" + CFG.getRescouresPath_Short() + i2 + ".png").exists()) {
                    buildingImages.add(new Image(ImageManager.loadTexture_RGB888("game/buildings/buildingsImages/" + CFG.getRescouresPath_Short() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                } else {
                    buildingImages.add(new Image(ImageManager.loadTexture_RGB888("game/buildings/buildingsImages/" + CFG.getRescouresPath_Short_H() + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
