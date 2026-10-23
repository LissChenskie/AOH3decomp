.class Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;
.super Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;
.source "FilledPolygonDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatchFilledPolygonDrawer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspace/earlygrey/shapedrawer/FilledPolygonDrawer<",
        "Lspace/earlygrey/shapedrawer/BatchManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;-><init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V

    return-void
.end method


# virtual methods
.method polygon(FFIFFFFFFF)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    const/4 v7, 0x0

    cmpl-float v8, v4, v7

    if-nez v8, :cond_0

    return-void

    :cond_0
    const v8, 0x40c90fdb

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v9, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v9}, Lspace/earlygrey/shapedrawer/BatchManager;->startCaching()Z

    move-result v9

    move/from16 v10, p3

    int-to-float v10, v10

    div-float v11, v8, v10

    add-float/2addr v4, v3

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    move/from16 v13, p6

    float-to-double v7, v13

    move/from16 p3, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    const v8, 0x40c90fdb

    div-float v13, v3, v8

    mul-float/2addr v13, v10

    move/from16 p8, v9

    float-to-double v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    const v9, 0x40c90fdb

    div-float v9, v4, v9

    mul-float/2addr v10, v9

    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    add-int/lit8 v9, v9, 0x1

    int-to-float v10, v8

    mul-float/2addr v10, v11

    invoke-static {v10, v3}, Lspace/earlygrey/shapedrawer/ShapeUtils;->epsilonEquals(FF)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    :cond_1
    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    sub-int/2addr v9, v8

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    iget-object v8, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v8}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForTriangle()V

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v13, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v13, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->vert1(FF)V

    sget-object v3, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v3, v12

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    add-float v3, v3, p1

    invoke-virtual {v0, v3}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->x2(F)V

    sget-object v3, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v3, v7

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v8, v12

    add-float/2addr v3, v8

    add-float v3, v3, p2

    invoke-virtual {v0, v3}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->y2(F)V

    sget-object v3, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v3, v12

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v8, v7

    sub-float/2addr v3, v8

    add-float v3, v3, p1

    invoke-virtual {v0, v3}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->x3(F)V

    sget-object v3, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v3, v7

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v8, v12

    add-float/2addr v3, v8

    add-float v3, v3, p2

    invoke-virtual {v0, v3}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->y3(F)V

    invoke-virtual {v0, v5, v6, v6}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->color(FFF)V

    iget-object v3, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v3}, Lspace/earlygrey/shapedrawer/BatchManager;->pushTriangle()V

    goto :goto_0

    :cond_2
    sget-object v3, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    const/4 v10, 0x0

    invoke-virtual {v3, v13, v10}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    int-to-float v8, v8

    mul-float/2addr v8, v11

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    :goto_0
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v8, v9, -0x1

    if-ge v3, v8, :cond_6

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v8, v9, -0x2

    if-ge v3, v8, :cond_3

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    sget-object v11, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v11, v14

    sget-object v15, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v15, v15, p3

    sub-float/2addr v11, v15

    sget-object v15, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v15, v15, p3

    sget-object v13, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v13, v14

    add-float/2addr v15, v13

    invoke-virtual {v10, v11, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v11, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->dir:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_2

    :cond_3
    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    :goto_2
    rem-int/lit8 v10, v3, 0x2

    if-nez v10, :cond_4

    iget-object v8, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v8}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForQuad()V

    invoke-virtual/range {p0 .. p2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->vert1(FF)V

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v8, v12

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v10, v7

    sub-float/2addr v8, v10

    add-float v8, v8, p1

    invoke-virtual {v0, v8}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->x2(F)V

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v8, v7

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v10, v12

    add-float/2addr v8, v10

    add-float v8, v8, p2

    invoke-virtual {v0, v8}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->y2(F)V

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v8, v12

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v10, v7

    sub-float/2addr v8, v10

    add-float v8, v8, p1

    invoke-virtual {v0, v8}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->x3(F)V

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v8, v7

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v10, v12

    add-float/2addr v8, v10

    add-float v8, v8, p2

    invoke-virtual {v0, v8}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->y3(F)V

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v8, v12

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v10, v7

    sub-float/2addr v8, v10

    add-float v8, v8, p1

    invoke-virtual {v0, v8}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->x4(F)V

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v8, v7

    sget-object v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v10, v12

    add-float/2addr v8, v10

    add-float v8, v8, p2

    invoke-virtual {v0, v8}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->y4(F)V

    invoke-virtual {v0, v5, v6, v6, v6}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->color(FFFF)V

    iget-object v8, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v8}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    goto :goto_3

    :cond_4
    if-ne v3, v8, :cond_5

    iget-object v8, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v8}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForTriangle()V

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->vert1(FF)V

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v8, v12

    sget-object v13, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v13, v7

    sub-float/2addr v8, v13

    add-float v8, v8, p1

    invoke-virtual {v0, v8}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->x2(F)V

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v8, v7

    sget-object v13, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v13, v12

    add-float/2addr v8, v13

    add-float v8, v8, p2

    invoke-virtual {v0, v8}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->y2(F)V

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v8, v12

    sget-object v13, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v13, v7

    sub-float/2addr v8, v13

    add-float v8, v8, p1

    invoke-virtual {v0, v8}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->x3(F)V

    sget-object v8, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v8, v7

    sget-object v13, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v13, v12

    add-float/2addr v8, v13

    add-float v8, v8, p2

    invoke-virtual {v0, v8}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->y3(F)V

    invoke-virtual {v0, v5, v6, v6}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->color(FFF)V

    iget-object v8, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v8}, Lspace/earlygrey/shapedrawer/BatchManager;->pushTriangle()V

    goto :goto_4

    :cond_5
    :goto_3
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v13, v10

    goto/16 :goto_1

    :cond_6
    if-nez p8, :cond_7

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->endCaching()V

    :cond_7
    return-void
.end method

.method polygon([F[SIFFFF)V
    .locals 4

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v0, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v2}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForTriangle()V

    aget-short v2, p2, v1

    mul-int/lit8 v3, v2, 0x2

    aget v3, p1, v3

    mul-float/2addr v3, p6

    add-float/2addr v3, p4

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    mul-float/2addr v2, p7

    add-float/2addr v2, p5

    invoke-virtual {p0, v3, v2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->vert1(FF)V

    add-int/lit8 v2, v1, 0x1

    aget-short v2, p2, v2

    mul-int/lit8 v3, v2, 0x2

    aget v3, p1, v3

    mul-float/2addr v3, p6

    add-float/2addr v3, p4

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    mul-float/2addr v2, p7

    add-float/2addr v2, p5

    invoke-virtual {p0, v3, v2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->vert2(FF)V

    add-int/lit8 v2, v1, 0x2

    aget-short v2, p2, v2

    mul-int/lit8 v3, v2, 0x2

    aget v3, p1, v3

    mul-float/2addr v3, p6

    add-float/2addr v3, p4

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    mul-float/2addr v2, p7

    add-float/2addr v2, p5

    invoke-virtual {p0, v3, v2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->vert3(FF)V

    invoke-virtual {p0, v0, v0, v0}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->color(FFF)V

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v2}, Lspace/earlygrey/shapedrawer/BatchManager;->pushTriangle()V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/BatchManager;->pushToBatch()V

    return-void
.end method
