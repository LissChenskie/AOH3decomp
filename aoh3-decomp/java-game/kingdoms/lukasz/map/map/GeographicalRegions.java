package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.LoadManager;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class GeographicalRegions {
    public int iGeographicalRegionsSize;
    public List<GeographicalRegion> lGeographicalRegions;

    public static class GeographicalRegion {
        public int iB;
        public int iG;
        public int iR;
        public String sName;
    }

    public final void loadMapGeographicalRegions() {
        this.lGeographicalRegions = new ArrayList();
        try {
            String string = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + PxHJ.KCwQAJDUvaHTl).readString();
            Json json = new Json();
            json.setElementType(LoadManager.ConfigJson.class, "Data", GeographicalRegion.class);
            Iterator it = ((LoadManager.ConfigJson) json.fromJson(LoadManager.ConfigJson.class, string)).Data.iterator();
            while (it.hasNext()) {
                this.lGeographicalRegions.add((GeographicalRegion) it.next());
            }
            this.iGeographicalRegionsSize = this.lGeographicalRegions.size();
            for (int i = 0; i < this.iGeographicalRegionsSize; i++) {
                this.lGeographicalRegions.get(i).sName = Game.lang.get(this.lGeographicalRegions.get(i).sName);
            }
        } catch (GdxRuntimeException e) {
            CFG.LOG(e);
        }
    }
}
