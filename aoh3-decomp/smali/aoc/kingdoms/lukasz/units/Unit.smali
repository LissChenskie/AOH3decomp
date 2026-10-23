.class public Laoc/kingdoms/lukasz/units/Unit;
.super Ljava/lang/Object;
.source "Unit.java"


# instance fields
.field private ANIMATION_LAST_UPDATE_TIME:J

.field private currentFrameID:I

.field private fPosX:F

.field private fPosY:F

.field private iDirection:I

.field private iHP:I

.field public movePath:Laoc/kingdoms/lukasz/units/Path;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->iHP:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->iDirection:I

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->currentFrameID:I

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    int-to-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosX:F

    int-to-float p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosY:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getUnitType()Laoc/kingdoms/lukasz/units/UnitType;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/units/UnitType;->getMaxHP()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/units/Unit;->iHP:I

    sget-wide p1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide p1, p0, Laoc/kingdoms/lukasz/units/Unit;->ANIMATION_LAST_UPDATE_TIME:J

    return-void
.end method


# virtual methods
.method public currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getUnitType()Laoc/kingdoms/lukasz/units/UnitType;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/UnitType;->getAnimation_Walk()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getUnitType()Laoc/kingdoms/lukasz/units/UnitType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/units/UnitType;->getAnimation_Idle(I)Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v0

    return-object v0
.end method

.method public final drawHP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getHP_Width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getHP_Height()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getHP_Width()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getHP_Width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getHP_Height()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getHP_Width()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f2e147b    # 0.68f

    mul-float/2addr v0, v2

    float-to-int v5, v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final drawHitBoxes(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/units/Animation_Unit;->drawFrameHitboxes(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawUnit(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/units/Unit;->drawHitBoxes(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/units/Unit;->drawHP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/units/Unit;->iDirection:I

    iget v5, p0, Laoc/kingdoms/lukasz/units/Unit;->currentFrameID:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/units/Animation_Unit;->drawFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public final getDirection()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->iDirection:I

    return v0
.end method

.method public final getHP()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->iHP:I

    return v0
.end method

.method public final getHP_Height()I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/Hitbox;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getHP_Width()I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/Hitbox;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMaxHP()I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getUnitType()Laoc/kingdoms/lukasz/units/UnitType;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/UnitType;->getMaxHP()I

    move-result v0

    return v0
.end method

.method public final getPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosX:F

    float-to-int v0, v0

    return v0
.end method

.method public final getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosY:F

    float-to-int v0, v0

    return v0
.end method

.method public final getSpeed()F
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getUnitType()Laoc/kingdoms/lukasz/units/UnitType;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/UnitType;->getUnitSpeed()F

    move-result v0

    return v0
.end method

.method public getUnitType()Laoc/kingdoms/lukasz/units/UnitType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final movePosX(F)V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosX:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->deltaTime:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosX:F

    return-void
.end method

.method public final movePosY(F)V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosY:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->deltaTime:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosY:F

    return-void
.end method

.method public final resetAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->currentFrameID:I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/units/Unit;->ANIMATION_LAST_UPDATE_TIME:J

    return-void
.end method

.method public final setDirection(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->iDirection:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Laoc/kingdoms/lukasz/units/Unit;->iDirection:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->resetAnimation()V

    :cond_0
    return-void
.end method

.method public final setHP(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/units/Unit;->iHP:I

    return-void
.end method

.method public final setPosX(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosX:F

    return-void
.end method

.method public final setPosY(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/units/Unit;->fPosY:F

    return-void
.end method

.method public update()V
    .locals 6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->updatePath()V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/units/Unit;->ANIMATION_LAST_UPDATE_TIME:J

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/units/Animation_Unit;->ANIMATION_FRAME_TIME:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/units/Unit;->currentFrameID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->currentFrameID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->currentAnimation()Laoc/kingdoms/lukasz/units/Animation_Unit;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/units/Animation_Unit;->getNumOfFrames()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/units/Unit;->currentFrameID:I

    :cond_0
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/units/Unit;->ANIMATION_LAST_UPDATE_TIME:J

    :cond_1
    return-void
.end method

.method protected final updatePath()V
    .locals 7

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    if-eqz v0, :cond_b

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x5

    if-le v0, v2, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    return-void

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-ge v0, v2, :cond_5

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    return-void

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v1

    if-le v0, v1, :cond_4

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    return-void

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    return-void

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v2

    if-le v0, v2, :cond_8

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v2

    if-le v0, v2, :cond_6

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    return-void

    :cond_6
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    return-void

    :cond_7
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    return-void

    :cond_8
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosY()I

    move-result v2

    if-ge v0, v2, :cond_b

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v2

    if-le v0, v2, :cond_9

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    return-void

    :cond_9
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    iget-object v0, v0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/Unit;->getPosX()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    return-void

    :cond_a
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/units/Unit;->setDirection(I)V

    return-void

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/Unit;->movePath:Laoc/kingdoms/lukasz/units/Path;

    return-void
.end method
