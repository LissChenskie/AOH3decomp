package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MapCoords {
    private int iMaxPosScaledY;
    private int iMaxPosY;
    private int iMinPosScaledX;
    private int iMinPosScaledY;
    private int iMinPosY;
    private WorldMap worldMap;
    private int iPosX = 0;
    private int iPosY = 0;
    private int iNewPosX = 0;
    private int iNewPosY = 0;
    private boolean secondSideOfMap = false;
    private int iSecondSideOfMap_TranslateX = 0;
    public boolean disableMovingMap = false;
    private boolean drawMapBorder = true;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapCoords$1, reason: invalid class name */
    class AnonymousClass1 implements WorldMap {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapCoords.WorldMap
        public void updateMapPosX() {
            if (Math.abs(MapCoords.this.iNewPosX) > Game.mapBG.getWidth()) {
                MapCoords.this.iPosX = Game.mapBG.getWidth() + MapCoords.this.iNewPosX;
                Game.mapTouchManager.setUpdateStartMovePosX(true);
            } else if (MapCoords.this.iNewPosX > 0) {
                MapCoords.this.iPosX = (-Game.mapBG.getWidth()) + MapCoords.this.iNewPosX;
                Game.mapTouchManager.setUpdateStartMovePosX(true);
            } else {
                MapCoords mapCoords = MapCoords.this;
                mapCoords.iPosX = mapCoords.iNewPosX;
            }
            MapCoords.this.checkPositionOfMapX();
            updateSecondSideOfMap();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapCoords.WorldMap
        public void updateSecondSideOfMap() {
            MapCoords mapCoords = MapCoords.this;
            mapCoords.secondSideOfMap = ((float) (-mapCoords.iPosX)) + (((float) CFG.GAME_WIDTH) / Game.mapScale.getCurrentScale()) >= ((float) Game.mapBG.getWidth());
            if (MapCoords.this.secondSideOfMap) {
                MapCoords.this.iSecondSideOfMap_TranslateX = Game.mapBG.getWidth();
            } else {
                MapCoords.this.iSecondSideOfMap_TranslateX = 0;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapCoords$2, reason: invalid class name */
    class AnonymousClass2 implements WorldMap {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapCoords.WorldMap
        public void updateMapPosX() {
            if (Math.abs(MapCoords.this.iNewPosX) >= (Game.mapBG.getWidth() - (CFG.GAME_WIDTH / Game.mapScale.getCurrentScale())) + MapCoords.this.iMinPosScaledX) {
                MapCoords.this.iPosX = (int) (((-Game.mapBG.getWidth()) - MapCoords.this.iMinPosScaledX) + (CFG.GAME_WIDTH / Game.mapScale.getCurrentScale()));
                Game.mapTouchManager.setUpdateStartMovePosX(true);
            } else if (MapCoords.this.iNewPosX >= MapCoords.this.iMinPosScaledX) {
                MapCoords mapCoords = MapCoords.this;
                mapCoords.iPosX = mapCoords.iMinPosScaledX;
                Game.mapTouchManager.setUpdateStartMovePosX(true);
            } else {
                MapCoords mapCoords2 = MapCoords.this;
                mapCoords2.iPosX = mapCoords2.iNewPosX;
            }
            if (MapCoords.this.iPosX >= MapCoords.this.iMinPosScaledX) {
                MapCoords mapCoords3 = MapCoords.this;
                mapCoords3.iPosX = mapCoords3.iNewPosX = mapCoords3.iMinPosScaledX;
            }
            MapCoords.this.checkPositionOfMapX();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapCoords.WorldMap
        public void updateSecondSideOfMap() {
            MapCoords.this.secondSideOfMap = false;
            MapCoords.this.iSecondSideOfMap_TranslateX = 0;
        }
    }

    private interface WorldMap {
        void updateMapPosX();

        void updateSecondSideOfMap();
    }

    public final void centerToMinimapClick(int i, int i2) {
        float f = Game.mapBG.iMinimapScaled_Width / Game.mapBG.iMinimapWidth;
        float f2 = Game.mapBG.iMinimapScaled_Height / Game.mapBG.iMinimapHeight;
        Game.mapScroll.stopScrollingTheMap();
        Game.mapScroll.setScrollEvent_ToPosition(Game.mapBG.iMinimapScaled_PosX + ((int) (i * f)), Game.mapBG.iMinimapScaled_PosY + ((int) (i2 * f2)));
    }

    public final void centerToProvinceID(int i) {
        try {
            Game.mapScroll.stopScrollingTheMap();
            Game.mapScroll.setScrollEvent(i);
        } catch (Exception unused) {
        }
    }

    protected final void checkPositionOfMapX() {
        if ((-this.iNewPosX) > Game.mapBG.getWidth()) {
            int width = this.iPosX % Game.mapBG.getWidth();
            this.iPosX = width;
            this.iNewPosX = width;
        } else {
            int i = this.iPosX;
            if (i > 0) {
                int width2 = i % Game.mapBG.getWidth();
                this.iPosX = width2;
                this.iNewPosX = width2;
            }
        }
    }

    protected final void checkPositionOfMapY() {
        if ((-this.iPosY) > Game.mapBG.getHeight() + Game.mapBG.mapBorder.OutsideTheMapMaxY_Below) {
            int height = this.iPosY % (Game.mapBG.getHeight() + Game.mapBG.mapBorder.OutsideTheMapMaxY_Below);
            this.iPosY = height;
            this.iNewPosY = height;
        } else if (this.iPosY > (this.iMinPosY + (this.iMinPosScaledY * Game.mapScale.getCurrentScale())) / Game.mapScale.getCurrentScale()) {
            int currentScale = (int) ((this.iMinPosY + (this.iMinPosScaledY * Game.mapScale.getCurrentScale())) / Game.mapScale.getCurrentScale());
            this.iPosY = currentScale;
            this.iNewPosY = currentScale;
        }
    }

    public boolean getDisableMovingMap() {
        return this.disableMovingMap;
    }

    public final int getMinimapPosX(int i) {
        return Game.mapBG.iMinimapScaled_PosX + ((int) (i * (Game.mapBG.iMinimapScaled_Width / Game.mapBG.iMinimapWidth)));
    }

    public final int getMinimapPosY(int i) {
        return Game.mapBG.iMinimapScaled_PosY + ((int) (i * (Game.mapBG.iMinimapScaled_Height / Game.mapBG.iMinimapHeight)));
    }

    protected final int getNewPosX() {
        return this.iNewPosX;
    }

    protected final int getNewPosY() {
        return this.iNewPosY;
    }

    public int getPosX() {
        return this.iPosX;
    }

    public int getPosY() {
        return this.iPosY;
    }

    public final boolean getSecondSideOfMap() {
        return this.secondSideOfMap;
    }

    public final int getSecondSideOfMap_MoveX() {
        return this.iSecondSideOfMap_TranslateX;
    }

    public void setDisableMovingMap(boolean z) {
        this.disableMovingMap = z;
    }

    public final void setNewPosX(int i) {
        this.iNewPosX = i;
    }

    public final void setNewPosY(int i) {
        this.iNewPosY = i;
    }

    public void setPosX(int i) {
        this.iPosX = i;
    }

    public void setPosY(int i) {
        this.iPosY = i;
    }

    public final void updateMapPosition() {
        if (this.iPosX != this.iNewPosX) {
            Game.setUpdateProvincesInView(true);
            CivilizationRegionsManager.updateRegionsInView = true;
            this.worldMap.updateMapPosX();
        }
        if (this.iPosY != this.iNewPosY) {
            Game.setUpdateProvincesInView(true);
            CivilizationRegionsManager.updateRegionsInView = true;
            if (this.iNewPosY > ((int) ((this.iMinPosY + (this.iMinPosScaledY * Game.mapScale.getCurrentScale())) / Game.mapScale.getCurrentScale()))) {
                this.iPosY = (int) ((this.iMinPosY + (this.iMinPosScaledY * Game.mapScale.getCurrentScale())) / Game.mapScale.getCurrentScale());
                Game.mapTouchManager.setUpdateStartMovePosY(true);
            } else if ((-this.iNewPosY) + (CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale()) > Game.mapBG.getHeight() + ((this.iMaxPosY + (this.iMaxPosScaledY * Game.mapScale.getCurrentScale())) / Game.mapScale.getCurrentScale())) {
                this.iPosY = -((int) ((Game.mapBG.getHeight() - (CFG.GAME_HEIGHT / Game.mapScale.getCurrentScale())) + ((this.iMaxPosY + (this.iMaxPosScaledY * Game.mapScale.getCurrentScale())) / Game.mapScale.getCurrentScale())));
                Game.mapTouchManager.setUpdateStartMovePosY(true);
            } else {
                this.iPosY = this.iNewPosY;
            }
            checkPositionOfMapY();
        }
    }

    public final void updateMinMaxPosY() {
        this.iMinPosY = 0;
        this.iMaxPosY = 0;
        if (!this.drawMapBorder) {
            this.iMinPosScaledY = 0;
            this.iMaxPosScaledY = 0;
            this.iMinPosScaledX = 0;
        } else {
            this.iMinPosScaledY = (ImageManager.getImage(Images.map_border).getHeight() - Game.mapBG.mapBorder.ShadowY) + Game.mapBG.mapBorder.OutsideTheMapMaxY_Over;
            this.iMaxPosScaledY = (ImageManager.getImage(Images.map_border).getHeight() - Game.mapBG.mapBorder.ShadowY) + Game.mapBG.mapBorder.OutsideTheMapMaxY_Below;
            if (Game.map.getMapWorldMap(Game.map.getActiveMapID())) {
                this.iMinPosScaledX = 0;
            } else {
                this.iMinPosScaledX = ImageManager.getImage(Images.map_border).getHeight() - Game.mapBG.mapBorder.ShadowY;
            }
        }
    }

    public final void updateSecondSideOfMap() {
        this.worldMap.updateSecondSideOfMap();
    }

    protected final void updateWorldMap() {
        if (Game.map.getMapWorldMap(Game.map.getActiveMapID())) {
            this.worldMap = new AnonymousClass1();
        } else {
            this.worldMap = new AnonymousClass2();
        }
    }
}
