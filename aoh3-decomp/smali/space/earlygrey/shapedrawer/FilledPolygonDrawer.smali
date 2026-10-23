.class abstract Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;
.super Lspace/earlygrey/shapedrawer/DrawerTemplate;
.source "FilledPolygonDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;,
        Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lspace/earlygrey/shapedrawer/BatchManager;",
        ">",
        "Lspace/earlygrey/shapedrawer/DrawerTemplate<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final triangulator:Lcom/badlogic/gdx/math/EarClippingTriangulator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->triangulator:Lcom/badlogic/gdx/math/EarClippingTriangulator;

    return-void
.end method

.method constructor <init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;-><init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V

    return-void
.end method


# virtual methods
.method abstract polygon(FFIFFFFFFF)V
.end method

.method polygon([F)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon([FII)V

    return-void
.end method

.method polygon([FII)V
    .locals 1

    sget-object v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->triangulator:Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([FII)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon([FLcom/badlogic/gdx/utils/ShortArray;)V

    return-void
.end method

.method polygon([FLcom/badlogic/gdx/utils/ShortArray;)V
    .locals 1

    iget-object v0, p2, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget p2, p2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {p0, p1, v0, p2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon([F[SI)V

    return-void
.end method

.method polygon([F[S)V
    .locals 1

    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon([F[SI)V

    return-void
.end method

.method polygon([F[SFF)V
    .locals 8

    array-length v3, p2

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon([F[SIFFFF)V

    return-void
.end method

.method polygon([F[SI)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon([F[SIFFFF)V

    return-void
.end method

.method abstract polygon([F[SIFFFF)V
.end method

.method rectangle(FFFFF)V
    .locals 11

    move-object v10, p0

    iget-object v0, v10, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v9, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->rectangle(FFFFFFFFF)V

    return-void
.end method

.method rectangle(FFFFFFFFF)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->isCachingDraws()Z

    move-result v1

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v2}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForQuad()V

    move/from16 v2, p5

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v5, p3, v3

    mul-float v3, v3, p4

    add-float v6, p1, v5

    add-float v7, p2, v3

    mul-float v8, v5, v4

    mul-float v9, v3, v2

    sub-float v10, v8, v9

    add-float/2addr v10, v6

    invoke-virtual {p0, v10}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->x1(F)V

    mul-float v10, v5, v2

    mul-float v11, v3, v4

    add-float v12, v10, v11

    add-float/2addr v12, v7

    invoke-virtual {p0, v12}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->y1(F)V

    neg-float v5, v5

    mul-float v12, v5, v4

    sub-float v9, v12, v9

    add-float/2addr v9, v6

    invoke-virtual {p0, v9}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->x2(F)V

    mul-float/2addr v5, v2

    add-float/2addr v11, v5

    add-float/2addr v11, v7

    invoke-virtual {p0, v11}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->y2(F)V

    neg-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v12, v2

    add-float/2addr v12, v6

    invoke-virtual {p0, v12}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->x3(F)V

    mul-float/2addr v3, v4

    add-float/2addr v5, v3

    add-float/2addr v5, v7

    invoke-virtual {p0, v5}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->y3(F)V

    sub-float/2addr v8, v2

    add-float/2addr v8, v6

    invoke-virtual {p0, v8}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->x4(F)V

    add-float/2addr v10, v3

    add-float/2addr v10, v7

    invoke-virtual {p0, v10}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->y4(F)V

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    invoke-virtual {p0, v2, v3, v4, v5}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->color(FFFF)V

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v2}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    if-nez v1, :cond_0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->pushToBatch()V

    :cond_0
    return-void
.end method

.method public triangle(FFFFFFFFF)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->isCachingDraws()Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->vert1(FF)V

    invoke-virtual {p0, p3, p4}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->vert2(FF)V

    invoke-virtual {p0, p5, p6}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->vert3(FF)V

    invoke-virtual {p0, p7, p8, p9}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->color(FFF)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/BatchManager;->pushTriangle()V

    if-nez v0, :cond_0

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/BatchManager;->pushToBatch()V

    :cond_0
    return-void
.end method
