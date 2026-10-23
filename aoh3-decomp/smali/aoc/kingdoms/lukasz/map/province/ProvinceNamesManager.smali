.class public Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;
.super Ljava/lang/Object;
.source "ProvinceNamesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;
    }
.end annotation


# static fields
.field public static final FONT_ID:I = 0x0

.field public static NULL_INDICATOR:I = 0x29a

.field public static drawProvinceNames:Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;

.field public static provinceNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceNameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvinceNames:Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildProvNameData()V
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    if-ge v2, v4, :cond_1

    if-gt v0, v2, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->buildProvNamePoints(I)V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->buildProvNameData(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveProvinceNamesPoints()V

    :cond_2
    return-void
.end method

.method public static final buildProvNameData(IZ)V
    .locals 16

    move/from16 v1, p0

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawAngleLow:F

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    invoke-static {v0, v5, v6, v7}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth3(FFFF)F

    move-result v5

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sub-float/2addr v6, v7

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    add-float/2addr v0, v6

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v9, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v9, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v10, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    sget-object v9, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object v10, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v11, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v11, v11, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    new-array v10, v7, [Lcom/badlogic/gdx/math/Vector2;

    const/4 v11, 0x5

    new-array v11, v11, [Lcom/badlogic/gdx/math/Vector2;

    new-instance v12, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v12, v0, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v12, v11, v4

    new-instance v12, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v12, v0, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v6, 0x1

    aput-object v12, v11, v6

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v13, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v13, v13, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    invoke-direct {v0, v12, v13}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v12, 0x2

    aput-object v0, v11, v12

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v12, 0x3

    aput-object v0, v11, v12

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v8, 0x4

    aput-object v0, v11, v8

    new-instance v0, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v0, v11, v4}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_1

    new-instance v9, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v9}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v9, v10, v8

    int-to-float v11, v8

    int-to-float v12, v7

    sub-float/2addr v12, v2

    div-float/2addr v11, v12

    invoke-virtual {v0, v9, v11}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v3

    move v0, v4

    :goto_1
    add-int/lit8 v9, v7, -0x1

    if-ge v0, v9, :cond_2

    aget-object v9, v10, v0

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget-object v11, v10, v0

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v0, v0, 0x1

    aget-object v12, v10, v0

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget-object v13, v10, v0

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v9, v11, v12, v13}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth3(FFFF)F

    move-result v9

    add-float/2addr v8, v9

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v6

    int-to-float v0, v0

    div-float/2addr v8, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v8, v3

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    aget-object v11, v10, v4

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget-object v12, v10, v4

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v7, v11, v12}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v12, v3

    move v11, v4

    move v7, v6

    :goto_3
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v7, v13, :cond_5

    :goto_4
    if-ge v11, v9, :cond_4

    aget-object v13, v10, v11

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget-object v14, v10, v11

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v15, v11, 0x1

    aget-object v3, v10, v15

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget-object v2, v10, v15

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v13, v14, v3, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth3(FFFF)F

    move-result v2

    add-float/2addr v12, v2

    cmpl-float v2, v12, v8

    if-ltz v2, :cond_3

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v10, v11

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget-object v13, v10, v11

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v2, v3, v13}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-float v2, v8, v12

    move v12, v2

    goto :goto_5

    :cond_3
    move v11, v15

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v7, v7, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v10, v9

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget-object v7, v10, v9

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v2, v3, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v7

    float-to-double v7, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v3, v3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v3, v9

    float-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double/2addr v7, v9

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v7, v9

    double-to-float v3, v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v8, v4

    :goto_6
    if-ge v8, v7, :cond_8

    :try_start_1
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v6

    if-ge v8, v9, :cond_6

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v11, v8, 0x1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v9, v10, v12, v11}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle2(FFFF)F

    move-result v9

    goto :goto_7

    :cond_6
    add-int/lit8 v9, v8, -0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v10, v9, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle2(FFFF)F

    move-result v9

    :goto_7
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    if-nez v8, :cond_7

    :try_start_2
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v11, v8, 0x1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v9, v10, v12, v11}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle2(FFFF)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    add-int/lit8 v9, v8, -0x1

    :try_start_3
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v10, v9, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle2(FFFF)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    :cond_8
    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v3

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    const-class v7, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v7

    :try_start_4
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v8, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    div-float v8, v5, v8

    const v9, 0x3dcccccd    # 0.1f

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v10, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpl-float v9, v10, v9

    if-lez v9, :cond_9

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    const/4 v9, 0x0

    cmpl-float v10, v5, v9

    if-lez v10, :cond_d

    move v9, v4

    :goto_9
    const v10, 0x38d1b717    # 1.0E-4f

    :try_start_5
    iget v11, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpl-float v11, v5, v11

    const v12, 0x3c4ccccd    # 0.0125f

    const v13, 0x3a83126f    # 0.001f

    const v14, 0x3ccccccd    # 0.025f

    if-lez v11, :cond_a

    add-float/2addr v8, v14

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v11

    invoke-static {v13, v8}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v11, v13}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v11, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpg-float v11, v5, v11

    if-gez v11, :cond_b

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sub-float/2addr v8, v12

    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    goto :goto_a

    :cond_a
    sub-float/2addr v8, v14

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v11

    invoke-static {v13, v8}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v11, v13}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v11, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpl-float v11, v5, v11

    if-lez v11, :cond_b

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    add-float/2addr v8, v12

    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    goto :goto_a

    :cond_b
    add-int/lit8 v11, v9, 0x1

    const/16 v12, 0x3e7

    if-le v9, v12, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProvinceNamesManager: tempNumOfIterations: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iput v10, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_a

    :cond_c
    move v9, v11

    goto/16 :goto_9

    :catch_4
    :try_start_6
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iput v10, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    :cond_d
    :goto_a
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v5, v4

    :goto_b
    if-ge v5, v3, :cond_e

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v9, v9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v5, v4

    :goto_c
    if-ge v5, v3, :cond_f

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    new-instance v8, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v8}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_f
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3, v4, v5, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle2(FFFF)F

    move-result v0

    iput v0, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawAngleLow:F

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_d
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_10

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    new-instance v3, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_10
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawAngleLow:F

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_11
    :goto_e
    return-void
.end method

.method public static final buildProvNamePoints(I)V
    .locals 15

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_a

    const/16 v4, 0x12b

    if-ge v3, v4, :cond_a

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v7, v2

    move v8, v7

    move v9, v4

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    sub-int/2addr v10, v4

    if-ge v7, v10, :cond_4

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_3

    add-int/lit8 v10, v7, 0x1

    :goto_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v11

    if-ge v10, v11, :cond_3

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v11

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    sub-int/2addr v12, v13

    mul-int/2addr v11, v12

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    sub-int/2addr v13, v14

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v11, v11

    cmpl-float v12, v11, v6

    if-lez v12, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    move v8, v7

    move v9, v10

    move v6, v11

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v8, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v9, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    iput v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    iput v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    :cond_5
    iget v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sub-float/2addr v7, v8

    const v8, 0x3ecccccd    # 0.4f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    iget v9, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v11, 0x4

    mul-int/2addr v8, v11

    new-array v12, v8, [Lcom/badlogic/gdx/math/Vector2;

    const/4 v13, 0x5

    new-array v13, v13, [Lcom/badlogic/gdx/math/Vector2;

    new-instance v14, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v14, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v14, v13, v2

    new-instance v14, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v14, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v14, v13, v4

    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v7

    int-to-float v7, v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v6, v7, v14}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v6, v13, v5

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v5, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v6, 0x3

    aput-object v5, v13, v6

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v5, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v5, v13, v11

    new-instance v5, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v5, v13, v2}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    move v6, v2

    :goto_3
    if-ge v6, v8, :cond_6

    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v7}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v7, v12, v6

    int-to-float v9, v6

    int-to-float v10, v8

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    div-float/2addr v9, v10

    invoke-virtual {v5, v7, v9}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, -0x1

    :goto_4
    if-ltz v8, :cond_9

    aget-object v5, v12, v8

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    aget-object v6, v12, v8

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v6, v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v5

    if-ne v5, p0, :cond_8

    aget-object v5, v12, v8

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    aget-object v6, v12, v8

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v6, v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v5

    if-ne v5, p0, :cond_8

    aget-object v5, v12, v8

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v5, v6

    aget-object v6, v12, v8

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v6, v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v5

    if-ne v5, p0, :cond_8

    aget-object v5, v12, v8

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    aget-object v6, v12, v8

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v6, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v5

    if-ne v5, p0, :cond_8

    aget-object v5, v12, v8

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    aget-object v6, v12, v8

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v6, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v5

    if-eq v5, p0, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_8
    :goto_5
    move v4, v2

    :cond_9
    if-eqz v4, :cond_1

    const/4 v3, -0x1

    :cond_a
    if-lez v3, :cond_b

    sget-object p0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    sget-object p0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    return-void
.end method

.method public static clearProvNameData(I)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawAngleLow:F

    :cond_0
    return-void
.end method

.method public static final declared-synchronized drawProvName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 9

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_SCALE:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceNameLength_Minus1:I

    :goto_0
    if-ltz p2, :cond_1

    const/4 v4, 0x0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    mul-float/2addr v3, v6

    float-to-int v6, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v7

    add-int/2addr v3, v7

    int-to-float v3, v3

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v7

    mul-float/2addr v3, v7

    float-to-int v7, v3

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/badlogic/gdx/math/Matrix4;

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :catch_0
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final drawProvNamePoints(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    if-nez v0, :cond_2

    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget p1, p1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    add-float/2addr v0, p1

    float-to-int p1, v0

    add-int/lit8 v4, p1, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    return-void
.end method

.method public static final declared-synchronized drawProvName_Medium(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 11

    const-string v0, ""

    const-class v1, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_SCALE:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v0

    add-int/2addr v0, p2

    sget-object p2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result p2

    add-int/2addr v0, p2

    int-to-float p2, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int v8, p2

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result p2

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int v9, p2

    sget-object p2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v10, p1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawAngleLow:F

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IIF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static final declared-synchronized drawProvName_Old(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 8

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceNameLength_Minus1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-ltz p2, :cond_0

    const/4 v3, 0x0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v2, v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float/2addr v2, v5

    float-to-int v5, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    mul-float/2addr v2, v6

    float-to-int v6, v2

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/badlogic/gdx/math/Matrix4;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catch_1
    :cond_0
    monitor-exit v0

    return-void
.end method

.method public static final drawProvNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvinceNames:Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;->drawProvNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final declared-synchronized drawProvNames_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosX:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosY:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->drawProvinceNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesTexture()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesFBO()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->updateFBO()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->FBO_NUM_TO_GENERATE_NAMES:I

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesFBO()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesTexture()V

    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v4, v4, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Default_Inner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboPosX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboPosY:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->drawProvinceNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized drawProvNames_Just_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_ALPHA:F

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Default_Inner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final drawProvNames_Just_Default_Inner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {p0, v2, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    invoke-static {p0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static final declared-synchronized drawProvNames_Just_Medium(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosX:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosY:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->drawProvinceNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesTexture()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesFBO()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Medium_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->updateFBO()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->FBO_NUM_TO_GENERATE_NAMES:I

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesFBO()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesTexture()V

    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v4, v4, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Medium_Default_Inner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboPosX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboPosY:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->drawProvinceNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Medium_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized drawProvNames_Just_Medium_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_ALPHA:F

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Medium_Default_Inner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final drawProvNames_Just_Medium_Default_Inner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {p0, v2, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvName_Medium(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    invoke-static {p0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvName_Medium(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static final updateDrawProvinceNames()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvinceNames:Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvinceNames:Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;

    goto :goto_0

    :cond_1
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvinceNames:Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;

    :goto_0
    return-void
.end method
