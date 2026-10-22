package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Map {
    public static DrawProvincesFlags drawProvincesFlags = new AnonymousClass1();
    public int iActiveMapID = 0;
    public List<Map_Data> lMaps;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.Map$1, reason: invalid class name */
    class AnonymousClass1 implements DrawProvincesFlags {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.Map.DrawProvincesFlags
        public void drawCity_CivFlag(SpriteBatch spriteBatch, int i, float f, float f2, int i2, int i3) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.Map$2, reason: invalid class name */
    class AnonymousClass2 implements DrawProvincesFlags {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.Map.DrawProvincesFlags
        public void drawCity_CivFlag(SpriteBatch spriteBatch, int i, float f, float f2, int i2, int i3) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.Map$3, reason: invalid class name */
    class AnonymousClass3 implements DrawProvincesFlags {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.Map.DrawProvincesFlags
        public void drawCity_CivFlag(SpriteBatch spriteBatch, int i, float f, float f2, int i2, int i3) {
            Map.drawCityName_Capital_CivFlag_Low(spriteBatch, i, f, f2, i2, i3);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.Map$4, reason: invalid class name */
    class AnonymousClass4 implements DrawProvincesFlags {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.Map.DrawProvincesFlags
        public void drawCity_CivFlag(SpriteBatch spriteBatch, int i, float f, float f2, int i2, int i3) {
            Map.drawCityName_Capital_CivFlag(spriteBatch, i, f, f2, i2, i3);
        }
    }

    public static class Config {
        private String Age_of_History;
        private ArrayList Map;
    }

    public interface DrawProvincesFlags {
        void drawCity_CivFlag(SpriteBatch spriteBatch, int i, float f, float f2, int i2, int i3);
    }

    public static class Maps {
        private String Folder;
    }

    public Map() {
        int i = 0;
        new Config();
        Json json = new Json();
        json.setElementType(Config.class, "Map", Maps.class);
        Config config = (Config) json.fromJson(Config.class, FileManager.loadFile("map/Maps.json").reader("UTF8"));
        this.lMaps = new ArrayList();
        for (Maps maps : config.Map) {
            if (FileManager.loadFile("map/" + maps.Folder + "/Config.json").exists()) {
                this.lMaps.add(new Map_Data(maps.Folder));
            }
        }
        if (CFG.isDesktop()) {
            int i2 = 0;
            while (i2 < SteamManager.modsFoldersSize) {
                FileHandle[] list = FileManager.IS_MAC ? Gdx.files.external(SteamManager.modsFolders.get(i2) + "map/").list() : Gdx.files.internal(SteamManager.modsFolders.get(i2) + "map/").list();
                int length = list.length;
                int i3 = i;
                while (i3 < length) {
                    FileHandle fileHandle = list[i3];
                    int i4 = (fileHandle.name().indexOf("jar") >= 0 || fileHandle.name().indexOf("txt") >= 0 || fileHandle.name().indexOf("json") >= 0) ? i : 1;
                    if (i4 != 0) {
                        for (int i5 = i; i5 < this.lMaps.size(); i5++) {
                            if (this.lMaps.get(i5).Folder.equals(fileHandle.name())) {
                                i4 = 0;
                                break;
                            }
                        }
                    }
                    if (i4 != 0 && FileManager.loadFile("map/" + fileHandle.name() + "/Config.json").exists()) {
                        this.lMaps.add(new Map_Data(fileHandle.name()));
                    }
                    i3++;
                    i = 0;
                }
                i2++;
                i = 0;
            }
            for (int i6 = 0; i6 < SteamManager.itemsInstalledSize; i6++) {
                for (FileHandle fileHandle2 : Gdx.files.absolute(SteamManager.itemsInstalled.get(i6).getFolder() + "/map/").list()) {
                    boolean z = fileHandle2.name().indexOf("jar") < 0 && fileHandle2.name().indexOf("txt") < 0 && fileHandle2.name().indexOf("json") < 0;
                    if (z) {
                        for (int i7 = 0; i7 < this.lMaps.size(); i7++) {
                            if (this.lMaps.get(i7).Folder.equals(fileHandle2.name())) {
                                z = false;
                                break;
                            }
                        }
                    }
                    if (z && FileManager.loadFile("map/" + fileHandle2.name() + "/Config.json").exists()) {
                        this.lMaps.add(new Map_Data(fileHandle2.name()));
                    }
                }
            }
        }
        setActiveMapID(this.iActiveMapID);
    }

    public static final void drawCityName_Capital_CivFlag(SpriteBatch spriteBatch, int i, float f, float f2, int i2, int i3) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f2 * 0.9f));
        spriteBatch.setShader(Renderer.shaderAlpha);
        Game.getCiv(Game.getProvince(i).getCivID()).getFlag().getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        if (Game.getCiv(Game.getProvince(i).getCivID()).iCivRankID == 4) {
            int width = i2 - (ImageManager.getImage(Images.flagCapitalOver_l).getWidth() / 2);
            ImageManager.getImage(Images.flagCapitalMask_l).draw(spriteBatch, width, i3);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.flagCapitalOver_l).draw(spriteBatch, width, i3);
            return;
        }
        if (Game.getCiv(Game.getProvince(i).getCivID()).iCivRankID > 1) {
            int width2 = i2 - (ImageManager.getImage(Images.flagCapitalOver).getWidth() / 2);
            ImageManager.getImage(Images.flagCapitalMask).draw(spriteBatch, width2, i3);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.flagCapitalOver).draw(spriteBatch, width2, i3);
            return;
        }
        int width3 = i2 - (ImageManager.getImage(Images.flagCapitalOver_s).getWidth() / 2);
        ImageManager.getImage(Images.flagCapitalMask_s).draw(spriteBatch, width3, i3);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagCapitalOver_s).draw(spriteBatch, width3, i3);
    }

    public static final void drawCityName_Capital_CivFlag_Low(SpriteBatch spriteBatch, int i, float f, float f2, int i2, int i3) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f2 * 0.9f));
        if (Game.getCiv(Game.getProvince(i).getCivID()).iCivRankID == 4) {
            int width = i2 - (ImageManager.getImage(Images.flagCapitalOver_l_Low).getWidth() / 2);
            Game.getCiv(Game.getProvince(i).getCivID()).getFlag().draw(spriteBatch, width, i3, ImageManager.getImage(Images.flagCapitalOver_l_Low).getWidth(), ImageManager.getImage(Images.flagCapitalOver_l_Low).getHeight());
            ImageManager.getImage(Images.flagCapitalOver_l_Low).draw(spriteBatch, width, i3);
        } else if (Game.getCiv(Game.getProvince(i).getCivID()).iCivRankID > 1) {
            int width2 = i2 - (ImageManager.getImage(Images.flagCapitalOver_Low).getWidth() / 2);
            Game.getCiv(Game.getProvince(i).getCivID()).getFlag().draw(spriteBatch, width2, i3, ImageManager.getImage(Images.flagCapitalOver_Low).getWidth(), ImageManager.getImage(Images.flagCapitalOver_Low).getHeight());
            ImageManager.getImage(Images.flagCapitalOver_Low).draw(spriteBatch, width2, i3);
        } else {
            int width3 = i2 - (ImageManager.getImage(Images.flagCapitalOver_s_Low).getWidth() / 2);
            Game.getCiv(Game.getProvince(i).getCivID()).getFlag().draw(spriteBatch, width3, i3, ImageManager.getImage(Images.flagCapitalOver_s_Low).getWidth(), ImageManager.getImage(Images.flagCapitalOver_s_Low).getHeight());
            ImageManager.getImage(Images.flagCapitalOver_s_Low).draw(spriteBatch, width3, i3);
        }
    }

    public static void updateDrawProvincesFlags() {
        if (Game.settingsManager.SETTINGS_PROVINCE_FLAGS == 0) {
            drawProvincesFlags = new AnonymousClass2();
        } else if (Game.settingsManager.SETTINGS_PROVINCE_FLAGS == 1) {
            drawProvincesFlags = new AnonymousClass3();
        } else {
            drawProvincesFlags = new AnonymousClass4();
        }
    }

    public void dispose() {
    }

    public final void drawMap(SpriteBatch spriteBatch) {
        if (Game.mapBG.requestToDisposeMinimap) {
            Game.mapBG.disposeMinimapOfCivilizations_Real();
        }
        Game.mapBG.drawMinimapTexture_Generate(spriteBatch);
        Game.mapBG.drawMap(spriteBatch, Game.mapCoords.getPosX(), Game.mapCoords.getPosY());
    }

    public final void drawMapBorder(SpriteBatch spriteBatch) {
        Game.mapBG.drawMapBorder(spriteBatch, Game.mapCoords.getPosX(), Game.mapCoords.getPosY());
    }

    public final int getActiveMapID() {
        return this.iActiveMapID;
    }

    public final Map_Data getActiveMap_MapData() {
        return this.lMaps.get(getActiveMapID());
    }

    public final String getFile_ActiveMap_Path() {
        return this.lMaps.get(this.iActiveMapID).Folder + "/";
    }

    public final String getFile_Map_Path(int i) {
        return this.lMaps.get(i).Folder + "/";
    }

    public final boolean getMapWorldMap(int i) {
        return this.lMaps.get(i).mapData.WorldMap;
    }

    public final boolean isWorldMap(int i) {
        return this.lMaps.get(i).mapData.WorldMap;
    }

    public final void setActiveMapID(int i) {
        if (this.iActiveMapID != i) {
            this.iActiveMapID = i;
            updateWorldMap();
        }
        Game.DRAW_CITIES_MIN_SCALE = this.lMaps.get(this.iActiveMapID).mapData.DRAW_CITIES_MIN_SCALE;
        Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE = this.lMaps.get(this.iActiveMapID).mapData.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE;
        Game.DRAW_INNER_BORDERS = this.lMaps.get(this.iActiveMapID).mapData.DRAW_INNER_BORDERS;
        Game.DRAW_OCCUPIED_PROVINCES_MIN_SCALE = this.lMaps.get(this.iActiveMapID).mapData.DRAW_OCCUPIED_PROVINCES_MIN_SCALE;
        Game.DRAW_ARMY_MIN_SCALE = this.lMaps.get(this.iActiveMapID).mapData.DRAW_ARMY_MIN_SCALE;
        Game.DRAW_OCCUPIED_SCALE = this.lMaps.get(this.iActiveMapID).mapData.DRAW_OCCUPIED_SCALE;
        TechnologyTree.MapResearchCost = this.lMaps.get(this.iActiveMapID).mapData.ResearchCost;
    }

    public final void update() {
        Game.mapScale.update();
        Game.mapScroll.update();
        Game.mapEdgeMove.updateMoveMap();
        Game.mapCoords.updateMapPosition();
        Game.updateInView_CordsXY();
    }

    public final void updateWorldMap() {
        Game.mapBG.updateWorldMap();
        Game.mapCoords.updateWorldMap();
    }
}
