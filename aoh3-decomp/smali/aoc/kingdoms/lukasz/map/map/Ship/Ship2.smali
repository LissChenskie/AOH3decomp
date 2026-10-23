.class public Laoc/kingdoms/lukasz/map/map/Ship/Ship2;
.super Ljava/lang/Object;
.source "Ship2.java"


# static fields
.field public static final IMG_WH:I = 0x20


# instance fields
.field public angle:I

.field public currentWidth:F

.field public isInView:Z

.field public movingBack:Z

.field public posX:F

.field public posY:F

.field public remove:Z

.field public shipIMGID:I

.field public shipLineID:I

.field public speed:F

.field public tID:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->movingBack:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->remove:Z

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->randomize()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 9

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipIMGID:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    iget p2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float/2addr p2, v1

    float-to-int p2, p2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/CFG;->rotateXMoveUnits:[I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    aget v1, v1, v2

    add-int v2, p2, v1

    iget p2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float/2addr p2, v1

    float-to-int p2, p2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/CFG;->rotateYMoveUnits:[I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    aget v1, v1, v3

    add-int/2addr p2, v1

    const/16 v4, 0x20

    const/16 v5, 0x20

    int-to-float v6, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZ)V

    :cond_0
    return-void
.end method

.method public drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 9

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipIMGID:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    iget p2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/CFG;->rotateXMoveUnits:[I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    aget v1, v1, v2

    add-int v2, p2, v1

    iget p2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/CFG;->rotateYMoveUnits:[I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    aget v1, v1, v3

    add-int/2addr p2, v1

    const/16 v4, 0x20

    const/16 v5, 0x20

    int-to-float v6, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZ)V

    :cond_0
    return-void
.end method

.method public final inViewX()Z
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    add-int/lit8 v0, v0, -0x20

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    const/high16 v2, 0x42000000    # 32.0f

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final inViewX2()Z
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    add-int/lit8 v0, v0, -0x20

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42000000    # 32.0f

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final inViewY()Z
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    add-int/lit8 v0, v0, -0x20

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    const/high16 v2, 0x42000000    # 32.0f

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final randomize()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_IMAGES:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipIMGID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_SPEED_MIN:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_SPEED_RANDOM:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->speed:F

    return-void
.end method

.method public final update()V
    .locals 12

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->speed:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->movingBack:Z

    const/4 v2, 0x0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    const-wide v5, 0x4066800000000000L    # 180.0

    const-wide v7, 0x4076800000000000L    # 360.0

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sub-int/2addr v10, v9

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sub-int/2addr v0, v9

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    if-ge v0, v9, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->movingBack:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->randomize()V

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    iput-boolean v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->remove:Z

    return-void

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sub-int/2addr v2, v9

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v2, v2, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v2, v10

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sub-int/2addr v2, v9

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v2, v2, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v2, v10

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->updateIsInView()V

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    if-eqz v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sub-int/2addr v2, v9

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v2, v2, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v2

    sget-object v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sub-int/2addr v11, v9

    aget-object v9, v10, v11

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, v9

    float-to-double v9, v2

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v5

    div-double/2addr v0, v3

    add-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    goto/16 :goto_0

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    add-int/2addr v0, v9

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    sub-int/2addr v0, v9

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    iput-boolean v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->movingBack:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->randomize()V

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    iput-boolean v9, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->remove:Z

    return-void

    :cond_3
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    add-int/2addr v2, v9

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v2, v2, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v2, v10

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    add-int/2addr v2, v9

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v2, v2, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->currentWidth:F

    sget-object v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v2, v10

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->updateIsInView()V

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    if-eqz v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    add-int/2addr v2, v9

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    aget-object v2, v2, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v2

    sget-object v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->shipLineID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->tID:I

    add-int/2addr v11, v9

    aget-object v9, v10, v11

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, v9

    float-to-double v9, v2

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v5

    div-double/2addr v0, v3

    add-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->angle:I

    :cond_5
    :goto_0
    return-void
.end method

.method public final updateIsInView()V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->inViewY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->inViewX()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->isInView:Z

    return-void
.end method
