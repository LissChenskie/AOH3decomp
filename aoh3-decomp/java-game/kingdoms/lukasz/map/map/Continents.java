package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.LoadManager;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Continents {
    public static final int OCEAN_ID = 0;
    public static final int OCEAN_ID_LOW_QUALITY = -4;
    public int iContinentsSize;
    public List<Continent> lContinents;

    public static class Continent {
        public int iB;
        public int iG;
        public int iR;
        public boolean prioritizeColonization = false;
        public String sName;
    }

    public final void loadMapContinents() {
        this.lContinents = new ArrayList();
        try {
            String string = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_CONTINENTS).readString();
            Json json = new Json();
            json.setElementType(LoadManager.ConfigJson.class, "Data", Continent.class);
            Iterator it = ((LoadManager.ConfigJson) json.fromJson(LoadManager.ConfigJson.class, string)).Data.iterator();
            while (it.hasNext()) {
                this.lContinents.add((Continent) it.next());
            }
            this.iContinentsSize = this.lContinents.size();
            for (int i = 0; i < this.iContinentsSize; i++) {
                this.lContinents.get(i).sName = Game.lang.get(this.lContinents.get(i).sName);
            }
        } catch (GdxRuntimeException e) {
            CFG.LOG(e);
        }
    }
}
