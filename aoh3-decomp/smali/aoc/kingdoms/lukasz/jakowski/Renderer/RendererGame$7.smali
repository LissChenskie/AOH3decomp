.class Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$7;
.super Ljava/lang/Object;
.source "RendererGame.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->updateRenderer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->drawActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsInterface:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;

    invoke-interface {v0, p1}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;->drawCloudsInterface(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/map/Map;->drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public drawCurrentScale_Provinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 0

    return-void
.end method

.method public drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateDrawArmyAlpha()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_HighAllTheTime(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->drawSelectMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public drawWithoutScale_Provinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 0

    return-void
.end method
