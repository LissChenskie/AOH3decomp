package aoc.kingdoms.lukasz.jakowski.SaveLoad;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.menu.View;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ExportData {

    public static class Save_ProvinceData_3M {
        public float baseDevelopment;
        public int iX;
        public int iY;
        public int resourceID;
        public int terrainID;
    }

    public static class Save_ProvinceData_Images {
        public int iX;
        public int iY;
        public int imgID;
    }

    public static class Save_ProvinceData_ScenarioCivs {
        public int iX;
        public int iY;
        public int numOfProvinces;
        public String sTag;
    }

    public static final void Save_Save_ProvinceData_3M() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (!Game.getProvince(i).getSeaProvince() && Game.getProvince(i).getCitiesSize() > 0) {
                Save_ProvinceData_3M save_ProvinceData_3M = new Save_ProvinceData_3M();
                save_ProvinceData_3M.iX = Game.getProvince(i).getCity(0).getPosX() / Game.mapBG.iMapScale;
                save_ProvinceData_3M.iY = Game.getProvince(i).getCity(0).getPosY() / Game.mapBG.iMapScale;
                save_ProvinceData_3M.terrainID = Game.getProvince(i).getTerrainID();
                save_ProvinceData_3M.resourceID = Game.getProvince(i).getResourceID();
                save_ProvinceData_3M.baseDevelopment = Game.getProvince(i).BaseDevelopment;
                arrayList.add(save_ProvinceData_3M);
            }
        }
        Gdx.files.local("P3M.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Save_ProvinceData_Images() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (!Game.getProvince(i).getSeaProvince() && Game.getProvince(i).getCitiesSize() > 0 && FileManager.loadFile(HjHDSSkYG.AWfVjHzvbOTTti + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_PROVINCES_IMG + i + ".png").exists()) {
                Save_ProvinceData_Images save_ProvinceData_Images = new Save_ProvinceData_Images();
                save_ProvinceData_Images.iX = Game.getProvince(i).getCity(0).getPosX() / Game.mapBG.iMapScale;
                save_ProvinceData_Images.iY = Game.getProvince(i).getCity(0).getPosY() / Game.mapBG.iMapScale;
                save_ProvinceData_Images.imgID = i;
                arrayList.add(save_ProvinceData_Images);
            }
        }
        Gdx.files.local("P_IMG.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Save_ProvinceData_ScenarioCivs() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).getNumOfProvinces() > 0 && Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getCitiesSize() > 0) {
                Save_ProvinceData_ScenarioCivs save_ProvinceData_ScenarioCivs = new Save_ProvinceData_ScenarioCivs();
                save_ProvinceData_ScenarioCivs.iX = Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getCity(0).getPosX() / Game.mapBG.iMapScale;
                save_ProvinceData_ScenarioCivs.iY = Game.getProvince(Game.getCiv(i).getCapitalProvinceID()).getCity(0).getPosY() / Game.mapBG.iMapScale;
                save_ProvinceData_ScenarioCivs.sTag = Game.getCiv(i).getCivTag();
                save_ProvinceData_ScenarioCivs.numOfProvinces = Game.getCiv(i).getNumOfProvinces();
                arrayList.add(save_ProvinceData_ScenarioCivs);
            }
        }
        Gdx.files.local("P_SCEN.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Save_ProvinceData_ScenarioCivsAssign() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).getCitiesSize() > 0) {
                Save_ProvinceData_ScenarioCivs save_ProvinceData_ScenarioCivs = new Save_ProvinceData_ScenarioCivs();
                save_ProvinceData_ScenarioCivs.iX = Game.getProvince(i).getCity(0).getPosX() / Game.mapBG.iMapScale;
                save_ProvinceData_ScenarioCivs.iY = Game.getProvince(i).getCity(0).getPosY() / Game.mapBG.iMapScale;
                save_ProvinceData_ScenarioCivs.sTag = Game.getCiv(Game.getProvince(i).getCivID()).getCivTag();
                save_ProvinceData_ScenarioCivs.numOfProvinces = Game.getCiv(Game.getProvince(i).getCivID()).getNumOfProvinces();
                arrayList.add(save_ProvinceData_ScenarioCivs);
            }
        }
        Gdx.files.local("P_SCEN_ASSI.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Save_ProvinceData_Wonders() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < WondersManager.wondersSize; i++) {
            Save_ProvinceData_Images save_ProvinceData_Images = new Save_ProvinceData_Images();
            save_ProvinceData_Images.iX = Game.getProvince(WondersManager.wonders.get(i).ProvinceID).getCity(0).getPosX() / Game.mapBG.iMapScale;
            save_ProvinceData_Images.iY = Game.getProvince(WondersManager.wonders.get(i).ProvinceID).getCity(0).getPosY() / Game.mapBG.iMapScale;
            save_ProvinceData_Images.imgID = WondersManager.wonders.get(i).ProvinceID;
            arrayList.add(save_ProvinceData_Images);
        }
        Gdx.files.local("P_WOND.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void loadSave_ProvinceData_3M() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("P3M.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Save_ProvinceData_3M save_ProvinceData_3M = (Save_ProvinceData_3M) json.readValue(Save_ProvinceData_3M.class, (JsonValue) it.next());
                int provinceID_Point = Game.setProvinceID_Point(save_ProvinceData_3M.iX * Game.mapBG.iMapScale, save_ProvinceData_3M.iY * Game.mapBG.iMapScale);
                if (provinceID_Point >= 0 && !Game.getProvince(provinceID_Point).getSeaProvince()) {
                    if (Game.getProvince(provinceID_Point).getResourceID() < 0) {
                        Game.getProvince(provinceID_Point).setTerrainID(save_ProvinceData_3M.terrainID);
                        Game.getProvince(provinceID_Point).setResourceID(save_ProvinceData_3M.resourceID);
                        Game.getProvince(provinceID_Point).BaseDevelopment = save_ProvinceData_3M.baseDevelopment;
                    } else if (Game.oR.nextInt(100) < 25) {
                        Game.getProvince(provinceID_Point).setTerrainID(save_ProvinceData_3M.terrainID);
                        Game.getProvince(provinceID_Point).setResourceID(save_ProvinceData_3M.resourceID);
                        Game.getProvince(provinceID_Point).BaseDevelopment = save_ProvinceData_3M.baseDevelopment;
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData_Images() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("P_IMG.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Save_ProvinceData_Images save_ProvinceData_Images = (Save_ProvinceData_Images) json.readValue(Save_ProvinceData_Images.class, (JsonValue) it.next());
                int provinceID_Point = Game.setProvinceID_Point(save_ProvinceData_Images.iX * Game.mapBG.iMapScale, save_ProvinceData_Images.iY * Game.mapBG.iMapScale);
                if (provinceID_Point >= 0 && !Game.getProvince(provinceID_Point).getSeaProvince()) {
                    CFG.LOG("" + save_ProvinceData_Images.imgID + ".png -----> " + provinceID_Point);
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData_ScenarioCivs() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("P_SCEN.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Game.mapScenarios.createScenario();
            Game.mapBG.requestToDisposeMinimap = true;
            CFG.iCreateScenario_AssignProvinces_Civ = 0;
            Game.mapScenarios.loadReligions_JustBuild(true);
            Game.mapScenarios.scenarioEditor_isCampaign = false;
            Game.menuManager.setViewID(View.SCENARIO_WASTELAND_CONTINENTS);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Save_ProvinceData_ScenarioCivs save_ProvinceData_ScenarioCivs = (Save_ProvinceData_ScenarioCivs) json.readValue(Save_ProvinceData_ScenarioCivs.class, (JsonValue) it.next());
                int provinceID_Point = Game.setProvinceID_Point(save_ProvinceData_ScenarioCivs.iX * Game.mapBG.iMapScale, save_ProvinceData_ScenarioCivs.iY * Game.mapBG.iMapScale);
                if (Game.getProvince(provinceID_Point).getCivID() > 0) {
                    CFG.LOG("NOT ADDED: " + Game.lang.getCiv(save_ProvinceData_ScenarioCivs.sTag));
                } else {
                    Game.addCivilization(save_ProvinceData_ScenarioCivs.sTag, provinceID_Point, true, true, false, true, false);
                }
            }
            Game.iCivsSize = Game.lCivs.size();
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData_ScenarioCivs_Assign() {
        int civID;
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("P_SCEN_ASSI.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Save_ProvinceData_ScenarioCivs save_ProvinceData_ScenarioCivs = (Save_ProvinceData_ScenarioCivs) json.readValue(Save_ProvinceData_ScenarioCivs.class, (JsonValue) it.next());
                int provinceID_Point = Game.setProvinceID_Point(save_ProvinceData_ScenarioCivs.iX * Game.mapBG.iMapScale, save_ProvinceData_ScenarioCivs.iY * Game.mapBG.iMapScale);
                if (provinceID_Point >= 0 && Game.getProvince(provinceID_Point).getCivID() <= 0 && (civID = Game.getCivID(save_ProvinceData_ScenarioCivs.sTag)) > 0) {
                    Game.getProvince(provinceID_Point).setCivID_RemoveOldAddNewToCiv(civID);
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData_Wonders() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("P_WOND.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Save_ProvinceData_Images save_ProvinceData_Images = (Save_ProvinceData_Images) json.readValue(Save_ProvinceData_Images.class, (JsonValue) it.next());
                int provinceID_Point = Game.setProvinceID_Point(save_ProvinceData_Images.iX * Game.mapBG.iMapScale, save_ProvinceData_Images.iY * Game.mapBG.iMapScale);
                if (provinceID_Point >= 0 && !Game.getProvince(provinceID_Point).getSeaProvince()) {
                    CFG.LOG("Old prov: " + save_ProvinceData_Images.imgID + " -----> New: " + provinceID_Point);
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
