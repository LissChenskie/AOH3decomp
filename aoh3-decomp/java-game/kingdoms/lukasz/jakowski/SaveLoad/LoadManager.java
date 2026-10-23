package aoc.kingdoms.lukasz.jakowski.SaveLoad;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.allianceHRE.Alliance;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyRegiment;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceConstructedBuilding;
import aoc.kingdoms.lukasz.map.province.ProvinceCut;
import aoc.kingdoms.lukasz.map.province.ProvinceNameData;
import aoc.kingdoms.lukasz.map.province.ProvinceNamesManager;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData10;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData2;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData3;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData4;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData5;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData6;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData7;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData8;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData9;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData_Population;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class LoadManager {
    public static int loadProvinceBorderFileID;
    public static int loadProvincePointsFileID;

    public static class ConfigJson {
        public String Age_of_History;
        public ArrayList Data;
    }

    public static class ConfigJson2 {
        public ArrayList Data;
    }

    public static class Data_ProvinceBorder {
        public int pid;
        public List<Integer> px;
        public List<Integer> py;
        public int wp;
    }

    public static class Data_ProvincePoints {
        List<Short> pX;
        List<Short> pY;
    }

    protected static class ProvinceDetails {
        float bd;
        int co;
        float gr;
        int lp;
        int pid;
        int re;
        int rs = -1;
        int sx;
        int sy;
        int tr;

        protected ProvinceDetails() {
        }
    }

    protected static class ProvinceNamesPoints {
        float cx;
        float cy;
        float fX;
        float fX2;
        float fY;
        float fY2;
        int pid;

        protected ProvinceNamesPoints() {
        }
    }

    protected static class ScenarioData {
        int iCapitalProvinceID;
        int[] lProvinces;
        String sCivTAG;

        protected ScenarioData() {
        }
    }

    public static final void buildLevelOfPort() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getNeighboringSeaProvincesSize() > 0) {
                Game.getProvince(i).setLevelOfPort(0);
            }
        }
    }

    public static final void buildNeighboringProvinces() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            for (int i2 = 0; i2 < Game.getProvince(i).getProvinceBordersLandByLandSize(); i2++) {
                update(i, Game.getProvince(i).getProvinceBordersLandByLand().get(i2).getWithProvinceID());
            }
            for (int i3 = 0; i3 < Game.getProvince(i).getProvinceBordersLandBySeaSize(); i3++) {
                update(i, Game.getProvince(i).getProvinceBordersLandBySea().get(i3).getWithProvinceID());
            }
            for (int i4 = 0; i4 < Game.getProvince(i).getProvinceBordersSeaBySeaSize(); i4++) {
                update(i, Game.getProvince(i).getProvinceBordersSeaBySea().get(i4).getWithProvinceID());
            }
        }
    }

    public static final boolean loadProvinceBorder() {
        try {
            int i = loadProvinceBorderFileID;
            loadProvinceBorderFileID = i + 1;
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/ProvinceNeighboringProvinces/ProvinceNeighboringProvinces" + (i > 0 ? "_" + i : "") + ".json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Data_ProvinceBorder data_ProvinceBorder = (Data_ProvinceBorder) json.readValue(Data_ProvinceBorder.class, (JsonValue) it.next());
                Game.getProvince(data_ProvinceBorder.pid).addProvinceBorder(data_ProvinceBorder.wp, data_ProvinceBorder.px, data_ProvinceBorder.py);
            }
            arrayList.clear();
            return true;
        } catch (GdxRuntimeException e) {
            CFG.LOG(e);
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static final void loadProvinceDetails() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            try {
                Game.getProvince(i).setShiftX(0);
                Game.getProvince(i).setShiftY(0);
            } catch (GdxRuntimeException e) {
                CFG.LOG(e);
                return;
            }
        }
        if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_DATA + CFG.FILE_PROVINCE_DETAILS).exists()) {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_DATA + CFG.FILE_PROVINCE_DETAILS);
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ProvinceDetails provinceDetails = (ProvinceDetails) json.readValue(ProvinceDetails.class, (JsonValue) it.next());
                if (provinceDetails.pid < Game.getProvincesSize()) {
                    Game.getProvince(provinceDetails.pid).setContinent(provinceDetails.co);
                    Game.getProvince(provinceDetails.pid).setGeoRegion(provinceDetails.re);
                    Game.getProvince(provinceDetails.pid).setTerrainID(provinceDetails.tr);
                    Game.getProvince(provinceDetails.pid).setLevelOfPort(provinceDetails.lp);
                    Game.getProvince(provinceDetails.pid).setResourceID(provinceDetails.rs);
                    Game.getProvince(provinceDetails.pid).BaseDevelopment = provinceDetails.bd;
                    Game.getProvince(provinceDetails.pid).setGrowthRate(provinceDetails.gr);
                    Game.getProvince(provinceDetails.pid).setShiftX(provinceDetails.sx * Game.mapBG.iMapScale);
                    Game.getProvince(provinceDetails.pid).setShiftY(provinceDetails.sy * Game.mapBG.iMapScale);
                    Game.getProvince(provinceDetails.pid).updateSeaProvince();
                    if (Game.getProvince(provinceDetails.pid).getSeaProvince()) {
                        Game.getProvince(provinceDetails.pid).setTerrainID(0);
                    } else if (Game.getProvince(provinceDetails.pid).getTerrainID() == 0) {
                        Game.getProvince(provinceDetails.pid).setTerrainID(1);
                    }
                }
            }
            arrayList.clear();
        }
    }

    public static final void loadProvinceMapData() {
        loadProvinceDetails();
        buildLevelOfPort();
    }

    public static final void loadProvinceNamesPoints() {
        ProvinceNameData provinceNameData;
        try {
            if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/ProvinceNamePoints.json").exists()) {
                FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/ProvinceNamePoints.json");
                Json json = new Json();
                ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ProvinceNamesPoints provinceNamesPoints = (ProvinceNamesPoints) json.readValue(ProvinceNamesPoints.class, (JsonValue) it.next());
                    if (provinceNamesPoints.fX == ProvinceNamesManager.NULL_INDICATOR) {
                        provinceNameData = null;
                    } else {
                        ProvinceNameData provinceNameData2 = new ProvinceNameData();
                        provinceNameData2.fX = provinceNamesPoints.fX * Game.mapBG.iMapScale;
                        provinceNameData2.fX2 = provinceNamesPoints.fX2 * Game.mapBG.iMapScale;
                        provinceNameData2.fY = provinceNamesPoints.fY * Game.mapBG.iMapScale;
                        provinceNameData2.fY2 = provinceNamesPoints.fY2 * Game.mapBG.iMapScale;
                        provinceNameData2.fCenterX = provinceNamesPoints.cx * Game.mapBG.iMapScale;
                        provinceNameData2.fCenterY = provinceNamesPoints.cy * Game.mapBG.iMapScale;
                        provinceNameData = provinceNameData2;
                    }
                    ProvinceNamesManager.provinceNames.add(provinceNameData);
                }
                arrayList.clear();
            }
        } catch (GdxRuntimeException e) {
            CFG.LOG(e);
        }
    }

    public static final boolean loadProvincePoints() {
        try {
            int i = loadProvincePointsFileID;
            loadProvincePointsFileID = i + 1;
            if (loadProvincePoints(i)) {
                return true;
            }
            Game.iProvincesSize = Game.lProvinces.size();
            return false;
        } catch (Exception e) {
            CFG.LOG(e);
            return false;
        }
    }

    private static final boolean loadProvincePoints(int i) {
        try {
            String string = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/ProvincePoints/ProvincePoints" + (i > 0 ? "_" + i : "") + ".json").readString();
            Json json = new Json();
            json.setElementType(ConfigJson.class, "Data", Data_ProvincePoints.class);
            ConfigJson configJson = (ConfigJson) json.fromJson(ConfigJson.class, string);
            int size = Game.lProvinces.size();
            for (Data_ProvincePoints data_ProvincePoints : configJson.Data) {
                int i2 = size + 1;
                Game.lProvinces.add(new Province(size, data_ProvincePoints.pX, data_ProvincePoints.pY));
                Game.lProvincesData.add(new ProvinceData());
                Game.lProvincesData2.add(new ProvinceData2());
                Game.lProvincesData3.add(new ProvinceData3());
                Game.lProvincesData4.add(new ProvinceData4());
                Game.lProvincesData5.add(new ProvinceData5());
                Game.lProvincesData6.add(new ProvinceData6());
                Game.lProvincesData7.add(new ProvinceData7());
                Game.lProvincesData8.add(new ProvinceData8());
                Game.lProvincesData9.add(new ProvinceData9());
                Game.lProvincesData10.add(new ProvinceData10());
                Game.lProvincesPopulation.add(new ProvinceData_Population());
                size = i2;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static final void loadProvincePoints_Cut() {
        Game.cutProvinces = new ArrayList();
        for (int i = 0; i < 5000; i++) {
            try {
                if (!loadProvincePoints_Cut(i)) {
                    return;
                }
            } catch (GdxRuntimeException e) {
                CFG.LOG(e);
                return;
            }
        }
    }

    private static final boolean loadProvincePoints_Cut(int i) {
        try {
            String string = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/ProvincePoints_Cut/ProvincePoints_Cut" + (i > 0 ? "_" + i : "") + ".json").readString();
            Json json = new Json();
            json.setElementType(ConfigJson.class, "Data", Data_ProvincePoints.class);
            for (Data_ProvincePoints data_ProvincePoints : ((ConfigJson) json.fromJson(ConfigJson.class, string)).Data) {
                Game.cutProvinces.add(new ProvinceCut(data_ProvincePoints.pX, data_ProvincePoints.pY));
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static final void loadScenarioAlliances() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/Alliances.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = (SaveManager.ScenarioData_Diplomacy) json.readValue(SaveManager.ScenarioData_Diplomacy.class, (JsonValue) it.next());
                if (scenarioData_Diplomacy.pid > 0 && scenarioData_Diplomacy.pid < Game.getCivsSize()) {
                    for (int size = scenarioData_Diplomacy.w0.size() - 1; size >= 0; size--) {
                        Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.addAlliance(scenarioData_Diplomacy.w0.get(size).intValue(), scenarioData_Diplomacy.t0.get(size).intValue());
                        Game.getCiv(scenarioData_Diplomacy.w0.get(size).intValue()).diplomacy.addAlliance(scenarioData_Diplomacy.pid, scenarioData_Diplomacy.t0.get(size).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadScenarioAlliancesSpecial() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/AlliancesSpecial.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Game.alliancesSpecial.add((Alliance) json.readValue(Alliance.class, (JsonValue) it.next()));
                }
            }
            Game.alliancesSpecialSize = Game.alliancesSpecial.size();
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadScenarioArmies() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/Armies.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Army scenarioData_Army = (SaveManager.ScenarioData_Army) json.readValue(SaveManager.ScenarioData_Army.class, (JsonValue) it.next());
                if (scenarioData_Army.ProvinceID >= 0 && scenarioData_Army.ProvinceID < Game.getProvincesSize() && Game.getProvince(scenarioData_Army.ProvinceID).getCivID() > 0) {
                    ArrayList arrayList2 = new ArrayList();
                    int size = scenarioData_Army.UnitTypeID.size();
                    for (int i = 0; i < size; i++) {
                        arrayList2.add(new ArmyRegiment(scenarioData_Army.UnitTypeID.get(i).intValue(), scenarioData_Army.ArmyID.get(i).intValue()));
                    }
                    if (arrayList2.size() > 0) {
                        Game.getProvince(scenarioData_Army.ProvinceID).addArmy(new ArmyDivision(Game.getProvince(scenarioData_Army.ProvinceID).getCivID(), scenarioData_Army.ProvinceID, arrayList2));
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadScenarioBuildings() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/Buildings.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Buildings scenarioData_Buildings = (SaveManager.ScenarioData_Buildings) json.readValue(SaveManager.ScenarioData_Buildings.class, (JsonValue) it.next());
                if (scenarioData_Buildings.pid >= 0 && scenarioData_Buildings.pid < Game.getProvincesSize() && Game.getProvince(scenarioData_Buildings.pid).getCivID() > 0) {
                    int size = scenarioData_Buildings.b0.size();
                    for (int i = 0; i < size; i++) {
                        Game.getProvince(scenarioData_Buildings.pid).addNewBuilding_LoadScenario(new ProvinceConstructedBuilding(scenarioData_Buildings.b0.get(i).intValue(), scenarioData_Buildings.b1.get(i).intValue()));
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadScenarioDefensive() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/Defensive.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = (SaveManager.ScenarioData_Diplomacy) json.readValue(SaveManager.ScenarioData_Diplomacy.class, (JsonValue) it.next());
                if (scenarioData_Diplomacy.pid > 0 && scenarioData_Diplomacy.pid < Game.getCivsSize()) {
                    for (int size = scenarioData_Diplomacy.w0.size() - 1; size >= 0; size--) {
                        Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.addDefensivePact(scenarioData_Diplomacy.w0.get(size).intValue(), scenarioData_Diplomacy.t0.get(size).intValue());
                        Game.getCiv(scenarioData_Diplomacy.w0.get(size).intValue()).diplomacy.addDefensivePact(scenarioData_Diplomacy.pid, scenarioData_Diplomacy.t0.get(size).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadScenarioGuarantee() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/Guarantee.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = (SaveManager.ScenarioData_Diplomacy) json.readValue(SaveManager.ScenarioData_Diplomacy.class, (JsonValue) it.next());
                if (scenarioData_Diplomacy.pid > 0 && scenarioData_Diplomacy.pid < Game.getCivsSize()) {
                    for (int size = scenarioData_Diplomacy.w0.size() - 1; size >= 0; size--) {
                        Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.addGuarantee(scenarioData_Diplomacy.w0.get(size).intValue(), scenarioData_Diplomacy.t0.get(size).intValue());
                        Game.getCiv(scenarioData_Diplomacy.w0.get(size).intValue()).diplomacy.addGuaranteeByCivID(scenarioData_Diplomacy.pid, scenarioData_Diplomacy.t0.get(size).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadScenarioMilitaryAccess() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/MilitaryAccess.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = (SaveManager.ScenarioData_Diplomacy) json.readValue(SaveManager.ScenarioData_Diplomacy.class, (JsonValue) it.next());
                if (scenarioData_Diplomacy.pid > 0 && scenarioData_Diplomacy.pid < Game.getCivsSize()) {
                    for (int size = scenarioData_Diplomacy.w0.size() - 1; size >= 0; size--) {
                        Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.addMilitaryAccess(scenarioData_Diplomacy.w0.get(size).intValue(), scenarioData_Diplomacy.t0.get(size).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadScenarioNonAggression() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/NonAggression.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = (SaveManager.ScenarioData_Diplomacy) json.readValue(SaveManager.ScenarioData_Diplomacy.class, (JsonValue) it.next());
                if (scenarioData_Diplomacy.pid > 0 && scenarioData_Diplomacy.pid < Game.getCivsSize()) {
                    for (int size = scenarioData_Diplomacy.w0.size() - 1; size >= 0; size--) {
                        Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.addNonAggressionPact(scenarioData_Diplomacy.w0.get(size).intValue(), scenarioData_Diplomacy.t0.get(size).intValue());
                        Game.getCiv(scenarioData_Diplomacy.w0.get(size).intValue()).diplomacy.addNonAggressionPact(scenarioData_Diplomacy.pid, scenarioData_Diplomacy.t0.get(size).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadScenarioRelations() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/Relations.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Relations scenarioData_Relations = (SaveManager.ScenarioData_Relations) json.readValue(SaveManager.ScenarioData_Relations.class, (JsonValue) it.next());
                if (scenarioData_Relations.c > 0 && scenarioData_Relations.c < Game.getCivsSize()) {
                    for (int size = scenarioData_Relations.w.size() - 1; size >= 0; size--) {
                        Game.getCiv(scenarioData_Relations.c).diplomacy.setRelation(scenarioData_Relations.c, scenarioData_Relations.w.get(size).intValue(), scenarioData_Relations.r.get(size).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadScenarioTruces() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/Truces.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = (SaveManager.ScenarioData_Diplomacy) json.readValue(SaveManager.ScenarioData_Diplomacy.class, (JsonValue) it.next());
                if (scenarioData_Diplomacy.pid > 0 && scenarioData_Diplomacy.pid < Game.getCivsSize()) {
                    for (int size = scenarioData_Diplomacy.w0.size() - 1; size >= 0; size--) {
                        Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.addTruce(scenarioData_Diplomacy.w0.get(size).intValue(), scenarioData_Diplomacy.t0.get(size).intValue());
                        Game.getCiv(scenarioData_Diplomacy.w0.get(size).intValue()).diplomacy.addTruce(scenarioData_Diplomacy.pid, scenarioData_Diplomacy.t0.get(size).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void update(int i, int i2) {
        if (!Game.getProvince(i).getSeaProvince() && Game.getProvince(i2).getSeaProvince()) {
            Game.getProvince(i).addNeighboringSeaProvince(i2);
            Game.getProvince(i).setLevelOfPort(1);
        } else {
            Game.getProvince(i).addNeighboringProvince(i2);
        }
        if (Game.getProvince(i2).getSeaProvince()) {
            Game.getProvince(i2).addNeighboringProvince(i);
        } else if (!Game.getProvince(i).getSeaProvince()) {
            Game.getProvince(i2).addNeighboringProvince(i);
        } else {
            Game.getProvince(i2).addNeighboringSeaProvince(i);
            Game.getProvince(i2).setLevelOfPort(1);
        }
    }
}
