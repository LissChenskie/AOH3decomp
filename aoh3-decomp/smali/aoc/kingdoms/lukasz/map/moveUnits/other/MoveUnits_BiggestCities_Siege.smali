.class public Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;
.super Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
.source "MoveUnits_BiggestCities_Siege.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;-><init>(III)V

    return-void
.end method


# virtual methods
.method public buildMoveUnitsLine(Z)V
    .locals 6

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->buildAnimation(Z)V

    iget p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iRouteSize:I

    mul-int/lit8 p1, p1, 0xf

    iput p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iPrecision:I

    iget p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iPrecision:I

    new-array p1, p1, [Lcom/badlogic/gdx/math/Vector2;

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    iget p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iRouteSize:I

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iRouteSize:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->lRoute:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->lRoute:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v3, v4, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, p1, v2

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->lRoute:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->getShiftPosXY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->lRoute:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->getShiftPosXY()I

    move-result v4

    add-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, p1, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iRouteSize:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->lRoute:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iRouteSize:I

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

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->lRoute:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iRouteSize:I

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

    new-instance v1, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    :goto_1
    iget p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iPrecision:I

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v2, p1, v0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object p1, p1, v0

    int-to-float v2, v0

    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iPrecision:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
