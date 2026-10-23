package aoc.kingdoms.lukasz.jakowski.SaveLoad;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.FormableCivManager;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.diplomacy.Diplomacy;
import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.map.province.ProvinceNamesManager;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class SaveManager {
    public static final int iNeighboringProvincesPerFile = 2000;

    public static class ScenarioData_Army {
        public int ProvinceID;
        public List<Integer> UnitTypeID = new ArrayList();
        public List<Integer> ArmyID = new ArrayList();
    }

    public static class ScenarioData_Buildings {
        public List<Integer> b0 = new ArrayList();
        public List<Integer> b1 = new ArrayList();
        public int pid;
    }

    public static class ScenarioData_Diplomacy {
        public int pid;
        public List<Integer> w0 = new ArrayList();
        public List<Integer> t0 = new ArrayList();
    }

    public static class ScenarioData_Relations {
        public int c;
        public List<Integer> w = new ArrayList();
        public List<Integer> r = new ArrayList();
    }

    public static final Json getJson() {
        Json json = new Json();
        json.setTypeName(null);
        json.setUsePrototypes(false);
        json.setIgnoreUnknownFields(true);
        json.setOutputType(JsonWriter.OutputType.javascript);
        return json;
    }

    public static final void saveFormableCiv() {
        String string;
        boolean z;
        Json json = getJson();
        json.setElementType(FormableCivManager.ConfigJson.class, "Data", FormableCivManager.FormableCiv.class);
        StringBuilder sbAppend = new StringBuilder("map/").append(Game.map.getFile_ActiveMap_Path()).append("formableCivs/data/").append(FormableCivManager.activeFormableCiv.FormableCivTag);
        String str = LBhZogys.AETOYk;
        FileManager.getSaveType(sbAppend.append(str).toString()).writeString(json.prettyPrint(FormableCivManager.activeFormableCiv), false);
        if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "formableCivs/AoH.txt").exists()) {
            string = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "formableCivs/AoH.txt").readString();
            String[] strArrSplit = string.split(";");
            int length = strArrSplit.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                } else {
                    if (strArrSplit[i].equals(FormableCivManager.activeFormableCiv.FormableCivTag + str)) {
                        z = false;
                        break;
                    }
                    i++;
                }
            }
            if (z) {
                string = string + FormableCivManager.activeFormableCiv.FormableCivTag + ".txt;";
            }
        } else {
            string = "" + FormableCivManager.activeFormableCiv.FormableCivTag + ".txt;";
        }
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + "formableCivs/AoH.txt").writeString(string, false);
    }

    public static final void saveProvinceDetails() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            LoadManager.ProvinceDetails provinceDetails = new LoadManager.ProvinceDetails();
            if (Game.getProvince(i).getLevelOfPort() >= -1) {
                if (Game.getProvince(i).getTerrainID() == 0) {
                    Game.getProvince(i).setTerrainID(1);
                }
                if (Game.getProvince(i).getContinent() == 0) {
                    Game.getProvince(i).setContinent(1);
                }
            }
            provinceDetails.pid = i;
            provinceDetails.co = Game.getProvince(i).getContinent();
            provinceDetails.re = Game.getProvince(i).getGeoRegion();
            provinceDetails.tr = Game.getProvince(i).getTerrainID();
            provinceDetails.lp = Math.min(Game.getProvince(i).getLevelOfPort(), -1);
            provinceDetails.gr = Game.getProvince(i).getGrowthRate();
            provinceDetails.bd = Game.getProvince(i).BaseDevelopment;
            provinceDetails.rs = Game.getProvince(i).getResourceID();
            provinceDetails.sx = Game.getProvince(i).getShiftX() / Game.mapBG.iMapScale;
            provinceDetails.sy = Game.getProvince(i).getShiftY() / Game.mapBG.iMapScale;
            arrayList.add(provinceDetails);
        }
        Json json = getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", LoadManager.Data_ProvincePoints.class);
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + "data/ProvinceDetails.json").writeString(json.toJson(arrayList), false);
    }

    public static final void saveProvinceNamesPoints() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            LoadManager.ProvinceNamesPoints provinceNamesPoints = new LoadManager.ProvinceNamesPoints();
            if (ProvinceNamesManager.provinceNames.get(i) != null) {
                provinceNamesPoints.pid = i;
                provinceNamesPoints.fX = ProvinceNamesManager.provinceNames.get(i).fX / Game.mapBG.iMapScale;
                provinceNamesPoints.fY = ProvinceNamesManager.provinceNames.get(i).fY / Game.mapBG.iMapScale;
                provinceNamesPoints.fX2 = ProvinceNamesManager.provinceNames.get(i).fX2 / Game.mapBG.iMapScale;
                provinceNamesPoints.fY2 = ProvinceNamesManager.provinceNames.get(i).fY2 / Game.mapBG.iMapScale;
                provinceNamesPoints.cx = ProvinceNamesManager.provinceNames.get(i).fCenterX / Game.mapBG.iMapScale;
                provinceNamesPoints.cy = ProvinceNamesManager.provinceNames.get(i).fCenterY / Game.mapBG.iMapScale;
            } else {
                provinceNamesPoints.pid = i;
                provinceNamesPoints.fX = ProvinceNamesManager.NULL_INDICATOR;
                provinceNamesPoints.fY = ProvinceNamesManager.NULL_INDICATOR;
                provinceNamesPoints.fX2 = ProvinceNamesManager.NULL_INDICATOR;
                provinceNamesPoints.fY2 = ProvinceNamesManager.NULL_INDICATOR;
                provinceNamesPoints.cx = ProvinceNamesManager.NULL_INDICATOR;
                provinceNamesPoints.cy = ProvinceNamesManager.NULL_INDICATOR;
            }
            arrayList.add(provinceNamesPoints);
        }
        Json json = getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", LoadManager.ProvinceNamesPoints.class);
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + "data/ProvinceNamePoints.json").writeString(json.toJson(arrayList), false);
    }

    public static final void saveProvinceNeighboringProvinces() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i >= Game.getProvincesSize()) {
                break;
            }
            for (int i4 = 0; i4 < Game.getProvince(i).getProvinceBordersLandByLandSize(); i4++) {
                LoadManager.Data_ProvinceBorder data_ProvinceBorder = new LoadManager.Data_ProvinceBorder();
                data_ProvinceBorder.pid = i;
                data_ProvinceBorder.wp = Game.getProvince(i).getProvinceBordersLandByLand().get(i4).withProvinceID;
                data_ProvinceBorder.px = Game.getProvince(i).getProvinceBordersLandByLand().get(i4).lPointsX;
                data_ProvinceBorder.py = Game.getProvince(i).getProvinceBordersLandByLand().get(i4).lPointsY;
                arrayList.add(data_ProvinceBorder);
                i2++;
            }
            for (int i5 = 0; i5 < Game.getProvince(i).getProvinceBordersLandBySeaSize(); i5++) {
                LoadManager.Data_ProvinceBorder data_ProvinceBorder2 = new LoadManager.Data_ProvinceBorder();
                data_ProvinceBorder2.pid = i;
                data_ProvinceBorder2.wp = Game.getProvince(i).getProvinceBordersLandBySea().get(i5).withProvinceID;
                data_ProvinceBorder2.px = Game.getProvince(i).getProvinceBordersLandBySea().get(i5).lPointsX;
                data_ProvinceBorder2.py = Game.getProvince(i).getProvinceBordersLandBySea().get(i5).lPointsY;
                arrayList.add(data_ProvinceBorder2);
                i2++;
            }
            for (int i6 = 0; i6 < Game.getProvince(i).getProvinceBordersSeaBySeaSize(); i6++) {
                LoadManager.Data_ProvinceBorder data_ProvinceBorder3 = new LoadManager.Data_ProvinceBorder();
                data_ProvinceBorder3.pid = i;
                data_ProvinceBorder3.wp = Game.getProvince(i).getProvinceBordersSeaBySea().get(i6).withProvinceID;
                data_ProvinceBorder3.px = Game.getProvince(i).getProvinceBordersSeaBySea().get(i6).lPointsX;
                data_ProvinceBorder3.py = Game.getProvince(i).getProvinceBordersSeaBySea().get(i6).lPointsY;
                arrayList.add(data_ProvinceBorder3);
                i2++;
            }
            if (i2 >= 2000) {
                Json json = getJson();
                json.setElementType(LoadManager.ConfigJson.class, "Data", LoadManager.Data_ProvinceBorder.class);
                FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + "data/ProvinceNeighboringProvinces/ProvinceNeighboringProvinces" + (i3 > 0 ? "_" + i3 : "") + ".json").writeString(json.toJson(arrayList), false);
                arrayList.clear();
                i3++;
                i2 = 0;
            }
            i++;
        }
        if (i2 > 0) {
            Json json2 = getJson();
            json2.setElementType(LoadManager.ConfigJson.class, "Data", LoadManager.Data_ProvinceBorder.class);
            FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + "data/ProvinceNeighboringProvinces/ProvinceNeighboringProvinces" + (i3 > 0 ? "_" + i3 : "") + ".json").writeString(json2.toJson(arrayList), false);
            arrayList.clear();
        }
    }

    public static final void saveScenarioAlliances() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.alliance.size() > 0) {
                ScenarioData_Diplomacy scenarioData_Diplomacy = new ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.alliance.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/Alliances.json").writeString(getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveScenarioAlliancesSpecial() {
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/AlliancesSpecial.json").writeString(getJson().toJson(Game.alliancesSpecial), false);
    }

    public static final void saveScenarioArmies() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).getArmySize() > 0) {
                try {
                    ScenarioData_Army scenarioData_Army = new ScenarioData_Army();
                    scenarioData_Army.ProvinceID = i;
                    for (int i2 = 0; i2 < Game.getProvince(i).getArmy(0).iArmyRegimentSize; i2++) {
                        scenarioData_Army.UnitTypeID.add(Integer.valueOf(Game.getProvince(i).getArmy(0).lArmyRegiment.get(i2).uID));
                        scenarioData_Army.ArmyID.add(Integer.valueOf(Game.getProvince(i).getArmy(0).lArmyRegiment.get(i2).aID));
                    }
                    if (scenarioData_Army.UnitTypeID.size() > 0) {
                        arrayList.add(scenarioData_Army);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        }
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + QefTqRjwAJmEDy.WxCwCX).writeString(getJson().prettyPrint(arrayList), false);
    }

    public static final void saveScenarioBuildings() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).iBuildingsSize > 0) {
                try {
                    ScenarioData_Buildings scenarioData_Buildings = new ScenarioData_Buildings();
                    scenarioData_Buildings.pid = i;
                    for (int i2 = 0; i2 < Game.getProvince(i).iBuildingsSize; i2++) {
                        scenarioData_Buildings.b0.add(Integer.valueOf(Game.getProvince(i).getBuildings(i2).getBuilding()));
                        scenarioData_Buildings.b1.add(Integer.valueOf(Game.getProvince(i).getBuildings(i2).getBuildingID()));
                    }
                    if (scenarioData_Buildings.b0.size() > 0) {
                        arrayList.add(scenarioData_Buildings);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        }
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/Buildings.json").writeString(getJson().prettyPrint(arrayList), false);
    }

    public static final void saveScenarioCores() {
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (!Game.getProvince(i).getSeaProvince() && Game.getProvince(i).getWasteland() < 0 && Game.getProvince(i).getCivID() > 0) {
                    Game.getProvince(i).updateHaveACore();
                    if (!Game.getProvince(i).haveACore || Game.getProvince(i).iCoresSize > 1) {
                        MapScenarios.ScenarioCoresData scenarioCoresData = new MapScenarios.ScenarioCoresData();
                        scenarioCoresData.id = i;
                        scenarioCoresData.Cores = new ArrayList();
                        if (Game.getProvince(i).iCoresSize == 0) {
                            scenarioCoresData.Cores.add(0);
                        } else {
                            for (int i2 = 0; i2 < Game.getProvince(i).iCoresSize; i2++) {
                                scenarioCoresData.Cores.add(Integer.valueOf(Game.getProvince(i).getCore(i2)));
                            }
                        }
                        if (scenarioCoresData.Cores.size() > 0) {
                            arrayList.add(scenarioCoresData);
                        }
                    }
                }
            }
            FileManager.getSaveType(XjthpFh.Skb + Game.map.getFile_ActiveMap_Path() + jkEBdieJhbh.cqLq + ScenarioSettings.sTag + "/" + CFG.FILE_MAP_SCENARIO_CORES_FILE).writeString(getJson().prettyPrint(arrayList), false);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void saveScenarioDefensive() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.defensivePact.size() > 0) {
                ScenarioData_Diplomacy scenarioData_Diplomacy = new ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.defensivePact.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/Defensive.json").writeString(getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveScenarioDetails() {
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 1; i < Game.getCivsSize(); i++) {
                MapScenarios.ScenarioCivData scenarioCivData = Game.getCiv(i).scenarioEditorData;
                scenarioCivData.CivTAG = Game.getCiv(i).getCivTag();
                scenarioCivData.CivID = Game.getCiv(i).getCivID();
                scenarioCivData.CPID = Game.getCiv(i).getCapitalProvinceID();
                scenarioCivData.PCID = Game.getCiv(i).getPuppetOfCivID();
                arrayList.add(scenarioCivData);
            }
            Json json = getJson();
            json.setSerializer(MapScenarios.ScenarioCivData.class, new MapScenarios.ScenarioCivDataSerializer());
            FileManager.getSaveType(hQfu.NMzs + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/" + CFG.FILE_MAP_SCENARIO_DATA_FILE).writeString(json.prettyPrint(arrayList), false);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void saveScenarioDetailsProvinces() {
        try {
            ArrayList arrayList = new ArrayList();
            int i = 1;
            while (true) {
                if (i >= Game.getCivsSize()) {
                    FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/" + CFG.FILE_MAP_SCENARIO_DATA_PROVINCES_FILE).writeString(getJson().prettyPrint(arrayList), false);
                    return;
                }
                MapScenarios.ScenarioCivData_Provinces scenarioCivData_Provinces = new MapScenarios.ScenarioCivData_Provinces();
                int[] iArr = new int[Game.getCiv(i).getNumOfProvinces()];
                for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
                    iArr[i2] = Game.getCiv(i).getProvinceID(i2);
                }
                scenarioCivData_Provinces.Provinces = iArr;
                arrayList.add(scenarioCivData_Provinces);
                i++;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void saveScenarioGuarantee() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.guarantee.size() > 0) {
                ScenarioData_Diplomacy scenarioData_Diplomacy = new ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.guarantee.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/Guarantee.json").writeString(getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveScenarioMilitaryAccess() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.militaryAccess.size() > 0) {
                ScenarioData_Diplomacy scenarioData_Diplomacy = new ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.militaryAccess.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + CvuNnwgYwe.QuPoJeeog).writeString(getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveScenarioNonAggression() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.nonAggressionPact.size() > 0) {
                ScenarioData_Diplomacy scenarioData_Diplomacy = new ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.nonAggressionPact.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/NonAggression.json").writeString(getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveScenarioRelations() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.relation.size() > 0) {
                ScenarioData_Relations scenarioData_Relations = new ScenarioData_Relations();
                scenarioData_Relations.c = i;
                for (Map.Entry<Integer, Float> entry : Game.getCiv(i).diplomacy.relation.entrySet()) {
                    scenarioData_Relations.w.add(entry.getKey());
                    scenarioData_Relations.r.add(Integer.valueOf(entry.getValue().intValue()));
                }
                arrayList.add(scenarioData_Relations);
            }
        }
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + ATsAGKCnv.wABjRSs + ScenarioSettings.sTag + "/Relations.json").writeString(getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveScenarioReligion() {
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (!Game.getProvince(i).getSeaProvince() && Game.getProvince(i).getWasteland() < 0 && Game.getCiv(Game.getProvince(i).getCivID()).getReligionID() != Game.mapScenarios.editorProvinceReligion.get(i).intValue() && Game.mapScenarios.editorProvinceReligion.get(i).intValue() >= 0) {
                    MapScenarios.ScenarioReligionData scenarioReligionData = new MapScenarios.ScenarioReligionData();
                    scenarioReligionData.id = i;
                    scenarioReligionData.rel = Game.mapScenarios.editorProvinceReligion.get(i).intValue();
                    arrayList.add(scenarioReligionData);
                }
            }
            FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/Religions.json").writeString(getJson().prettyPrint(arrayList), false);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void saveScenarioTruces() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.truce.size() > 0) {
                ScenarioData_Diplomacy scenarioData_Diplomacy = new ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.truce.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/Truces.json").writeString(getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveScenariosList() {
        String string;
        boolean z;
        String str = SwmJtrccN.xCVndmss;
        if (FileManager.loadFile(str + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS_FILE).exists()) {
            string = FileManager.loadFile(str + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS_FILE).readString();
            String[] strArrSplit = string.split(";");
            int length = strArrSplit.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                } else {
                    if (strArrSplit[i].equals(ScenarioSettings.sTag)) {
                        z = false;
                        break;
                    }
                    i++;
                }
            }
            if (z) {
                string = string + ScenarioSettings.sTag + ";";
            }
        } else {
            string = "" + ScenarioSettings.sTag + ";";
        }
        FileManager.getSaveType(str + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS_FILE).writeString(string, false);
    }
}
