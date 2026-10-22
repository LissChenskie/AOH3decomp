.class public Laoc/kingdoms/lukasz/map/map/MapOver;
.super Ljava/lang/Object;
.source "MapOver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapOver$Config;,
        Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;
    }
.end annotation


# instance fields
.field public iOverSize:I

.field public lOver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;",
            ">;"
        }
    .end annotation
.end field

.field public overMask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public overTile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public drawMapOverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    iget v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v10, 0x84c0

    const-string v11, "u_extraColor"

    const-string v12, "u_maskScaleY"

    const-string v13, "u_maskScale"

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    if-ge v9, v2, :cond_1

    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Alpha:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    cmpg-float v4, v4, v15

    if-gez v4, :cond_0

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float/2addr v4, v5

    goto :goto_1

    :cond_0
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    :goto_1
    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, p4

    invoke-direct {v2, v15, v15, v15, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScale:F

    invoke-virtual {v2, v13, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScaleY:F

    invoke-virtual {v2, v12, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->ExtraColor:F

    invoke-virtual {v2, v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v10}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    sget v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    sget v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->secondSideOfMap:Z

    if-eqz v2, :cond_3

    :goto_2
    iget v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I

    if-ge v0, v2, :cond_3

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Alpha:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    cmpg-float v4, v4, v15

    if-gez v4, :cond_2

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float/2addr v4, v5

    goto :goto_3

    :cond_2
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    :goto_3
    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, p4

    invoke-direct {v2, v15, v15, v15, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScale:F

    invoke-virtual {v2, v13, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScaleY:F

    invoke-virtual {v2, v12, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->ExtraColor:F

    invoke-virtual {v2, v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v10}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    add-int v4, p2, v3

    sget v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    sget v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawMapOverlaySea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    iget v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v10, 0x84c0

    const-string v11, "u_extraColor"

    const-string v12, "u_maskScaleY"

    const-string v13, "u_maskScale"

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    if-ge v9, v2, :cond_1

    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Alpha:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    cmpg-float v4, v4, v15

    if-gez v4, :cond_0

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float/2addr v4, v5

    goto :goto_1

    :cond_0
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    :goto_1
    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, p4

    invoke-direct {v2, v15, v15, v15, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScale:F

    invoke-virtual {v2, v13, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScaleY:F

    invoke-virtual {v2, v12, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->ExtraColor:F

    invoke-virtual {v2, v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v10}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    sget v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    sget v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->secondSideOfMap:Z

    if-eqz v2, :cond_3

    :goto_2
    iget v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I

    if-ge v0, v2, :cond_3

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Alpha:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    cmpg-float v4, v4, v15

    if-gez v4, :cond_2

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float/2addr v4, v5

    goto :goto_3

    :cond_2
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    :goto_3
    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, p4

    invoke-direct {v2, v15, v15, v15, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScale:F

    invoke-virtual {v2, v13, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScaleY:F

    invoke-virtual {v2, v12, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->ExtraColor:F

    invoke-virtual {v2, v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v10}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    add-int v4, p2, v3

    sget v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    sget v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final loadOverlay(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapOver$Config;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapOver$Config;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v1, Laoc/kingdoms/lukasz/map/map/MapOver$Config;

    const-string v2, "Overlay"

    const-class v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v1, Laoc/kingdoms/lukasz/map/map/MapOver$Config;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "map/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "background/overlays/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    const-string v2, "UTF8"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/map/MapOver$Config;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/map/MapOver$Config;->Overlay:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I

    return-void
.end method

.method public final loadOverlayImages()Z
    .locals 5

    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "map/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "background/overlays/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Tile:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v2, v0, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final loadOverlayImages_2()Z
    .locals 6

    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "map/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "background/overlays/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    if-eqz v4, :cond_0

    const-string v4, "high/"

    goto :goto_0

    :cond_0
    const-string v4, "low/"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Mask:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Scale:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScale:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Scale:F

    mul-float/2addr v3, v0

    div-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScaleY:F

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
