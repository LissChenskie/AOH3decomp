.class Lspace/earlygrey/shapedrawer/PolygonDrawer;
.super Lspace/earlygrey/shapedrawer/DrawerTemplate;
.source "PolygonDrawer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspace/earlygrey/shapedrawer/DrawerTemplate<",
        "Lspace/earlygrey/shapedrawer/BatchManager;",
        ">;"
    }
.end annotation


# static fields
.field static final centre:Lcom/badlogic/gdx/math/Vector2;

.field static final radius:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->centre:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->radius:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method constructor <init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;-><init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V

    return-void
.end method


# virtual methods
.method drawPolygonNoJoin(Lcom/badlogic/gdx/math/Vector2;IFFLcom/badlogic/gdx/math/Vector2;FF)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p2

    int-to-float v3, v3

    const v4, 0x40c90fdb

    div-float v5, v4, v3

    add-float v6, v2, p7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    move/from16 v8, p4

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v8, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    div-float v11, v2, v4

    mul-float/2addr v11, v3

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    div-float v4, v6, v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    int-to-float v14, v11

    mul-float/2addr v14, v5

    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v12, v13}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :goto_0
    if-gt v11, v3, :cond_2

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v8

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v4, v10

    sub-float/2addr v2, v4

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v15, v2, v4

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v10

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v4, v8

    add-float/2addr v2, v4

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v16, v2, v4

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v8

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v4, v10

    sub-float/2addr v2, v4

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v17, v2, v4

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v10

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v4, v8

    add-float/2addr v2, v4

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v18, v2, v4

    move-object/from16 v2, p0

    iget-object v4, v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->drawer:Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;

    iget-object v14, v4, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

    const/16 v20, 0x0

    move/from16 v19, p3

    invoke-virtual/range {v14 .. v20}, Lspace/earlygrey/shapedrawer/LineDrawer;->pushLine(FFFFFZ)V

    add-int/lit8 v4, v3, -0x1

    if-ge v11, v4, :cond_0

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v5, v9

    sget-object v14, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v14, v7

    sub-float/2addr v5, v14

    sget-object v14, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v14, v7

    sget-object v15, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v15, v9

    add-float/2addr v14, v15

    invoke-virtual {v4, v5, v14}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    :cond_0
    if-ne v11, v4, :cond_1

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v12, v13}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v2, p0

    return-void
.end method

.method drawPolygonWithJoin(Lcom/badlogic/gdx/math/Vector2;IFFLcom/badlogic/gdx/math/Vector2;FFZ)V
    .locals 26

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v0, p2

    move/from16 v12, p3

    move-object/from16 v13, p5

    move/from16 v1, p6

    move/from16 v2, p7

    iget-object v3, v10, Lspace/earlygrey/shapedrawer/PolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v14, v3, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    const v3, 0x40c90fdb

    invoke-static {v2, v3}, Lspace/earlygrey/shapedrawer/ShapeUtils;->epsilonEquals(FF)Z

    move-result v15

    int-to-float v4, v0

    div-float v5, v3, v4

    add-float v9, v1, v2

    float-to-double v6, v5

    move v8, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v4, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v7, v6

    move/from16 v3, p4

    float-to-double v2, v3

    move/from16 v16, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v7, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v3, 0x1

    const/4 v2, 0x0

    move/from16 p4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v15, :cond_0

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v6, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v6, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    const/4 v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v5

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v8, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v6, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    const/4 v8, 0x0

    int-to-float v8, v8

    mul-float/2addr v8, v5

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move v8, v2

    move v5, v3

    move/from16 v18, v7

    move v7, v0

    goto :goto_0

    :cond_0
    const v17, 0x40c90fdb

    div-float v18, v1, v17

    mul-float v2, v8, v18

    move/from16 v18, v7

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    int-to-float v6, v2

    mul-float/2addr v6, v5

    invoke-static {v6, v1}, Lspace/earlygrey/shapedrawer/ShapeUtils;->epsilonEquals(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    const v6, 0x40c90fdb

    div-float v6, v9, v6

    mul-float/2addr v6, v8

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v6, v3

    add-int/2addr v0, v2

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v3, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    int-to-float v7, v2

    mul-float/2addr v7, v5

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v6, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v6, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move v7, v0

    move v5, v2

    :goto_0
    move v3, v5

    :goto_1
    if-gt v3, v7, :cond_b

    iget-object v0, v10, Lspace/earlygrey/shapedrawer/PolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForQuad()V

    if-nez v15, :cond_2

    if-ne v3, v5, :cond_2

    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, v1, v2, v12}, Lspace/earlygrey/shapedrawer/Joiner;->prepareRadialEndpoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    move/from16 v21, p4

    move v8, v3

    move/from16 v17, v4

    move/from16 v19, v5

    move/from16 v22, v14

    move v14, v6

    goto :goto_2

    :cond_2
    if-eqz p8, :cond_3

    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v17, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v19, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    const/16 v20, 0x1

    move v8, v3

    move-object/from16 v3, v17

    move/from16 v17, v4

    move-object/from16 v4, v19

    move/from16 v19, v5

    move/from16 v5, p3

    move/from16 v21, p4

    move/from16 v22, v14

    move v14, v6

    move/from16 v6, v20

    invoke-static/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    goto :goto_2

    :cond_3
    move/from16 v21, p4

    move v8, v3

    move/from16 v17, v4

    move/from16 v19, v5

    move/from16 v22, v14

    move v14, v6

    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/Joiner;->preparePointyJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F

    :goto_2
    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v0, v0, v18

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v1, v1, v21

    sub-float/2addr v0, v1

    iget v1, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, v21

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, v18

    add-float/2addr v1, v2

    iget v2, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v2

    invoke-virtual {v10, v0, v1}, Lspace/earlygrey/shapedrawer/PolygonDrawer;->vert1(FF)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v0, v0, v18

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v1, v1, v21

    sub-float/2addr v0, v1

    iget v1, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, v21

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, v18

    add-float/2addr v1, v2

    iget v2, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v2

    invoke-virtual {v10, v0, v1}, Lspace/earlygrey/shapedrawer/PolygonDrawer;->vert2(FF)V

    if-nez v15, :cond_5

    if-ge v8, v7, :cond_4

    goto :goto_3

    :cond_4
    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    const/4 v6, 0x0

    invoke-virtual {v0, v14, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v6, 0x0

    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, v17

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, v16

    sub-float/2addr v1, v2

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v2, v2, v16

    sget-object v3, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v3, v3, v17

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :goto_4
    if-nez v15, :cond_7

    if-ge v8, v7, :cond_6

    goto :goto_5

    :cond_6
    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, v1, v2, v12}, Lspace/earlygrey/shapedrawer/Joiner;->prepareRadialEndpoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    move/from16 v23, v6

    goto :goto_6

    :cond_7
    :goto_5
    if-eqz p8, :cond_8

    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    const/16 v20, 0x0

    move/from16 v5, p3

    move/from16 v23, v6

    move/from16 v6, v20

    invoke-static/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    goto :goto_6

    :cond_8
    move/from16 v23, v6

    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/Joiner;->preparePointyJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F

    :goto_6
    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v0, v0, v18

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v1, v1, v21

    sub-float/2addr v0, v1

    iget v1, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, v21

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, v18

    add-float/2addr v1, v2

    iget v2, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v2

    invoke-virtual {v10, v0, v1}, Lspace/earlygrey/shapedrawer/PolygonDrawer;->vert3(FF)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v0, v0, v18

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v1, v1, v21

    sub-float/2addr v0, v1

    iget v1, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, v21

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, v18

    add-float/2addr v1, v2

    iget v2, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v2

    invoke-virtual {v10, v0, v1}, Lspace/earlygrey/shapedrawer/PolygonDrawer;->vert4(FF)V

    move/from16 v6, v22

    invoke-virtual {v10, v6, v6, v6, v6}, Lspace/earlygrey/shapedrawer/PolygonDrawer;->color(FFFF)V

    iget-object v0, v10, Lspace/earlygrey/shapedrawer/PolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    if-eqz p8, :cond_a

    if-nez v15, :cond_9

    if-ge v8, v7, :cond_a

    :cond_9
    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PolygonDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lspace/earlygrey/shapedrawer/PolygonDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v0, p0

    move/from16 v20, v6

    move-object/from16 v6, p1

    move/from16 v22, v7

    move/from16 v7, v18

    move/from16 v24, v23

    move/from16 v23, v8

    move/from16 v8, v21

    move/from16 v25, v9

    move/from16 v9, p3

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/PolygonDrawer;->drawSmoothJoinFill(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FFF)V

    goto :goto_7

    :cond_a
    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v25, v9

    move/from16 v24, v23

    move/from16 v23, v8

    :goto_7
    add-int/lit8 v3, v23, 0x1

    move v6, v14

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v14, v20

    move/from16 p4, v21

    move/from16 v7, v22

    move/from16 v8, v24

    move/from16 v9, v25

    goto/16 :goto_1

    :cond_b
    return-void
.end method

.method polygon(FFIFFFFLspace/earlygrey/shapedrawer/JoinType;FF)V
    .locals 11

    move-object v9, p0

    move-object/from16 v0, p8

    move/from16 v1, p10

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const v2, 0x40c90fdb

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v3, p7, v1

    sget-object v1, Lspace/earlygrey/shapedrawer/PolygonDrawer;->centre:Lcom/badlogic/gdx/math/Vector2;

    move v2, p1

    move v4, p2

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lspace/earlygrey/shapedrawer/PolygonDrawer;->radius:Lcom/badlogic/gdx/math/Vector2;

    move v2, p4

    move/from16 v4, p5

    invoke-virtual {v5, p4, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v9, Lspace/earlygrey/shapedrawer/PolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v2}, Lspace/earlygrey/shapedrawer/BatchManager;->startCaching()Z

    move-result v10

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    if-ne v0, v2, :cond_1

    move-object v0, p0

    move v2, p3

    move/from16 v3, p7

    move/from16 v4, p6

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/PolygonDrawer;->drawPolygonNoJoin(Lcom/badlogic/gdx/math/Vector2;IFFLcom/badlogic/gdx/math/Vector2;FF)V

    goto :goto_1

    :cond_1
    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    move-object v0, p0

    move v2, p3

    move/from16 v4, p6

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/PolygonDrawer;->drawPolygonWithJoin(Lcom/badlogic/gdx/math/Vector2;IFFLcom/badlogic/gdx/math/Vector2;FFZ)V

    :goto_1
    if-nez v10, :cond_3

    iget-object v0, v9, Lspace/earlygrey/shapedrawer/PolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->endCaching()V

    :cond_3
    return-void
.end method
