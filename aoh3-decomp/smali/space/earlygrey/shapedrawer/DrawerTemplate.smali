.class abstract Lspace/earlygrey/shapedrawer/DrawerTemplate;
.super Ljava/lang/Object;
.source "DrawerTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lspace/earlygrey/shapedrawer/BatchManager;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final A:Lcom/badlogic/gdx/math/Vector2;

.field static final B:Lcom/badlogic/gdx/math/Vector2;

.field static final C:Lcom/badlogic/gdx/math/Vector2;

.field static final D:Lcom/badlogic/gdx/math/Vector2;

.field static final E:Lcom/badlogic/gdx/math/Vector2;

.field static final dir:Lcom/badlogic/gdx/math/Vector2;

.field static final vec1:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field final batchManager:Lspace/earlygrey/shapedrawer/BatchManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final drawer:Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->A:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->B:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->C:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->D:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->E:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->dir:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vec1:Lcom/badlogic/gdx/math/Vector2;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawer:Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    return-void
.end method


# virtual methods
.method color(FFF)V
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->color1(F)V

    invoke-virtual {p0, p2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->color2(F)V

    invoke-virtual {p0, p3}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->color3(F)V

    return-void
.end method

.method color(FFFF)V
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->color1(F)V

    invoke-virtual {p0, p2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->color2(F)V

    invoke-virtual {p0, p3}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->color3(F)V

    invoke-virtual {p0, p4}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->color4(F)V

    return-void
.end method

.method color1(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->color1(F)V

    return-void
.end method

.method color2(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->color2(F)V

    return-void
.end method

.method color3(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->color3(F)V

    return-void
.end method

.method color4(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->color4(F)V

    return-void
.end method

.method draw1234()V
    .locals 3

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->x1()F

    move-result v0

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->y1()F

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0, v1, v2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->x2()F

    move-result v0

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->y2()F

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->ORANGE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0, v1, v2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->x3()F

    move-result v0

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->y3()F

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->YELLOW:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0, v1, v2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->x4()F

    move-result v0

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->y4()F

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->PURPLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0, v1, v2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method drawABC()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawABC(Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method drawABC(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    sget-object p1, Lspace/earlygrey/shapedrawer/DrawerTemplate;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1, v0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lspace/earlygrey/shapedrawer/DrawerTemplate;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->ORANGE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1, v0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lspace/earlygrey/shapedrawer/DrawerTemplate;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->YELLOW:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1, v0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method drawDE()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawDE(Z)V

    return-void
.end method

.method drawDE(Z)V
    .locals 2

    sget-object v0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->D:Lcom/badlogic/gdx/math/Vector2;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->YELLOW:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->CHARTREUSE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    invoke-virtual {p0, v0, v1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->E:Lcom/badlogic/gdx/math/Vector2;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->PINK:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->TAN:Lcom/badlogic/gdx/graphics/Color;

    :goto_1
    invoke-virtual {p0, v0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method drawPoint(FFFF)V
    .locals 7

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setPackedColor(F)V

    iget-object p3, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {p3}, Lspace/earlygrey/shapedrawer/BatchManager;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v1

    iget-object p3, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {p3}, Lspace/earlygrey/shapedrawer/BatchManager;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    sub-float v3, p1, p4

    sub-float v4, p2, p4

    const/high16 p1, 0x40000000    # 2.0f

    mul-float v6, p4, p1

    move v5, v6

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/BatchManager;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method drawPoint(FFLcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p3

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, p1, p2, p3, v0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(FFFF)V

    return-void
.end method

.method drawPoint(Lcom/badlogic/gdx/math/Vector2;FF)V
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(FFFF)V

    return-void
.end method

.method drawPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(FFLcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method drawPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;F)V
    .locals 0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->drawPoint(Lcom/badlogic/gdx/math/Vector2;FF)V

    return-void
.end method

.method drawSmoothJoinFill(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 8

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForTriangle()V

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v1 .. v7}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p5

    goto :goto_0

    :cond_0
    move-object v1, p4

    :goto_0
    invoke-virtual {p0, v1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert1(Lcom/badlogic/gdx/math/Vector2;)V

    if-eqz v0, :cond_1

    move-object v0, p4

    goto :goto_1

    :cond_1
    move-object v0, p5

    :goto_1
    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert2(Lcom/badlogic/gdx/math/Vector2;)V

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v1 .. v7}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p4, p5

    :cond_2
    invoke-virtual {p0, p4}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert3(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget p1, p1, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    invoke-virtual {p0, p1, p1, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->color(FFF)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/BatchManager;->pushTriangle()V

    return-void
.end method

.method drawSmoothJoinFill(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FFF)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p6

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v2}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForTriangle()V

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p9

    invoke-static/range {v3 .. v9}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v3, p5

    goto :goto_0

    :cond_0
    move-object/from16 v3, p4

    :goto_0
    if-eqz v2, :cond_1

    move-object/from16 v2, p4

    goto :goto_1

    :cond_1
    move-object/from16 v2, p5

    :goto_1
    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v4, v4, p7

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v5, v5, p8

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v4, v5

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v5, v5, p8

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v3, v3, p7

    add-float/2addr v5, v3

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v5, v3

    invoke-virtual {p0, v4, v5}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert1(FF)V

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v3, v3, p7

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v4, p8

    sub-float/2addr v3, v4

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v3, v4

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v4, v4, p8

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, p7

    add-float/2addr v4, v2

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert2(FF)V

    const/4 v11, 0x1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p9

    invoke-static/range {v5 .. v11}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p5

    goto :goto_2

    :cond_2
    move-object/from16 v2, p4

    :goto_2
    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v3, v3, p7

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v4, p8

    sub-float/2addr v3, v4

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v3, v4

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v4, v4, p8

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, p7

    add-float/2addr v4, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v4, v1

    invoke-virtual {p0, v3, v4}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert3(FF)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v1, v1, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    invoke-virtual {p0, v1, v1, v1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->color(FFF)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->pushTriangle()V

    return-void
.end method

.method print1234()V
    .locals 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->x1()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->y1()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")  ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->x2()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->y2()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->x3()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->y3()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->x4()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->y4()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method printABC()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lspace/earlygrey/shapedrawer/DrawerTemplate;->A:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", B: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lspace/earlygrey/shapedrawer/DrawerTemplate;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", C: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lspace/earlygrey/shapedrawer/DrawerTemplate;->C:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method vert1(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->x1(F)V

    invoke-virtual {p0, p2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->y1(F)V

    return-void
.end method

.method vert1(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert1(FF)V

    return-void
.end method

.method vert1(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert1(FF)V

    return-void
.end method

.method vert2(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->x2(F)V

    invoke-virtual {p0, p2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->y2(F)V

    return-void
.end method

.method vert2(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert2(FF)V

    return-void
.end method

.method vert2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert2(FF)V

    return-void
.end method

.method vert3(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->x3(F)V

    invoke-virtual {p0, p2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->y3(F)V

    return-void
.end method

.method vert3(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert3(FF)V

    return-void
.end method

.method vert3(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert3(FF)V

    return-void
.end method

.method vert4(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->x4(F)V

    invoke-virtual {p0, p2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->y4(F)V

    return-void
.end method

.method vert4(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert4(FF)V

    return-void
.end method

.method vert4(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lspace/earlygrey/shapedrawer/DrawerTemplate;->vert4(FF)V

    return-void
.end method

.method x1()F
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->x1()F

    move-result v0

    return v0
.end method

.method x1(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->x1(F)V

    return-void
.end method

.method x2()F
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->x2()F

    move-result v0

    return v0
.end method

.method x2(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->x2(F)V

    return-void
.end method

.method x3()F
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->x3()F

    move-result v0

    return v0
.end method

.method x3(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->x3(F)V

    return-void
.end method

.method x4()F
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->x4()F

    move-result v0

    return v0
.end method

.method x4(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->x4(F)V

    return-void
.end method

.method y1()F
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->y1()F

    move-result v0

    return v0
.end method

.method y1(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->y1(F)V

    return-void
.end method

.method y2()F
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->y2()F

    move-result v0

    return v0
.end method

.method y2(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->y2(F)V

    return-void
.end method

.method y3()F
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->y3()F

    move-result v0

    return v0
.end method

.method y3(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->y3(F)V

    return-void
.end method

.method y4()F
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->y4()F

    move-result v0

    return v0
.end method

.method y4(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/DrawerTemplate;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->y4(F)V

    return-void
.end method
