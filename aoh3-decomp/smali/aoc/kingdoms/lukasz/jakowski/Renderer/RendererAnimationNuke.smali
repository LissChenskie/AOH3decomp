.class public Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;
.super Ljava/lang/Object;
.source "RendererAnimationNuke.java"


# static fields
.field public static lastTimeNukePlayed:J


# instance fields
.field public TURN_ID:I

.field public currentIMG:I

.field public iPosX:I

.field public iPosY:I

.field public iProvinceID:I

.field public lTime:J

.field public remove:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosY:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lTime:J

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->TURN_ID:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->remove:Z

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosX:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosY:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosX:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosY:I

    :goto_0
    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->TURN_ID:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->TURN_ID:I

    sub-int/2addr v1, v2

    const/16 v2, 0x3c

    const/4 v10, 0x1

    if-le v1, v2, :cond_0

    iput-boolean v10, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->remove:Z

    :cond_0
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->remove:Z

    if-nez v1, :cond_3

    iget-wide v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lTime:J

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lastTimeNukePlayed:J

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_SOUND_EFFECT_LOCK_TIME:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lastTimeNukePlayed:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_NUKE:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getSoundsVolumeMaster()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    :cond_1
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_ANIMATION_TIME:F

    div-float/2addr v1, v2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    const v3, 0x3dcccccd    # 0.1f

    add-float v12, v1, v3

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->nukeImg:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v14, v1

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->nukeImg:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v15, v1

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosX:I

    iget v3, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v8, v1

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->iPosY:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v7, v1

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    int-to-float v1, v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->nukeIMGSize:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v2

    sub-float v1, v11, v1

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v6

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sub-int v16, v8, v14

    sub-int v4, v7, v15

    mul-int/lit8 v17, v14, 0x2

    move-object/from16 v2, p1

    move/from16 v3, v16

    move/from16 v5, v17

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v2, v7, v15

    sub-int v4, v2, v15

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v2, p1

    move/from16 v16, v7

    move/from16 v7, v18

    move/from16 v17, v8

    move/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v11, v11, v11, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->nukeImg:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    div-int/lit8 v2, v14, 0x2

    sub-int v3, v17, v2

    div-int/lit8 v2, v15, 0x2

    sub-int v4, v16, v2

    move-object/from16 v2, p1

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    cmpl-float v1, v12, v11

    if-ltz v1, :cond_2

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    add-int/2addr v1, v10

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->lTime:J

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->nukeIMGSize:I

    if-lt v1, v2, :cond_2

    iput v13, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->currentIMG:I

    iput-boolean v10, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->remove:Z

    :cond_2
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    return-void
.end method
