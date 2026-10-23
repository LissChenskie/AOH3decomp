package aoc.kingdoms.lukasz.jakowski.AI.Build;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.ResourcesManager;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AI_BuildResource {
    public static final boolean buildBuilding(int i, int i2) {
        int iMin = Math.min(Game.aiValuesBuild.BUILD_RESOURCE_PROVINCES, Game.getCiv(i).getNumOfProvinces());
        for (int i3 = 0; i3 < iMin; i3++) {
            int provinceID = Game.getCiv(i).getProvinceID(Game.oR.nextInt(Game.getCiv(i).getNumOfProvinces()));
            if (Game.getProvince(provinceID).getResourceID() >= 0 && ResourcesManager.lResources.get(Game.getProvince(provinceID).getResourceID()).uniqueBuildingID >= 0 && !Game.getProvince(provinceID).buildingBuilt(ResourcesManager.lResources.get(Game.getProvince(provinceID).getResourceID()).uniqueBuildingID, 0) && Game.getCiv(i).isBuildingResearched(ResourcesManager.lResources.get(Game.getProvince(provinceID).getResourceID()).uniqueBuildingID, 0) && Game.getProvince(provinceID).addBuildingConstruction(ResourcesManager.lResources.get(Game.getProvince(provinceID).getResourceID()).uniqueBuildingID, 0) && Game.getCiv(i).fGold < AI_Build.averageCostOfBuilding) {
                return true;
            }
        }
        return false;
    }
}
