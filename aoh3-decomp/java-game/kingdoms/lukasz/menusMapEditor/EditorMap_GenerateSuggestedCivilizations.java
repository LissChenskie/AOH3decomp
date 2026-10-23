package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMap_GenerateSuggestedCivilizations extends Menu {
    public int scenarioIDBefore;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMap_GenerateSuggestedCivilizations$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMap_GenerateSuggestedCivilizations$1$1, reason: invalid class name and collision with other inner class name */
        class RunnableC00101 implements Runnable {
            RunnableC00101() {
            }

            @Override // java.lang.Runnable
            public void run() {
                EditorMap_GenerateSuggestedCivilizations.this.loadData();
            }
        }

        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Gdx.app.postRunnable(new RunnableC00101());
        }
    }

    public EditorMap_GenerateSuggestedCivilizations() {
        this.scenarioIDBefore = 0;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Text_Static(Game.lang.get("GenerateSuggestedCivilizations"), CFG.PADDING, CFG.PADDING));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
        this.scenarioIDBefore = Game.scenarioID;
        Game.scenarioID = 0;
        new Thread(new AnonymousClass1()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        while (Game.scenarioID < Game.mapScenarios.SCENARIOS_SIZE) {
            build_SuggestedOwners();
            Game.scenarioID++;
        }
        Game.scenarioID = this.scenarioIDBefore;
        Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT);
    }

    public void build_SuggestedOwners() {
        try {
            FileHandle fileHandleLoadFile = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID) + "/Data.json");
            Json json = new Json();
            Iterator it = ((ArrayList) json.fromJson(ArrayList.class, fileHandleLoadFile)).iterator();
            while (it.hasNext()) {
                MapScenarios.ScenarioCivData scenarioCivData = (MapScenarios.ScenarioCivData) json.readValue(MapScenarios.ScenarioCivData.class, (JsonValue) it.next());
                if (scenarioCivData.CPID >= 0) {
                    if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SUGGESTED_CIVS_PATH + scenarioCivData.CPID + ".txt").exists()) {
                        boolean z = true;
                        for (String str : FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SUGGESTED_CIVS_PATH + scenarioCivData.CPID + ".txt").readString().split(";")) {
                            if (str.equals(scenarioCivData.CivTAG)) {
                                z = false;
                            }
                        }
                        if (z) {
                            FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SUGGESTED_CIVS_PATH + scenarioCivData.CPID + ".txt").writeString(scenarioCivData.CivTAG + ";", true);
                        }
                    } else {
                        FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SUGGESTED_CIVS_PATH + scenarioCivData.CPID + ".txt").writeString(scenarioCivData.CivTAG + ";", false);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        super.draw(spriteBatch, i, i2, z, status);
    }
}
