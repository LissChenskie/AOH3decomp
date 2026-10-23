package aoc.kingdoms.lukasz.jakowski.SaveLoad;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.AI.AI_Budget;
import aoc.kingdoms.lukasz.jakowski.AI.AI_CivDiplomacy;
import aoc.kingdoms.lukasz.jakowski.AI.AI_Manager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread_Events;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerData;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerStats;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerStats2;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerStats3;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerStats4;
import aoc.kingdoms.lukasz.map.AdvantagesManager;
import aoc.kingdoms.lukasz.map.LawsManager;
import aoc.kingdoms.lukasz.map.Loan;
import aoc.kingdoms.lukasz.map.Ruler;
import aoc.kingdoms.lukasz.map.advisors.Advisor;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.map.allianceHRE.Alliance;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyGeneral;
import aoc.kingdoms.lukasz.map.battles.Battle;
import aoc.kingdoms.lukasz.map.civilization.Civilization;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import aoc.kingdoms.lukasz.map.civilization.CivilizationEventsData_Variables;
import aoc.kingdoms.lukasz.map.civilization.CivilizationGoldenAge;
import aoc.kingdoms.lukasz.map.civilization.CivilizationLegacy;
import aoc.kingdoms.lukasz.map.civilization.save.CivData;
import aoc.kingdoms.lukasz.map.civilization.save.CivData2;
import aoc.kingdoms.lukasz.map.civilization.save.CivData3;
import aoc.kingdoms.lukasz.map.civilization.save.CivData4;
import aoc.kingdoms.lukasz.map.civilization.stats.CivilizationEventsData;
import aoc.kingdoms.lukasz.map.civilization.stats.CivilizationEventsData2;
import aoc.kingdoms.lukasz.map.civilization.stats.CivilizationEventsData3;
import aoc.kingdoms.lukasz.map.diplomacy.Vassal;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.plague.Plague;
import aoc.kingdoms.lukasz.map.plague.PlagueManager;
import aoc.kingdoms.lukasz.map.province.ProvinceConstructedBuilding;
import aoc.kingdoms.lukasz.map.province.ProvinceConstructionBuilding;
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
import aoc.kingdoms.lukasz.map.rebels.RevolutionManager;
import aoc.kingdoms.lukasz.map.technology.TechnologyResearch;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.map.war.War;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class LoadSavedGameManager {
    public static String key = "";
    public static String playerKey = "";

    public static final void buildProvinceCores() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            try {
                Game.getProvince(i).updateCoresSize();
                Game.getProvince(i).updateHaveACore();
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public static final void buildProvinceData() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            try {
                Game.getProvince(i).updateBuildingLimit();
                Game.getProvince(i).updateInfrastructureMax();
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public static final void buildProvincePopulationData() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            try {
                Game.getProvince(i).buildPopulation_LoadGame();
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    public static void loadBuildColonization() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).buildColonizationProvince();
        }
    }

    public static void loadBuild_ProvincesOccupied() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).buildOccupiedProvinces();
        }
    }

    public static void loadBuild_ProvincesUnderSiege() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).buildUnderSiege();
        }
    }

    public static final void loadPlayer_Data() {
        try {
            Game.player.playerData = (PlayerData) new Json().fromJson(PlayerData.class, FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/PlayerData.json"));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        Game.player.iPinnedArmiesSize = Game.player.playerData.pinnedArmies.size();
        Game.player.iPinnedProvincesSize = Game.player.playerData.pinnedProvinces.size();
        Game.player.iActiveEventsSize = Game.player.playerData.activeEvents.size();
    }

    public static final void loadPlayer_Stats() {
        try {
            Game.player.playerStats = (PlayerStats) new Json().fromJson(PlayerStats.class, FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/PlayerStats.json"));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadPlayer_Stats2() {
        try {
            Game.player.playerStats2 = (PlayerStats2) new Json().fromJson(PlayerStats2.class, FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/PlayerStats2.json"));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadPlayer_Stats3() {
        try {
            Game.player.playerStats3 = (PlayerStats3) new Json().fromJson(PlayerStats3.class, FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/PlayerStats3.json"));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            Game.player.playerStats4 = (PlayerStats4) new Json().fromJson(PlayerStats4.class, FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/PlayerStats4.json"));
            Game.player.playerStats4.flagsGenerated = false;
        } catch (Exception unused) {
        }
    }

    public static final void loadSaveAlliances() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Alliances.json");
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

    public static final void loadSaveDefensive() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Defensive.json");
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

    public static final void loadSaveGuarantee() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(XjthpFh.TqJxWpRxm + Game.map.getFile_ActiveMap_Path() + key + "/Guarantee.json");
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

    public static final void loadSaveMilitaryAccess() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/MilitaryAccess.json");
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

    public static final void loadSaveNonAggression() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/NonAggression.json");
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

    public static final void loadSaveRelations() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Relations.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Relations scenarioData_Relations = (SaveManager.ScenarioData_Relations) json.readValue(SaveManager.ScenarioData_Relations.class, (JsonValue) it.next());
                if (scenarioData_Relations.c > 0 && scenarioData_Relations.c < Game.getCivsSize()) {
                    for (int size = scenarioData_Relations.w.size() - 1; size >= 0; size--) {
                        Game.getCiv(scenarioData_Relations.c).diplomacy.setRelation_Load(scenarioData_Relations.w.get(size).intValue(), scenarioData_Relations.r.get(size).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSaveRelations2() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + aBEBOpwLZcQFCZ.oQFvUmo);
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Relations scenarioData_Relations = (SaveManager.ScenarioData_Relations) json.readValue(SaveManager.ScenarioData_Relations.class, (JsonValue) it.next());
                if (scenarioData_Relations.c > 0 && scenarioData_Relations.c < Game.getCivsSize()) {
                    for (int size = scenarioData_Relations.w.size() - 1; size >= 0; size--) {
                        Game.getCiv(scenarioData_Relations.c).diplomacy.setRelation_Load(scenarioData_Relations.w.get(size).intValue(), scenarioData_Relations.r.get(size).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSaveRelationsDamage() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/RelationsDamage.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = (SaveManager.ScenarioData_Diplomacy) json.readValue(SaveManager.ScenarioData_Diplomacy.class, (JsonValue) it.next());
                if (scenarioData_Diplomacy.pid > 0 && scenarioData_Diplomacy.pid < Game.getCivsSize()) {
                    int size = scenarioData_Diplomacy.w0.size();
                    for (int i = 0; i < size; i++) {
                        Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.addDamageRelations_Load(scenarioData_Diplomacy.w0.get(i).intValue(), scenarioData_Diplomacy.t0.get(i).intValue());
                    }
                    Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.iDamagingRelationsSize = Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.damagingRelations.size();
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSaveRelationsImprove() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/RelationsImprove.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = (SaveManager.ScenarioData_Diplomacy) json.readValue(SaveManager.ScenarioData_Diplomacy.class, (JsonValue) it.next());
                if (scenarioData_Diplomacy.pid > 0 && scenarioData_Diplomacy.pid < Game.getCivsSize()) {
                    int size = scenarioData_Diplomacy.w0.size();
                    for (int i = 0; i < size; i++) {
                        Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.addImproveRelations_Load(scenarioData_Diplomacy.w0.get(i).intValue(), scenarioData_Diplomacy.t0.get(i).intValue());
                    }
                    Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.iImprovingRelationsSize = Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.improvingRelations.size();
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSaveRivals() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Rivals.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Diplomacy scenarioData_Diplomacy = (SaveManager.ScenarioData_Diplomacy) json.readValue(SaveManager.ScenarioData_Diplomacy.class, (JsonValue) it.next());
                if (scenarioData_Diplomacy.pid > 0 && scenarioData_Diplomacy.pid < Game.getCivsSize()) {
                    int size = scenarioData_Diplomacy.w0.size();
                    for (int i = 0; i < size; i++) {
                        Game.getCiv(scenarioData_Diplomacy.pid).diplomacy.addRival_load(scenarioData_Diplomacy.w0.get(i).intValue(), scenarioData_Diplomacy.t0.get(i).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSaveTruce() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Trcues.json");
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

    public static final void loadSaveWars() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + HTGgowNjn.PqX);
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            WarManager.lWars.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                War war = (War) json.readValue(War.class, (JsonValue) it.next());
                WarManager.lWars.put(war.key, war);
                war.loadSave_AddInWar();
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        WarManager.iWarsSize = WarManager.lWars.size();
    }

    public static final void loadSaveWars_BuildData() {
        try {
            WarManager.buildWars_Load();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_AI_Budget() {
        try {
            AI_Manager.aiBudget = (AI_Budget) new Json().fromJson(AI_Budget.class, FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/AI_Budget.json"));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_AI_CreateNewArmy() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/AI_CreateNewArmy.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_AI_CreateNewArmy save_Civ_AI_CreateNewArmy = (SaveGameManager.Save_Civ_AI_CreateNewArmy) json.readValue(SaveGameManager.Save_Civ_AI_CreateNewArmy.class, (JsonValue) it.next());
                Game.getCiv(save_Civ_AI_CreateNewArmy.c).aiCivCreateNewArmy = save_Civ_AI_CreateNewArmy.a;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_AI_Diplomacy() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/AI_Diplomacy.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                Game.getCiv(i).aiCivDiplomacy = (AI_CivDiplomacy) json.readValue(AI_CivDiplomacy.class, (JsonValue) it.next());
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_AI_Merge() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/AI_Merge.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_AI_Merge save_Civ_AI_Merge = (SaveGameManager.Save_Civ_AI_Merge) json.readValue(SaveGameManager.Save_Civ_AI_Merge.class, (JsonValue) it.next());
                Game.getCiv(save_Civ_AI_Merge.c).aiMerge = save_Civ_AI_Merge.a;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_AllianceSpecial() {
        try {
            Game.alliancesSpecial.clear();
            Game.alliancesSpecialSize = 0;
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/AllianceSpecial.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Game.alliancesSpecial.add((Alliance) json.readValue(Alliance.class, (JsonValue) it.next()));
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        Game.alliancesSpecialSize = Game.alliancesSpecial.size();
    }

    public static final void loadSave_BuildTechTree() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).buildTechTree_Load();
        }
    }

    public static final void loadSave_Civs() {
        Game.lCivs.add(Game.getNeutralCivilization());
        Game.lCivs.get(0).iCivID = 0;
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Civs.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                CivData civData = (CivData) json.readValue(CivData.class, (JsonValue) it.next());
                Game.LoadCivilizationData loadCivilizationDataLoadCivilization = Game.loadCivilization(civData.t);
                Game.lCivs.add(new Civilization(i, civData.t, civData.p, loadCivilizationDataLoadCivilization.iR, loadCivilizationDataLoadCivilization.iG, loadCivilizationDataLoadCivilization.iB, civData.c, civData.r, loadCivilizationDataLoadCivilization.GroupID, true));
                i++;
                json = json;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        Game.iCivsSize = Game.lCivs.size();
    }

    public static final void loadSave_Civs2() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Civs2.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                ((CivData2) json.readValue(CivData2.class, (JsonValue) it.next())).update(i);
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_Civs3() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Civs3.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                Game.getCiv(i).civData3 = (CivData3) json.readValue(CivData3.class, (JsonValue) it.next());
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_Civs4() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Civs4.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                Game.getCiv(i).civData4 = (CivData4) json.readValue(CivData4.class, (JsonValue) it.next());
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsAdvisorsAdm() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + uiwPYaNhJS.fQH);
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_Advisor save_Civ_Advisor = (SaveGameManager.Save_Civ_Advisor) json.readValue(SaveGameManager.Save_Civ_Advisor.class, (JsonValue) it.next());
                if (save_Civ_Advisor != null) {
                    Game.getCiv(i).advisorAdministration.sName = save_Civ_Advisor.n;
                    Game.getCiv(i).advisorAdministration.iYearOfBirth = save_Civ_Advisor.y;
                    Game.getCiv(i).advisorAdministration.iMonthOfBirth = save_Civ_Advisor.m;
                    Game.getCiv(i).advisorAdministration.iDayOfBirth = save_Civ_Advisor.d;
                    Game.getCiv(i).advisorAdministration.sIMG = save_Civ_Advisor.g;
                    Game.getCiv(i).advisorAdministration.imageID = save_Civ_Advisor.e;
                    Game.getCiv(i).advisorAdministration.iLevel = save_Civ_Advisor.l;
                    try {
                        AdvisorManager advisorManager = Game.advisorManager;
                        AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorAdministration, i, 1);
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static final void loadSave_CivsAdvisorsAdmBonuses() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/AdvisorAdministrationBonuses.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                Advisor advisor = (Advisor) json.readValue(Advisor.class, (JsonValue) it.next());
                if (advisor != null) {
                    Game.getCiv(i).advisorAdministration = advisor;
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsAdvisorsEconomy() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/AdvisorEconomy.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_Advisor save_Civ_Advisor = (SaveGameManager.Save_Civ_Advisor) json.readValue(SaveGameManager.Save_Civ_Advisor.class, (JsonValue) it.next());
                if (save_Civ_Advisor != null) {
                    Game.getCiv(i).advisorEconomy.sName = save_Civ_Advisor.n;
                    Game.getCiv(i).advisorEconomy.iYearOfBirth = save_Civ_Advisor.y;
                    Game.getCiv(i).advisorEconomy.iMonthOfBirth = save_Civ_Advisor.m;
                    Game.getCiv(i).advisorEconomy.iDayOfBirth = save_Civ_Advisor.d;
                    Game.getCiv(i).advisorEconomy.sIMG = save_Civ_Advisor.g;
                    Game.getCiv(i).advisorEconomy.imageID = save_Civ_Advisor.e;
                    Game.getCiv(i).advisorEconomy.iLevel = save_Civ_Advisor.l;
                    try {
                        AdvisorManager advisorManager = Game.advisorManager;
                        AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorEconomy, i, 1);
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static final void loadSave_CivsAdvisorsEconomyBonuses() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/AdvisorEconomyBonuses.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                Advisor advisor = (Advisor) json.readValue(Advisor.class, (JsonValue) it.next());
                if (advisor != null) {
                    Game.getCiv(i).advisorEconomy = advisor;
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsAdvisorsInnovation() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/AdvisorInnovation.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_Advisor save_Civ_Advisor = (SaveGameManager.Save_Civ_Advisor) json.readValue(SaveGameManager.Save_Civ_Advisor.class, (JsonValue) it.next());
                if (save_Civ_Advisor != null) {
                    Game.getCiv(i).advisorTechnology.sName = save_Civ_Advisor.n;
                    Game.getCiv(i).advisorTechnology.iYearOfBirth = save_Civ_Advisor.y;
                    Game.getCiv(i).advisorTechnology.iMonthOfBirth = save_Civ_Advisor.m;
                    Game.getCiv(i).advisorTechnology.iDayOfBirth = save_Civ_Advisor.d;
                    Game.getCiv(i).advisorTechnology.sIMG = save_Civ_Advisor.g;
                    Game.getCiv(i).advisorTechnology.imageID = save_Civ_Advisor.e;
                    Game.getCiv(i).advisorTechnology.iLevel = save_Civ_Advisor.l;
                    try {
                        AdvisorManager advisorManager = Game.advisorManager;
                        AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorTechnology, i, 1);
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static final void loadSave_CivsAdvisorsInnovationBonuses() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/AdvisorInnovationBonuses.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                Advisor advisor = (Advisor) json.readValue(Advisor.class, (JsonValue) it.next());
                if (advisor != null) {
                    Game.getCiv(i).advisorTechnology = advisor;
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsAdvisorsMilitary() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/AdvisorMilitary.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_Advisor save_Civ_Advisor = (SaveGameManager.Save_Civ_Advisor) json.readValue(SaveGameManager.Save_Civ_Advisor.class, (JsonValue) it.next());
                if (save_Civ_Advisor != null) {
                    Game.getCiv(i).advisorMilitary.sName = save_Civ_Advisor.n;
                    Game.getCiv(i).advisorMilitary.iYearOfBirth = save_Civ_Advisor.y;
                    Game.getCiv(i).advisorMilitary.iMonthOfBirth = save_Civ_Advisor.m;
                    Game.getCiv(i).advisorMilitary.iDayOfBirth = save_Civ_Advisor.d;
                    Game.getCiv(i).advisorMilitary.sIMG = save_Civ_Advisor.g;
                    Game.getCiv(i).advisorMilitary.imageID = save_Civ_Advisor.e;
                    Game.getCiv(i).advisorMilitary.iLevel = save_Civ_Advisor.l;
                    try {
                        AdvisorManager advisorManager = Game.advisorManager;
                        AdvisorManager.updateCivBonuses(Game.getCiv(i).advisorMilitary, i, 1);
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static final void loadSave_CivsAdvisorsMilitaryBonuses() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/AdvisorMilitaryBonuses.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                Advisor advisor = (Advisor) json.readValue(Advisor.class, (JsonValue) it.next());
                if (advisor != null) {
                    Game.getCiv(i).advisorMilitary = advisor;
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsEventsData() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/EventsData.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                Game.getCiv(i).eventsData = (CivilizationEventsData) json.readValue(CivilizationEventsData.class, (JsonValue) it.next());
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsEventsData2() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/EventsData2.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                Game.getCiv(i).eventsData2 = (CivilizationEventsData2) json.readValue(CivilizationEventsData2.class, (JsonValue) it.next());
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsEventsData3() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/EventsData3.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                Game.getCiv(i).eventsData3 = (CivilizationEventsData3) json.readValue(CivilizationEventsData3.class, (JsonValue) it.next());
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsEventsVariables() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(fTNtCctcBZcqKK.EDapJagr + Game.map.getFile_ActiveMap_Path() + key + SwmJtrccN.SmqDoeklYWZBRTf);
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                CivilizationEventsData_Variables civilizationEventsData_Variables = (CivilizationEventsData_Variables) json.readValue(CivilizationEventsData_Variables.class, (JsonValue) it.next());
                if (civilizationEventsData_Variables != null) {
                    Game.getCiv(i).eventsDataVariables = civilizationEventsData_Variables;
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsEventsVariables2() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/EventsVariables2.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            int iFloor = (int) Math.floor(Game.getCivsSize() / 2.0f);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                CivilizationEventsData_Variables civilizationEventsData_Variables = (CivilizationEventsData_Variables) json.readValue(CivilizationEventsData_Variables.class, (JsonValue) it.next());
                if (civilizationEventsData_Variables != null) {
                    Game.getCiv(iFloor).eventsDataVariables = civilizationEventsData_Variables;
                }
                iFloor++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsGeneralsNotAssigned() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/GeneralsNotAssigned.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ArmyGeneral armyGeneral = (ArmyGeneral) json.readValue(ArmyGeneral.class, (JsonValue) it.next());
                if (armyGeneral != null) {
                    Game.getCiv(armyGeneral.c).addGeneral(armyGeneral);
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsGoldenAges() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/GoldenAge.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                CivilizationGoldenAge civilizationGoldenAge = (CivilizationGoldenAge) json.readValue(CivilizationGoldenAge.class, (JsonValue) it.next());
                if (civilizationGoldenAge != null) {
                    Game.getCiv(i).goldenAge = civilizationGoldenAge;
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsLaws() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Laws.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_Laws save_Civ_Laws = (SaveGameManager.Save_Civ_Laws) json.readValue(SaveGameManager.Save_Civ_Laws.class, (JsonValue) it.next());
                int size = save_Civ_Laws.l.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Game.getCiv(i).laws.set(i2, save_Civ_Laws.l.get(i2));
                    LawsManager.updateCivBonuses(i2, save_Civ_Laws.l.get(i2).intValue(), i, 1.0f);
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsLegacies() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Legacies.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_Legacies save_Civ_Legacies = (SaveGameManager.Save_Civ_Legacies) json.readValue(SaveGameManager.Save_Civ_Legacies.class, (JsonValue) it.next());
                if (save_Civ_Legacies.b.size() > 0) {
                    for (int i2 = 0; i2 < save_Civ_Legacies.b.size(); i2++) {
                        Game.getCiv(i).addLegacy_Load(save_Civ_Legacies.b.get(i2).id, save_Civ_Legacies.b.get(i2).lvl);
                    }
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsLoans() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Loans.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_Loan save_Civ_Loan = (SaveGameManager.Save_Civ_Loan) json.readValue(SaveGameManager.Save_Civ_Loan.class, (JsonValue) it.next());
                Game.getCiv(save_Civ_Loan.c).addLoan_Load(new Loan(save_Civ_Loan));
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsMoveUnits() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/MoveUnits.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_MoveUnits save_Civ_MoveUnits = (SaveGameManager.Save_Civ_MoveUnits) json.readValue(SaveGameManager.Save_Civ_MoveUnits.class, (JsonValue) it.next());
                ArmyDivision army = Game.getProvince(save_Civ_MoveUnits.f).getArmy(save_Civ_MoveUnits.k);
                if (army != null && Game.getCiv(save_Civ_MoveUnits.c).newMove(save_Civ_MoveUnits.f, save_Civ_MoveUnits.t, save_Civ_MoveUnits.k, 0, army.inRetreat)) {
                    Game.getCiv(save_Civ_MoveUnits.c).updateMoveUnits_Load(save_Civ_MoveUnits, army.inRetreat, army.inBattle);
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsNukesProduction() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CoLRpi.NXAcGz + Game.map.getFile_ActiveMap_Path() + key + "/NukesProduction.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_ProvinceInvest save_ProvinceInvest = (SaveGameManager.Save_ProvinceInvest) json.readValue(SaveGameManager.Save_ProvinceInvest.class, (JsonValue) it.next());
                if (save_ProvinceInvest.p > 0 && save_ProvinceInvest.p < Game.getCivsSize()) {
                    int size = save_ProvinceInvest.d.size();
                    for (int i = 0; i < size; i++) {
                        Game.getCiv(save_ProvinceInvest.p).addNukeProduction_Load(save_ProvinceInvest.d.get(i).intValue(), save_ProvinceInvest.n.get(i).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsRecruitArmy() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/RecruitArmy.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_RecruitArmy save_Civ_RecruitArmy = (SaveGameManager.Save_Civ_RecruitArmy) json.readValue(SaveGameManager.Save_Civ_RecruitArmy.class, (JsonValue) it.next());
                int size = save_Civ_RecruitArmy.a.size();
                for (int i = 0; i < size; i++) {
                    Game.getCiv(save_Civ_RecruitArmy.c).addRecruitArmy_Load(save_Civ_RecruitArmy.a.get(i));
                }
                Game.getCiv(save_Civ_RecruitArmy.c).addRecruitArmy_LoadUpdateSize();
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsRecruitArmyCreate() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/RecruitArmyCreate.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_RecruitArmyCreate save_Civ_RecruitArmyCreate = (SaveGameManager.Save_Civ_RecruitArmyCreate) json.readValue(SaveGameManager.Save_Civ_RecruitArmyCreate.class, (JsonValue) it.next());
                int size = save_Civ_RecruitArmyCreate.k.size();
                for (int i = 0; i < size; i++) {
                    Game.getCiv(save_Civ_RecruitArmyCreate.c).lCreateNewArmy.put(save_Civ_RecruitArmyCreate.k.get(i), save_Civ_RecruitArmyCreate.p.get(i));
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsResearchProgress() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + TGqtTWl.OFYJrQEko);
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_ResearchProgress save_Civ_ResearchProgress = (SaveGameManager.Save_Civ_ResearchProgress) json.readValue(SaveGameManager.Save_Civ_ResearchProgress.class, (JsonValue) it.next());
                for (int i2 = 0; i2 < save_Civ_ResearchProgress.t.size(); i2++) {
                    Game.getCiv(i).lResearching.add(new TechnologyResearch(save_Civ_ResearchProgress.t.get(i2).intValue(), save_Civ_ResearchProgress.p.get(i2).intValue() / 1000.0f));
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsRulers() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Rulers.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                Game.getCiv(i).ruler = new Ruler((SaveGameManager.Save_Civ_Ruler) json.readValue(SaveGameManager.Save_Civ_Ruler.class, (JsonValue) it.next()));
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsRulers_Bonuses() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/RulersBonuses.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                CivilizationBonuses civilizationBonuses = (CivilizationBonuses) json.readValue(CivilizationBonuses.class, (JsonValue) it.next());
                if (Game.getCiv(i).ruler != null) {
                    Game.getCiv(i).ruler.initRulerBonuses_Load(i, civilizationBonuses);
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsTemporaryBonuses() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/BonusesTemp.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_TemporaryBonuses save_Civ_TemporaryBonuses = (SaveGameManager.Save_Civ_TemporaryBonuses) json.readValue(SaveGameManager.Save_Civ_TemporaryBonuses.class, (JsonValue) it.next());
                if (save_Civ_TemporaryBonuses != null) {
                    for (int i2 = 0; i2 < save_Civ_TemporaryBonuses.b.size(); i2++) {
                        Game.getCiv(i).addCivilizationBonus_Temporary(save_Civ_TemporaryBonuses.b.get(i2));
                    }
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_CivsUnlockedAdvantages() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Advantages.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_UnlockedAdvantages save_Civ_UnlockedAdvantages = (SaveGameManager.Save_Civ_UnlockedAdvantages) json.readValue(SaveGameManager.Save_Civ_UnlockedAdvantages.class, (JsonValue) it.next());
                int size = save_Civ_UnlockedAdvantages.a.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Game.getCiv(i).lAdvantages.add(new CivilizationLegacy(save_Civ_UnlockedAdvantages.a.get(i2).intValue(), save_Civ_UnlockedAdvantages.l.get(i2).intValue()));
                    try {
                        for (int iIntValue = save_Civ_UnlockedAdvantages.l.get(i2).intValue(); iIntValue >= 0; iIntValue--) {
                            AdvantagesManager.updateCivBonuses(save_Civ_UnlockedAdvantages.a.get(i2).intValue(), iIntValue, i, true);
                        }
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
                Game.getCiv(i).iAdvantagesSize = Game.getCiv(i).lAdvantages.size();
                i++;
            }
            arrayList.clear();
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static final void loadSave_CivsUnlockedTechnologies() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/UnlockedTechnologies.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_UnlockedTechnologies save_Civ_UnlockedTechnologies = (SaveGameManager.Save_Civ_UnlockedTechnologies) json.readValue(SaveGameManager.Save_Civ_UnlockedTechnologies.class, (JsonValue) it.next());
                for (int i2 = 0; i2 < save_Civ_UnlockedTechnologies.a; i2++) {
                    Game.getCiv(i).setTechnologyResearched(i2, true);
                }
                int size = save_Civ_UnlockedTechnologies.u.size();
                for (int i3 = 0; i3 < size; i3++) {
                    Game.getCiv(i).setTechnologyResearched(save_Civ_UnlockedTechnologies.u.get(i3).intValue(), true);
                }
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final SaveGameManager.SaveDetails loadSave_Details(String str) {
        try {
            return (SaveGameManager.SaveDetails) new Json().fromJson(SaveGameManager.SaveDetails.class, FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + str + "/Details.json"));
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    public static final void loadSave_Details() {
        try {
            SaveGameManager.SaveDetails saveDetails = (SaveGameManager.SaveDetails) new Json().fromJson(SaveGameManager.SaveDetails.class, FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Details.json"));
            playerKey = saveDetails.sCivTag;
            Game_Calendar.TURN_ID = saveDetails.iTurnID;
            SaveGameManager.AUTO_SAVE_LAST_TURN_ID = saveDetails.iTurnID;
            Game_Calendar.currentDay = saveDetails.iDay;
            Game_Calendar.currentMonth = saveDetails.iMonth;
            Game_Calendar.currentYear = saveDetails.iYear;
            Game.mapScenarios.sActiveScenarioTag = saveDetails.scenarioTAG;
            EventsManager.loadScenarioEventsTag = saveDetails.scenarioTAG;
            Game.difficultyID = saveDetails.DIFFICULTY;
            Game.FOG_OF_WAR = saveDetails.FOG_OF_WAR;
            Game.SPECTATOR_MODE = saveDetails.SPECTATOR_MODE;
            Game.SANDBOX = saveDetails.SANDBOX;
            Game.ENABLE_CALL_VASSALS = saveDetails.ENABLE_CALL_VASSALS;
            Game.SCENARIO_EVENTS = saveDetails.SCENARIO_EVENTS;
            Game.HOURS_PER_TURN = saveDetails.HOURS_PER_TURN;
            Game.aiAggressivnes = saveDetails.AI_AGGRESSIVENESS;
            Game.gameThreadTurns.THREAD_TURN_ID = Game_Calendar.TURN_ID;
            Game.gameThreadTurns.iLastUpdateTurnID = Game_Calendar.TURN_ID;
            Game_Calendar.updateManpowerImg();
            Game_Calendar.updateAge(false);
            GameThread_Events.THREAD_TURN_ID = Game_Calendar.TURN_ID;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_InitCivsData() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).initTechTree();
            Game.getCiv(i).initGoodsProduced();
        }
    }

    public static final void loadSave_InitCivsData_CoresReligionGenerals() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).convertReligion.buildProvincesConvertReligion(i);
            Game.getCiv(i).civilizationCores.buildProvincesNonCore(i);
            Game.getCiv(i).armiesWithoutGenerals.buildArmiesWithoutGenerals(i);
        }
    }

    public static final void loadSave_MapBattles() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Battles.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Battle battle = (Battle) json.readValue(Battle.class, (JsonValue) it.next());
                battle.attackingArmy.updateLoaded_Load();
                battle.defendingArmy.updateLoaded_Load();
                Game.battleManager.lBattle.add(battle);
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        Game.battleManager.iBattleSize = Game.battleManager.lBattle.size();
    }

    public static final void loadSave_MapBattles_Update() {
        for (int i = 0; i < Game.battleManager.iBattleSize; i++) {
            Game.battleManager.lBattle.get(i).attackingArmy.updateInBattle_Load(Game.battleManager.lBattle.get(i).provinceID);
            Game.battleManager.lBattle.get(i).defendingArmy.updateInBattle_Load(Game.battleManager.lBattle.get(i).provinceID);
        }
    }

    public static final void loadSave_MapPlagues() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Plagues.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            PlagueManager.activePlagues.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                PlagueManager.activePlagues.add((Plague) json.readValue(Plague.class, (JsonValue) it.next()));
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_Population() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Population.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                Game.lProvincesPopulation.set(i, (ProvinceData_Population) json.readValue(ProvinceData_Population.class, (JsonValue) it.next()));
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceConstructionBuilding() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_BuildingsConstruction.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.ScenarioData_ProvinceConstructionBuilding scenarioData_ProvinceConstructionBuilding = (SaveGameManager.ScenarioData_ProvinceConstructionBuilding) json.readValue(SaveGameManager.ScenarioData_ProvinceConstructionBuilding.class, (JsonValue) it.next());
                if (scenarioData_ProvinceConstructionBuilding.p >= 0 && scenarioData_ProvinceConstructionBuilding.p < Game.getProvincesSize()) {
                    int size = scenarioData_ProvinceConstructionBuilding.b0.size();
                    for (int i = 0; i < size; i++) {
                        Game.getProvince(scenarioData_ProvinceConstructionBuilding.p).addBuildingConstruction_Load(new ProvinceConstructionBuilding(scenarioData_ProvinceConstructionBuilding.b0.get(i).intValue(), scenarioData_ProvinceConstructionBuilding.b1.get(i).intValue(), scenarioData_ProvinceConstructionBuilding.ct.get(i).intValue(), scenarioData_ProvinceConstructionBuilding.ctL.get(i).intValue()));
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceCoreCreation() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_CoreCreation.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_ProvinceInvest_Single save_ProvinceInvest_Single = (SaveGameManager.Save_ProvinceInvest_Single) json.readValue(SaveGameManager.Save_ProvinceInvest_Single.class, (JsonValue) it.next());
                if (save_ProvinceInvest_Single.p >= 0 && save_ProvinceInvest_Single.p < Game.getProvincesSize()) {
                    Game.getProvince(save_ProvinceInvest_Single.p).addCoreCreation_Load(save_ProvinceInvest_Single.d, save_ProvinceInvest_Single.n);
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Data.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                Game.lProvincesData.set(i, (ProvinceData) json.readValue(ProvinceData.class, (JsonValue) it.next()));
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData10() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Data10.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                Game.lProvincesData10.set(i, (ProvinceData10) json.readValue(ProvinceData10.class, (JsonValue) it.next()));
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData2() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Data2.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                Game.lProvincesData2.set(i, (ProvinceData2) json.readValue(ProvinceData2.class, (JsonValue) it.next()));
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData3() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Data3.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                Game.lProvincesData3.set(i, (ProvinceData3) json.readValue(ProvinceData3.class, (JsonValue) it.next()));
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData4() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Data4.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                Game.lProvincesData4.set(i, (ProvinceData4) json.readValue(ProvinceData4.class, (JsonValue) it.next()));
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData5() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Data5.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                Game.lProvincesData5.set(i, (ProvinceData5) json.readValue(ProvinceData5.class, (JsonValue) it.next()));
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData6() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Data6.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                Game.lProvincesData6.set(i, (ProvinceData6) json.readValue(ProvinceData6.class, (JsonValue) it.next()));
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData7() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Data7.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                Game.lProvincesData7.set(i, (ProvinceData7) json.readValue(ProvinceData7.class, (JsonValue) it.next()));
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData8() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Data8.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                Game.lProvincesData8.set(i, (ProvinceData8) json.readValue(ProvinceData8.class, (JsonValue) it.next()));
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceData9() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Data9.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                Game.lProvincesData9.set(i, (ProvinceData9) json.readValue(ProvinceData9.class, (JsonValue) it.next()));
                i++;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceInvestDaysLeft() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_InvestEconomy.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_ProvinceInvest save_ProvinceInvest = (SaveGameManager.Save_ProvinceInvest) json.readValue(SaveGameManager.Save_ProvinceInvest.class, (JsonValue) it.next());
                if (save_ProvinceInvest.p >= 0 && save_ProvinceInvest.p < Game.getProvincesSize()) {
                    int size = save_ProvinceInvest.d.size();
                    for (int i = 0; i < size; i++) {
                        Game.getProvince(save_ProvinceInvest.p).addInvestInProvince_Load(save_ProvinceInvest.d.get(i).intValue(), save_ProvinceInvest.n.get(i).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceInvestGrowthRate() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_InvestGrowth.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_ProvinceInvest save_ProvinceInvest = (SaveGameManager.Save_ProvinceInvest) json.readValue(SaveGameManager.Save_ProvinceInvest.class, (JsonValue) it.next());
                if (save_ProvinceInvest.p >= 0 && save_ProvinceInvest.p < Game.getProvincesSize()) {
                    int size = save_ProvinceInvest.d.size();
                    for (int i = 0; i < size; i++) {
                        Game.getProvince(save_ProvinceInvest.p).addIncreaseGrowthRateInProvince_Load(save_ProvinceInvest.d.get(i).intValue(), save_ProvinceInvest.n.get(i).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceInvestInfrastructure() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_InvestInfrastructure.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_ProvinceInvest save_ProvinceInvest = (SaveGameManager.Save_ProvinceInvest) json.readValue(SaveGameManager.Save_ProvinceInvest.class, (JsonValue) it.next());
                if (save_ProvinceInvest.p >= 0 && save_ProvinceInvest.p < Game.getProvincesSize()) {
                    int size = save_ProvinceInvest.d.size();
                    for (int i = 0; i < size; i++) {
                        Game.getProvince(save_ProvinceInvest.p).addDevelopInfrastructure_Load(save_ProvinceInvest.d.get(i).intValue(), save_ProvinceInvest.n.get(i).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceInvestManpower() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_InvestManpower.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_ProvinceInvest save_ProvinceInvest = (SaveGameManager.Save_ProvinceInvest) json.readValue(SaveGameManager.Save_ProvinceInvest.class, (JsonValue) it.next());
                if (save_ProvinceInvest.p >= 0 && save_ProvinceInvest.p < Game.getProvincesSize()) {
                    int size = save_ProvinceInvest.d.size();
                    for (int i = 0; i < size; i++) {
                        Game.getProvince(save_ProvinceInvest.p).addIncreaseManpowerInProvince_Load(save_ProvinceInvest.d.get(i).intValue(), save_ProvinceInvest.n.get(i).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceInvestTax() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_InvestTax.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_ProvinceInvest save_ProvinceInvest = (SaveGameManager.Save_ProvinceInvest) json.readValue(SaveGameManager.Save_ProvinceInvest.class, (JsonValue) it.next());
                if (save_ProvinceInvest.p >= 0 && save_ProvinceInvest.p < Game.getProvincesSize()) {
                    int size = save_ProvinceInvest.d.size();
                    for (int i = 0; i < size; i++) {
                        Game.getProvince(save_ProvinceInvest.p).addIncreaseTaxEfficiencyInProvince_Load(save_ProvinceInvest.d.get(i).intValue(), save_ProvinceInvest.n.get(i).intValue());
                    }
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceReligionConversion() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Conversion.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_ProvinceInvest_Single save_ProvinceInvest_Single = (SaveGameManager.Save_ProvinceInvest_Single) json.readValue(SaveGameManager.Save_ProvinceInvest_Single.class, (JsonValue) it.next());
                if (save_ProvinceInvest_Single.p >= 0 && save_ProvinceInvest_Single.p < Game.getProvincesSize()) {
                    Game.getProvince(save_ProvinceInvest_Single.p).addReligionConversion_Load(save_ProvinceInvest_Single.d, save_ProvinceInvest_Single.n);
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_ProvinceWonderConstruction() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_WonderConstruction.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_ProvinceInvest_Single save_ProvinceInvest_Single = (SaveGameManager.Save_ProvinceInvest_Single) json.readValue(SaveGameManager.Save_ProvinceInvest_Single.class, (JsonValue) it.next());
                if (save_ProvinceInvest_Single.p >= 0 && save_ProvinceInvest_Single.p < Game.getProvincesSize()) {
                    Game.getProvince(save_ProvinceInvest_Single.p).addWonderConstruction_Load(save_ProvinceInvest_Single.d, save_ProvinceInvest_Single.n);
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final boolean loadSave_ProvincesArmy_MoreFiles(int i) {
        try {
            if (!FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Armies_" + i + ".json").exists()) {
                return false;
            }
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Armies_" + i + ".json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_Provinces_ArmyDivision save_Provinces_ArmyDivision = (SaveGameManager.Save_Provinces_ArmyDivision) json.readValue(SaveGameManager.Save_Provinces_ArmyDivision.class, (JsonValue) it.next());
                Game.getProvince(save_Provinces_ArmyDivision.p).addArmy_Load(new ArmyDivision(save_Provinces_ArmyDivision));
            }
            arrayList.clear();
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public static final boolean loadSave_ProvincesBuildings(int i) {
        try {
            if (!FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Buildings_" + i + ".json").exists()) {
                return false;
            }
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Buildings_" + i + ".json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveManager.ScenarioData_Buildings scenarioData_Buildings = (SaveManager.ScenarioData_Buildings) json.readValue(SaveManager.ScenarioData_Buildings.class, (JsonValue) it.next());
                if (scenarioData_Buildings.pid >= 0 && scenarioData_Buildings.pid < Game.getProvincesSize()) {
                    int size = scenarioData_Buildings.b0.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        Game.getProvince(scenarioData_Buildings.pid).addNewBuilding_LoadScenario(new ProvinceConstructedBuilding(scenarioData_Buildings.b0.get(i2).intValue(), scenarioData_Buildings.b1.get(i2).intValue()));
                    }
                }
            }
            arrayList.clear();
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public static final void loadSave_ProvincesPlagues() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Provinces_Plagues.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_Province_Plague save_Province_Plague = (SaveGameManager.Save_Province_Plague) json.readValue(SaveGameManager.Save_Province_Plague.class, (JsonValue) it.next());
                Game.getProvince(save_Province_Plague.p).provincePlague = save_Province_Plague.l;
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_Rebels() {
        try {
            Game.revolutionManager = (RevolutionManager) new Json().fromJson(RevolutionManager.class, FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Rebels.json"));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_RebelsMoveUnits() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/RebelsMoveUnits.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SaveGameManager.Save_Civ_MoveUnits save_Civ_MoveUnits = (SaveGameManager.Save_Civ_MoveUnits) json.readValue(SaveGameManager.Save_Civ_MoveUnits.class, (JsonValue) it.next());
                ArmyDivision army = Game.getProvince(save_Civ_MoveUnits.f).getArmy(save_Civ_MoveUnits.k);
                if (army != null && Game.revolutionMoveUnits.newMove(save_Civ_MoveUnits.f, save_Civ_MoveUnits.t, save_Civ_MoveUnits.k, 0, false)) {
                    Game.revolutionMoveUnits.updateMoveUnits_Load(save_Civ_MoveUnits, false, army.inBattle);
                }
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadSave_UpdateDiplomacyPerMonth() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).updateDiplomacyPerMonth();
        }
    }

    public static final void loadSave_UpdatePlayersCivID() {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).getCivTag().equals(playerKey)) {
                Game.player.iCivID = i;
                return;
            }
        }
    }

    public static final boolean loadSave_Vassals() {
        try {
            if (!FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Vassals.json").exists()) {
                return false;
            }
            FileHandle fileHandleLoadFile = FileManager.loadFile(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + key + "/Vassals.json");
            Json json = new Json();
            ArrayList arrayList = (ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Vassal vassal = (Vassal) json.readValue(Vassal.class, (JsonValue) it.next());
                Game.getCiv(Game.getCiv(vassal.c).getPuppetOfCivID()).diplomacy.setVassal_LoadData(vassal.c, vassal.tL, vassal.mL, vassal.cW, vassal.lD);
            }
            arrayList.clear();
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }
}
