package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.utils.Json;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Map_Data {
    public String Folder;
    public Image Icon;
    public MapData mapData;

    public static class MapData {
        public String Author;
        public float[] BackgroundColor;
        public float[] BackgroundColor_ZoomIn;
        public float[] BackgroundColor_ZoomOut;
        public float BackgroundScale;
        public int BackgroundSize_X;
        public int BackgroundSize_Y;
        public int BackgroundZoomOut_AnimationDuration;
        public boolean BackgroundZoomOut_Enable;
        public float BackgroundZoomOut_Scale;
        public int BackgroundZoomOut_Size_X;
        public int BackgroundZoomOut_Size_Y;
        public float DRAW_OCCUPIED_SCALE;
        public int DefaultMapScale;
        public String DefaultScenario;
        public float DistanceKm;
        public int ExtraMapScale;
        public String Name;
        public int NumOfProvinces;
        public float SeaOverAlpha;
        public float[] WastelandColor;
        public String Wiki;
        public boolean WorldMap;
        public float ResearchCost = 1.0f;
        public float UnitsRecruitCost = 1.0f;
        public float UnitsMaintenanceCost = 1.0f;
        public float BuildingsCost = 1.0f;
        public float BuildingsMaintenanceCost = 1.0f;
        public float BuildingsConstructionTime = 1.0f;
        public float DRAW_CITIES_MIN_SCALE = 1.3f;
        public float DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE = 0.6f;
        public float DRAW_INNER_BORDERS = 0.6f;
        public float DRAW_OCCUPIED_PROVINCES_MIN_SCALE = 0.15f;
        public float DRAW_ARMY_MIN_SCALE = 0.5f;
    }

    public Map_Data(String str) {
        this.mapData = new MapData();
        this.Folder = str;
        this.mapData = (MapData) new Json().fromJson(MapData.class, FileManager.loadFile("map/" + str + "/" + (Game.highTextueSettings() ? CFG.FILE_CONFIG : CFG.FILE_CONFIG_LOW)));
        for (int i = 0; i < 3; i++) {
            try {
                this.mapData.BackgroundColor[i] = this.mapData.BackgroundColor[i] / 255.0f;
                this.mapData.BackgroundColor_ZoomIn[i] = this.mapData.BackgroundColor_ZoomIn[i] / 255.0f;
                this.mapData.BackgroundColor_ZoomOut[i] = this.mapData.BackgroundColor_ZoomOut[i] / 255.0f;
                this.mapData.WastelandColor[i] = this.mapData.WastelandColor[i] / 255.0f;
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        this.Icon = new Image(ImageManager.loadTexture("map/" + str + "/icon.png"));
    }
}
