.class Laoc/kingdoms/lukasz/map/map/MapBG$7;
.super Ljava/lang/Object;
.source "MapBG.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapBG;->updateWorldMap()V
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

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$900(Laoc/kingdoms/lukasz/map/map/MapBG;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$1000(Laoc/kingdoms/lukasz/map/map/MapBG;)I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v0, :cond_1

    sget v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$1100(Laoc/kingdoms/lukasz/map/map/MapBG;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$1200(Laoc/kingdoms/lukasz/map/map/MapBG;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    add-int v6, p2, v3

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$1200(Laoc/kingdoms/lukasz/map/map/MapBG;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    add-int v7, p3, v2

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScaleBG:F

    invoke-virtual {v5, p1, v6, v7, v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$1200(Laoc/kingdoms/lukasz/map/map/MapBG;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v6

    sub-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$1000(Laoc/kingdoms/lukasz/map/map/MapBG;)I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 12

    neg-int v11, p3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, v11

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int v2, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    neg-int v3, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    add-int v4, v1, p3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    const/high16 v8, 0x43870000    # 270.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p1

    move v6, v11

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int v1, p2, v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    neg-int v3, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    add-int v4, v1, p3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v10, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    goto/16 :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int v2, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    neg-int v3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    const/high16 v8, 0x43870000    # 270.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p1

    move v6, v11

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int v1, p2, v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    neg-int v3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v10, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    :goto_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$700(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$7;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$800(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method
