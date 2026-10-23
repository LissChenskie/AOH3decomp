package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMap_PrintMap;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.Json;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MapBG {
    public static int iHeightOfMap = 1;
    public static int iWidthOfMap = 1;
    public static int loadMapBG_FileID;
    public static MapBGSea mapBGSea = new AnonymousClass8();
    public float fMinimapScaleX;
    public float fMinimapScaleY;
    public float fPreviewScaleX;
    public float fPreviewScaleY;
    public int iMinimapHeight;
    public int iMinimapWidth;
    public int iPreviewHeight;
    public int iPreviewWidth;
    private MapShader mapShader;
    private List<Image> gameMap = new ArrayList();
    public int gameMapSize = 0;
    public int iMapScale = 1;
    public float iMapScaleBG = 1.0f;
    public float iMapExtraScale = 1.0f;
    private int iBackgroundSize_X = 1;
    private int iBackgroundSize_Y = 1;
    private int iWidthOfMap_Real = 1;
    private int iHeightOfMap_Real = 1;
    private int iWidthOfSingleBG = 1;
    private int iHeightOfSingleBG = 1;
    private int iWidthOfSingleBG_xMapScale = 1;
    private int iHeightOfSingleBG_xMapScale = 1;
    private List<Image> gameMap2 = new ArrayList();
    public int gameMap2Size = 0;
    private int iBackground2Size_X = 1;
    private int iBackground2Size_Y = 1;
    private int iWidthOfSingleBG2 = 1;
    private int iHeightOfSingleBG2 = 1;
    private int iWidthOfSingleBGTech = 1;
    private int iHeightOfSingleBGTech = 1;
    private int iWidthOfMapTech = 1;
    public int iHeightOfMapTech = 1;
    public boolean secondSideOfMap = true;
    public Image minimapOfCivilizations = null;
    public Image minimapBG = null;
    public Image minimapOver = null;
    public boolean requestToDisposeMinimap = false;
    public Image scenarioBG = null;
    public Image scenarioMask = null;
    public Image scenarioOver = null;
    public Image previewOfCivilizations = null;
    private List<OutsideMapImage> outsideMapImagesData = new ArrayList();
    private List<Image> outsideMapImages = new ArrayList();
    private int outsideMapImagesSize = 0;
    private List<OutsideMapImage> outsideMapImagesData_Below = new ArrayList();
    private List<Image> outsideMapImages_Below = new ArrayList();
    private int outsideMapImagesSize_Below = 0;
    public MapBorder mapBorder = new MapBorder();
    private WorldMap worldMap = null;
    public boolean drawMapAnimation = true;
    private int iBGID = 0;
    private long animationTime = 0;
    private boolean inAnimation = false;
    public boolean isOutsideInView = false;
    public boolean isOutsideInView_Bot = false;
    public float outsideScale = 1.0f;
    public float outsideScale2 = 1.0f;
    public final int ALPHA_MINIMAPS = 220;
    public final float EXTRA_XY = 0.125f;
    public int iMinimapScaled_PosX = 0;
    public int iMinimapScaled_PosY = 0;
    public int iMinimapScaled_Width = 1;
    public int iMinimapScaled_Height = 1;
    public float fMinimapScaled_Scale = 1.0f;
    public boolean minimapBelowZero = false;
    public int iPreviewScaled_PosX = 0;
    public int iPreviewScaled_PosY = 0;
    public int iPreviewScaled_Width = 1;
    public int iPreviewScaled_Height = 1;
    public float fPreviewScaled_Scale = 1.0f;
    public boolean PreviewBelowZero = false;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapBG$1, reason: invalid class name */
    class AnonymousClass1 implements MapShader {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.MapShader
        public void drawMap(SpriteBatch spriteBatch) {
            Renderer.setBlackWhite(spriteBatch);
            MapBG.this.drawMapAnimation = false;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.MapShader
        public void drawMapEnd(SpriteBatch spriteBatch) {
            Renderer.setShaderDefault(spriteBatch);
            MapBG.this.drawMapAnimation = false;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapBG$10, reason: invalid class name */
    class AnonymousClass10 implements MapBGSea {
        AnonymousClass10() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.MapBGSea
        public void drawMapSea(SpriteBatch spriteBatch, int i, int i2, float f) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapBG$2, reason: invalid class name */
    class AnonymousClass2 implements MapShader {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.MapShader
        public void drawMap(SpriteBatch spriteBatch) {
            MapBG.this.drawMapAnimation = true;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.MapShader
        public void drawMapEnd(SpriteBatch spriteBatch) {
            MapBG.this.drawMapAnimation = true;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapBG$3, reason: invalid class name */
    class AnonymousClass3 implements MapShader {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.MapShader
        public void drawMap(SpriteBatch spriteBatch) {
            MapBG.this.drawMapAnimation = true;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.MapShader
        public void drawMapEnd(SpriteBatch spriteBatch) {
            MapBG.this.drawMapAnimation = true;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapBG$4, reason: invalid class name */
    class AnonymousClass4 implements WorldMap {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.WorldMap
        public void drawMap(SpriteBatch spriteBatch, int i, int i2) {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.WorldMap
        public void drawMapBorder(SpriteBatch spriteBatch, int i, int i2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapBG$5, reason: invalid class name */
    class AnonymousClass5 implements WorldMap {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.WorldMap
        public void drawMap(SpriteBatch spriteBatch, int i, int i2) {
            try {
                if (!MapBG.this.drawMapAnimation) {
                    MapBG.this.drawMapBG_Sea(spriteBatch, i, i2, 1.0f);
                    MapBG.this.drawMapBG(spriteBatch, i, i2, 1.0f);
                    return;
                }
                if (Game.mapScale.getCurrentScale() <= Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_Scale) {
                    if (MapBG.this.iBGID == 0) {
                        MapBG.this.iBGID = 1;
                        MapBG.this.updateBGAnimationTime();
                    }
                    if (!MapBG.this.inAnimation) {
                        MapBG.this.drawMapBG2(spriteBatch, i, i2);
                        return;
                    }
                    if (CFG.currentTimeMillis >= MapBG.this.animationTime + ((long) Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_AnimationDuration)) {
                        MapBG.this.inAnimation = false;
                        MapBG.this.drawMapBG2(spriteBatch, i, i2);
                        return;
                    } else {
                        MapBG.this.drawMapBG2(spriteBatch, i, i2);
                        MapBG.this.drawMapBG(spriteBatch, i, i2, 1.0f - (((CFG.currentTimeMillis - MapBG.this.animationTime) * 1.0f) / Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_AnimationDuration));
                        spriteBatch.setColor(Color.WHITE);
                        return;
                    }
                }
                if (MapBG.this.iBGID == 1) {
                    MapBG.this.iBGID = 0;
                    MapBG.this.updateBGAnimationTime();
                }
                if (!MapBG.this.inAnimation) {
                    MapBG.this.drawMapBG_Sea(spriteBatch, i, i2, 1.0f);
                    MapBG.this.drawMapBG(spriteBatch, i, i2, 1.0f);
                } else if (CFG.currentTimeMillis >= MapBG.this.animationTime + ((long) Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_AnimationDuration)) {
                    MapBG.this.drawMapBG_Sea(spriteBatch, i, i2, 1.0f);
                    MapBG.this.inAnimation = false;
                    MapBG.this.drawMapBG(spriteBatch, i, i2, 1.0f);
                } else {
                    MapBG.this.drawMapBG_Sea(spriteBatch, i, i2, ((CFG.currentTimeMillis - MapBG.this.animationTime) * 1.0f) / Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_AnimationDuration);
                    MapBG.this.drawMapBG(spriteBatch, i, i2, 1.0f);
                    spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 1.0f - (((CFG.currentTimeMillis - MapBG.this.animationTime) * 1.0f) / Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_AnimationDuration)));
                    MapBG.this.drawMapBG2(spriteBatch, i, i2);
                    spriteBatch.setColor(Color.WHITE);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.WorldMap
        public void drawMapBorder(SpriteBatch spriteBatch, int i, int i2) {
            MapBG.this.drawOutsideTheMap_Over(spriteBatch, i, i2);
            MapBG.this.drawOutsideTheMap_Below(spriteBatch, i, i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapBG$6, reason: invalid class name */
    class AnonymousClass6 implements WorldMap {
        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.WorldMap
        public void drawMap(SpriteBatch spriteBatch, int i, int i2) {
            try {
                MapBG.this.drawMapBG_Sea(spriteBatch, i, i2, 1.0f);
                MapBG.this.drawMapBG(spriteBatch, i, i2, 1.0f);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.WorldMap
        public void drawMapBorder(SpriteBatch spriteBatch, int i, int i2) {
            MapBG.this.drawOutsideTheMap_Over(spriteBatch, i, i2);
            MapBG.this.drawOutsideTheMap_Below(spriteBatch, i, i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapBG$7, reason: invalid class name */
    class AnonymousClass7 implements WorldMap {
        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.WorldMap
        public void drawMap(SpriteBatch spriteBatch, int i, int i2) {
            try {
                int i3 = MapBG.this.gameMapSize - 1;
                int i4 = MapBG.iHeightOfMap - (MapBG.this.iHeightOfSingleBG * MapBG.this.iMapScale);
                for (int i5 = MapBG.this.iBackgroundSize_Y - 1; i5 >= 0; i5--) {
                    int width = MapBG.iWidthOfMap;
                    for (int i6 = MapBG.this.iBackgroundSize_X - 1; i6 >= 0; i6--) {
                        ((Image) MapBG.this.gameMap.get(i3)).draw(spriteBatch, (i + width) - (((Image) MapBG.this.gameMap.get(i3)).getWidth() * MapBG.this.iMapScale), i2 + i4, MapBG.this.iMapScaleBG);
                        width -= ((Image) MapBG.this.gameMap.get(i3)).getWidth() * MapBG.this.iMapScale;
                        i3--;
                    }
                    i4 -= MapBG.this.iHeightOfSingleBG * MapBG.this.iMapScale;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.WorldMap
        public void drawMapBorder(SpriteBatch spriteBatch, int i, int i2) {
            int i3 = -i2;
            if (((int) Math.ceil(CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale())) + i3 > MapBG.this.getHeight()) {
                ImageManager.getImage(Images.map_border).draw2(spriteBatch, (MapBG.this.mapBorder.ShadowY + i) - ImageManager.getImage(Images.map_border).getHeight(), -ImageManager.getImage(Images.map_border).getHeight(), MapBG.this.getHeight() + i2, ImageManager.getImage(Images.map_border).getHeight(), i3, 0, 270.0f, false, true);
                ImageManager.getImage(Images.map_border).draw2(spriteBatch, MapBG.this.getWidth() + (i - MapBG.this.mapBorder.ShadowY), -ImageManager.getImage(Images.map_border).getHeight(), MapBG.this.getHeight() + i2, ImageManager.getImage(Images.map_border).getHeight(), i3, 0, 270.0f, false, false);
            } else {
                ImageManager.getImage(Images.map_border).draw2(spriteBatch, (MapBG.this.mapBorder.ShadowY + i) - ImageManager.getImage(Images.map_border).getHeight(), -ImageManager.getImage(Images.map_border).getHeight(), (int) Math.ceil(CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale()), ImageManager.getImage(Images.map_border).getHeight(), i3, 0, 270.0f, false, true);
                ImageManager.getImage(Images.map_border).draw2(spriteBatch, MapBG.this.getWidth() + (i - MapBG.this.mapBorder.ShadowY), -ImageManager.getImage(Images.map_border).getHeight(), (int) Math.ceil(CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale()), ImageManager.getImage(Images.map_border).getHeight(), i3, 0, 270.0f, false, false);
            }
            MapBG.this.drawOutsideTheMap_Over(spriteBatch, i, i2);
            MapBG.this.drawOutsideTheMap_Below(spriteBatch, i, i2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapBG$8, reason: invalid class name */
    class AnonymousClass8 implements MapBGSea {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.MapBGSea
        public void drawMapSea(SpriteBatch spriteBatch, int i, int i2, float f) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapBG$9, reason: invalid class name */
    class AnonymousClass9 implements MapBGSea {
        AnonymousClass9() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapBG.MapBGSea
        public void drawMapSea(SpriteBatch spriteBatch, int i, int i2, float f) {
            spriteBatch.setColor(new Color(Renderer.BACKGROUND_COLOR.r, Renderer.BACKGROUND_COLOR.g, Renderer.BACKGROUND_COLOR.b, Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.SeaOverAlpha * f * Math.min(1.0f, Game.mapScale.getCurrentScale())));
            Game.mapOverSea.drawMapOverlaySea(spriteBatch, i, i2, f);
            spriteBatch.setColor(Color.WHITE);
            Renderer.setShaderWater2(spriteBatch);
            ImageManager.getImage(Images.waves).draw2(spriteBatch, 0, 0, (int) (CFG.GAME_WIDTH / Game.mapScale.getCurrentScale()), (int) (CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale()), -i, -i2);
            Renderer.setShaderDefault(spriteBatch);
        }
    }

    public static class ConfigJson {
        String Age_of_History;
        ArrayList Data;
    }

    public interface MapBGSea {
        void drawMapSea(SpriteBatch spriteBatch, int i, int i2, float f);
    }

    public static class MapBorder {
        public int OutsideTheMapMaxY_Below;
        public int OutsideTheMapMaxY_Over;
        public int ShadowY;
    }

    protected interface MapShader {
        void drawMap(SpriteBatch spriteBatch);

        void drawMapEnd(SpriteBatch spriteBatch);
    }

    public static class OutsideMapImage {
        float fPosX_Percentage;
        float fPosY_Percentage;
        float fScale;
        String imageFileName;
    }

    private interface WorldMap {
        void drawMap(SpriteBatch spriteBatch, int i, int i2);

        void drawMapBorder(SpriteBatch spriteBatch, int i, int i2);
    }

    public MapBG() {
        updateActiveMapBGShader();
        updateWorldMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drawMapBG(SpriteBatch spriteBatch, int i, int i2, float f) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        this.mapShader.drawMap(spriteBatch);
        if (this.secondSideOfMap) {
            int i3 = this.gameMapSize - 1;
            int i4 = iHeightOfMap - this.iHeightOfSingleBG_xMapScale;
            for (int i5 = this.iBackgroundSize_Y - 1; i5 >= 0; i5--) {
                if (Game.inViewY(i4, this.iHeightOfSingleBG_xMapScale + i4)) {
                    int i6 = iWidthOfMap * 2;
                    for (int i7 = this.iBackgroundSize_X - 1; i7 >= 0; i7--) {
                        if (Game.inViewX(i6 - this.iWidthOfSingleBG_xMapScale, i6) || Game.inViewX2(i6 - this.iWidthOfSingleBG_xMapScale, i6)) {
                            this.gameMap.get(i3).draw(spriteBatch, (i + i6) - this.iWidthOfSingleBG_xMapScale, i2 + i4, this.iMapScaleBG);
                        }
                        i6 -= this.iWidthOfSingleBG_xMapScale;
                        i3--;
                    }
                } else {
                    i3 -= this.iBackgroundSize_X;
                }
                i4 -= this.iHeightOfSingleBG_xMapScale;
            }
        }
        int i8 = this.gameMapSize - 1;
        int i9 = iHeightOfMap - this.iHeightOfSingleBG_xMapScale;
        for (int i10 = this.iBackgroundSize_Y - 1; i10 >= 0; i10--) {
            if (Game.inViewY(i9, this.iHeightOfSingleBG_xMapScale + i9)) {
                int i11 = iWidthOfMap;
                for (int i12 = this.iBackgroundSize_X - 1; i12 >= 0; i12--) {
                    if (Game.inViewX(i11 - this.iWidthOfSingleBG_xMapScale, i11) || Game.inViewX2(i11 - this.iWidthOfSingleBG_xMapScale, i11)) {
                        this.gameMap.get(i8).draw(spriteBatch, (i + i11) - this.iWidthOfSingleBG_xMapScale, i2 + i9, this.iMapScaleBG);
                    }
                    i11 -= this.iWidthOfSingleBG_xMapScale;
                    i8--;
                }
            } else {
                i8 -= this.iBackgroundSize_X;
            }
            i9 -= this.iHeightOfSingleBG_xMapScale;
        }
        this.mapShader.drawMapEnd(spriteBatch);
        Game.mapOver.drawMapOverlay(spriteBatch, i, i2, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drawMapBG2(SpriteBatch spriteBatch, int i, int i2) {
        this.mapShader.drawMap(spriteBatch);
        if (this.secondSideOfMap) {
            int i3 = this.gameMap2Size - 1;
            int i4 = iHeightOfMap - this.iHeightOfSingleBG2;
            for (int i5 = this.iBackground2Size_Y - 1; i5 >= 0; i5--) {
                int i6 = iWidthOfMap * 2;
                for (int i7 = this.iBackground2Size_X - 1; i7 >= 0; i7--) {
                    Image image = this.gameMap2.get(i3);
                    int i8 = this.iWidthOfSingleBG2;
                    image.draw(spriteBatch, (i + i6) - i8, i2 + i4, i8, this.iHeightOfSingleBG2);
                    i6 -= this.iWidthOfSingleBG2;
                    i3--;
                }
                i4 -= this.iHeightOfSingleBG2;
            }
        }
        int i9 = this.gameMap2Size - 1;
        int i10 = iHeightOfMap - this.iHeightOfSingleBG2;
        for (int i11 = this.iBackground2Size_Y - 1; i11 >= 0; i11--) {
            int i12 = iWidthOfMap;
            for (int i13 = this.iBackground2Size_X - 1; i13 >= 0; i13--) {
                Image image2 = this.gameMap2.get(i9);
                int i14 = this.iWidthOfSingleBG2;
                image2.draw(spriteBatch, (i + i12) - i14, i2 + i10, i14, this.iHeightOfSingleBG2);
                i12 -= this.iWidthOfSingleBG2;
                i9--;
            }
            i10 -= this.iHeightOfSingleBG2;
        }
        this.mapShader.drawMapEnd(spriteBatch);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drawMapBG_Sea(SpriteBatch spriteBatch, int i, int i2, float f) {
        mapBGSea.drawMapSea(spriteBatch, i, i2, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drawOutsideTheMap_Below(SpriteBatch spriteBatch, int i, int i2) {
        if ((-Game.mapCoords.getPosY()) + (CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale()) < getHeight() - this.mapBorder.ShadowY) {
            this.isOutsideInView_Bot = false;
            return;
        }
        updateOutsideTheMap_Scale();
        this.isOutsideInView_Bot = true;
        ImageManager.getImage(Images.outsideMap).draw2_Scale(spriteBatch, i, ((getHeight() + i2) + ImageManager.getImage(Images.map_border).getHeight()) - this.mapBorder.ShadowY, getWidth() * 2, this.mapBorder.OutsideTheMapMaxY_Below, false, true, this.outsideScale);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, ((getHeight() + i2) + ImageManager.getImage(Images.map_border).getHeight()) - this.mapBorder.ShadowY, getWidth() * 2, this.mapBorder.OutsideTheMapMaxY_Below / 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, ((((getHeight() + i2) + ImageManager.getImage(Images.map_border).getHeight()) - this.mapBorder.ShadowY) + this.mapBorder.OutsideTheMapMaxY_Below) - (this.mapBorder.OutsideTheMapMaxY_Below / 8), getWidth() * 2, this.mapBorder.OutsideTheMapMaxY_Below / 8, false, true);
        spriteBatch.setColor(Color.WHITE);
        drawOutsideTheMap_BelowImages(spriteBatch, i, i2);
        if (Game.mapCoords.getSecondSideOfMap()) {
            drawOutsideTheMap_BelowImages(spriteBatch, getWidth() + i, i2);
        }
        ImageManager.getImage(Images.map_border).draw2(spriteBatch, 0, (i2 - this.mapBorder.ShadowY) + getHeight(), (int) Math.ceil(CFG.GAME_WIDTH / Game.mapScale.getCurrentScale()), ImageManager.getImage(Images.map_border).getHeight(), -i, 0, 0.0f, false, true);
    }

    private final void drawOutsideTheMap_BelowImages(SpriteBatch spriteBatch, int i, int i2) {
        for (int i3 = 0; i3 < this.outsideMapImagesSize_Below; i3++) {
            this.outsideMapImages_Below.get(i3).draw(spriteBatch, ((int) this.outsideMapImagesData_Below.get(i3).fPosX_Percentage) + i, (((getHeight() + i2) + ImageManager.getImage(Images.map_border).getHeight()) - this.mapBorder.ShadowY) + ((int) this.outsideMapImagesData_Below.get(i3).fPosY_Percentage), this.outsideMapImagesData_Below.get(i3).fScale);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drawOutsideTheMap_Over(SpriteBatch spriteBatch, int i, int i2) {
        if (Game.mapCoords.getPosY() < (-this.mapBorder.ShadowY)) {
            this.isOutsideInView = false;
            return;
        }
        updateOutsideTheMap_Scale();
        this.isOutsideInView = true;
        ImageManager.getImage(Images.outsideMap).draw2_Scale(spriteBatch, i, ((i2 - this.mapBorder.OutsideTheMapMaxY_Over) - ImageManager.getImage(Images.map_border).getHeight()) + this.mapBorder.ShadowY, getWidth() * 2, this.mapBorder.OutsideTheMapMaxY_Over, this.outsideScale);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, i2 - (this.mapBorder.OutsideTheMapMaxY_Over / 2), getWidth() * 2, this.mapBorder.OutsideTheMapMaxY_Over / 2, false, true);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, (i2 - this.mapBorder.OutsideTheMapMaxY_Over) - ImageManager.getImage(Images.map_border).getHeight(), getWidth() * 2, this.mapBorder.OutsideTheMapMaxY_Over / 8, false, false);
        spriteBatch.setColor(Color.WHITE);
        drawOutsideTheMap_OverImages(spriteBatch, i, i2);
        if (Game.mapCoords.getSecondSideOfMap()) {
            drawOutsideTheMap_OverImages(spriteBatch, getWidth() + i, i2);
        }
        ImageManager.getImage(Images.map_border).draw2(spriteBatch, 0, (i2 + this.mapBorder.ShadowY) - ImageManager.getImage(Images.map_border).getHeight(), (int) Math.ceil(CFG.GAME_WIDTH / Game.mapScale.getCurrentScale()), ImageManager.getImage(Images.map_border).getHeight(), -i, 0);
    }

    private final void drawOutsideTheMap_OverImages(SpriteBatch spriteBatch, int i, int i2) {
        for (int i3 = 0; i3 < this.outsideMapImagesSize; i3++) {
            this.outsideMapImages.get(i3).draw(spriteBatch, ((int) this.outsideMapImagesData.get(i3).fPosX_Percentage) + i, ((i2 - this.mapBorder.OutsideTheMapMaxY_Over) - ImageManager.getImage(Images.map_border).getHeight()) + this.mapBorder.ShadowY + ((int) this.outsideMapImagesData.get(i3).fPosY_Percentage), this.outsideMapImagesData.get(i3).fScale);
        }
    }

    private final int drawOutsideTheMap_Shadow() {
        return this.mapBorder.ShadowY * 3;
    }

    private final void loadOutsideMapImages() {
        try {
            String string = FileManager.loadFile("gfx/map/OutsideMapImages_Over.json").readString();
            Json json = new Json();
            json.setElementType(ConfigJson.class, "Data", OutsideMapImage.class);
            for (OutsideMapImage outsideMapImage : ((ConfigJson) json.fromJson(ConfigJson.class, string)).Data) {
                this.outsideMapImagesData.add(outsideMapImage);
                this.outsideMapImages.add(new Image(ImageManager.loadTexture("gfx/map/" + outsideMapImage.imageFileName)));
                int size = this.outsideMapImagesData.size() - 1;
                this.outsideMapImagesData.get(size).fPosX_Percentage = (getWidth() * this.outsideMapImagesData.get(size).fPosX_Percentage) - (((int) (this.outsideMapImages.get(size).getWidth() * this.outsideMapImagesData.get(size).fScale)) / 2);
                if (this.outsideMapImagesData.get(size).fPosX_Percentage > getWidth()) {
                    this.outsideMapImagesData.get(size).fPosX_Percentage = (getWidth() - this.outsideMapImages.get(size).getWidth()) - (CFG.PADDING * 4);
                }
                if (this.outsideMapImagesData.get(size).fPosY_Percentage >= 1.0f) {
                    this.outsideMapImagesData.get(size).fPosY_Percentage = this.mapBorder.OutsideTheMapMaxY_Over - ((int) (this.outsideMapImages.get(size).getHeight() * this.outsideMapImagesData.get(size).fScale));
                } else {
                    this.outsideMapImagesData.get(size).fPosY_Percentage = (this.mapBorder.OutsideTheMapMaxY_Over * this.outsideMapImagesData.get(size).fPosY_Percentage) - (((int) (this.outsideMapImages.get(size).getHeight() * this.outsideMapImagesData.get(size).fScale)) / 2);
                }
            }
            this.outsideMapImagesSize = this.outsideMapImages.size();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    private final void loadOutsideMapImages_Below() {
        try {
            String string = FileManager.loadFile("gfx/map/OutsideMapImages_Below.json").readString();
            Json json = new Json();
            json.setElementType(ConfigJson.class, "Data", OutsideMapImage.class);
            for (OutsideMapImage outsideMapImage : ((ConfigJson) json.fromJson(ConfigJson.class, string)).Data) {
                this.outsideMapImagesData_Below.add(outsideMapImage);
                this.outsideMapImages_Below.add(new Image(ImageManager.loadTexture("gfx/map/" + outsideMapImage.imageFileName)));
                int size = this.outsideMapImagesData_Below.size() - 1;
                this.outsideMapImagesData_Below.get(size).fPosX_Percentage = (getWidth() * this.outsideMapImagesData_Below.get(size).fPosX_Percentage) - (((int) (this.outsideMapImages_Below.get(size).getWidth() * this.outsideMapImagesData_Below.get(size).fScale)) / 2);
                if (this.outsideMapImagesData_Below.get(size).fPosX_Percentage > getWidth()) {
                    this.outsideMapImagesData_Below.get(size).fPosX_Percentage = (getWidth() - this.outsideMapImages_Below.get(size).getWidth()) - (CFG.PADDING * 4);
                }
                if (this.outsideMapImagesData_Below.get(size).fPosY_Percentage <= 0.01f) {
                    this.outsideMapImagesData_Below.get(size).fPosY_Percentage = 0.0f;
                }
                if (this.outsideMapImagesData_Below.get(size).fPosY_Percentage >= 1.0f) {
                    this.outsideMapImagesData_Below.get(size).fPosY_Percentage = this.mapBorder.OutsideTheMapMaxY_Below - ((int) (this.outsideMapImages_Below.get(size).getHeight() * this.outsideMapImagesData_Below.get(size).fScale));
                } else {
                    this.outsideMapImagesData_Below.get(size).fPosY_Percentage = (this.mapBorder.OutsideTheMapMaxY_Below * this.outsideMapImagesData_Below.get(size).fPosY_Percentage) - (((int) (this.outsideMapImages_Below.get(size).getHeight() * this.outsideMapImagesData_Below.get(size).fScale)) / 2);
                }
                if (this.outsideMapImagesData_Below.get(size).fPosY_Percentage + (this.outsideMapImages_Below.get(size).getHeight() * this.outsideMapImagesData_Below.get(size).fScale) > this.mapBorder.OutsideTheMapMaxY_Below) {
                    this.outsideMapImagesData_Below.get(size).fPosY_Percentage = this.mapBorder.OutsideTheMapMaxY_Below - (CFG.PADDING * 2);
                }
                if (this.outsideMapImagesData_Below.get(size).fPosY_Percentage < 0.0f) {
                    this.outsideMapImagesData_Below.get(size).fPosY_Percentage = 0.0f;
                }
            }
            this.outsideMapImagesSize_Below = this.outsideMapImages_Below.size();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateBGAnimationTime() {
        if (this.inAnimation) {
            this.animationTime = CFG.currentTimeMillis - (((long) Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_AnimationDuration) - (CFG.currentTimeMillis - this.animationTime));
        } else {
            this.animationTime = CFG.currentTimeMillis;
        }
        this.inAnimation = true;
    }

    public final void dispose() {
        for (int i = 0; i < this.gameMap.size(); i++) {
            this.gameMap.get(i).getTexture().dispose();
        }
        this.gameMap.clear();
        this.gameMapSize = 0;
        for (int i2 = 0; i2 < this.gameMap2.size(); i2++) {
            this.gameMap2.get(i2).getTexture().dispose();
        }
        this.gameMap2.clear();
        this.gameMap2Size = 0;
        iHeightOfMap = 0;
        iWidthOfMap = 0;
        Image image = this.minimapBG;
        if (image != null) {
            image.dispose();
            this.minimapBG = null;
        }
        Image image2 = this.minimapOver;
        if (image2 != null) {
            image2.dispose();
            this.minimapOver = null;
        }
        Image image3 = this.scenarioMask;
        if (image3 != null) {
            image3.dispose();
            this.scenarioMask = null;
        }
        Image image4 = this.scenarioBG;
        if (image4 != null) {
            image4.dispose();
            this.scenarioBG = null;
        }
        Image image5 = this.scenarioOver;
        if (image5 != null) {
            image5.dispose();
            this.scenarioOver = null;
        }
    }

    public final void disposeMinimapOfCivilizations() {
        try {
            if (this.minimapOfCivilizations != null) {
                this.requestToDisposeMinimap = true;
            }
        } catch (Exception unused) {
        }
    }

    public final void disposeMinimapOfCivilizations_Real() {
        try {
            Image image = this.minimapOfCivilizations;
            if (image != null) {
                image.getTexture().dispose();
                this.minimapOfCivilizations = null;
                this.requestToDisposeMinimap = false;
            }
        } catch (Exception unused) {
        }
    }

    protected final void drawMap(SpriteBatch spriteBatch, int i, int i2) {
        this.worldMap.drawMap(spriteBatch, i, i2);
    }

    protected final void drawMap(SpriteBatch spriteBatch, int i, int i2, float f) {
        float f2 = f * this.iMapScale;
        int i3 = this.gameMapSize - 1;
        int i4 = (int) (iHeightOfMap - (this.iHeightOfSingleBG * f2));
        for (int i5 = this.iBackgroundSize_Y - 1; i5 >= 0; i5--) {
            int width = iWidthOfMap;
            for (int i6 = this.iBackgroundSize_X - 1; i6 >= 0; i6--) {
                this.gameMap.get(i3).draw(spriteBatch, (i + width) - ((int) (this.gameMap.get(i3).getWidth() * f2)), i2 + i4, f2);
                width = (int) (width - (this.gameMap.get(i3).getWidth() * f2));
                i3--;
            }
            i4 = (int) (i4 - (this.iHeightOfSingleBG * f2));
        }
    }

    public final void drawMapBG2_TechTree(SpriteBatch spriteBatch, int i, int i2) {
        int i3 = this.gameMap2Size - 1;
        int i4 = this.iHeightOfMapTech - this.iHeightOfSingleBGTech;
        for (int i5 = this.iBackground2Size_Y - 1; i5 >= 0; i5--) {
            int i6 = this.iWidthOfMapTech;
            for (int i7 = this.iBackground2Size_X - 1; i7 >= 0; i7--) {
                Image image = this.gameMap2.get(i3);
                int i8 = this.iWidthOfSingleBGTech;
                image.draw(spriteBatch, (i + i6) - i8, i2 + i4, i8, this.iHeightOfSingleBGTech);
                i6 -= this.iWidthOfSingleBGTech;
                i3--;
            }
            i4 -= this.iHeightOfSingleBGTech;
        }
    }

    protected final void drawMapBorder(SpriteBatch spriteBatch, int i, int i2) {
        this.worldMap.drawMapBorder(spriteBatch, i, i2);
    }

    public final void drawMinimapTexture_Generate(SpriteBatch spriteBatch) {
        float width;
        int height;
        int i;
        int i2;
        float f;
        int i3;
        if (this.minimapOfCivilizations != null || Game.menuManager.getInInitGameMenu() || Game.menuManager.getInInitGame_Menus() || Game.menuManager.getInLoadScenario() || this.gameMap.size() <= 0) {
            return;
        }
        try {
            try {
                Renderer.clipView_End(spriteBatch);
                try {
                    spriteBatch.end();
                } catch (Exception unused) {
                    spriteBatch.begin();
                    spriteBatch.end();
                }
                this.minimapBelowZero = false;
                getWidth();
                getWidth();
                getHeight();
                int width2 = getWidth();
                int height2 = getHeight();
                int i4 = (int) ((width2 + 0) * 0.125f);
                int i5 = 0 - i4;
                int i6 = width2 + i4;
                int i7 = (int) ((height2 + 0) * 0.125f);
                int i8 = 0 - i7;
                int i9 = height2 + i7;
                if (i8 < 0) {
                    i8 = 0;
                }
                int width3 = i6 - i5;
                int i10 = i9 - i8;
                float f2 = width3;
                float f3 = i10;
                if (f2 / getWidth() >= f3 / getHeight()) {
                    height = (int) ((f2 / getWidth()) * getHeight());
                    i = ((i10 / 2) + i8) - (height / 2);
                    width = getHeight() / ((f2 / getWidth()) * getHeight());
                } else {
                    int height3 = (int) ((f3 / getHeight()) * getWidth());
                    i5 = (i5 + (width3 / 2)) - (height3 / 2);
                    width = getWidth() / ((f3 / getHeight()) * getWidth());
                    height = i10;
                    i = i8;
                    width3 = height3;
                }
                int iMax = Math.max(0, i);
                if (width3 / getWidth() >= 0.95f || height / getHeight() >= 0.95f || i8 < 0 || i9 >= getHeight()) {
                    width3 = getWidth();
                    height = getHeight();
                    i2 = 0;
                    f = 1.0f;
                    i3 = 0;
                } else {
                    i2 = i5;
                    f = width;
                    i3 = iMax;
                }
                this.iMinimapScaled_PosX = i2;
                this.iMinimapScaled_PosY = i3;
                this.iMinimapScaled_Width = width3;
                this.iMinimapScaled_Height = height;
                this.fMinimapScaled_Scale = f;
                Renderer.viewport.setWorldSize(CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
                Renderer.viewport.apply();
                Renderer.camera.setToOrtho(true, CFG.GAME_WIDTH, -CFG.GAME_HEIGHT);
                spriteBatch.setProjectionMatrix(Renderer.camera.combined);
                try {
                    spriteBatch.begin();
                } catch (Exception unused2) {
                    spriteBatch.end();
                    spriteBatch.begin();
                }
                this.minimapBG.draw(spriteBatch, 0, 0, this.iMinimapWidth * 1, this.iMinimapHeight * 1);
                try {
                    spriteBatch.end();
                } catch (Exception unused3) {
                    spriteBatch.begin();
                    spriteBatch.end();
                }
                float f4 = 1;
                Renderer.viewport.setWorldSize((CFG.GAME_WIDTH * (getWidth() / this.iMinimapWidth)) / f4, (CFG.GAME_HEIGHT * (getHeight() / this.iMinimapHeight)) / f4);
                Renderer.viewport.apply();
                Renderer.camera.setToOrtho(true, (CFG.GAME_WIDTH * (getWidth() / this.iMinimapWidth)) / f4, (-(CFG.GAME_HEIGHT * (getHeight() / this.iMinimapHeight))) / f4);
                spriteBatch.setProjectionMatrix(Renderer.camera.combined);
                try {
                    spriteBatch.begin();
                } catch (Exception unused4) {
                    spriteBatch.end();
                    spriteBatch.begin();
                }
                Renderer.clipView_Start(spriteBatch, 0, CFG.GAME_HEIGHT, this.iMinimapWidth * 1, (-this.iMinimapHeight) * 1);
                spriteBatch.setColor(Color.WHITE);
                spriteBatch.setShader(Renderer.shaderDefaultProvince);
                float f5 = i2;
                int i11 = -((int) (f5 * f));
                int i12 = -((int) (i3 * f));
                ProvinceDraw.drawProvinces_Minimap(spriteBatch, i11, i12, f, 220);
                if (f5 + (getWidth() * f) > getWidth()) {
                    ProvinceDraw.drawProvinces_Minimap(spriteBatch, ((int) (getWidth() * f)) + i11, i12, f, 220);
                }
                if (i2 < 0) {
                    ProvinceDraw.drawProvinces_Minimap(spriteBatch, i11 - ((int) (getWidth() * f)), i12, f, 220);
                    this.minimapBelowZero = true;
                }
                spriteBatch.setShader(Renderer.shaderDefault);
                Renderer.clipView_End(spriteBatch);
                try {
                    spriteBatch.end();
                } catch (Exception unused5) {
                    spriteBatch.begin();
                    spriteBatch.end();
                }
                Renderer.viewport.setWorldSize(CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
                Renderer.viewport.apply();
                Renderer.camera.setToOrtho(true, CFG.GAME_WIDTH, -CFG.GAME_HEIGHT);
                spriteBatch.setProjectionMatrix(Renderer.camera.combined);
                try {
                    spriteBatch.begin();
                } catch (Exception unused6) {
                    spriteBatch.end();
                    spriteBatch.begin();
                }
                int i13 = CFG.GAME_HEIGHT;
                int i14 = this.iMinimapHeight;
                this.minimapOfCivilizations = new Image(new Texture(Pixmap.createFromFrameBuffer(0, i13 - (i14 * 1), this.iMinimapWidth * 1, i14 * 1)));
                spriteBatch.setColor(Color.BLACK);
                Images.pix.draw(spriteBatch, 0, 0, this.iMinimapWidth, this.iMinimapHeight);
                spriteBatch.setColor(Color.WHITE);
                try {
                    spriteBatch.end();
                } catch (Exception unused7) {
                    spriteBatch.begin();
                    spriteBatch.end();
                }
                Renderer.viewport.setWorldSize(CFG.GAME_WIDTH / Game.mapScale.getCurrentScale(), CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale());
                Renderer.viewport.apply();
                Renderer.camera.setToOrtho(true, CFG.GAME_WIDTH / Game.mapScale.getCurrentScale(), (-CFG.GAME_HEIGHT) / Game.mapScale.getCurrentScale());
                spriteBatch.setProjectionMatrix(Renderer.camera.combined);
                try {
                    spriteBatch.begin();
                } catch (Exception unused8) {
                    spriteBatch.end();
                    spriteBatch.begin();
                }
                spriteBatch.setShader(Renderer.shaderDefault);
            } catch (Throwable th) {
                Renderer.viewport.setWorldSize(CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
                Renderer.viewport.apply();
                Renderer.camera.setToOrtho(true, CFG.GAME_WIDTH, -CFG.GAME_HEIGHT);
                spriteBatch.setProjectionMatrix(Renderer.camera.combined);
                try {
                    spriteBatch.begin();
                } catch (Exception unused9) {
                    spriteBatch.end();
                    spriteBatch.begin();
                }
                int i15 = CFG.GAME_HEIGHT;
                int i16 = this.iMinimapHeight;
                this.minimapOfCivilizations = new Image(new Texture(Pixmap.createFromFrameBuffer(0, i15 - (i16 * 1), this.iMinimapWidth * 1, i16 * 1)));
                spriteBatch.setColor(Color.BLACK);
                Images.pix.draw(spriteBatch, 0, 0, this.iMinimapWidth, this.iMinimapHeight);
                spriteBatch.setColor(Color.WHITE);
                try {
                    spriteBatch.end();
                } catch (Exception unused10) {
                    spriteBatch.begin();
                    spriteBatch.end();
                }
                Renderer.viewport.setWorldSize(CFG.GAME_WIDTH / Game.mapScale.getCurrentScale(), CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale());
                Renderer.viewport.apply();
                Renderer.camera.setToOrtho(true, CFG.GAME_WIDTH / Game.mapScale.getCurrentScale(), (-CFG.GAME_HEIGHT) / Game.mapScale.getCurrentScale());
                spriteBatch.setProjectionMatrix(Renderer.camera.combined);
                try {
                    spriteBatch.begin();
                } catch (Exception unused11) {
                    spriteBatch.end();
                    spriteBatch.begin();
                }
                spriteBatch.setShader(Renderer.shaderDefault);
                throw th;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
            this.requestToDisposeMinimap = true;
        }
    }

    public int getHeight() {
        return iHeightOfMap;
    }

    public int getHeight_Real() {
        return this.iHeightOfMap_Real;
    }

    public boolean getHideMenuZoomOut() {
        return Game.mapScale.getCurrentScale() > Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_Scale;
    }

    public final float getMinimapScaled_ScaleX() {
        return this.iMinimapScaled_Width / this.iMinimapWidth;
    }

    public final float getMinimapScaled_ScaleY() {
        return this.iMinimapScaled_Height / this.iMinimapHeight;
    }

    public final float getPreviewScaled_ScaleX() {
        return this.iPreviewScaled_Width / this.iPreviewWidth;
    }

    public final float getPreviewScaled_ScaleY() {
        return this.iPreviewScaled_Height / this.iPreviewHeight;
    }

    public int getWidth() {
        return iWidthOfMap;
    }

    public int getWidth_Real() {
        return this.iWidthOfMap_Real;
    }

    public final boolean loadMapBG() {
        int i = loadMapBG_FileID;
        loadMapBG_FileID = i + 1;
        if (i >= this.iBackgroundSize_Y) {
            return false;
        }
        for (int i2 = 0; i2 < this.iBackgroundSize_X; i2++) {
            this.gameMap.add(new Image(ImageManager.loadTexture("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_BACKGROUND_PATH + i + "_" + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
        }
        return true;
    }

    public final void loadMapBG_Begin() {
        if (this.gameMapSize > 0) {
            dispose();
        }
        this.iBackgroundSize_X = Game.map.getActiveMap_MapData().mapData.BackgroundSize_X;
        this.iBackgroundSize_Y = Game.map.getActiveMap_MapData().mapData.BackgroundSize_Y;
    }

    public final void loadMapBG_End() {
        this.gameMapSize = this.gameMap.size();
        iWidthOfMap = 0;
        for (int i = 0; i < this.iBackgroundSize_X; i++) {
            iWidthOfMap += this.gameMap.get(i).getWidth();
        }
        iHeightOfMap = 0;
        for (int i2 = 0; i2 < this.iBackgroundSize_Y; i2++) {
            iHeightOfMap += this.gameMap.get(this.iBackgroundSize_X * i2).getHeight();
        }
        iWidthOfMap = (int) (iWidthOfMap * Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundScale);
        int i3 = (int) (iHeightOfMap * Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundScale);
        int i4 = iWidthOfMap;
        this.iWidthOfMap_Real = i4;
        this.iHeightOfMap_Real = i3;
        int i5 = this.iMapScale;
        iWidthOfMap = i4 * i5;
        iHeightOfMap = i3 * i5;
        Game.updateMapDistance();
        Game.iMaxDistance = (int) Math.ceil(Math.sqrt(Math.pow(getWidth_Real() / (Game.map.isWorldMap(Game.map.getActiveMapID()) ? 2 : 1), 2.0d) + Math.pow(getHeight_Real(), 2.0d)));
        Game.iMaxDistanceManhattan = getWidth_Real() + getHeight_Real();
        this.iWidthOfSingleBG = (int) (this.gameMap.get(this.gameMapSize - 1).getWidth() * Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundScale);
        int height = (int) (this.gameMap.get(this.gameMapSize - 1).getHeight() * Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundScale);
        this.iHeightOfSingleBG = height;
        int i6 = this.iWidthOfSingleBG;
        int i7 = this.iMapScale;
        this.iWidthOfSingleBG_xMapScale = i6 * i7;
        this.iHeightOfSingleBG_xMapScale = height * i7;
        this.iMapScaleBG = i7 * Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.BackgroundScale;
        MapScale.MINSCALE = CFG.GAME_HEIGHT / getHeight();
        if (CFG.GAME_WIDTH / getWidth() > MapScale.MINSCALE) {
            MapScale.MINSCALE = CFG.GAME_WIDTH / getWidth();
        }
        if (MapScale.MINSCALE > 1.0f) {
            MapScale.MINSCALE = 1.0f;
        }
        this.iBackground2Size_X = Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_Size_X;
        this.iBackground2Size_Y = Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_Size_Y;
    }

    public final boolean loadMapBG_ZoomOut() {
        if (Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_Enable) {
            int i = loadMapBG_FileID;
            loadMapBG_FileID = i + 1;
            if (i < this.iBackground2Size_Y) {
                for (int i2 = 0; i2 < this.iBackground2Size_X; i2++) {
                    this.gameMap2.add(new Image(ImageManager.loadTexture_RGB888("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_BACKGROUND2_PATH + i + "_" + i2 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
                }
                return true;
            }
        }
        return false;
    }

    public final void loadMapBG_ZoomOut_End() {
        if (Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_Enable) {
            this.gameMap2Size = this.gameMap2.size();
            this.iWidthOfSingleBG2 = iWidthOfMap / this.iBackground2Size_X;
            this.iHeightOfSingleBG2 = iHeightOfMap / this.iBackground2Size_Y;
            this.iWidthOfSingleBGTech = this.gameMap2.get(0).getWidth();
            this.iHeightOfSingleBGTech = this.gameMap2.get(0).getHeight();
            this.iWidthOfMapTech = 0;
            for (int i = 0; i < this.iBackground2Size_X; i++) {
                this.iWidthOfMapTech += this.gameMap2.get(i).getWidth();
            }
            this.iHeightOfMapTech = 0;
            for (int i2 = 0; i2 < this.iBackground2Size_Y; i2++) {
                this.iHeightOfMapTech += this.gameMap2.get(this.iBackground2Size_X * i2).getHeight();
            }
        }
    }

    public final void loadMapBorder() {
        this.mapBorder = (MapBorder) new Json().fromJson(MapBorder.class, FileManager.loadFile("gfx/map/MapBorder.json"));
        loadOutsideMapImages();
        loadOutsideMapImages_Below();
    }

    public final void loadMinimap() {
        StringBuilder sbAppend = new StringBuilder("map/").append(Game.map.getFile_ActiveMap_Path());
        String str = kfGnwGN.WuZ;
        this.minimapBG = new Image(ImageManager.loadTexture(sbAppend.append(str).append(CFG.getRescouresPath_Short()).append("minimapBG.png").toString()), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        this.minimapOver = new Image(ImageManager.loadTexture("map/" + Game.map.getFile_ActiveMap_Path() + str + CFG.getRescouresPath_Short() + "minimapOver.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        this.scenarioBG = new Image(ImageManager.loadTexture("map/" + Game.map.getFile_ActiveMap_Path() + str + CFG.getRescouresPath_Short() + "scenarioBG.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        this.scenarioOver = new Image(ImageManager.loadTexture("map/" + Game.map.getFile_ActiveMap_Path() + str + CFG.getRescouresPath_Short() + "scenarioOver.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        this.scenarioMask = new Image(ImageManager.loadTexture("map/" + Game.map.getFile_ActiveMap_Path() + str + CFG.getRescouresPath_Short() + "scenarioMask.png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
    }

    public final void previewTexture_Generate(SpriteBatch spriteBatch) {
        float width;
        int height;
        int i;
        float f;
        int i2;
        int i3;
        Image image = this.previewOfCivilizations;
        if (image != null) {
            image.dispose();
            this.previewOfCivilizations = null;
        }
        if (this.previewOfCivilizations != null || this.gameMap.size() <= 0) {
            return;
        }
        try {
            try {
                Renderer.clipView_End(spriteBatch);
                try {
                    spriteBatch.end();
                } catch (Exception unused) {
                    spriteBatch.begin();
                    spriteBatch.end();
                }
                this.minimapBelowZero = false;
                int width2 = getWidth();
                int height2 = getHeight();
                int i4 = (int) ((width2 + 0) * 0.125f);
                int i5 = 0 - i4;
                int i6 = width2 + i4;
                int i7 = (int) ((height2 + 0) * 0.125f);
                int i8 = 0 - i7;
                int i9 = height2 + i7;
                if (i8 < 0) {
                    i8 = 0;
                }
                int width3 = i6 - i5;
                int i10 = i9 - i8;
                float f2 = width3;
                float f3 = i10;
                if (f2 / getWidth() >= f3 / getHeight()) {
                    height = (int) ((f2 / getWidth()) * getHeight());
                    i = ((i10 / 2) + i8) - (height / 2);
                    width = getHeight() / ((f2 / getWidth()) * getHeight());
                } else {
                    int height3 = (int) ((f3 / getHeight()) * getWidth());
                    i5 = (i5 + (width3 / 2)) - (height3 / 2);
                    width = getWidth() / ((f3 / getHeight()) * getWidth());
                    height = i10;
                    i = i8;
                    width3 = height3;
                }
                int iMax = Math.max(0, i);
                if (width3 / getWidth() >= 0.95f || height / getHeight() >= 0.95f || i8 < 0 || i9 >= getHeight()) {
                    width3 = getWidth();
                    height = getHeight();
                    f = 1.0f;
                    i2 = 0;
                    i3 = 0;
                } else {
                    i2 = iMax;
                    f = width;
                    i3 = i5;
                }
                this.iPreviewScaled_PosX = i3;
                this.iPreviewScaled_PosY = i2;
                this.iPreviewScaled_Width = width3;
                this.iPreviewScaled_Height = height;
                this.fPreviewScaled_Scale = f;
                Renderer.viewport.setWorldSize(CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
                Renderer.viewport.apply();
                Renderer.camera.setToOrtho(true, CFG.GAME_WIDTH, -CFG.GAME_HEIGHT);
                spriteBatch.setProjectionMatrix(Renderer.camera.combined);
                try {
                    spriteBatch.begin();
                } catch (Exception unused2) {
                    spriteBatch.end();
                    spriteBatch.begin();
                }
                this.scenarioBG.draw(spriteBatch, 0, 0, this.iPreviewWidth * 1, this.iPreviewHeight * 1);
                try {
                    spriteBatch.end();
                } catch (Exception unused3) {
                    spriteBatch.begin();
                    spriteBatch.end();
                }
                float f4 = 1;
                Renderer.viewport.setWorldSize((CFG.GAME_WIDTH * (getWidth() / this.iPreviewWidth)) / f4, (CFG.GAME_HEIGHT * (getHeight() / this.iPreviewHeight)) / f4);
                Renderer.viewport.apply();
                Renderer.camera.setToOrtho(true, (CFG.GAME_WIDTH * (getWidth() / this.iPreviewWidth)) / f4, (-(CFG.GAME_HEIGHT * (getHeight() / this.iPreviewHeight))) / f4);
                spriteBatch.setProjectionMatrix(Renderer.camera.combined);
                try {
                    spriteBatch.begin();
                } catch (Exception unused4) {
                    spriteBatch.end();
                    spriteBatch.begin();
                }
                Renderer.clipView_Start(spriteBatch, 0, CFG.GAME_HEIGHT, this.iPreviewWidth * 1, (-this.iPreviewHeight) * 1);
                spriteBatch.setColor(Color.WHITE);
                spriteBatch.setShader(Renderer.shaderDefaultProvince);
                if (Game.FOG_OF_WAR) {
                    ProvinceDraw.drawProvinces_FogOfWarDiscovery(spriteBatch, -((int) (i3 * f)), -((int) (i2 * f)), f, 220);
                } else {
                    ProvinceDraw.drawProvinces(spriteBatch, -((int) (i3 * f)), -((int) (i2 * f)), f, 220);
                }
                float f5 = i3;
                if ((getWidth() * f) + f5 > getWidth()) {
                    if (Game.FOG_OF_WAR) {
                        ProvinceDraw.drawProvinces_FogOfWarDiscovery(spriteBatch, (-((int) (f5 * f))) + ((int) (getWidth() * f)), -((int) (i2 * f)), f, 220);
                    } else {
                        ProvinceDraw.drawProvinces(spriteBatch, (-((int) (f5 * f))) + ((int) (getWidth() * f)), -((int) (i2 * f)), f, 220);
                    }
                }
                if (i3 < 0) {
                    if (Game.FOG_OF_WAR) {
                        ProvinceDraw.drawProvinces_FogOfWarDiscovery(spriteBatch, (-((int) (f5 * f))) - ((int) (getWidth() * f)), -((int) (i2 * f)), f, 220);
                    } else {
                        ProvinceDraw.drawProvinces(spriteBatch, (-((int) (f5 * f))) - ((int) (getWidth() * f)), -((int) (i2 * f)), f, 220);
                    }
                    this.minimapBelowZero = true;
                }
                spriteBatch.setShader(Renderer.shaderDefault);
                Renderer.clipView_End(spriteBatch);
                try {
                    spriteBatch.end();
                } catch (Exception unused5) {
                    spriteBatch.begin();
                    spriteBatch.end();
                }
                Renderer.viewport.setWorldSize(CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
                Renderer.viewport.apply();
                Renderer.camera.setToOrtho(true, CFG.GAME_WIDTH, -CFG.GAME_HEIGHT);
                spriteBatch.setProjectionMatrix(Renderer.camera.combined);
                try {
                    spriteBatch.begin();
                } catch (Exception unused6) {
                    spriteBatch.end();
                    spriteBatch.begin();
                }
                int i11 = CFG.GAME_HEIGHT;
                int i12 = this.iPreviewHeight;
                Image image2 = new Image(new Texture(Pixmap.createFromFrameBuffer(0, i11 - (i12 * 1), this.iPreviewWidth * 1, i12 * 1)));
                this.previewOfCivilizations = image2;
                try {
                    image2.getTexture().getTextureData().prepare();
                } catch (Exception unused7) {
                }
                if (FileManager.IS_MAC) {
                    PixmapIO.writePNG(Gdx.files.external("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/preview.png"), EditorMap_PrintMap.flipPixmap(this.previewOfCivilizations.getTexture().getTextureData().consumePixmap()));
                } else {
                    PixmapIO.writePNG(Gdx.files.local("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/preview.png"), EditorMap_PrintMap.flipPixmap(this.previewOfCivilizations.getTexture().getTextureData().consumePixmap()));
                }
                spriteBatch.setColor(Color.BLACK);
                Images.pix.draw(spriteBatch, 0, 0, this.iPreviewWidth, this.iPreviewHeight);
                spriteBatch.setColor(Color.WHITE);
                try {
                    spriteBatch.end();
                } catch (Exception unused8) {
                    spriteBatch.begin();
                    spriteBatch.end();
                }
                Renderer.viewport.setWorldSize(CFG.GAME_WIDTH / Game.mapScale.getCurrentScale(), CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale());
                Renderer.viewport.apply();
                Renderer.camera.setToOrtho(true, CFG.GAME_WIDTH / Game.mapScale.getCurrentScale(), (-CFG.GAME_HEIGHT) / Game.mapScale.getCurrentScale());
                spriteBatch.setProjectionMatrix(Renderer.camera.combined);
                try {
                    spriteBatch.begin();
                } catch (Exception unused9) {
                    spriteBatch.end();
                    spriteBatch.begin();
                }
                spriteBatch.setShader(Renderer.shaderDefault);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        } catch (Throwable th) {
            Renderer.viewport.setWorldSize(CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
            Renderer.viewport.apply();
            Renderer.camera.setToOrtho(true, CFG.GAME_WIDTH, -CFG.GAME_HEIGHT);
            spriteBatch.setProjectionMatrix(Renderer.camera.combined);
            try {
                spriteBatch.begin();
            } catch (Exception unused10) {
                spriteBatch.end();
                spriteBatch.begin();
            }
            int i13 = CFG.GAME_HEIGHT;
            int i14 = this.iPreviewHeight;
            Image image3 = new Image(new Texture(Pixmap.createFromFrameBuffer(0, i13 - (i14 * 1), this.iPreviewWidth * 1, i14 * 1)));
            this.previewOfCivilizations = image3;
            try {
                image3.getTexture().getTextureData().prepare();
            } catch (Exception unused11) {
            }
            if (FileManager.IS_MAC) {
                PixmapIO.writePNG(Gdx.files.external("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/preview.png"), EditorMap_PrintMap.flipPixmap(this.previewOfCivilizations.getTexture().getTextureData().consumePixmap()));
            } else {
                PixmapIO.writePNG(Gdx.files.local("map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_MAP_SCENARIOS + ScenarioSettings.sTag + "/preview.png"), EditorMap_PrintMap.flipPixmap(this.previewOfCivilizations.getTexture().getTextureData().consumePixmap()));
            }
            spriteBatch.setColor(Color.BLACK);
            Images.pix.draw(spriteBatch, 0, 0, this.iPreviewWidth, this.iPreviewHeight);
            spriteBatch.setColor(Color.WHITE);
            try {
                spriteBatch.end();
            } catch (Exception unused12) {
                spriteBatch.begin();
                spriteBatch.end();
            }
            Renderer.viewport.setWorldSize(CFG.GAME_WIDTH / Game.mapScale.getCurrentScale(), CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale());
            Renderer.viewport.apply();
            Renderer.camera.setToOrtho(true, CFG.GAME_WIDTH / Game.mapScale.getCurrentScale(), (-CFG.GAME_HEIGHT) / Game.mapScale.getCurrentScale());
            spriteBatch.setProjectionMatrix(Renderer.camera.combined);
            try {
                spriteBatch.begin();
            } catch (Exception unused13) {
                spriteBatch.end();
                spriteBatch.begin();
            }
            spriteBatch.setShader(Renderer.shaderDefault);
            throw th;
        }
    }

    public final void updateActiveMapBGShader() {
        try {
            if (Game.menuManager.getInGame() && Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DISEASES) {
                this.mapShader = new AnonymousClass1();
            } else {
                this.mapShader = new AnonymousClass2();
            }
        } catch (Exception unused) {
            this.mapShader = new AnonymousClass3();
        }
    }

    public void updateMapBGSea() {
        if (CFG.isDesktop() || !GameValues.value.MOBILE_DISABLE_SEA_WAVES) {
            mapBGSea = new AnonymousClass9();
        } else {
            mapBGSea = new AnonymousClass10();
        }
    }

    public final void updateMinimapResolution() {
        this.iMinimapHeight = this.minimapBG.getHeight();
        updateMinimapScaleY();
        this.iMinimapWidth = (int) (getWidth() / this.fMinimapScaleY);
        updateMinimapScaleX();
    }

    protected final void updateMinimapScaleX() {
        this.fMinimapScaleX = getWidth() / this.iMinimapWidth;
    }

    protected final void updateMinimapScaleXY() {
        updateMinimapScaleX();
        updateMinimapScaleY();
    }

    protected final void updateMinimapScaleY() {
        this.fMinimapScaleY = getHeight() / this.iMinimapHeight;
    }

    public void updateOutsideTheMap_Scale() {
        if ((this.isOutsideInView || this.isOutsideInView_Bot) && Math.abs(this.outsideScale2 - Game.mapScale.getCurrentScale()) < 0.245f) {
            return;
        }
        this.outsideScale2 = Game.mapScale.getCurrentScale();
        if (Game.mapScale.getCurrentScale() >= 0.95f) {
            this.outsideScale = 1.0f;
        } else {
            this.outsideScale = 1.0f / Game.mapScale.getCurrentScale();
        }
    }

    public final void updatePreviewResolution() {
        this.iPreviewHeight = this.scenarioBG.getHeight();
        updatePreviewScaleY();
        this.iPreviewWidth = (int) (getWidth() / this.fPreviewScaleY);
        updatePreviewScaleX();
    }

    protected final void updatePreviewScaleX() {
        this.fPreviewScaleX = getWidth() / this.iPreviewWidth;
    }

    protected final void updatePreviewScaleY() {
        this.fPreviewScaleY = getHeight() / this.iPreviewHeight;
    }

    public final void updateWorldMap() {
        if (this.gameMapSize == 0 || Game.menuManager.getInInitGameMenu() || Game.menuManager.getInInitGame_Menus() || Game.menuManager.getInMainMenu() || Game.menuManager.getInLoadGamesList() || Game.menuManager.getInLoadScenario()) {
            this.worldMap = new AnonymousClass4();
            return;
        }
        if (!Game.map.isWorldMap(Game.map.getActiveMapID())) {
            this.worldMap = new AnonymousClass7();
        } else if (Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_Enable) {
            this.worldMap = new AnonymousClass5();
        } else {
            this.worldMap = new AnonymousClass6();
        }
    }
}
