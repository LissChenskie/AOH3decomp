package aoc.kingdoms.lukasz.jakowski.SaveLoad;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.AI.AI_Civ_CreateNewArmy;
import aoc.kingdoms.lukasz.jakowski.AI.AI_Manager;
import aoc.kingdoms.lukasz.jakowski.AI.Army.AI_Merge;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerData;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerStats;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerStats2;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerStats3;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerStats4;
import aoc.kingdoms.lukasz.map.Loan;
import aoc.kingdoms.lukasz.map.advisors.Advisor;
import aoc.kingdoms.lukasz.map.advisors.AdvisorSerializer;
import aoc.kingdoms.lukasz.map.allianceHRE.Alliance;
import aoc.kingdoms.lukasz.map.army.ArmyGeneral;
import aoc.kingdoms.lukasz.map.army.ArmyRecruit;
import aoc.kingdoms.lukasz.map.army.ArmyRegiment;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonusesSerializer;
import aoc.kingdoms.lukasz.map.civilization.CivilizationLegacy;
import aoc.kingdoms.lukasz.map.civilization.save.CivData2;
import aoc.kingdoms.lukasz.map.civilization.save.CivData3;
import aoc.kingdoms.lukasz.map.civilization.save.CivData3Serializer;
import aoc.kingdoms.lukasz.map.civilization.save.CivData4;
import aoc.kingdoms.lukasz.map.civilization.save.CivData4Serializer;
import aoc.kingdoms.lukasz.map.civilization.stats.CivilizationEventsData;
import aoc.kingdoms.lukasz.map.civilization.stats.CivilizationEventsData2;
import aoc.kingdoms.lukasz.map.civilization.stats.CivilizationEventsData2Serializer;
import aoc.kingdoms.lukasz.map.civilization.stats.CivilizationEventsData3;
import aoc.kingdoms.lukasz.map.civilization.stats.CivilizationEventsData3Serializer;
import aoc.kingdoms.lukasz.map.civilization.stats.CivilizationEventsDataSerializer;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.map.diplomacy.Diplomacy;
import aoc.kingdoms.lukasz.map.plague.PlagueManager;
import aoc.kingdoms.lukasz.map.plague.ProvincePlague;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData10;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData2;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData2Serializer;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData3;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData4;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData4Serializer;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData5;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData6;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData6Serializer;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData7;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData8;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData8Serializer;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData9;
import aoc.kingdoms.lukasz.map.province.data.ProvinceData9Serializer;
import aoc.kingdoms.lukasz.map.province.data.ProvinceDataSerializer;
import aoc.kingdoms.lukasz.map.rebels.RevolutionManager;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.map.war.War;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class SaveGameManager {
    public static int AUTO_SAVE_LAST_TURN_ID = 0;
    public static final float RESEARCH_PROGRESS_MULTIPLIER = 1000.0f;
    public static String deleteSavedGameKey = "";
    public static String saveKey = "SAVE_KEY";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            boolean z;
            SaveDetails saveDetailsLoadSave_Details;
            String str = "Autosave1";
            try {
                boolean z2 = FileManager.IS_MAC;
                String str2 = fiRhHJntP.gNatWLSYeFhGEH;
                FileHandle fileHandleExternal = z2 ? Gdx.files.external(str2 + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : CFG.readLocalFiles() ? Gdx.files.local(str2 + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : Gdx.files.internal(str2 + Game.map.getFile_ActiveMap_Path() + "AoH.txt");
                if (fileHandleExternal.exists()) {
                    String[] strArrSplit = fileHandleExternal.readString().split(";");
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    int i = 0;
                    for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                        if (strArrSplit[i2].indexOf(CFG.FILE_SAVES_AUTOSAVE) != -1 && (saveDetailsLoadSave_Details = LoadSavedGameManager.loadSave_Details(strArrSplit[i2])) != null) {
                            arrayList.add(saveDetailsLoadSave_Details);
                            arrayList2.add(strArrSplit[i2]);
                        }
                    }
                    if (arrayList2.size() < GameValues.value.AUTO_SAVE_SLOTS) {
                        for (int i3 = 0; i3 < GameValues.value.AUTO_SAVE_SLOTS; i3++) {
                            int i4 = 0;
                            while (true) {
                                if (i4 >= strArrSplit.length) {
                                    z = true;
                                    break;
                                } else {
                                    if (strArrSplit[i4].equals(CFG.FILE_SAVES_AUTOSAVE + (i3 + 1))) {
                                        z = false;
                                        break;
                                    }
                                    i4++;
                                }
                            }
                            if (z) {
                                str = CFG.FILE_SAVES_AUTOSAVE + (i3 + 1);
                                break;
                            }
                        }
                    } else {
                        for (int size = arrayList.size() - 1; size > 0; size--) {
                            if (((SaveDetails) arrayList.get(size)).time < ((SaveDetails) arrayList.get(i)).time) {
                                i = size;
                            }
                        }
                        str = (String) arrayList2.get(i);
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            SaveGameManager.saveKey = str;
            Game.menuManager.setViewIDWithoutAnimation(View.LOAD_SAVE_GAME);
            Game.menuManager.addToastGold(Game.lang.get("Saving"), Images.save);
        }
    }

    public static class SaveDetails {
        public int AI_AGGRESSIVENESS;
        public int DIFFICULTY;
        public boolean ENABLE_CALL_VASSALS;
        public boolean FOG_OF_WAR;
        public boolean SANDBOX;
        public boolean SPECTATOR_MODE;
        public int iDay;
        public int iMonth;
        public int iTurnID;
        public int iYear;
        public String sCivTag;
        public String scenarioTAG;
        public long time;
        public boolean SCENARIO_EVENTS = true;
        public boolean AOC_MODE = false;
        public int HOURS_PER_TURN = 24;
    }

    public static class Save_Civ_AI_CreateNewArmy {
        public AI_Civ_CreateNewArmy a;
        public int c;
    }

    public static class Save_Civ_AI_Merge {
        public AI_Merge a;
        public int c;
    }

    public static class Save_Civ_Advisor {
        public int d;
        public int e;
        public String g;
        public int l;
        public int m;
        public String n;
        public int y;
    }

    public static class Save_Civ_Laws {
        public List<Integer> l = new ArrayList();
    }

    public static class Save_Civ_Legacies {
        public List<CivilizationLegacy> b = new ArrayList();
    }

    public static class Save_Civ_Loan {
        public int c;
        public int e;
        public float l;
        public float n;

        public Save_Civ_Loan() {
        }

        public Save_Civ_Loan(int i, Loan loan) {
            this.c = i;
            this.l = loan.fLoanValue;
            this.n = loan.fInterestPerMonth;
            this.e = loan.iExpires_TurnID;
        }
    }

    public static class Save_Civ_MoveUnits {
        public int c;
        public int f;
        public String k;
        public float m;
        public int t;
    }

    public static class Save_Civ_RecruitArmy {
        public List<ArmyRecruit> a = new ArrayList();
        public int c;
    }

    public static class Save_Civ_RecruitArmyCreate {
        public int c;
        public List<String> k = new ArrayList();
        public List<Integer> p = new ArrayList();
    }

    public static class Save_Civ_ResearchProgress {
        public List<Integer> t = new ArrayList();
        public List<Integer> p = new ArrayList();
    }

    public static class Save_Civ_Ruler {
        public String a;
        public int d;
        public boolean k;
        public int m;
        public String n;
        public boolean r;
        public int y;
    }

    public static class Save_Civ_TemporaryBonuses {
        public List<CivilizationBonuses> b = new ArrayList();
    }

    public static class Save_Civ_UnlockedAdvantages {
        public List<Integer> a = new ArrayList();
        public List<Integer> l = new ArrayList();
    }

    public static class Save_Civ_UnlockedTechnologies {
        public int a;
        public List<Integer> u = new ArrayList();
    }

    public static class Save_ProvinceInvest {
        public List<Integer> d = new ArrayList();
        public List<Integer> n = new ArrayList();
        public int p;
    }

    public static class Save_ProvinceInvest_Single {
        public int d;
        public int n;
        public int p;
    }

    public static class Save_Province_Plague {
        public ProvincePlague l;
        public int p;
    }

    public static class Save_Provinces_ArmyDivision {
        public int c;
        public ArmyGeneral g;
        public String k;
        public int p;
        public List<Save_Provinces_ArmyRegiment> r = new ArrayList();
        public boolean t;
    }

    public static class Save_Provinces_ArmyRegiment {
        public int a;
        public String k;
        public float m;
        public int n;
        public int u;

        public Save_Provinces_ArmyRegiment() {
        }

        public Save_Provinces_ArmyRegiment(ArmyRegiment armyRegiment) {
            this.k = armyRegiment.key;
            this.u = armyRegiment.uID;
            this.a = armyRegiment.aID;
            this.n = armyRegiment.num;
            this.m = armyRegiment.mo;
        }
    }

    public static class ScenarioData_ProvinceConstructionBuilding {
        public List<Integer> b0 = new ArrayList();
        public List<Integer> b1 = new ArrayList();
        public List<Integer> ct = new ArrayList();
        public List<Integer> ctL = new ArrayList();
        public int p;
    }

    public static final void Save_1() {
        SaveDetails saveDetails = new SaveDetails();
        saveDetails.sCivTag = Game.getCiv(Game.player.iCivID).getCivTag();
        saveDetails.iTurnID = Game_Calendar.TURN_ID;
        saveDetails.iDay = Game_Calendar.currentDay;
        saveDetails.iMonth = Game_Calendar.currentMonth;
        saveDetails.iYear = Game_Calendar.currentYear;
        saveDetails.time = System.currentTimeMillis();
        saveDetails.scenarioTAG = Game.mapScenarios.sActiveScenarioTag;
        saveDetails.DIFFICULTY = Game.difficultyID;
        saveDetails.FOG_OF_WAR = Game.FOG_OF_WAR;
        saveDetails.SPECTATOR_MODE = Game.SPECTATOR_MODE;
        saveDetails.SANDBOX = Game.SANDBOX;
        saveDetails.ENABLE_CALL_VASSALS = Game.ENABLE_CALL_VASSALS;
        saveDetails.SCENARIO_EVENTS = Game.SCENARIO_EVENTS;
        saveDetails.HOURS_PER_TURN = Game.HOURS_PER_TURN;
        saveDetails.AI_AGGRESSIVENESS = Game.aiAggressivnes;
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", SaveDetails.class);
        (FileManager.IS_MAC ? Gdx.files.external(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Details.json") : Gdx.files.local(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Details.json")).writeString(json.prettyPrint(saveDetails), false);
        updateSavesList();
    }

    public static final void Save_Civ_Data_Laws() {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Laws.json").writeString(SaveManager.getJson().toJson(arrayList), false);
                arrayList.clear();
                return;
            }
            Save_Civ_Laws save_Civ_Laws = new Save_Civ_Laws();
            int size = Game.getCiv(i).laws.size();
            for (int i2 = 0; i2 < size; i2++) {
                save_Civ_Laws.l.add(Game.getCiv(i).laws.get(i2));
            }
            arrayList.add(save_Civ_Laws);
            i++;
        }
    }

    public static final void Save_Civ_Data_NukeProduction() {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + QefTqRjwAJmEDy.mXLBzy).writeString(SaveManager.getJson().toJson(arrayList), false);
                arrayList.clear();
                return;
            }
            if (Game.getCiv(i).getNumOfProvinces() > 0 && Game.getCiv(i).iNukesSize > 0) {
                Save_ProvinceInvest save_ProvinceInvest = new Save_ProvinceInvest();
                save_ProvinceInvest.p = i;
                for (int i2 = 0; i2 < Game.getCiv(i).iNukesSize; i2++) {
                    save_ProvinceInvest.d.add(Integer.valueOf(Game.getCiv(i).nukesDaysLeft.get(i2).daysLeft));
                    save_ProvinceInvest.n.add(Integer.valueOf(Game.getCiv(i).nukesDaysLeft.get(i2).investTime));
                }
                arrayList.add(save_ProvinceInvest);
            }
            i++;
        }
    }

    public static final void Save_Civ_Data_RecruitArmyCreate() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).lCreateNewArmy.size() > 0) {
                Save_Civ_RecruitArmyCreate save_Civ_RecruitArmyCreate = new Save_Civ_RecruitArmyCreate();
                save_Civ_RecruitArmyCreate.c = i;
                for (Map.Entry<String, Integer> entry : Game.getCiv(i).lCreateNewArmy.entrySet()) {
                    save_Civ_RecruitArmyCreate.k.add(entry.getKey());
                    save_Civ_RecruitArmyCreate.p.add(entry.getValue());
                }
                arrayList.add(save_Civ_RecruitArmyCreate);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/RecruitArmyCreate.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civ_Data_RecruitingArmy() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).iArmyRecruitSize > 0) {
                Save_Civ_RecruitArmy save_Civ_RecruitArmy = new Save_Civ_RecruitArmy();
                save_Civ_RecruitArmy.c = i;
                for (int i2 = 0; i2 < Game.getCiv(i).iArmyRecruitSize; i2++) {
                    for (int i3 = 0; i3 < Game.getCiv(i).lArmyRecruit.get(i2).size(); i3++) {
                        save_Civ_RecruitArmy.a.add(Game.getCiv(i).lArmyRecruit.get(i2).get(i3));
                    }
                }
                arrayList.add(save_Civ_RecruitArmy);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/RecruitArmy.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civ_Data_ResearchProgress() {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/ResearchProgress.json").writeString(SaveManager.getJson().toJson(arrayList), false);
                arrayList.clear();
                return;
            }
            Save_Civ_ResearchProgress save_Civ_ResearchProgress = new Save_Civ_ResearchProgress();
            int size = Game.getCiv(i).lResearching.size();
            for (int i2 = 0; i2 < size; i2++) {
                save_Civ_ResearchProgress.t.add(Integer.valueOf(Game.getCiv(i).lResearching.get(i2).iTechID));
                save_Civ_ResearchProgress.p.add(Integer.valueOf((int) (Game.getCiv(i).lResearching.get(i2).fProgress * 1000.0f)));
            }
            arrayList.add(save_Civ_ResearchProgress);
            i++;
        }
    }

    public static final void Save_Civ_Data_UnlockedAdvantages() {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + lJxd.UassNlKbaOnAp).writeString(SaveManager.getJson().toJson(arrayList), false);
                arrayList.clear();
                return;
            }
            Save_Civ_UnlockedAdvantages save_Civ_UnlockedAdvantages = new Save_Civ_UnlockedAdvantages();
            for (int i2 = 0; i2 < Game.getCiv(i).iAdvantagesSize; i2++) {
                save_Civ_UnlockedAdvantages.a.add(Integer.valueOf(Game.getCiv(i).lAdvantages.get(i2).id));
                save_Civ_UnlockedAdvantages.l.add(Integer.valueOf(Game.getCiv(i).lAdvantages.get(i2).lvl));
            }
            arrayList.add(save_Civ_UnlockedAdvantages);
            i++;
        }
    }

    public static final void Save_Civ_Data_UnlockedTechnologies() {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/UnlockedTechnologies.json").writeString(SaveManager.getJson().toJson(arrayList), false);
                arrayList.clear();
                return;
            }
            Save_Civ_UnlockedTechnologies save_Civ_UnlockedTechnologies = new Save_Civ_UnlockedTechnologies();
            save_Civ_UnlockedTechnologies.a = TechnologyTree.iTechnologySize;
            for (int i2 = 0; i2 < TechnologyTree.iTechnologySize; i2++) {
                if (!Game.getCiv(i).getTechResearched(i2)) {
                    save_Civ_UnlockedTechnologies.a = i2;
                    break;
                }
            }
            for (int i3 = save_Civ_UnlockedTechnologies.a; i3 < TechnologyTree.iTechnologySize; i3++) {
                if (Game.getCiv(i).getTechResearched(i3)) {
                    save_Civ_UnlockedTechnologies.u.add(Integer.valueOf(i3));
                }
            }
            arrayList.add(save_Civ_UnlockedTechnologies);
            i++;
        }
    }

    public static final void Save_Civs_Data() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            arrayList.add(Game.getCiv(i).civData);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Civs.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data2() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            arrayList.add(new CivData2(i));
        }
        FileManager.getSaveType(jkEBdieJhbh.UEHnKOoFB + Game.map.getFile_ActiveMap_Path() + saveKey + "/Civs2.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data3() {
        Json json = SaveManager.getJson();
        json.setSerializer(CivData3.class, new CivData3Serializer());
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            arrayList.add(Game.getCiv(i).civData3);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Civs3.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data4() {
        Json json = SaveManager.getJson();
        json.setSerializer(CivData4.class, new CivData4Serializer());
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            arrayList.add(Game.getCiv(i).civData4);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Civs4.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_AI_Budget() {
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/AI_Budget.json").writeString(SaveManager.getJson().toJson(AI_Manager.aiBudget), false);
    }

    public static final void Save_Civs_Data_AI_CreateNewArmy() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).aiCivCreateNewArmy.cNA.size() > 0) {
                Save_Civ_AI_CreateNewArmy save_Civ_AI_CreateNewArmy = new Save_Civ_AI_CreateNewArmy();
                save_Civ_AI_CreateNewArmy.c = i;
                save_Civ_AI_CreateNewArmy.a = Game.getCiv(i).aiCivCreateNewArmy;
                arrayList.add(save_Civ_AI_CreateNewArmy);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/AI_CreateNewArmy.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_AI_Diplomacy() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            arrayList.add(Game.getCiv(i).aiCivDiplomacy);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + lOow.xwNpBuemoUMZJlS).writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_AI_Merge() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).aiMerge.aiMergeTasks.size() > 0) {
                Save_Civ_AI_Merge save_Civ_AI_Merge = new Save_Civ_AI_Merge();
                save_Civ_AI_Merge.c = i;
                save_Civ_AI_Merge.a = Game.getCiv(i).aiMerge;
                arrayList.add(save_Civ_AI_Merge);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/AI_Merge.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_AdvisorsAdm() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Save_Civ_Advisor save_Civ_Advisor = new Save_Civ_Advisor();
            if (Game.getCiv(i).advisorAdministration.sName == null) {
                save_Civ_Advisor = null;
            } else {
                save_Civ_Advisor.n = Game.getCiv(i).advisorAdministration.sName;
                save_Civ_Advisor.y = Game.getCiv(i).advisorAdministration.iYearOfBirth;
                save_Civ_Advisor.m = Game.getCiv(i).advisorAdministration.iMonthOfBirth;
                save_Civ_Advisor.d = Game.getCiv(i).advisorAdministration.iDayOfBirth;
                save_Civ_Advisor.g = Game.getCiv(i).advisorAdministration.sIMG;
                save_Civ_Advisor.e = Game.getCiv(i).advisorAdministration.imageID;
                save_Civ_Advisor.l = Game.getCiv(i).advisorAdministration.iLevel;
            }
            arrayList.add(save_Civ_Advisor);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/AdvisorAdministration.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_AdvisorsAdmBonuses() {
        Json json = SaveManager.getJson();
        json.setSerializer(Advisor.class, new AdvisorSerializer());
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            new Save_Civ_Ruler();
            if (Game.getCiv(i).advisorAdministration.sName == null) {
                arrayList.add(null);
            } else {
                arrayList.add(Game.getCiv(i).advisorAdministration);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/AdvisorAdministrationBonuses.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_AdvisorsEconomy() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Save_Civ_Advisor save_Civ_Advisor = new Save_Civ_Advisor();
            if (Game.getCiv(i).advisorEconomy.sName == null) {
                save_Civ_Advisor = null;
            } else {
                save_Civ_Advisor.n = Game.getCiv(i).advisorEconomy.sName;
                save_Civ_Advisor.y = Game.getCiv(i).advisorEconomy.iYearOfBirth;
                save_Civ_Advisor.m = Game.getCiv(i).advisorEconomy.iMonthOfBirth;
                save_Civ_Advisor.d = Game.getCiv(i).advisorEconomy.iDayOfBirth;
                save_Civ_Advisor.g = Game.getCiv(i).advisorEconomy.sIMG;
                save_Civ_Advisor.e = Game.getCiv(i).advisorEconomy.imageID;
                save_Civ_Advisor.l = Game.getCiv(i).advisorEconomy.iLevel;
            }
            arrayList.add(save_Civ_Advisor);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/AdvisorEconomy.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_AdvisorsEconomyBonuses() {
        Json json = SaveManager.getJson();
        json.setSerializer(Advisor.class, new AdvisorSerializer());
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            new Save_Civ_Ruler();
            if (Game.getCiv(i).advisorEconomy.sName == null) {
                arrayList.add(null);
            } else {
                arrayList.add(Game.getCiv(i).advisorEconomy);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/AdvisorEconomyBonuses.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_AdvisorsInnovation() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Save_Civ_Advisor save_Civ_Advisor = new Save_Civ_Advisor();
            if (Game.getCiv(i).advisorTechnology.sName == null) {
                save_Civ_Advisor = null;
            } else {
                save_Civ_Advisor.n = Game.getCiv(i).advisorTechnology.sName;
                save_Civ_Advisor.y = Game.getCiv(i).advisorTechnology.iYearOfBirth;
                save_Civ_Advisor.m = Game.getCiv(i).advisorTechnology.iMonthOfBirth;
                save_Civ_Advisor.d = Game.getCiv(i).advisorTechnology.iDayOfBirth;
                save_Civ_Advisor.g = Game.getCiv(i).advisorTechnology.sIMG;
                save_Civ_Advisor.e = Game.getCiv(i).advisorTechnology.imageID;
                save_Civ_Advisor.l = Game.getCiv(i).advisorTechnology.iLevel;
            }
            arrayList.add(save_Civ_Advisor);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/AdvisorInnovation.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_AdvisorsInnovationBonuses() {
        Json json = SaveManager.getJson();
        json.setSerializer(Advisor.class, new AdvisorSerializer());
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            new Save_Civ_Ruler();
            if (Game.getCiv(i).advisorTechnology.sName == null) {
                arrayList.add(null);
            } else {
                arrayList.add(Game.getCiv(i).advisorTechnology);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + PZBvyl.JaLWXKhyA).writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_AdvisorsMilitary() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Save_Civ_Advisor save_Civ_Advisor = new Save_Civ_Advisor();
            if (Game.getCiv(i).advisorMilitary.sName == null) {
                save_Civ_Advisor = null;
            } else {
                save_Civ_Advisor.n = Game.getCiv(i).advisorMilitary.sName;
                save_Civ_Advisor.y = Game.getCiv(i).advisorMilitary.iYearOfBirth;
                save_Civ_Advisor.m = Game.getCiv(i).advisorMilitary.iMonthOfBirth;
                save_Civ_Advisor.d = Game.getCiv(i).advisorMilitary.iDayOfBirth;
                save_Civ_Advisor.g = Game.getCiv(i).advisorMilitary.sIMG;
                save_Civ_Advisor.e = Game.getCiv(i).advisorMilitary.imageID;
                save_Civ_Advisor.l = Game.getCiv(i).advisorMilitary.iLevel;
            }
            arrayList.add(save_Civ_Advisor);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/AdvisorMilitary.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_AdvisorsMilitaryBonuses() {
        Json json = SaveManager.getJson();
        json.setSerializer(Advisor.class, new AdvisorSerializer());
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            new Save_Civ_Ruler();
            if (Game.getCiv(i).advisorMilitary.sName == null) {
                arrayList.add(null);
            } else {
                arrayList.add(Game.getCiv(i).advisorMilitary);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/AdvisorMilitaryBonuses.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_EventsData() {
        Json json = SaveManager.getJson();
        json.setSerializer(CivilizationEventsData.class, new CivilizationEventsDataSerializer());
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            arrayList.add(Game.getCiv(i).eventsData);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/EventsData.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_EventsData2() {
        Json json = SaveManager.getJson();
        json.setSerializer(CivilizationEventsData2.class, new CivilizationEventsData2Serializer());
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            arrayList.add(Game.getCiv(i).eventsData2);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/EventsData2.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_EventsData3() {
        Json json = SaveManager.getJson();
        json.setSerializer(CivilizationEventsData3.class, new CivilizationEventsData3Serializer());
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            arrayList.add(Game.getCiv(i).eventsData3);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/EventsData3.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_EventsVariables() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        int iFloor = (int) Math.floor(Game.getCivsSize() / 2.0f);
        for (int i = 1; i < iFloor; i++) {
            arrayList.add(Game.getCiv(i).eventsDataVariables);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/EventsVariables.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_EventsVariables2() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        for (int iFloor = (int) Math.floor(Game.getCivsSize() / 2.0f); iFloor < Game.getCivsSize(); iFloor++) {
            arrayList.add(Game.getCiv(iFloor).eventsDataVariables);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + gpVDKipRURuzw.UYu).writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_GeneralsNotAssigned() {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/GeneralsNotAssigned.json").writeString(SaveManager.getJson().toJson(arrayList), false);
                arrayList.clear();
                return;
            } else {
                if (Game.getCiv(i).getNumOfProvinces() > 0 && Game.getCiv(i).getGeneralsNotAssignedSize() > 0) {
                    for (int i2 = 0; i2 < Game.getCiv(i).getGeneralsNotAssignedSize(); i2++) {
                        arrayList.add(Game.getCiv(i).getGeneralNotAssigned(i2));
                    }
                }
                i++;
            }
        }
    }

    public static final void Save_Civs_Data_GoldenAges() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            arrayList.add(Game.getCiv(i).goldenAge);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/GoldenAge.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_Legacies() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(PxHJ.ycKVLra + Game.map.getFile_ActiveMap_Path() + saveKey + "/Legacies.json").writeString(json.toJson(arrayList), false);
                arrayList.clear();
                return;
            }
            Save_Civ_Legacies save_Civ_Legacies = new Save_Civ_Legacies();
            if (Game.getCiv(i).getLegaciesSize() > 0) {
                for (int i2 = 0; i2 < Game.getCiv(i).getLegaciesSize(); i2++) {
                    save_Civ_Legacies.b.add(Game.getCiv(i).getCivLegacy(i2));
                }
            }
            arrayList.add(save_Civ_Legacies);
            i++;
        }
    }

    public static final void Save_Civs_Data_Loans() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Loans.json").writeString(json.toJson(arrayList), false);
                arrayList.clear();
                return;
            } else {
                if (Game.getCiv(i).iLoansSize > 0) {
                    for (int i2 = 0; i2 < Game.getCiv(i).iLoansSize; i2++) {
                        arrayList.add(new Save_Civ_Loan(i, Game.getCiv(i).loans.get(i2)));
                    }
                }
                i++;
            }
        }
    }

    public static final void Save_Civs_Data_MoveUnits() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/MoveUnits.json").writeString(json.toJson(arrayList), false);
                arrayList.clear();
                return;
            }
            if (Game.getCiv(i).getMoveUnitsSize() > 0) {
                for (int i2 = 0; i2 < Game.getCiv(i).getMoveUnitsSize(); i2++) {
                    Save_Civ_MoveUnits save_Civ_MoveUnits = new Save_Civ_MoveUnits();
                    save_Civ_MoveUnits.c = i;
                    save_Civ_MoveUnits.k = Game.getCiv(i).getMoveUnits(i2).key;
                    save_Civ_MoveUnits.f = Game.getCiv(i).getMoveUnits(i2).getFromProvinceID();
                    save_Civ_MoveUnits.t = Game.getCiv(i).getMoveUnits(i2).getToProvinceLastID();
                    save_Civ_MoveUnits.m = Game.getCiv(i).getMoveUnits(i2).currentMovementProgressWidth;
                    arrayList.add(save_Civ_MoveUnits);
                }
            }
            i++;
        }
    }

    public static final void Save_Civs_Data_Rulers() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Save_Civ_Ruler save_Civ_Ruler = new Save_Civ_Ruler();
            if (Game.getCiv(i).ruler == null) {
                save_Civ_Ruler = null;
            } else {
                save_Civ_Ruler.n = Game.getCiv(i).ruler.Name;
                save_Civ_Ruler.a = Game.getCiv(i).ruler.ImageID;
                save_Civ_Ruler.k = Game.getCiv(i).ruler.kingImage;
                save_Civ_Ruler.d = Game.getCiv(i).ruler.BornDay;
                save_Civ_Ruler.m = Game.getCiv(i).ruler.BornMonth;
                save_Civ_Ruler.y = Game.getCiv(i).ruler.BornYear;
                save_Civ_Ruler.r = Game.getCiv(i).ruler.isRandom;
            }
            arrayList.add(save_Civ_Ruler);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Rulers.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_RulersBonuses() {
        Json json = SaveManager.getJson();
        json.setSerializer(CivilizationBonuses.class, new CivilizationBonusesSerializer());
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            new Save_Civ_Ruler();
            if (Game.getCiv(i).ruler == null) {
                arrayList.add(null);
            } else {
                arrayList.add(Game.getCiv(i).ruler.rulerBonuses);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/RulersBonuses.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Civs_Data_TemporaryBonuses() {
        Json json = SaveManager.getJson();
        json.setSerializer(CivilizationBonuses.class, new CivilizationBonusesSerializer());
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/BonusesTemp.json").writeString(json.toJson(arrayList), false);
                arrayList.clear();
                return;
            }
            Save_Civ_TemporaryBonuses save_Civ_TemporaryBonuses = new Save_Civ_TemporaryBonuses();
            if (Game.getCiv(i).iCivBonusesTemporarySize > 0) {
                for (int i2 = 0; i2 < Game.getCiv(i).iCivBonusesTemporarySize; i2++) {
                    save_Civ_TemporaryBonuses.b.add(Game.getCiv(i).civBonusesTemporary.get(i2));
                }
            }
            arrayList.add(save_Civ_TemporaryBonuses);
            i++;
        }
    }

    public static final void Save_Map_AlliancesSpecial() {
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", Alliance.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/AllianceSpecial.json").writeString(json.toJson(Game.alliancesSpecial), false);
    }

    public static final void Save_Map_Data_Battles() {
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Battles.json").writeString(SaveManager.getJson().toJson(Game.battleManager.lBattle), false);
    }

    public static final void Save_Map_Data_Plagues() {
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Plagues.json").writeString(SaveManager.getJson().toJson(PlagueManager.activePlagues), false);
    }

    public static final void Save_Player_Data() {
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", PlayerData.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/PlayerData.json").writeString(json.toJson(Game.player.playerData), false);
    }

    public static final void Save_Player_Stats() {
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", PlayerStats.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/PlayerStats.json").writeString(json.toJson(Game.player.playerStats), false);
    }

    public static final void Save_Player_Stats2() {
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", PlayerStats2.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/PlayerStats2.json").writeString(json.toJson(Game.player.playerStats2), false);
    }

    public static final void Save_Player_Stats3() {
        String str = lJxd.CjeIbEQVWq;
        try {
            Json json = SaveManager.getJson();
            json.setElementType(LoadManager.ConfigJson.class, "Data", PlayerStats3.class);
            FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/PlayerStats3.json").writeString(json.toJson(Game.player.playerStats3), false);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            Json json2 = SaveManager.getJson();
            json2.setElementType(LoadManager.ConfigJson.class, "Data", PlayerStats4.class);
            FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + str).writeString(json2.toJson(Game.player.playerStats4), false);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static final void Save_Provinces_Data() {
        Json json = SaveManager.getJson();
        json.setSerializer(ProvinceData.class, new ProvinceDataSerializer());
        json.setElementType(LoadManager.ConfigJson.class, TGqtTWl.fcQRjv, ProvinceData.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Data.json").writeString(json.toJson(Game.lProvincesData), false);
    }

    public static final void Save_Provinces_Data10() {
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", ProvinceData10.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Data10.json").writeString(json.toJson(Game.lProvincesData10), false);
    }

    public static final void Save_Provinces_Data2() {
        Json json = SaveManager.getJson();
        json.setSerializer(ProvinceData2.class, new ProvinceData2Serializer());
        json.setElementType(LoadManager.ConfigJson.class, "Data", ProvinceData2.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Data2.json").writeString(json.toJson(Game.lProvincesData2), false);
    }

    public static final void Save_Provinces_Data3() {
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", ProvinceData3.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Data3.json").writeString(json.toJson(Game.lProvincesData3), false);
    }

    public static final void Save_Provinces_Data4() {
        Json json = SaveManager.getJson();
        json.setSerializer(ProvinceData4.class, new ProvinceData4Serializer());
        json.setElementType(LoadManager.ConfigJson.class, "Data", ProvinceData4.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Data4.json").writeString(json.toJson(Game.lProvincesData4), false);
    }

    public static final void Save_Provinces_Data5() {
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", ProvinceData5.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Data5.json").writeString(json.toJson(Game.lProvincesData5), false);
    }

    public static final void Save_Provinces_Data6() {
        Json json = SaveManager.getJson();
        json.setSerializer(ProvinceData6.class, new ProvinceData6Serializer());
        json.setElementType(LoadManager.ConfigJson.class, XjthpFh.OmWJiJzEmkOaJS, ProvinceData6.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Data6.json").writeString(json.toJson(Game.lProvincesData6), false);
    }

    public static final void Save_Provinces_Data7() {
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", ProvinceData7.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Data7.json").writeString(json.toJson(Game.lProvincesData7), false);
    }

    public static final void Save_Provinces_Data8() {
        Json json = SaveManager.getJson();
        json.setSerializer(ProvinceData8.class, new ProvinceData8Serializer());
        json.setElementType(LoadManager.ConfigJson.class, "Data", ProvinceData8.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Data8.json").writeString(json.toJson(Game.lProvincesData8), false);
    }

    public static final void Save_Provinces_Data9() {
        Json json = SaveManager.getJson();
        json.setSerializer(ProvinceData9.class, new ProvinceData9Serializer());
        json.setElementType(LoadManager.ConfigJson.class, "Data", ProvinceData9.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Data9.json").writeString(json.toJson(Game.lProvincesData9), false);
    }

    public static final void Save_Provinces_Data_Armies_MoreFiles(int i) {
        ArrayList arrayList = new ArrayList();
        int iMin = Math.min(Game.getProvincesSize(), (i + 1) * GameValues.value.SAVE_PROVINCES_ARMIES_PER_FILE);
        for (int i2 = GameValues.value.SAVE_PROVINCES_ARMIES_PER_FILE * i; i2 < iMin; i2++) {
            if (Game.getProvince(i2).getArmySize() > 0) {
                for (int i3 = 0; i3 < Game.getProvince(i2).getArmySize(); i3++) {
                    Save_Provinces_ArmyDivision save_Provinces_ArmyDivision = new Save_Provinces_ArmyDivision();
                    save_Provinces_ArmyDivision.k = Game.getProvince(i2).getArmy(i3).key;
                    for (int i4 = 0; i4 < Game.getProvince(i2).getArmy(i3).iArmyRegimentSize; i4++) {
                        save_Provinces_ArmyDivision.r.add(new Save_Provinces_ArmyRegiment(Game.getProvince(i2).getArmy(i3).lArmyRegiment.get(i4)));
                    }
                    save_Provinces_ArmyDivision.c = Game.getProvince(i2).getArmy(i3).civID;
                    save_Provinces_ArmyDivision.p = Game.getProvince(i2).getArmy(i3).provinceID;
                    save_Provinces_ArmyDivision.g = Game.getProvince(i2).getArmy(i3).armyGeneral;
                    save_Provinces_ArmyDivision.t = Game.getProvince(i2).getArmy(i3).inRetreat;
                    arrayList.add(save_Provinces_ArmyDivision);
                }
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Armies_" + i + ".json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Provinces_Data_Buildings(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = GameValues.value.SAVE_PROVINCES_BUILDINGS_PER_FILE * i;
        int iMin = Math.min(Game.getProvincesSize(), (i + 1) * GameValues.value.SAVE_PROVINCES_BUILDINGS_PER_FILE);
        while (true) {
            if (i2 >= iMin) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Buildings_" + i + ".json").writeString(SaveManager.getJson().toJson(arrayList), false);
                arrayList.clear();
                return;
            }
            if (Game.getProvince(i2).getCivID() > 0 && Game.getProvince(i2).iBuildingsSize > 0) {
                try {
                    SaveManager.ScenarioData_Buildings scenarioData_Buildings = new SaveManager.ScenarioData_Buildings();
                    scenarioData_Buildings.pid = i2;
                    for (int i3 = 0; i3 < Game.getProvince(i2).iBuildingsSize; i3++) {
                        scenarioData_Buildings.b0.add(Integer.valueOf(Game.getProvince(i2).getBuildings(i3).getBuilding()));
                        scenarioData_Buildings.b1.add(Integer.valueOf(Game.getProvince(i2).getBuildings(i3).getBuildingID()));
                    }
                    if (scenarioData_Buildings.b0.size() > 0) {
                        arrayList.add(scenarioData_Buildings);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            i2++;
        }
    }

    public static final void Save_Provinces_Data_ConstructionBuilding() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).iBuildingsConstructionSize > 0) {
                try {
                    ScenarioData_ProvinceConstructionBuilding scenarioData_ProvinceConstructionBuilding = new ScenarioData_ProvinceConstructionBuilding();
                    scenarioData_ProvinceConstructionBuilding.p = i;
                    for (int i2 = 0; i2 < Game.getProvince(i).iBuildingsConstructionSize; i2++) {
                        scenarioData_ProvinceConstructionBuilding.b0.add(Integer.valueOf(Game.getProvince(i).getBuildingsConstruction(i2).getBuilding()));
                        scenarioData_ProvinceConstructionBuilding.b1.add(Integer.valueOf(Game.getProvince(i).getBuildingsConstruction(i2).getBuildingID()));
                        scenarioData_ProvinceConstructionBuilding.ct.add(Integer.valueOf(Game.getProvince(i).getBuildingsConstruction(i2).getConstructionTime()));
                        scenarioData_ProvinceConstructionBuilding.ctL.add(Integer.valueOf(Game.getProvince(i).getBuildingsConstruction(i2).getConstructionTimeLeft()));
                    }
                    if (scenarioData_ProvinceConstructionBuilding.b0.size() > 0) {
                        arrayList.add(scenarioData_ProvinceConstructionBuilding);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_BuildingsConstruction.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Provinces_Data_CoreConstruction() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).coreCreation != null) {
                Save_ProvinceInvest_Single save_ProvinceInvest_Single = new Save_ProvinceInvest_Single();
                save_ProvinceInvest_Single.p = i;
                save_ProvinceInvest_Single.d = Game.getProvince(i).coreCreation.daysLeft;
                save_ProvinceInvest_Single.n = Game.getProvince(i).coreCreation.investTime;
                arrayList.add(save_ProvinceInvest_Single);
            }
        }
        FileManager.getSaveType(IwYCCQBuFGwl.aBYb + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_CoreCreation.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Provinces_Data_Infrastructure() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).iProvinceDevelopInfrastructureSize > 0) {
                Save_ProvinceInvest save_ProvinceInvest = new Save_ProvinceInvest();
                save_ProvinceInvest.p = i;
                for (int i2 = 0; i2 < Game.getProvince(i).iProvinceDevelopInfrastructureSize; i2++) {
                    save_ProvinceInvest.d.add(Integer.valueOf(Game.getProvince(i).provinceDevelopInfrastructureDaysLeft.get(i2).daysLeft));
                    save_ProvinceInvest.n.add(Integer.valueOf(Game.getProvince(i).provinceDevelopInfrastructureDaysLeft.get(i2).investTime));
                }
                arrayList.add(save_ProvinceInvest);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_InvestInfrastructure.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Provinces_Data_InvestDaysLeft() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).iProvinceInvestSize > 0) {
                Save_ProvinceInvest save_ProvinceInvest = new Save_ProvinceInvest();
                save_ProvinceInvest.p = i;
                for (int i2 = 0; i2 < Game.getProvince(i).iProvinceInvestSize; i2++) {
                    save_ProvinceInvest.d.add(Integer.valueOf(Game.getProvince(i).provinceInvestDaysLeft.get(i2).daysLeft));
                    save_ProvinceInvest.n.add(Integer.valueOf(Game.getProvince(i).provinceInvestDaysLeft.get(i2).investTime));
                }
                arrayList.add(save_ProvinceInvest);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_InvestEconomy.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Provinces_Data_InvestGrowthRate() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).iProvinceIncreaseGrowthRateSize > 0) {
                Save_ProvinceInvest save_ProvinceInvest = new Save_ProvinceInvest();
                save_ProvinceInvest.p = i;
                for (int i2 = 0; i2 < Game.getProvince(i).iProvinceIncreaseGrowthRateSize; i2++) {
                    save_ProvinceInvest.d.add(Integer.valueOf(Game.getProvince(i).provinceIncreaseGrowthRateDaysLeft.get(i2).daysLeft));
                    save_ProvinceInvest.n.add(Integer.valueOf(Game.getProvince(i).provinceIncreaseGrowthRateDaysLeft.get(i2).investTime));
                }
                arrayList.add(save_ProvinceInvest);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + ClXgFvsSKQc.Gftml).writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Provinces_Data_InvestManpower() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).iProvinceIncreaseManpowerSize > 0) {
                Save_ProvinceInvest save_ProvinceInvest = new Save_ProvinceInvest();
                save_ProvinceInvest.p = i;
                for (int i2 = 0; i2 < Game.getProvince(i).iProvinceIncreaseManpowerSize; i2++) {
                    save_ProvinceInvest.d.add(Integer.valueOf(Game.getProvince(i).provinceIncreaseManpowerDaysLeft.get(i2).daysLeft));
                    save_ProvinceInvest.n.add(Integer.valueOf(Game.getProvince(i).provinceIncreaseManpowerDaysLeft.get(i2).investTime));
                }
                arrayList.add(save_ProvinceInvest);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_InvestManpower.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Provinces_Data_InvestTax() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).iProvinceIncreaseTaxEfficiencySize > 0) {
                Save_ProvinceInvest save_ProvinceInvest = new Save_ProvinceInvest();
                save_ProvinceInvest.p = i;
                for (int i2 = 0; i2 < Game.getProvince(i).iProvinceIncreaseTaxEfficiencySize; i2++) {
                    save_ProvinceInvest.d.add(Integer.valueOf(Game.getProvince(i).provinceIncreasTaxEfficiencyDaysLeft.get(i2).daysLeft));
                    save_ProvinceInvest.n.add(Integer.valueOf(Game.getProvince(i).provinceIncreasTaxEfficiencyDaysLeft.get(i2).investTime));
                }
                arrayList.add(save_ProvinceInvest);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_InvestTax.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Provinces_Data_Plagues() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).provincePlague != null) {
                Save_Province_Plague save_Province_Plague = new Save_Province_Plague();
                save_Province_Plague.p = i;
                save_Province_Plague.l = Game.getProvince(i).provincePlague;
                arrayList.add(save_Province_Plague);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Plagues.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Provinces_Data_Population() {
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", ProvinceData.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Population.json").writeString(json.toJson(Game.lProvincesPopulation), false);
    }

    public static final void Save_Provinces_Data_ReligionConversion() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).religionConversion != null) {
                Save_ProvinceInvest_Single save_ProvinceInvest_Single = new Save_ProvinceInvest_Single();
                save_ProvinceInvest_Single.p = i;
                save_ProvinceInvest_Single.d = Game.getProvince(i).religionConversion.daysLeft;
                save_ProvinceInvest_Single.n = Game.getProvince(i).religionConversion.investTime;
                arrayList.add(save_ProvinceInvest_Single);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_Conversion.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Provinces_Data_Vassals() {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Vassals.json").writeString(SaveManager.getJson().toJson(arrayList), false);
                arrayList.clear();
                return;
            } else {
                if (Game.getCiv(i).diplomacy.iVassalsSize > 0) {
                    for (int i2 = 0; i2 < Game.getCiv(i).diplomacy.lVassals.size(); i2++) {
                        arrayList.add(Game.getCiv(i).diplomacy.lVassals.get(i2));
                    }
                }
                i++;
            }
        }
    }

    public static final void Save_Provinces_Data_WondersConstruction() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.getProvince(i).getCivID() > 0 && Game.getProvince(i).wonderConstruction != null) {
                Save_ProvinceInvest_Single save_ProvinceInvest_Single = new Save_ProvinceInvest_Single();
                save_ProvinceInvest_Single.p = i;
                save_ProvinceInvest_Single.d = Game.getProvince(i).wonderConstruction.daysLeft;
                save_ProvinceInvest_Single.n = Game.getProvince(i).wonderConstruction.investTime;
                arrayList.add(save_ProvinceInvest_Single);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Provinces_WonderConstruction.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void Save_Rebels_Data() {
        Json json = SaveManager.getJson();
        json.setElementType(LoadManager.ConfigJson.class, "Data", RevolutionManager.class);
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Rebels.json").writeString(json.toJson(Game.revolutionManager), false);
    }

    public static final void Save_Rebels_Data_MoveUnits() {
        Json json = SaveManager.getJson();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Game.revolutionMoveUnits.iMoveUnitsSize; i++) {
            Save_Civ_MoveUnits save_Civ_MoveUnits = new Save_Civ_MoveUnits();
            save_Civ_MoveUnits.c = -1;
            save_Civ_MoveUnits.k = Game.revolutionMoveUnits.lMoveUnits.get(i).key;
            save_Civ_MoveUnits.f = Game.revolutionMoveUnits.lMoveUnits.get(i).getFromProvinceID();
            save_Civ_MoveUnits.t = Game.revolutionMoveUnits.lMoveUnits.get(i).getToProvinceLastID();
            save_Civ_MoveUnits.m = Game.revolutionMoveUnits.lMoveUnits.get(i).currentMovementProgressWidth;
            arrayList.add(save_Civ_MoveUnits);
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/RebelsMoveUnits.json").writeString(json.toJson(arrayList), false);
        arrayList.clear();
    }

    public static void autosave() {
        if ((!Game.SPECTATOR_MODE || GameValues.value.AUTO_SAVE_SPECTATOR) && Game.settingsManager.AUTO_SAVE_DAYS > 0 && Game_Calendar.TURN_ID >= AUTO_SAVE_LAST_TURN_ID + Game.settingsManager.AUTO_SAVE_DAYS) {
            AUTO_SAVE_LAST_TURN_ID = Game_Calendar.TURN_ID;
            Game.addSimpleTask(new AnonymousClass1("autosave"));
        }
    }

    public static final void deleteFile(String str) {
        try {
            if (Gdx.files.local(str).exists()) {
                Gdx.files.local(str).delete();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            if (Gdx.files.internal(str).exists()) {
                Gdx.files.internal(str).delete();
            }
        } catch (Exception unused) {
        }
        if (FileManager.IS_MAC) {
            try {
                if (Gdx.files.external(str).exists()) {
                    Gdx.files.external(str).delete();
                }
            } catch (Exception unused2) {
            }
        }
    }

    public static final void deleteSavedGame(String str, boolean z) {
        String str2 = CFG.FILE_SAVE_PROVINCES_DATA_ARMIES_MORE_FILES;
        String str3 = CFG.FILE_SAVE_PROVINCES_DATA_BUILDINGS_MORE_FILES;
        try {
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Details.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Provinces_Data.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Provinces_Data2.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Provinces_Data3.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Provinces_Data4.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Provinces_Data5.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Provinces_Data6.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Provinces_Data7.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Provinces_Data8.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Provinces_Data9.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Provinces_Data10.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Provinces_Population.json");
            int i = 0;
            while (i < 1000) {
                String str4 = str3;
                if (FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + str4 + i + ".json").exists()) {
                    deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + str4 + i + ".json");
                }
                i++;
                str3 = str4;
            }
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PROVINCES_DATA_BUILDINGS_CONSTRUCTION);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PROVINCES_DATA_INVEST);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PROVINCES_DATA_INVEST_TAX);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PROVINCES_DATA_INVEST_MANPOWER);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PROVINCES_DATA_INVEST_GROWTH_RATE);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PROVINCES_DATA_INVEST_INFRASTRUCTURE);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PROVINCES_DATA_CORES_CONSTRUCTION);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PROVINCES_DATA_RELIGION_CONVERSION);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + uNBYrZVGzy.lqwhkCpDiBTU);
            int i2 = 0;
            while (i2 < 1000) {
                String str5 = str2;
                if (FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + str5 + i2 + ".json").exists()) {
                    deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + str5 + i2 + ".json");
                }
                i2++;
                str2 = str5;
            }
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PROVINCES_DATA_PLAGUES);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PLAYER_DATA);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PLAYER_STATS);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PLAYER_STATS2);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_PLAYER_STATS3);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_UNLOCKED_TECHNOLOGIES);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_RESEARCH_PROGRESS);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Advantages.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Laws.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_RECRUIT_ARMY);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_CREATE_NEW_ARMY);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_NUKES_PRODUCTION);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_RULERS);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_RULERS_BONUSES);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_ADVISORS_ADM);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_ADVISORS_ADM_BONUSES);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_ADVISORS_ECONOMY);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_ADVISORS_ECONOMY_BONUSES);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_ADVISORS_INNOVATION);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_ADVISORS_INNOVATION_BONUSES);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_ADVISORS_MILITARY);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_ADVISORS_MILITARY_BONUSES);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_GENERALS_NOT_ASSIGNED);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_EVENTS_VARIABLES);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_EVENTS_VARIABLES_2);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_DATA);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_DATA2);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_DATA3);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_DATA4);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_EVENTS_DATA);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_EVENTS_DATA2);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_EVENTS_DATA3);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_BONUSES_TEMPORARY);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_GOLDEN_AGE);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_LOANS);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Legacies.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_MOVE_UNITS);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_MAP_BATTLES);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + ALZmnpZHj.JHT);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Relations.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_RELATIONS_2);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Alliances.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Guarantee.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Defensive.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_TRUCES);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/NonAggression.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/MilitaryAccess.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_ALLIANCE_SPECIAL);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_RIVALS);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_RELATIONS_IMPROVING);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_RELATIONS_DAMAGING);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_CIVS_VASSALS);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_WARS);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_AI_MERGE);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_AI_CREATE_NEW_ARMY);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/AI_Diplomacy.json");
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_AI_BUDGET);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_REBELS_DATA);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/" + CFG.FILE_SAVE_REBELS_MOVE_UNITS);
            deleteFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        if (z) {
            try {
                FileHandle fileHandleExternal = FileManager.IS_MAC ? Gdx.files.external(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : CFG.readLocalFiles() ? Gdx.files.local(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : Gdx.files.internal(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt");
                if (fileHandleExternal.exists()) {
                    String[] strArrSplit = fileHandleExternal.readString().split(";");
                    if (strArrSplit.length > 1) {
                        String str6 = "";
                        for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                            if (!strArrSplit[i3].equals(str)) {
                                str6 = str6 + strArrSplit[i3] + ";";
                            }
                        }
                        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt").writeString(str6, false);
                        return;
                    }
                    if (Gdx.files.external(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt").exists()) {
                        Gdx.files.external(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt").delete();
                    } else if (Gdx.files.local(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt").exists()) {
                        Gdx.files.local(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt").delete();
                    } else if (Gdx.files.internal(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt").exists()) {
                        Gdx.files.internal(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt").delete();
                    }
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
    }

    public static final void saveAlliances() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.alliance.size() > 0) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = new SaveManager.ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.alliance.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Alliances.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveDefensive() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.defensivePact.size() > 0) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = new SaveManager.ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.defensivePact.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Defensive.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveGuarantee() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.guarantee.size() > 0) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = new SaveManager.ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.guarantee.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Guarantee.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveMilitaryAccess() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.militaryAccess.size() > 0) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = new SaveManager.ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.militaryAccess.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/MilitaryAccess.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveNonAggression() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.nonAggressionPact.size() > 0) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = new SaveManager.ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.nonAggressionPact.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/NonAggression.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveRelations() {
        ArrayList arrayList = new ArrayList();
        int iFloor = (int) Math.floor(Game.getCivsSize() / 2.0f);
        for (int i = 1; i < iFloor; i++) {
            if (Game.getCiv(i).diplomacy.relation.size() > 0) {
                SaveManager.ScenarioData_Relations scenarioData_Relations = new SaveManager.ScenarioData_Relations();
                scenarioData_Relations.c = i;
                for (Map.Entry<Integer, Float> entry : Game.getCiv(i).diplomacy.relation.entrySet()) {
                    scenarioData_Relations.w.add(entry.getKey());
                    scenarioData_Relations.r.add(Integer.valueOf(entry.getValue().intValue()));
                }
                arrayList.add(scenarioData_Relations);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Relations.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveRelations2() {
        ArrayList arrayList = new ArrayList();
        for (int iMax = (int) Math.max(1.0d, Math.floor(Game.getCivsSize() / 2.0f)); iMax < Game.getCivsSize(); iMax++) {
            if (Game.getCiv(iMax).diplomacy.relation.size() > 0) {
                SaveManager.ScenarioData_Relations scenarioData_Relations = new SaveManager.ScenarioData_Relations();
                scenarioData_Relations.c = iMax;
                for (Map.Entry<Integer, Float> entry : Game.getCiv(iMax).diplomacy.relation.entrySet()) {
                    scenarioData_Relations.w.add(entry.getKey());
                    scenarioData_Relations.r.add(Integer.valueOf(entry.getValue().intValue()));
                }
                arrayList.add(scenarioData_Relations);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Relations2.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveRelationsDamage() {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/RelationsDamage.json").writeString(SaveManager.getJson().toJson(arrayList), false);
                arrayList.clear();
                return;
            }
            if (Game.getCiv(i).diplomacy.iDamagingRelationsSize > 0) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = new SaveManager.ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (int i2 = 0; i2 < Game.getCiv(i).diplomacy.iDamagingRelationsSize; i2++) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(Game.getCiv(i).diplomacy.damagingRelations.get(i2).iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(Game.getCiv(i).diplomacy.damagingRelations.get(i2).iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
            i++;
        }
    }

    public static final void saveRelationsImprove() {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            if (i >= Game.getCivsSize()) {
                FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/RelationsImprove.json").writeString(SaveManager.getJson().toJson(arrayList), false);
                arrayList.clear();
                return;
            }
            if (Game.getCiv(i).diplomacy.iImprovingRelationsSize > 0) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = new SaveManager.ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (int i2 = 0; i2 < Game.getCiv(i).diplomacy.iImprovingRelationsSize; i2++) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(Game.getCiv(i).diplomacy.improvingRelations.get(i2).iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(Game.getCiv(i).diplomacy.improvingRelations.get(i2).iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
            i++;
        }
    }

    public static final void saveRivals() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.rivals.size() > 0) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = new SaveManager.ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.rivals.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Rivals.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveTruces() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).diplomacy.truce.size() > 0) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = new SaveManager.ScenarioData_Diplomacy();
                scenarioData_Diplomacy.pid = i;
                for (Diplomacy.DiplomacyData diplomacyData : Game.getCiv(i).diplomacy.truce.values()) {
                    scenarioData_Diplomacy.w0.add(Integer.valueOf(diplomacyData.iCivID));
                    scenarioData_Diplomacy.t0.add(Integer.valueOf(diplomacyData.iTurnID));
                }
                arrayList.add(scenarioData_Diplomacy);
            }
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Trcues.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void saveWars() {
        ArrayList arrayList = new ArrayList();
        Iterator<War> it = WarManager.lWars.values().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        FileManager.getSaveType(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + saveKey + "/Wars.json").writeString(SaveManager.getJson().toJson(arrayList), false);
        arrayList.clear();
    }

    public static final void updateSavesList() {
        FileHandle fileHandleLocal;
        try {
            if (FileManager.IS_MAC) {
                fileHandleLocal = Gdx.files.external(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt");
            } else {
                fileHandleLocal = CFG.readLocalFiles() ? Gdx.files.local(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : Gdx.files.internal(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt");
            }
            String string = fileHandleLocal.readString();
            if (string.indexOf(saveKey) < 0) {
                (FileManager.IS_MAC ? Gdx.files.external(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : Gdx.files.local(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt")).writeString(string + saveKey + ";", false);
            }
        } catch (Exception unused) {
            (FileManager.IS_MAC ? Gdx.files.external(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : Gdx.files.local(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt")).writeString(saveKey + ";", false);
        }
    }
}
