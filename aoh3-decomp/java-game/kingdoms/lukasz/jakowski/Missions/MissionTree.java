package aoc.kingdoms.lukasz.jakowski.Missions;

import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationEventsData_Variables;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MissionTree {
    public static final int MISSION_TYPE_ID = 999;
    public static final int MISSION_TYPE_ID_CIV = 1000;
    public static int iMissionHeight;
    public static int iMissionWidth;
    public static List<Mission> lMissions = new ArrayList();
    public static int iMissionsSize = 0;
    public static List<Image> missionImages = new ArrayList();
    public static List<String> missionImagesNames = new ArrayList();
    public static List<Image> missionImagesCivs = new ArrayList();
    public static List<String> missionImagesNamesCivs = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Missions.MissionTree$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            Game.soundsManager.playSound(SoundsManager.EVENT_INFO);
            Game.menuManager.rebuildInGame_Event(MissionTree.lMissions.get(this.id).event, MissionTree.MISSION_TYPE_ID, this.id);
            Game.soundsManager.playSound(SoundsManager.EVENT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Missions.MissionTree$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            Game.soundsManager.playSound(SoundsManager.EVENT_INFO);
            Game.menuManager.rebuildInGame_Event(Game.getCiv(Game.player.iCivID).lMissions.get(this.id).event, 1000, this.id);
            Game.soundsManager.playSound(SoundsManager.EVENT);
        }
    }

    public static class ConfigMissionsData {
        public String Age_of_History;
        public ArrayList Mission;
    }

    public static final boolean canRunMission(int i, int i2) {
        if (lMissions.get(i2).RequiredMission >= 0) {
            CivilizationEventsData_Variables civilizationEventsData_Variables = Game.getCiv(i).eventsDataVariables;
            List<Mission> list = lMissions;
            if (!civilizationEventsData_Variables.hasVariable(list.get(list.get(i2).RequiredMission).event.id)) {
                return false;
            }
        }
        if (lMissions.get(i2).RequiredMission2 >= 0) {
            CivilizationEventsData_Variables civilizationEventsData_Variables2 = Game.getCiv(i).eventsDataVariables;
            List<Mission> list2 = lMissions;
            if (!civilizationEventsData_Variables2.hasVariable(list2.get(list2.get(i2).RequiredMission2).event.id)) {
                return false;
            }
        }
        if (Game.getCiv(i).eventsDataVariables.hasVariable(lMissions.get(i2).event.id)) {
            return false;
        }
        return lMissions.get(i2).event.runTriggers(i);
    }

    public static final boolean canRunMission_Civ(int i, int i2) {
        if (Game.getCiv(i).lMissions.get(i2).RequiredMission >= 0 && !Game.getCiv(i).eventsDataVariables.hasVariable(Game.getCiv(i).lMissions.get(Game.getCiv(i).lMissions.get(i2).RequiredMission).event.id)) {
            return false;
        }
        if ((Game.getCiv(i).lMissions.get(i2).RequiredMission2 < 0 || Game.getCiv(i).eventsDataVariables.hasVariable(Game.getCiv(i).lMissions.get(Game.getCiv(i).lMissions.get(i2).RequiredMission2).event.id)) && !Game.getCiv(i).eventsDataVariables.hasVariable(Game.getCiv(i).lMissions.get(i2).event.id)) {
            return Game.getCiv(i).lMissions.get(i2).event.runTriggers(i);
        }
        return false;
    }

    public static final boolean canRunMission_PreviousMissions(int i, int i2) {
        if (lMissions.get(i2).RequiredMission >= 0) {
            CivilizationEventsData_Variables civilizationEventsData_Variables = Game.getCiv(i).eventsDataVariables;
            List<Mission> list = lMissions;
            if (!civilizationEventsData_Variables.hasVariable(list.get(list.get(i2).RequiredMission).event.id)) {
                return false;
            }
        }
        if (lMissions.get(i2).RequiredMission2 < 0) {
            return true;
        }
        CivilizationEventsData_Variables civilizationEventsData_Variables2 = Game.getCiv(i).eventsDataVariables;
        List<Mission> list2 = lMissions;
        return civilizationEventsData_Variables2.hasVariable(list2.get(list2.get(i2).RequiredMission2).event.id);
    }

    public static final boolean canRunMission_PreviousMissions_Civ(int i, int i2) {
        if (Game.getCiv(i).lMissions.get(i2).RequiredMission < 0 || Game.getCiv(i).eventsDataVariables.hasVariable(Game.getCiv(i).lMissions.get(Game.getCiv(i).lMissions.get(i2).RequiredMission).event.id)) {
            return Game.getCiv(i).lMissions.get(i2).RequiredMission2 < 0 || Game.getCiv(i).eventsDataVariables.hasVariable(Game.getCiv(i).lMissions.get(Game.getCiv(i).lMissions.get(i2).RequiredMission2).event.id);
        }
        return false;
    }

    public static void disposeMissionImagesCivs() {
        for (int size = missionImagesCivs.size() - 1; size >= 0; size--) {
            missionImagesCivs.get(size).getTexture().dispose();
        }
        missionImagesNamesCivs.clear();
        missionImagesCivs.clear();
    }

    public static final boolean haveUnlockedMission(int i, int i2) {
        return Game.getCiv(i).eventsDataVariables.hasVariable(lMissions.get(i2).event.id);
    }

    public static final boolean haveUnlockedMission_Civ(int i, int i2) {
        return Game.getCiv(i).eventsDataVariables.hasVariable(Game.getCiv(i).lMissions.get(i2).event.id);
    }

    public static final void loadMissions() {
        try {
            String string = FileManager.loadFile("game/missions/Missions.json").readString();
            Json json = new Json();
            json.setElementType(ConfigMissionsData.class, "Mission", Mission.class);
            for (Mission mission : ((ConfigMissionsData) json.fromJson(ConfigMissionsData.class, string)).Mission) {
                try {
                    mission.Name = Game.lang.get(mission.Name);
                    mission.event = EventsManager.loadEvent(MISSION_TYPE_ID, FileManager.loadFile("game/missions/missionsEvents/" + mission.MissionEvent).readString().split("\\r?\\n"));
                    lMissions.add(mission);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (GdxRuntimeException e2) {
            CFG.exceptionStack(e2);
        }
        iMissionsSize = lMissions.size();
        loadMissionsImages();
    }

    public static final void loadMissionsImages() {
        boolean z;
        for (int i = 0; i < iMissionsSize; i++) {
            int size = missionImagesNames.size() - 1;
            while (true) {
                if (size < 0) {
                    z = true;
                    break;
                } else {
                    if (missionImagesNames.get(size).equals(lMissions.get(i).ImageName)) {
                        lMissions.get(i).ImageID = size;
                        z = false;
                        break;
                    }
                    size--;
                }
            }
            if (z) {
                if (FileManager.loadFile("game/missions/missionsImages/" + CFG.getRescouresPath_Short() + lMissions.get(i).ImageName).exists()) {
                    missionImages.add(new Image(ImageManager.loadTexture("game/missions/missionsImages/" + CFG.getRescouresPath_Short() + lMissions.get(i).ImageName), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                } else {
                    missionImages.add(new Image(ImageManager.loadTexture("game/missions/missionsImages/" + CFG.getRescouresPath_Short_H() + lMissions.get(i).ImageName), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                }
                missionImagesNames.add(lMissions.get(i).ImageName);
                lMissions.get(i).ImageID = missionImages.size() - 1;
            }
        }
        iMissionWidth = ImageManager.getImage(Images.missionMask).getWidth();
        iMissionHeight = ImageManager.getImage(Images.missionMask).getHeight();
    }

    public static final void loadMissionsImagesCiv(int i) {
        boolean z;
        for (int i2 = 0; i2 < Game.getCiv(i).iMissionsSize; i2++) {
            int size = missionImagesNamesCivs.size() - 1;
            while (true) {
                if (size < 0) {
                    z = true;
                    break;
                } else {
                    if (missionImagesNamesCivs.get(size).equals(Game.getCiv(i).lMissions.get(i2).ImageName)) {
                        Game.getCiv(i).lMissions.get(i2).ImageID = size;
                        z = false;
                        break;
                    }
                    size--;
                }
            }
            if (z) {
                if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + EventsManager.loadScenarioEventsTag + "/missions/missionsImages/" + CFG.getRescouresPath_Short() + Game.getCiv(i).lMissions.get(i2).ImageName).exists()) {
                    missionImagesCivs.add(new Image(ImageManager.loadTexture("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + EventsManager.loadScenarioEventsTag + "/missions/missionsImages/" + CFG.getRescouresPath_Short() + Game.getCiv(i).lMissions.get(i2).ImageName), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                } else if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + EventsManager.loadScenarioEventsTag + "/missions/missionsImages/" + CFG.getRescouresPath_Short_H() + Game.getCiv(i).lMissions.get(i2).ImageName).exists()) {
                    missionImagesCivs.add(new Image(ImageManager.loadTexture("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + EventsManager.loadScenarioEventsTag + "/missions/missionsImages/" + CFG.getRescouresPath_Short_H() + Game.getCiv(i).lMissions.get(i2).ImageName), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                } else if (FileManager.loadFile("game/missions/missionsImages/" + CFG.getRescouresPath_Short() + Game.getCiv(i).lMissions.get(i2).ImageName).exists()) {
                    missionImagesCivs.add(new Image(ImageManager.loadTexture("game/missions/missionsImages/" + CFG.getRescouresPath_Short() + Game.getCiv(i).lMissions.get(i2).ImageName), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                } else {
                    missionImagesCivs.add(new Image(ImageManager.loadTexture("game/missions/missionsImages/" + CFG.getRescouresPath_Short_H() + Game.getCiv(i).lMissions.get(i2).ImageName), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                }
                missionImagesNamesCivs.add(Game.getCiv(i).lMissions.get(i2).ImageName);
                Game.getCiv(i).lMissions.get(i2).ImageID = missionImagesCivs.size() - 1;
            }
        }
    }

    public static final void loadMissions_Civs() {
        disposeMissionImagesCivs();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            try {
                if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + EventsManager.loadScenarioEventsTag + "/" + CFG.FILE_GAME_MISSIONS_PATH + Game.getCiv(i).getCivTag() + ".json").exists() || FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + EventsManager.loadScenarioEventsTag + "/" + CFG.FILE_GAME_MISSIONS_PATH + Game.getCiv(i).realTag + ".json").exists()) {
                    try {
                        Game.getCiv(i).lMissions.clear();
                        Game.getCiv(i).iMissionsSize = 0;
                        String string = (FileManager.loadFile(new StringBuilder().append("map/").append(Game.map.getFile_ActiveMap_Path()).append(CFG.FILE_MAP_SCENARIOS).append(EventsManager.loadScenarioEventsTag).append("/").append(CFG.FILE_GAME_MISSIONS_PATH).append(Game.getCiv(i).getCivTag()).append(".json").toString()).exists() ? FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + EventsManager.loadScenarioEventsTag + "/" + CFG.FILE_GAME_MISSIONS_PATH + Game.getCiv(i).getCivTag() + ".json") : FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + EventsManager.loadScenarioEventsTag + "/" + CFG.FILE_GAME_MISSIONS_PATH + Game.getCiv(i).realTag + ".json")).readString();
                        Json json = new Json();
                        json.setElementType(ConfigMissionsData.class, "Mission", Mission.class);
                        for (Mission mission : ((ConfigMissionsData) json.fromJson(ConfigMissionsData.class, string)).Mission) {
                            try {
                                mission.Name = Game.lang.get(mission.Name);
                                mission.event = EventsManager.loadEvent(MISSION_TYPE_ID, (FileManager.loadFile(new StringBuilder().append("map/").append(Game.map.getFile_ActiveMap_Path()).append(CFG.FILE_MAP_SCENARIOS).append(EventsManager.loadScenarioEventsTag).append("/").append(CFG.FILE_GAME_MISSIONS_PATH).append(CFG.FILE_GAME_MISSIONS_EVENTS_PATH).append(mission.MissionEvent).toString()).exists() ? FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + EventsManager.loadScenarioEventsTag + "/" + CFG.FILE_GAME_MISSIONS_PATH + CFG.FILE_GAME_MISSIONS_EVENTS_PATH + mission.MissionEvent) : FileManager.loadFile("game/missions/missionsEvents/" + mission.MissionEvent)).readString().split("\\r?\\n"));
                                Game.getCiv(i).lMissions.add(mission);
                            } catch (Exception e) {
                                CFG.exceptionStack(e);
                            }
                        }
                    } catch (GdxRuntimeException e2) {
                        CFG.exceptionStack(e2);
                    }
                    arrayList.add(Integer.valueOf(i));
                    Game.getCiv(i).iMissionsSize = Game.getCiv(i).lMissions.size();
                }
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
            }
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            loadMissionsImagesCiv(((Integer) arrayList.get(size)).intValue());
        }
        arrayList.clear();
    }

    public static final void runMission(int i, int i2) {
        Game.player.addActiveEvent(MISSION_TYPE_ID, i2, 0);
        Game.addSimpleTask(new AnonymousClass1("" + lMissions.get(i2).event.id + MISSION_TYPE_ID, i2));
    }

    public static final void runMission_Civ(int i, int i2) {
        Game.player.addActiveEvent(1000, i2, 0);
        Game.addSimpleTask(new AnonymousClass2("" + Game.getCiv(Game.player.iCivID).lMissions.get(i2).event.id + 1000, i2));
    }

    public static final void takeMissionDecision(int i, int i2, int i3) {
        try {
            Game.getCiv(i).eventsDataVariables.addVariable(lMissions.get(i2).event.id);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            lMissions.get(i2).event.options.get(i3).executeOutcome(i);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }

    public static final void takeMissionDecision_Civ(int i, int i2, int i3) {
        try {
            Game.getCiv(i).eventsDataVariables.addVariable(Game.getCiv(i).lMissions.get(i2).event.id);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            Game.getCiv(i).lMissions.get(i2).event.options.get(i3).executeOutcome(i);
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }
}
