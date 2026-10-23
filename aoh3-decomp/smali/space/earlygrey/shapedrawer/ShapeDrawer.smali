.class public Lspace/earlygrey/shapedrawer/ShapeDrawer;
.super Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;
.source "ShapeDrawer.java"


# instance fields
.field protected brush:Lspace/earlygrey/shapedrawer/shapes/Brush;

.field protected pen:Lspace/earlygrey/shapedrawer/shapes/Pen;

.field private final rectangleCorners:[F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 2

    new-instance v0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;

    invoke-direct {v0}, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;-><init>(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lspace/earlygrey/shapedrawer/SideEstimator;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1

    new-instance v0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;

    invoke-direct {v0}, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;-><init>(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lspace/earlygrey/shapedrawer/SideEstimator;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lspace/earlygrey/shapedrawer/SideEstimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;-><init>(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lspace/earlygrey/shapedrawer/SideEstimator;)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangleCorners:[F

    new-instance p1, Lspace/earlygrey/shapedrawer/shapes/Pen;

    invoke-direct {p1, p0}, Lspace/earlygrey/shapedrawer/shapes/Pen;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pen:Lspace/earlygrey/shapedrawer/shapes/Pen;

    new-instance p1, Lspace/earlygrey/shapedrawer/shapes/Brush;

    invoke-direct {p1, p0}, Lspace/earlygrey/shapedrawer/shapes/Brush;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->brush:Lspace/earlygrey/shapedrawer/shapes/Brush;

    return-void
.end method

.method static synthetic lambda$path$0(FIF)F
    .locals 0

    return p0
.end method


# virtual methods
.method public arc(FFFFF)V
    .locals 7

    iget v6, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->arc(FFFFFF)V

    return-void
.end method

.method public arc(FFFFFF)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->arc(FFFFFFZ)V

    return-void
.end method

.method public arc(FFFFFFLspace/earlygrey/shapedrawer/JoinType;I)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygonDrawer:Lspace/earlygrey/shapedrawer/PolygonDrawer;

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    move/from16 v4, p8

    move v5, p3

    move v6, p3

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v1 .. v11}, Lspace/earlygrey/shapedrawer/PolygonDrawer;->polygon(FFIFFFFLspace/earlygrey/shapedrawer/JoinType;FF)V

    return-void
.end method

.method public arc(FFFFFFZ)V
    .locals 10

    move-object v9, p0

    move v3, p3

    invoke-virtual {p0, p3, p3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->estimateSidesRequired(FF)I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->arc(FFFFFFZI)V

    return-void
.end method

.method public arc(FFFFFFZI)V
    .locals 12

    move-object v0, p0

    move/from16 v8, p6

    if-eqz p7, :cond_0

    invoke-virtual {p0, v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    move-object v9, v1

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygonDrawer:Lspace/earlygrey/shapedrawer/PolygonDrawer;

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    move/from16 v4, p8

    move v5, p3

    move v6, p3

    move/from16 v8, p6

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v1 .. v11}, Lspace/earlygrey/shapedrawer/PolygonDrawer;->polygon(FFIFFFFLspace/earlygrey/shapedrawer/JoinType;FF)V

    return-void
.end method

.method public circle(FFF)V
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->circle(FFFF)V

    return-void
.end method

.method public circle(FFFF)V
    .locals 7

    invoke-virtual {p0, p4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    move-object v6, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->circle(FFFFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public circle(FFFFLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->ellipse(FFFFFFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public circle(FFFLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 6

    iget v4, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->circle(FFFFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public ellipse(FFFF)V
    .locals 7

    const/4 v5, 0x0

    iget v6, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->ellipse(FFFFFF)V

    return-void
.end method

.method public ellipse(FFFFF)V
    .locals 7

    iget v6, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->ellipse(FFFFFF)V

    return-void
.end method

.method public ellipse(FFFFFF)V
    .locals 9

    invoke-virtual {p0, p6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    move-object v8, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->ellipse(FFFFFFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public ellipse(FFFFFFLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 10

    move-object v9, p0

    move v4, p3

    move v5, p4

    invoke-virtual {p0, p3, p4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->estimateSidesRequired(FF)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon(FFIFFFFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public filledCircle(FFF)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledEllipse(FFFFF)V

    return-void
.end method

.method public filledCircle(FFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 8

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v6, v7

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledEllipse(FFFFFFF)V

    return-void
.end method

.method public filledCircle(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 6

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledEllipse(FFFFF)V

    return-void
.end method

.method public filledCircle(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/graphics/Color;)V
    .locals 8

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p2

    move v6, v7

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledEllipse(FFFFFFF)V

    return-void
.end method

.method public filledEllipse(FFFF)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledEllipse(FFFFF)V

    return-void
.end method

.method public filledEllipse(FFFFF)V
    .locals 9

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v7, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v8, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledEllipse(FFFFFFF)V

    return-void
.end method

.method public filledEllipse(FFFFFFF)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    move v5, p3

    move/from16 v6, p4

    invoke-virtual {p0, p3, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->estimateSidesRequired(FF)I

    move-result v4

    const/4 v8, 0x0

    const v9, 0x40c90fdb

    move v2, p1

    move v3, p2

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon(FFIFFFFFFF)V

    return-void
.end method

.method public filledEllipse(FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 8

    invoke-virtual {p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v6

    invoke-virtual {p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledEllipse(FFFFFFF)V

    return-void
.end method

.method public filledPolygon(FFIF)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygon(FFIFFF)V

    return-void
.end method

.method public filledPolygon(FFIFF)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygon(FFIFFF)V

    return-void
.end method

.method public filledPolygon(FFIFFF)V
    .locals 10

    move-object v9, p0

    iget-object v0, v9, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v7, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    iget-object v0, v9, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v8, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygon(FFIFFFFF)V

    return-void
.end method

.method public filledPolygon(FFIFFFFF)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    const/4 v8, 0x0

    const v9, 0x40c90fdb

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon(FFIFFFFFFF)V

    return-void
.end method

.method public filledPolygon(FFIFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    invoke-virtual/range {p7 .. p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    invoke-virtual/range {p8 .. p8}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygon(FFIFFFFF)V

    return-void
.end method

.method public filledPolygon(Lcom/badlogic/gdx/math/Polygon;)V
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygon([F)V

    return-void
.end method

.method public filledPolygon(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/utils/ShortArray;)V
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygon([FLcom/badlogic/gdx/utils/ShortArray;)V

    return-void
.end method

.method public filledPolygon(Lcom/badlogic/gdx/math/Polygon;[S)V
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygon([F[S)V

    return-void
.end method

.method public filledPolygon([F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon([F)V

    return-void
.end method

.method public filledPolygon([FII)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    invoke-virtual {v0, p1, p2, p3}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon([FII)V

    return-void
.end method

.method public filledPolygon([FLcom/badlogic/gdx/utils/ShortArray;)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    invoke-virtual {v0, p1, p2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon([FLcom/badlogic/gdx/utils/ShortArray;)V

    return-void
.end method

.method public filledPolygon([F[S)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    invoke-virtual {v0, p1, p2}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon([F[S)V

    return-void
.end method

.method public filledPolygon([F[SFF)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon([F[SFF)V

    return-void
.end method

.method public filledPolygon([F[SIFFFF)V
    .locals 8

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon([F[SIFFFF)V

    return-void
.end method

.method public filledRectangle(FFFF)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledRectangle(FFFFF)V

    return-void
.end method

.method public filledRectangle(FFFFF)V
    .locals 6

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->rectangle(FFFFF)V

    return-void
.end method

.method public filledRectangle(FFFFFFFFF)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->rectangle(FFFFFFFFF)V

    return-void
.end method

.method public filledRectangle(FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    invoke-virtual/range {p7 .. p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual/range {p7 .. p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v10}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->rectangle(FFFFFFFFF)V

    return-void
.end method

.method public filledRectangle(FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    invoke-virtual/range {p7 .. p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual/range {p8 .. p8}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    invoke-virtual/range {p9 .. p9}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v10}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->rectangle(FFFFFFFFF)V

    return-void
.end method

.method public filledRectangle(FFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-virtual {p0, p5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    move-result p5

    invoke-virtual {p0, p1, p2, p3, p4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledRectangle(FFFF)V

    invoke-virtual {p0, p5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(F)F

    return-void
.end method

.method public filledRectangle(FFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    const/4 v6, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v10}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->rectangle(FFFFFFFFF)V

    return-void
.end method

.method public filledRectangle(FFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    const/4 v6, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual/range {p7 .. p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    invoke-virtual/range {p8 .. p8}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v10}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->rectangle(FFFFFFFFF)V

    return-void
.end method

.method public filledRectangle(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledRectangle(FFFF)V

    return-void
.end method

.method public filledRectangle(Lcom/badlogic/gdx/math/Rectangle;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 10

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v6

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    move v5, p2

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->rectangle(FFFFFFFFF)V

    return-void
.end method

.method public filledRectangle(Lcom/badlogic/gdx/math/Rectangle;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 12

    move-object v0, p1

    move-object v1, p0

    iget-object v2, v1, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v6, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v11

    move v7, p2

    invoke-virtual/range {v2 .. v11}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->rectangle(FFFFFFFFF)V

    return-void
.end method

.method public filledRectangle(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledRectangle(FFFFLcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public filledRectangle(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 10

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v6

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->rectangle(FFFFFFFFF)V

    return-void
.end method

.method public filledRectangle(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 10

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v6

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual {p5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->rectangle(FFFFFFFFF)V

    return-void
.end method

.method public filledTriangle(FFFFFF)V
    .locals 11

    move-object v10, p0

    iget-object v0, v10, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v7, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    iget-object v0, v10, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v8, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    iget-object v0, v10, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v9, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledTriangle(FFFFFFFFF)V

    return-void
.end method

.method public filledTriangle(FFFFFFFFF)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->triangle(FFFFFFFFF)V

    return-void
.end method

.method public filledTriangle(FFFFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 10

    invoke-virtual/range {p7 .. p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move v7, v9

    move v8, v9

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledTriangle(FFFFFFFFF)V

    return-void
.end method

.method public filledTriangle(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 10

    invoke-virtual/range {p7 .. p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    invoke-virtual/range {p8 .. p8}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledTriangle(FFFFFFFFF)V

    return-void
.end method

.method public filledTriangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 7

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledTriangle(FFFFFF)V

    return-void
.end method

.method public filledTriangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 8

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledTriangle(FFFFFFLcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public filledTriangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 12

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v8, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v11

    move-object v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledTriangle(FFFFFFFFF)V

    return-void
.end method

.method public getBrush()Lspace/earlygrey/shapedrawer/shapes/Brush;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->brush:Lspace/earlygrey/shapedrawer/shapes/Brush;

    return-object v0
.end method

.method public getPen()Lspace/earlygrey/shapedrawer/shapes/Pen;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pen:Lspace/earlygrey/shapedrawer/shapes/Pen;

    return-object v0
.end method

.method public line(FFFF)V
    .locals 6

    iget v5, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFF)V

    return-void
.end method

.method public line(FFFFF)V
    .locals 7

    iget-boolean v6, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultSnap:Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFFZ)V

    return-void
.end method

.method public line(FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isDefaultSnap()Z

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFFZLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public line(FFFFFZ)V
    .locals 10

    move-object v9, p0

    iget-object v0, v9, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v7, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    iget-object v0, v9, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v8, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFFZFF)V

    return-void
.end method

.method public line(FFFFFZFF)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lspace/earlygrey/shapedrawer/LineDrawer;->line(FFFFFZFF)V

    return-void
.end method

.method public line(FFFFFZLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    invoke-virtual/range {p7 .. p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    invoke-virtual/range {p8 .. p8}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFFZFF)V

    return-void
.end method

.method public line(FFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 7

    iget v6, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFLcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method public line(FFFFLcom/badlogic/gdx/graphics/Color;F)V
    .locals 9

    invoke-virtual {p5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isDefaultSnap()Z

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v7, v8

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFFZFF)V

    return-void
.end method

.method public line(FFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getDefaultLineWidth()F

    move-result v5

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isDefaultSnap()Z

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFFZLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 6

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFF)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 6

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFF)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isDefaultSnap()Z

    move-result v6

    move-object v0, p0

    move v7, v8

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFFZFF)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;F)V
    .locals 9

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isDefaultSnap()Z

    move-result v6

    move-object v0, p0

    move v5, p4

    move v7, v8

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFFZFF)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 7

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public path(Lcom/badlogic/gdx/utils/FloatArray;FLspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    new-instance v1, Lspace/earlygrey/shapedrawer/ShapeDrawer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lspace/earlygrey/shapedrawer/ShapeDrawer$$ExternalSyntheticLambda0;-><init>(F)V

    invoke-virtual {v0, p1, v1, p3, p4}, Lspace/earlygrey/shapedrawer/PathDrawer;->path(Lcom/badlogic/gdx/utils/FloatArray;Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method public path(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0, p1, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;F)V

    return-void
.end method

.method public path(Ljava/lang/Iterable;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;F)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FZ)V

    return-void
.end method

.method public path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;F",
            "Lspace/earlygrey/shapedrawer/JoinType;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lspace/earlygrey/shapedrawer/PathDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method public path(Ljava/lang/Iterable;FZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;FZ)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method public path(Ljava/lang/Iterable;Lspace/earlygrey/shapedrawer/JoinType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lspace/earlygrey/shapedrawer/JoinType;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method public path(Ljava/lang/Iterable;Lspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lspace/earlygrey/shapedrawer/JoinType;",
            "Z)V"
        }
    .end annotation

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0, p1, v0, p2, p3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method public path(Ljava/lang/Iterable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;Z)V"
        }
    .end annotation

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0, p1, v0, p2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FZ)V

    return-void
.end method

.method public path([FFLspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FFLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method public path([FIIFLspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 7

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FIIFLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method public path([FIIFZ)V
    .locals 8

    invoke-virtual {p0, p4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path([FIIFLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method public path([FIILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path([FIILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;ZFFFF)V

    return-void
.end method

.method public path([FIILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;ZFFFF)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FIILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;ZFFFF)V

    return-void
.end method

.method public path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;F",
            "Lspace/earlygrey/shapedrawer/JoinType;",
            "ZFF)V"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    return-void
.end method

.method public path2_Double(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFFLspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;F",
            "Lspace/earlygrey/shapedrawer/JoinType;",
            "ZFF",
            "Lspace/earlygrey/shapedrawer/JoinType;",
            "F",
            "Lcom/badlogic/gdx/graphics/Color;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    invoke-virtual {v0, p1, p5, p6}, Lspace/earlygrey/shapedrawer/PathDrawer;->path2_Double(Ljava/lang/Iterable;FF)V

    invoke-virtual {p0, p10}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    invoke-virtual {p1, p8, p7, p4}, Lspace/earlygrey/shapedrawer/PathDrawer;->path2_Double2(FLspace/earlygrey/shapedrawer/JoinType;Z)V

    invoke-virtual {p0, p9}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    invoke-virtual {p1, p2, p3, p4}, Lspace/earlygrey/shapedrawer/PathDrawer;->path2_Double2(FLspace/earlygrey/shapedrawer/JoinType;Z)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/PathDrawer;->path2_Double2_End()V

    return-void
.end method

.method public polygon(FFIF)V
    .locals 8

    const/4 v6, 0x0

    iget v7, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon(FFIFFFF)V

    return-void
.end method

.method public polygon(FFIFF)V
    .locals 8

    iget v7, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon(FFIFFFF)V

    return-void
.end method

.method public polygon(FFIFFF)V
    .locals 9

    iget v7, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    move-object v8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon(FFIFFFFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public polygon(FFIFFFF)V
    .locals 10

    move-object v9, p0

    move/from16 v7, p7

    invoke-virtual {p0, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    move-object v8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon(FFIFFFFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public polygon(FFIFFFFLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygonDrawer:Lspace/earlygrey/shapedrawer/PolygonDrawer;

    const/4 v10, 0x0

    const v11, 0x40c90fdb

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v11}, Lspace/earlygrey/shapedrawer/PolygonDrawer;->polygon(FFIFFFFLspace/earlygrey/shapedrawer/JoinType;FF)V

    return-void
.end method

.method public polygon(FFIFFFLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 10

    move-object v9, p0

    iget v7, v9, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon(FFIFFFFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public polygon(Lcom/badlogic/gdx/math/Polygon;)V
    .locals 2

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    iget v1, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon(Lcom/badlogic/gdx/math/Polygon;FLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public polygon(Lcom/badlogic/gdx/math/Polygon;F)V
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon(Lcom/badlogic/gdx/math/Polygon;FLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public polygon(Lcom/badlogic/gdx/math/Polygon;FLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon([FFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public polygon(Lcom/badlogic/gdx/math/Polygon;Lspace/earlygrey/shapedrawer/JoinType;)V
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0, p1, v0, p2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon(Lcom/badlogic/gdx/math/Polygon;FLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public polygon([F)V
    .locals 2

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    iget v1, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon([FFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public polygon([FFLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 6

    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon([FIIFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public polygon([FIIF)V
    .locals 7

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon([FIIFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public polygon([FIIFLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 7

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FIIFLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method public rectangle(FFFF)V
    .locals 6

    iget v5, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangle(FFFFF)V

    return-void
.end method

.method public rectangle(FFFFF)V
    .locals 7

    sget-object v6, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangle(FFFFFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public rectangle(FFFFFF)V
    .locals 8

    sget-object v7, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangle(FFFFFFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public rectangle(FFFFFFLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 15

    move-object v0, p0

    move/from16 v8, p5

    move-object/from16 v1, p7

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    const v3, 0x358637bd    # 1.0E-6f

    if-ne v1, v2, :cond_1

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v9, v8, v1

    add-float v10, p1, p3

    add-float v11, p2, p4

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->isCachingDraws()Z

    move-result v12

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

    add-float v13, p1, v9

    sub-float v14, v10, v9

    const/4 v7, 0x0

    move v2, v13

    move/from16 v3, p2

    move v4, v14

    move/from16 v5, p2

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lspace/earlygrey/shapedrawer/LineDrawer;->pushLine(FFFFFZ)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

    move v3, v11

    move v5, v11

    invoke-virtual/range {v1 .. v7}, Lspace/earlygrey/shapedrawer/LineDrawer;->pushLine(FFFFFZ)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

    sub-float v13, p2, v9

    add-float/2addr v9, v11

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p1

    move v5, v9

    invoke-virtual/range {v1 .. v7}, Lspace/earlygrey/shapedrawer/LineDrawer;->pushLine(FFFFFZ)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

    move v2, v10

    move v4, v10

    invoke-virtual/range {v1 .. v7}, Lspace/earlygrey/shapedrawer/LineDrawer;->pushLine(FFFFFZ)V

    if-nez v12, :cond_0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->pushToBatch()V

    :cond_0
    return-void

    :cond_1
    iget-object v2, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangleCorners:[F

    const/4 v4, 0x0

    aput p1, v2, v4

    const/4 v5, 0x1

    aput p2, v2, v5

    add-float v5, p1, p3

    const/4 v6, 0x2

    aput v5, v2, v6

    const/4 v6, 0x3

    aput p2, v2, v6

    const/4 v6, 0x4

    aput v5, v2, v6

    add-float v5, p2, p4

    const/4 v6, 0x5

    aput v5, v2, v6

    const/4 v6, 0x6

    aput p1, v2, v6

    const/4 v6, 0x7

    aput v5, v2, v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p3, v2

    add-float v3, p1, v3

    div-float v2, p4, v2

    add-float v2, p2, v2

    invoke-static/range {p6 .. p6}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v5

    invoke-static/range {p6 .. p6}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v6

    move v7, v4

    :goto_0
    const/16 v9, 0x8

    if-ge v7, v9, :cond_2

    iget-object v9, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangleCorners:[F

    aget v10, v9, v7

    sub-float/2addr v10, v3

    aput v10, v9, v7

    add-int/lit8 v10, v7, 0x1

    aget v11, v9, v10

    sub-float/2addr v11, v2

    aput v11, v9, v10

    aget v12, v9, v7

    mul-float v13, v12, v5

    mul-float v14, v11, v6

    sub-float/2addr v13, v14

    mul-float/2addr v12, v6

    mul-float/2addr v11, v5

    add-float/2addr v12, v11

    add-float/2addr v13, v3

    aput v13, v9, v7

    add-float/2addr v12, v2

    aput v12, v9, v10

    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangleCorners:[F

    invoke-virtual {p0, v2, v8, v1, v4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path([FFLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method public rectangle(FFFFFLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangle(FFFFFFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public rectangle(FFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 7

    iget v6, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangle(FFFFLcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method public rectangle(FFFFLcom/badlogic/gdx/graphics/Color;F)V
    .locals 6

    invoke-virtual {p0, p5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    move-result p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangle(FFFFF)V

    invoke-virtual {p0, p5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(F)F

    return-void
.end method

.method public rectangle(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0, p1, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangle(Lcom/badlogic/gdx/math/Rectangle;F)V

    return-void
.end method

.method public rectangle(Lcom/badlogic/gdx/math/Rectangle;F)V
    .locals 6

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangle(FFFFF)V

    return-void
.end method

.method public rectangle(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->defaultLineWidth:F

    invoke-virtual {p0, p1, p2, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangle(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method public rectangle(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/graphics/Color;F)V
    .locals 7

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangle(FFFFLcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method public sector(FFFFF)V
    .locals 7

    invoke-virtual {p0, p3, p3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->estimateSidesRequired(FF)I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->sector(FFFFFI)V

    return-void
.end method

.method public sector(FFFFFI)V
    .locals 10

    move-object v9, p0

    iget-object v0, v9, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v7, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    iget-object v0, v9, Lspace/earlygrey/shapedrawer/ShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v8, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->sector(FFFFFIFF)V

    return-void
.end method

.method public sector(FFFFFIFF)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    move/from16 v4, p6

    move v5, p3

    move v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;->polygon(FFIFFFFFFF)V

    return-void
.end method

.method public sector(FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 10

    move-object v9, p0

    move v3, p3

    invoke-virtual {p0, p3, p3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->estimateSidesRequired(FF)I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    invoke-virtual/range {p7 .. p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->sector(FFFFFIFF)V

    return-void
.end method

.method public triangle(FFFFFF)V
    .locals 8

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getDefaultLineWidth()F

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->triangle(FFFFFFF)V

    return-void
.end method

.method public triangle(FFFFFFF)V
    .locals 11

    move-object v10, p0

    move/from16 v7, p7

    invoke-virtual {p0, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    move-object v8, v0

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getPackedColor()F

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->triangle(FFFFFFFLspace/earlygrey/shapedrawer/JoinType;F)V

    return-void
.end method

.method public triangle(FFFFFFFF)V
    .locals 11

    move-object v10, p0

    move/from16 v7, p7

    invoke-virtual {p0, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    move-object v8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->triangle(FFFFFFFLspace/earlygrey/shapedrawer/JoinType;F)V

    return-void
.end method

.method public triangle(FFFFFFFLspace/earlygrey/shapedrawer/JoinType;F)V
    .locals 6

    invoke-virtual {p0, p9}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(F)F

    move-result p9

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    if-ne p8, v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFF)V

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFF)V

    move v1, p5

    move v2, p6

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFF)V

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->trianglePathPoints:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object p1, Lspace/earlygrey/shapedrawer/ShapeDrawer;->trianglePathPoints:[F

    const/4 v0, 0x1

    aput p2, p1, v0

    sget-object p1, Lspace/earlygrey/shapedrawer/ShapeDrawer;->trianglePathPoints:[F

    const/4 p2, 0x2

    aput p3, p1, p2

    sget-object p1, Lspace/earlygrey/shapedrawer/ShapeDrawer;->trianglePathPoints:[F

    const/4 p2, 0x3

    aput p4, p1, p2

    sget-object p1, Lspace/earlygrey/shapedrawer/ShapeDrawer;->trianglePathPoints:[F

    const/4 p2, 0x4

    aput p5, p1, p2

    sget-object p1, Lspace/earlygrey/shapedrawer/ShapeDrawer;->trianglePathPoints:[F

    const/4 p2, 0x5

    aput p6, p1, p2

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    sget-object p2, Lspace/earlygrey/shapedrawer/ShapeDrawer;->trianglePathPoints:[F

    invoke-virtual {p1, p2, p7, p8, v1}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FFLspace/earlygrey/shapedrawer/JoinType;Z)V

    :goto_0
    invoke-virtual {p0, p9}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(F)F

    return-void
.end method

.method public triangle(FFFFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 10

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getDefaultLineWidth()F

    move-result v7

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    move-object v8, v0

    invoke-virtual/range {p7 .. p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->triangle(FFFFFFFLspace/earlygrey/shapedrawer/JoinType;F)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getDefaultLineWidth()F

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->triangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 6

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getPackedColor()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->triangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FF)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FF)V
    .locals 8

    invoke-virtual {p0, p4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isJoinNecessary(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_0

    :cond_0
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    :goto_0
    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->triangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLspace/earlygrey/shapedrawer/JoinType;F)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLspace/earlygrey/shapedrawer/JoinType;F)V
    .locals 10

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v8, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->triangle(FFFFFFFLspace/earlygrey/shapedrawer/JoinType;F)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getDefaultLineWidth()F

    move-result v4

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->triangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FF)V

    return-void
.end method

.method public triangles([F[SFF)V
    .locals 14

    move-object/from16 v0, p2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-short v2, v0, v1

    mul-int/lit8 v3, v2, 0x2

    aget v3, p1, v3

    add-float v5, p3, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    add-float v6, p4, v2

    add-int/lit8 v2, v1, 0x1

    aget-short v2, v0, v2

    mul-int/lit8 v3, v2, 0x2

    aget v3, p1, v3

    add-float v7, p3, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    add-float v8, p4, v2

    add-int/lit8 v2, v1, 0x2

    aget-short v2, v0, v2

    mul-int/lit8 v3, v2, 0x2

    aget v3, p1, v3

    add-float v9, p3, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    add-float v10, p4, v2

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getDefaultLineWidth()F

    move-result v11

    sget-object v12, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getPackedColor()F

    move-result v13

    move-object v4, p0

    invoke-virtual/range {v4 .. v13}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->triangle(FFFFFFFLspace/earlygrey/shapedrawer/JoinType;F)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method
