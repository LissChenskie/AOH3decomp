.class public Laoc/kingdoms/lukasz/menu_element/graph/GraphData;
.super Ljava/lang/Object;
.source "GraphData.java"


# static fields
.field private static final ALPHA_CIV_LINE:F = 0.8f

.field protected static final ANIMATION_TIME:I = 0x1c2


# instance fields
.field private backAnimation:Z

.field private drawData:Z

.field private iBeginTurnID:I

.field private iCivID:I

.field private iPointsSize:I

.field private lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J

.field private lVectorPoints:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z


# direct methods
.method protected constructor <init>(ILjava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iPointsSize:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->visible:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->backAnimation:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iPointsSize:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lPointsY:Ljava/util/List;

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    move p1, v0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iPointsSize:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lPointsY:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iBeginTurnID:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    return-void
.end method

.method private final drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    const p4, 0x3f4ccccd    # 0.8f

    const/high16 p5, 0x3f800000    # 1.0f

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v3

    if-eqz p6, :cond_0

    move v4, p5

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    if-eqz p6, :cond_1

    move p4, p5

    :cond_1
    const p6, 0x3d70f0f1

    invoke-direct {v0, p6, p6, p6, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 p4, 0x1

    if-le p1, p4, :cond_4

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    new-instance p6, Lcom/badlogic/gdx/math/Vector2;

    int-to-float p2, p2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, p2

    neg-int p3, p3

    int-to-float p3, p3

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v1, v1

    add-float/2addr v1, p3

    invoke-direct {p6, v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p6, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    iget p6, p6, Lcom/badlogic/gdx/utils/Array;->size:I

    move v0, p4

    :goto_2
    if-ge v0, p6, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, p2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v3, v3

    add-float/2addr v3, p3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object p3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2, p3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object p3, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {p2, p1, p5, p3, p4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :cond_4
    return-void
.end method


# virtual methods
.method protected final buildGraph(IIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iPointsSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lVectorPoints:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iBeginTurnID:I

    add-int/2addr v3, v0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lPointsY:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    mul-float/2addr v5, v4

    sub-int v7, p3, p2

    int-to-float v7, v7

    div-float/2addr v5, v7

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZI)V"
        }
    .end annotation

    move-object v7, p0

    iget-wide v0, v7, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    const-wide/16 v2, 0x1c2

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual/range {p0 .. p9}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    goto :goto_0

    :cond_0
    sub-int v3, p3, p9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V

    :goto_0
    return-void
.end method

.method protected final drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZI)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move v2, p2

    move/from16 v0, p4

    move/from16 v1, p5

    iget-boolean v3, v7, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->backAnimation:Z

    const/high16 v4, 0x43e10000    # 450.0f

    if-eqz v3, :cond_0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v3, v3, p3

    int-to-float v5, v0

    sget-wide v9, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v11, v7, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    sub-long/2addr v9, v11

    long-to-float v6, v9

    div-float/2addr v6, v4

    mul-float/2addr v5, v6

    float-to-int v4, v5

    sub-int/2addr v0, v4

    neg-int v1, v1

    invoke-static {p1, p2, v3, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    goto :goto_0

    :cond_0
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v3, v3, p3

    int-to-float v0, v0

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v9, v7, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    sub-long/2addr v5, v9

    long-to-float v5, v5

    div-float/2addr v5, v4

    mul-float/2addr v0, v5

    float-to-int v0, v0

    neg-int v1, v1

    invoke-static {p1, p2, v3, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    :goto_0
    sub-int v3, p3, p9

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;IZ)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method protected final drawCivButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 11

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    if-eqz p4, :cond_0

    sget-object p4, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr p4, v4

    goto :goto_0

    :cond_0
    iget-boolean p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    if-eqz p4, :cond_1

    sget-object p4, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0

    :cond_1
    sget-object p4, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr p4, v4

    :goto_0
    invoke-direct {v0, v1, v2, v3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonWidth()I

    move-result v8

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v9

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    const/high16 v4, 0x3e800000    # 0.25f

    if-eqz v3, :cond_2

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const p4, 0x3f4ccccd    # 0.8f

    const v0, 0x3ecccccd    # 0.4f

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v3

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v5

    iget-boolean v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    if-eqz v6, :cond_3

    move v6, p4

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    invoke-direct {v1, v2, v3, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move p4, v0

    :goto_3
    const v0, 0x3d70f0f1

    invoke-direct {v1, v0, v0, v0, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_4
    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_COLOR_WIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v10

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-boolean p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    if-eqz p4, :cond_5

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_5

    :cond_5
    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p4, v0, v0, v0, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_5
    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :try_start_1
    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int v2, p4, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int v3, p4, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    sget p4, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 p4, p4, 0x2

    sub-int v2, p2, p4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p2

    sub-int v3, p3, p2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_6
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final getBackAnimation()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->backAnimation:Z

    return v0
.end method

.method protected final getBeginTurnID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iBeginTurnID:I

    return v0
.end method

.method protected final getCivID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iCivID:I

    return v0
.end method

.method protected final getDrawData()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    return v0
.end method

.method protected final getPointY(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lPointsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final getPointsSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->iPointsSize:I

    return v0
.end method

.method protected final getTime()J
    .locals 2

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    return-wide v0
.end method

.method protected final getVisible()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->visible:Z

    return v0
.end method

.method protected final setBackAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->backAnimation:Z

    return-void
.end method

.method protected final setDrawData(Z)V
    .locals 8

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    if-eq p1, v0, :cond_2

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v4, 0x1c2

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->backAnimation:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    sub-long/2addr v2, v6

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    goto :goto_0

    :cond_1
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->lTime:J

    :goto_0
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->backAnimation:Z

    :cond_2
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawData:Z

    return-void
.end method

.method protected final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->visible:Z

    return-void
.end method
