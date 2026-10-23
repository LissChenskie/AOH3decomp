.class Lspace/earlygrey/shapedrawer/LineDrawer;
.super Lspace/earlygrey/shapedrawer/DrawerTemplate;
.source "LineDrawer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspace/earlygrey/shapedrawer/DrawerTemplate<",
        "Lspace/earlygrey/shapedrawer/BatchManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final endOffset:Lcom/badlogic/gdx/math/Vector2;

.field private final l:Lcom/badlogic/gdx/math/Vector2;

.field private final startOffset:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method constructor <init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;-><init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->l:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->startOffset:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->endOffset:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method line(FFFFFFZ)V
    .locals 11

    move-object v10, p0

    iget-object v0, v10, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v8, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    iget-object v0, v10, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v9, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/LineDrawer;->pushLine(FFFFFFZFF)V

    iget-object v0, v10, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushToBatch()V

    return-void
.end method

.method line(FFFFFZFF)V
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lspace/earlygrey/shapedrawer/LineDrawer;->pushLine(FFFFFZFF)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/BatchManager;->pushToBatch()V

    return-void
.end method

.method pushLine(FFFFFFZ)V
    .locals 11

    move-object v10, p0

    iget-object v0, v10, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v8, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    iget-object v0, v10, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v9, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/LineDrawer;->pushLine(FFFFFFZFF)V

    return-void
.end method

.method pushLine(FFFFFFZFF)V
    .locals 3

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForQuad()V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->l:Lcom/badlogic/gdx/math/Vector2;

    sub-float v1, p3, p1

    sub-float v2, p4, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    if-eqz p7, :cond_0

    iget-object p7, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget p7, p7, Lspace/earlygrey/shapedrawer/BatchManager;->offset:F

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v0, v0, Lspace/earlygrey/shapedrawer/BatchManager;->pixelSize:F

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v1, v1, Lspace/earlygrey/shapedrawer/BatchManager;->halfPixelSize:F

    invoke-static {p1, v0, v1}, Lspace/earlygrey/shapedrawer/ShapeUtils;->snap(FFF)F

    move-result p1

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->l:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, p7

    sub-float/2addr p1, v2

    invoke-static {p2, v0, v1}, Lspace/earlygrey/shapedrawer/ShapeUtils;->snap(FFF)F

    move-result p2

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->l:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, p7

    sub-float/2addr p2, v2

    invoke-static {p3, v0, v1}, Lspace/earlygrey/shapedrawer/ShapeUtils;->snap(FFF)F

    move-result p3

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->l:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, p7

    add-float/2addr p3, v2

    invoke-static {p4, v0, v1}, Lspace/earlygrey/shapedrawer/ShapeUtils;->snap(FFF)F

    move-result p4

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->l:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    mul-float/2addr v0, p7

    add-float/2addr p4, v0

    :cond_0
    invoke-static {p1, p3}, Lspace/earlygrey/shapedrawer/ShapeUtils;->epsilonEquals(FF)Z

    move-result p7

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p7, :cond_1

    iget-object p7, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->startOffset:Lcom/badlogic/gdx/math/Vector2;

    div-float/2addr p5, v1

    invoke-virtual {p7, p5, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p5, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->endOffset:Lcom/badlogic/gdx/math/Vector2;

    div-float/2addr p6, v1

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    :cond_1
    invoke-static {p2, p4}, Lspace/earlygrey/shapedrawer/ShapeUtils;->epsilonEquals(FF)Z

    move-result p7

    if-eqz p7, :cond_2

    iget-object p7, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->startOffset:Lcom/badlogic/gdx/math/Vector2;

    div-float/2addr p5, v1

    invoke-virtual {p7, v0, p5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p5, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->endOffset:Lcom/badlogic/gdx/math/Vector2;

    div-float/2addr p6, v1

    invoke-virtual {p5, v0, p6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    :cond_2
    iget-object p7, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->startOffset:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->l:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p7, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p7

    div-float/2addr p5, v1

    invoke-virtual {p7, p5}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object p5, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->startOffset:Lcom/badlogic/gdx/math/Vector2;

    iget p7, p5, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float p7, p7

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->startOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p5, p7, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p5, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->endOffset:Lcom/badlogic/gdx/math/Vector2;

    iget-object p7, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->l:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p5, p7}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p5

    div-float/2addr p6, v1

    invoke-virtual {p5, p6}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object p5, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->endOffset:Lcom/badlogic/gdx/math/Vector2;

    iget p6, p5, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float p6, p6

    iget-object p7, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->endOffset:Lcom/badlogic/gdx/math/Vector2;

    iget p7, p7, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p5, p6, p7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :goto_0
    iget-object p5, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->startOffset:Lcom/badlogic/gdx/math/Vector2;

    iget p5, p5, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr p5, p1

    invoke-virtual {p0, p5}, Lspace/earlygrey/shapedrawer/LineDrawer;->x1(F)V

    iget-object p5, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->startOffset:Lcom/badlogic/gdx/math/Vector2;

    iget p5, p5, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr p5, p2

    invoke-virtual {p0, p5}, Lspace/earlygrey/shapedrawer/LineDrawer;->y1(F)V

    iget-object p5, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->startOffset:Lcom/badlogic/gdx/math/Vector2;

    iget p5, p5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p1, p5

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/LineDrawer;->x2(F)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->startOffset:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lspace/earlygrey/shapedrawer/LineDrawer;->y2(F)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->endOffset:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float p1, p3, p1

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/LineDrawer;->x3(F)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->endOffset:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float p1, p4, p1

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/LineDrawer;->y3(F)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->endOffset:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr p3, p1

    invoke-virtual {p0, p3}, Lspace/earlygrey/shapedrawer/LineDrawer;->x4(F)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->endOffset:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr p4, p1

    invoke-virtual {p0, p4}, Lspace/earlygrey/shapedrawer/LineDrawer;->y4(F)V

    invoke-virtual {p0, p8}, Lspace/earlygrey/shapedrawer/LineDrawer;->color1(F)V

    invoke-virtual {p0, p8}, Lspace/earlygrey/shapedrawer/LineDrawer;->color2(F)V

    invoke-virtual {p0, p9}, Lspace/earlygrey/shapedrawer/LineDrawer;->color3(F)V

    invoke-virtual {p0, p9}, Lspace/earlygrey/shapedrawer/LineDrawer;->color4(F)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/BatchManager;->isCachingDraws()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/BatchManager;->pushToBatch()V

    :cond_3
    return-void
.end method

.method pushLine(FFFFFZ)V
    .locals 10

    move-object v9, p0

    iget-object v0, v9, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v7, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    iget-object v0, v9, Lspace/earlygrey/shapedrawer/LineDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v8, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/LineDrawer;->pushLine(FFFFFZFF)V

    return-void
.end method

.method pushLine(FFFFFZFF)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lspace/earlygrey/shapedrawer/LineDrawer;->pushLine(FFFFFFZFF)V

    return-void
.end method
