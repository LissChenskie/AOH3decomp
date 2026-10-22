.class public Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;
.super Ljava/lang/Object;
.source "MoveUnits_RegroupLine.java"


# static fields
.field public static final PRECISION:I = 0xf


# instance fields
.field public ColorLine:Lcom/badlogic/gdx/graphics/Color;

.field public ColorLine2:Lcom/badlogic/gdx/graphics/Color;

.field private iPrecision:I

.field public iRouteSize:I

.field private lRoute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vPoints:[Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f129293

    const v3, 0x3f028283

    const v4, 0x3ee6e6e7

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->ColorLine:Lcom/badlogic/gdx/graphics/Color;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d23d70a    # 0.04f

    invoke-direct {v1, v2, v2, v2, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->setPath(Ljava/util/List;)V

    iget p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->buildMoveUnitsLine(Z)V

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/16 v1, 0x64

    const v2, 0x3ecccccd    # 0.4f

    const/16 v3, 0x32

    invoke-static {p1, v0, v3, v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    return-void
.end method


# virtual methods
.method public final buildMoveUnitsLine(Z)V
    .locals 6

    iget p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    mul-int/lit8 v0, p1, 0xf

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iPrecision:I

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, p1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, p1, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v1

    const/16 v2, 0x1f

    if-lez v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v3

    add-int/lit8 v3, v3, -0xf

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v4

    add-int/lit8 v4, v4, -0xf

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v4, v2

    neg-int v2, v4

    int-to-float v2, v2

    invoke-direct {v1, v3, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, p1, v0

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/lit8 v3, v3, -0xf

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/lit8 v4, v4, -0xf

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v4, v2

    neg-int v2, v4

    int-to-float v2, v2

    invoke-direct {v1, v3, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, p1, v0

    :goto_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v1

    if-lez v1, :cond_3

    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v2, p1, v1

    goto :goto_3

    :cond_3
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v2, p1, v1

    :goto_3
    new-instance v1, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    :goto_4
    iget p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iPrecision:I

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v2, p1, v0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object p1, p1, v0

    int-to-float v2, v0

    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iPrecision:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    :try_start_0
    iget p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    if-lez p1, :cond_2

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iPrecision:I

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v3, p2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iPrecision:I

    if-ge v1, v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v2, p2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->ColorLine2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    const/4 v1, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p2, p1, v2, v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public getFromProvinceID()I
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getToProvinceID()I
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getToProvinceLastID()I
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final setPath(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->lRoute:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->iRouteSize:I

    return-void
.end method
