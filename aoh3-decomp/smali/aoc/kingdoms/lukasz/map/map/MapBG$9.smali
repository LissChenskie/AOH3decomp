.class Laoc/kingdoms/lukasz/map/map/MapBG$9;
.super Ljava/lang/Object;
.source "MapBG.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapBG;->updateMapBGSea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapBG;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$9;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMapSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->SeaOverAlpha:F

    mul-float/2addr v4, p4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapOverSea:Laoc/kingdoms/lukasz/map/map/MapOver;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapOver;->drawMapOverlaySea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderWater2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->waves:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p4, p4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr p4, v1

    float-to-int v4, p4

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float p4, p4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr p4, v1

    float-to-int v5, p4

    neg-int v6, p2

    neg-int v7, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method
