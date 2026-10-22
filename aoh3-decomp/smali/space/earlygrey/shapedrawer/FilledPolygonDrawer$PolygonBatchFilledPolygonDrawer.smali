.class Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;
.super Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;
.source "FilledPolygonDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PolygonBatchFilledPolygonDrawer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspace/earlygrey/shapedrawer/FilledPolygonDrawer<",
        "Lspace/earlygrey/shapedrawer/PolygonBatchManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lspace/earlygrey/shapedrawer/PolygonBatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;-><init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V

    return-void
.end method


# virtual methods
.method polygon(FFIFFFFFFF)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-nez v7, :cond_0

    return-void

    :cond_0
    const v7, 0x40c90fdb

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v8, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v8, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    invoke-virtual {v8}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->startCaching()Z

    move-result v8

    move/from16 v9, p3

    int-to-float v9, v9

    div-float v10, v7, v9

    add-float/2addr v4, v3

    float-to-double v11, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    move/from16 v12, p6

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v7, v14

    const v14, 0x40c90fdb

    div-float v15, v3, v14

    mul-float/2addr v15, v9

    move/from16 v16, v13

    float-to-double v12, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    div-float v13, v4, v14

    mul-float/2addr v9, v13

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v9, v13

    add-int/lit8 v9, v9, 0x1

    int-to-float v13, v12

    mul-float/2addr v13, v10

    invoke-static {v13, v3}, Lspace/earlygrey/shapedrawer/ShapeUtils;->epsilonEquals(FF)Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v12, v12, 0x1

    :cond_1
    move v13, v12

    sub-int/2addr v9, v13

    add-int/lit8 v9, v9, 0x1

    iget-object v12, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v12, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    add-int/lit8 v14, v9, 0x2

    invoke-virtual {v12, v14}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->ensureSpace(I)V

    iget-object v12, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v12, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    invoke-virtual {v12}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->getVerticesArrayIndex()I

    move-result v14

    invoke-virtual/range {p0 .. p2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->vert1(FF)V

    move/from16 v12, p9

    invoke-virtual {v0, v12}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->color1(F)V

    iget-object v12, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v12, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    invoke-virtual {v12}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->pushVertex()V

    sget-object v12, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 p8, v8

    const/4 v8, 0x0

    invoke-virtual {v12, v15, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v12

    move-object v8, v12

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v3, v6

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    add-float v3, v3, p1

    invoke-virtual {v0, v3}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->x1(F)V

    sget-object v3, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v3, v7

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    add-float v3, v3, p2

    invoke-virtual {v0, v3}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->y1(F)V

    invoke-virtual {v0, v5}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->color1(F)V

    iget-object v3, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v3, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    invoke-virtual {v3}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->pushVertex()V

    iget-object v3, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v3, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    int-to-short v8, v14

    add-int/lit8 v12, v14, 0x1

    int-to-short v12, v12

    add-int/lit8 v15, v14, 0x2

    int-to-short v15, v15

    invoke-virtual {v3, v8, v12, v15}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->pushTriangleIndices(SSS)V

    sget-object v3, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-virtual {v3, v12, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    int-to-float v13, v13

    mul-float/2addr v13, v10

    invoke-static {v13, v4}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v10, v9, -0x1

    if-ge v3, v10, :cond_2

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v10, v6

    sget-object v13, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v13, v7

    sub-float/2addr v10, v13

    add-float v10, v10, p1

    invoke-virtual {v0, v10}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->x1(F)V

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v10, v7

    sget-object v13, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v13, v6

    add-float/2addr v10, v13

    add-float v10, v10, p2

    invoke-virtual {v0, v10}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->y1(F)V

    invoke-virtual {v0, v5}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->color1(F)V

    iget-object v10, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v10, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    invoke-virtual {v10}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->pushVertex()V

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    sget-object v13, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v13, v13, v16

    sget-object v15, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v15, v11

    sub-float/2addr v13, v15

    sget-object v15, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v15, v11

    sget-object v12, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v12, v12, v16

    add-float/2addr v15, v12

    invoke-virtual {v10, v13, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v10, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v10, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    add-int v12, v14, v3

    add-int/lit8 v13, v12, 0x2

    int-to-short v13, v13

    add-int/lit8 v12, v12, 0x3

    int-to-short v12, v12

    invoke-virtual {v10, v8, v13, v12}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->pushTriangleIndices(SSS)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v6

    sget-object v2, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    add-float v1, v1, p1

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->x1(F)V

    sget-object v1, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v7

    sget-object v2, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    add-float v1, v1, p2

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->y1(F)V

    invoke-virtual {v0, v5}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->color1(F)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v1, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->pushVertex()V

    if-nez p8, :cond_3

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v1, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->endCaching()V

    :cond_3
    return-void
.end method

.method polygon([F[SIFFFF)V
    .locals 10

    move-object v0, p0

    move-object v2, p1

    array-length v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v3, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v3, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    invoke-virtual {v3, v1}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->ensureSpace(I)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v1, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    iget-object v3, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v3, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    iget v5, v3, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->floatBits:F

    move-object v3, p2

    move v4, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->pushVertexData([F[SIFFFFF)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    check-cast v1, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->pushToBatch()V

    return-void
.end method
