package aoc.kingdoms.lukasz.map.terrain;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.LoadManager;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TerrainManager {
    public static int terrainSmallHeight;
    public static int terrainSmallWidth;
    public List<Terrain> terrains = new ArrayList();
    public List<List<Image>> terrainImages = new ArrayList();

    private final void loadTerrainImages() {
        int size = this.terrains.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.terrains.get(i).ImageFile.length; i2++) {
                try {
                    if (FileManager.loadFile("game/terrain/terrainImages/" + CFG.getRescouresPath_Short() + this.terrains.get(i).ImageFile[i2]).exists()) {
                        arrayList.add(new Image(ImageManager.loadTexture_RGB888("game/terrain/terrainImages/" + CFG.getRescouresPath_Short() + this.terrains.get(i).ImageFile[i2])));
                    } else {
                        arrayList.add(new Image(ImageManager.loadTexture_RGB888("game/terrain/terrainImages/" + CFG.getRescouresPath_Short_H() + this.terrains.get(i).ImageFile[i2])));
                    }
                } catch (GdxRuntimeException unused) {
                    arrayList.add(new Image(ImageManager.loadTexture_RGB888("game/terrain/terrainImages/" + CFG.getRescouresPath_Short() + "notFound.png")));
                }
            }
            this.terrainImages.add(arrayList);
        }
        float height = ImageManager.getImage(Images.terrainSmall).getHeight() / this.terrainImages.get(0).get(0).getHeight();
        terrainSmallWidth = (int) (this.terrainImages.get(0).get(0).getWidth() * height);
        terrainSmallHeight = (int) (this.terrainImages.get(0).get(0).getHeight() * height);
    }

    public int getBattleTerrain(int i) {
        int i2 = this.terrains.get(i).BattleOver;
        if (i2 == 0) {
            return Images.battleOver;
        }
        if (i2 != 1) {
            return i2 != 3 ? Images.battleOver2 : Images.battleOver3;
        }
        return Images.battleOver1;
    }

    public final void loadTerrains() {
        try {
            String string = FileManager.loadFile("game/terrain/TerrainTypes.json").readString();
            Json json = new Json();
            json.setElementType(LoadManager.ConfigJson.class, "Data", Terrain.class);
            Iterator it = ((LoadManager.ConfigJson) json.fromJson(LoadManager.ConfigJson.class, string)).Data.iterator();
            while (it.hasNext()) {
                this.terrains.add((Terrain) it.next());
                try {
                    List<Terrain> list = this.terrains;
                    Terrain terrain = list.get(list.size() - 1);
                    LanguageManager languageManager = Game.lang;
                    List<Terrain> list2 = this.terrains;
                    terrain.Name = languageManager.get(list2.get(list2.size() - 1).Name);
                } catch (Exception unused) {
                }
            }
            int size = this.terrains.size();
            for (int i = 0; i < size; i++) {
                this.terrains.get(i).Color[0] = this.terrains.get(i).Color[0] / 255.0f;
                this.terrains.get(i).Color[1] = this.terrains.get(i).Color[1] / 255.0f;
                this.terrains.get(i).Color[2] = this.terrains.get(i).Color[2] / 255.0f;
            }
            loadTerrainImages();
        } catch (GdxRuntimeException e) {
            CFG.LOG(e);
        }
    }
}
