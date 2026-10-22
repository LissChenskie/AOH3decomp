.class public Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;
.super Ljava/lang/Object;
.source "ShipLine.java"


# instance fields
.field public fromProvinceID:I

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;",
            ">;"
        }
    .end annotation
.end field

.field public pointsSize:I

.field public toProvinceID:I

.field public vPoints:[Lcom/badlogic/gdx/math/Vector2;

.field public width:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addNewPoint()V
    .locals 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, -0x1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->buildData()V

    return-void
.end method

.method public addNewPoint_Just(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    return-void
.end method

.method public final buildData()V
    .locals 8

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v3

    move v1, v3

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v2

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v2, v1

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    sub-int/2addr v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    sub-int/2addr v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v2

    new-instance v2, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v2, v0, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    move v0, v3

    :goto_1
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v5, v4, v0

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v0

    int-to-float v5, v0

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    sub-int/2addr v0, v1

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v4, v3, 0x1

    aget-object v2, v2, v4

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v5

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    mul-float/2addr v2, v5

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v6, v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v6

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_2

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->width:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    :try_start_0
    iget p1, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_LINE_PRECISION:I

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    const/4 v2, 0x1

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v0, p1, v3, v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public removePoint()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    if-lez v0, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->buildData()V

    return-void
.end method
