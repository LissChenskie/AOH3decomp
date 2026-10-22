.class public Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;
.super Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
.source "MoveUnits_BiggestCities_Diplomacy.java"


# instance fields
.field public widthPercentage:F


# direct methods
.method public constructor <init>(IIILcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;-><init>(III)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    iput-object p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine:Lcom/badlogic/gdx/graphics/Color;

    iput-object p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method


# virtual methods
.method public buildAnimation(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lMovingTime:J

    const p1, 0x3c23d70a    # 0.01f

    iput p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    new-instance p1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    :cond_0
    return-void
.end method

.method public draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z
    .locals 9

    const/4 p1, 0x1

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->iRouteSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_5

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->iPrecision:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    if-ge v2, v3, :cond_1

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v4, p2

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->iPrecision:I

    if-ge v2, v3, :cond_1

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v4, p2

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    const v3, 0x3f7d70a4    # 0.99f

    cmpg-float v2, v2, v3

    const v4, 0x3f0ccccd    # 0.55f

    if-gez v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    goto :goto_2

    :cond_2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    :goto_2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3e800000    # 0.25f

    add-float/2addr v4, v5

    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    mul-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    :cond_3
    mul-float/2addr v4, v6

    sget-object v5, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v2, v0, v4, v5, p1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    const v7, 0x3ee66666    # 0.45f

    mul-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    array-length v3, v3

    sub-int/2addr v3, p1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v2, p2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    array-length v4, v4

    sub-int/2addr v4, p1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, p2

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    mul-float/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledCircle(FFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    array-length v3, v3

    sub-int/2addr v3, p1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lRoute:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v2, p2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    array-length v4, v4

    sub-int/2addr v4, p1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v4, p2

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    mul-float/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr p2, v5

    invoke-virtual {v0, v2, v3, v4, p2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->circle(FFFF)V

    :cond_4
    iget p2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_5

    return p1

    :cond_5
    return v1

    :catch_0
    move-exception p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    return p1
.end method

.method public getShiftPosXY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
