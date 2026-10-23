package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MapOver {
    public List<Overlay> lOver;
    public int iOverSize = 0;
    public List<Image> overTile = new ArrayList();
    public List<Image> overMask = new ArrayList();

    public static class Config {
        public String Age_of_History;
        public ArrayList Overlay;
    }

    public static class Overlay {
        public float Alpha;
        public float AlphaScale;
        public float AlphaScaleZoomOut;
        public float ExtraColor;
        public String Mask;
        public float Scale;
        public String Tile;
        public float u_maskScale;
        public float u_maskScaleY;
    }

    public void drawMapOverlay(SpriteBatch spriteBatch, int i, int i2, float f) {
        try {
            spriteBatch.setShader(Renderer.shaderAlpha_Map);
            for (int i3 = 0; i3 < this.iOverSize; i3++) {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (this.lOver.get(i3).Alpha + (Game.mapScale.getCurrentScale() < 1.0f ? this.lOver.get(i3).AlphaScaleZoomOut * Game.mapScale.getCurrentScale() : this.lOver.get(i3).AlphaScaleZoomOut) + (Game.mapScale.getCurrentScale() * this.lOver.get(i3).AlphaScale)) * f));
                Renderer.shaderAlpha_Map.setUniformf("u_maskScale", this.lOver.get(i3).u_maskScale);
                Renderer.shaderAlpha_Map.setUniformf("u_maskScaleY", this.lOver.get(i3).u_maskScaleY);
                Renderer.shaderAlpha_Map.setUniformf("u_extraColor", this.lOver.get(i3).ExtraColor);
                this.overMask.get(i3).getTexture().bind(1);
                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                this.overTile.get(i3).draw(spriteBatch, i, i2, MapBG.iWidthOfMap, MapBG.iHeightOfMap);
                spriteBatch.flush();
            }
            if (Game.mapBG.secondSideOfMap) {
                for (int i4 = 0; i4 < this.iOverSize; i4++) {
                    spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (this.lOver.get(i4).Alpha + (Game.mapScale.getCurrentScale() < 1.0f ? this.lOver.get(i4).AlphaScaleZoomOut * Game.mapScale.getCurrentScale() : this.lOver.get(i4).AlphaScaleZoomOut) + (Game.mapScale.getCurrentScale() * this.lOver.get(i4).AlphaScale)) * f));
                    Renderer.shaderAlpha_Map.setUniformf("u_maskScale", this.lOver.get(i4).u_maskScale);
                    Renderer.shaderAlpha_Map.setUniformf("u_maskScaleY", this.lOver.get(i4).u_maskScaleY);
                    Renderer.shaderAlpha_Map.setUniformf("u_extraColor", this.lOver.get(i4).ExtraColor);
                    this.overMask.get(i4).getTexture().bind(1);
                    Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                    this.overTile.get(i4).draw(spriteBatch, i + Game.mapBG.getWidth(), i2, MapBG.iWidthOfMap, MapBG.iHeightOfMap);
                    spriteBatch.flush();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        spriteBatch.setShader(Renderer.shaderDefault);
        spriteBatch.setColor(Color.WHITE);
    }

    public void drawMapOverlaySea(SpriteBatch spriteBatch, int i, int i2, float f) {
        try {
            spriteBatch.setShader(Renderer.shaderAlpha_MapSea);
            for (int i3 = 0; i3 < this.iOverSize; i3++) {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (this.lOver.get(i3).Alpha + (Game.mapScale.getCurrentScale() < 1.0f ? this.lOver.get(i3).AlphaScaleZoomOut * Game.mapScale.getCurrentScale() : this.lOver.get(i3).AlphaScaleZoomOut) + (Game.mapScale.getCurrentScale() * this.lOver.get(i3).AlphaScale)) * f));
                Renderer.shaderAlpha_MapSea.setUniformf("u_maskScale", this.lOver.get(i3).u_maskScale);
                Renderer.shaderAlpha_MapSea.setUniformf("u_maskScaleY", this.lOver.get(i3).u_maskScaleY);
                Renderer.shaderAlpha_MapSea.setUniformf("u_extraColor", this.lOver.get(i3).ExtraColor);
                this.overMask.get(i3).getTexture().bind(1);
                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                this.overTile.get(i3).draw(spriteBatch, i, i2, MapBG.iWidthOfMap, MapBG.iHeightOfMap);
                spriteBatch.flush();
            }
            if (Game.mapBG.secondSideOfMap) {
                for (int i4 = 0; i4 < this.iOverSize; i4++) {
                    spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (this.lOver.get(i4).Alpha + (Game.mapScale.getCurrentScale() < 1.0f ? this.lOver.get(i4).AlphaScaleZoomOut * Game.mapScale.getCurrentScale() : this.lOver.get(i4).AlphaScaleZoomOut) + (Game.mapScale.getCurrentScale() * this.lOver.get(i4).AlphaScale)) * f));
                    Renderer.shaderAlpha_MapSea.setUniformf("u_maskScale", this.lOver.get(i4).u_maskScale);
                    Renderer.shaderAlpha_MapSea.setUniformf("u_maskScaleY", this.lOver.get(i4).u_maskScaleY);
                    Renderer.shaderAlpha_MapSea.setUniformf("u_extraColor", this.lOver.get(i4).ExtraColor);
                    this.overMask.get(i4).getTexture().bind(1);
                    Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                    this.overTile.get(i4).draw(spriteBatch, i + Game.mapBG.getWidth(), i2, MapBG.iWidthOfMap, MapBG.iHeightOfMap);
                    spriteBatch.flush();
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        spriteBatch.setShader(Renderer.shaderDefault);
        spriteBatch.setColor(Color.WHITE);
    }

    public final void loadOverlay(String str) {
        new Config();
        Json json = new Json();
        json.setElementType(Config.class, "Overlay", Overlay.class);
        Config config = (Config) json.fromJson(Config.class, FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_OVERLAYS_PATH + str).reader("UTF8"));
        this.lOver = new ArrayList();
        Iterator it = config.Overlay.iterator();
        while (it.hasNext()) {
            this.lOver.add((Overlay) it.next());
        }
        this.iOverSize = this.lOver.size();
    }

    public final boolean loadOverlayImages() {
        int i = MapBG.loadMapBG_FileID;
        MapBG.loadMapBG_FileID = i + 1;
        if (i >= this.iOverSize) {
            return false;
        }
        this.overTile.add(new Image(ImageManager.loadTexture_RGB888("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_OVERLAYS_PATH + this.lOver.get(i).Tile), Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat));
        return true;
    }

    public final boolean loadOverlayImages_2() {
        int i = MapBG.loadMapBG_FileID;
        MapBG.loadMapBG_FileID = i + 1;
        if (i >= this.iOverSize) {
            return false;
        }
        this.overMask.add(new Image(ImageManager.loadTexture("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_OVERLAYS_PATH + (Game.highTextureSettings ? CFG.FILE_MAP_OVERLAYS_HIGH_PATH : CFG.FILE_MAP_OVERLAYS_LOW_PATH) + this.lOver.get(i).Mask), Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat));
        this.lOver.get(i).u_maskScale = this.overMask.get(i).getWidth() / (this.overTile.get(i).getWidth() * this.lOver.get(i).Scale);
        this.lOver.get(i).u_maskScaleY = this.overMask.get(i).getHeight() / (this.overTile.get(i).getHeight() * this.lOver.get(i).Scale);
        return true;
    }
}
