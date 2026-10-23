.class Lspace/earlygrey/shapedrawer/PathDrawer;
.super Lspace/earlygrey/shapedrawer/DrawerTemplate;
.source "PathDrawer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspace/earlygrey/shapedrawer/DrawerTemplate<",
        "Lspace/earlygrey/shapedrawer/BatchManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONSTANT_LINE_WIDTH:Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;


# instance fields
.field private final D0:Lcom/badlogic/gdx/math/Vector2;

.field private final E0:Lcom/badlogic/gdx/math/Vector2;

.field private lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

.field private path:Lcom/badlogic/gdx/utils/FloatArray;

.field private tempPath:Lcom/badlogic/gdx/utils/FloatArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    invoke-direct {v0}, Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->CONSTANT_LINE_WIDTH:Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    return-void
.end method

.method constructor <init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lspace/earlygrey/shapedrawer/DrawerTemplate;-><init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V

    new-instance p1, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance p1, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance p1, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->tempPath:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->D0:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->E0:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method private drawPathNoJoin(Z)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->drawer:Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;

    iget-object v4, v2, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v6

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v12, v1, 0x2

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v7

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v8, v1, 0x3

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v8

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lspace/earlygrey/shapedrawer/LineDrawer;->pushLine(FFFFFFZ)V

    move v1, v12

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->drawer:Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;

    iget-object v4, p1, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v6

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v7

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v8

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lspace/earlygrey/shapedrawer/LineDrawer;->pushLine(FFFFFFZ)V

    :cond_1
    return-void
.end method

.method private drawPathWithJoin(ZZ)V
    .locals 26

    move-object/from16 v7, p0

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v8, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForQuad()V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float v16, v0, v9

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    div-float v24, v0, v9

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    iget-object v3, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    iget-object v3, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    iget-object v10, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v10

    invoke-virtual {v0, v2, v10}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    if-eqz p2, :cond_0

    sget-object v10, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v11, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v13, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v14, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move/from16 v15, v24

    invoke-static/range {v10 .. v15}, Lspace/earlygrey/shapedrawer/Joiner;->preparePointyJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F

    goto :goto_0

    :cond_0
    sget-object v17, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v18, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v19, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v20, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v21, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    const/16 v23, 0x0

    move/from16 v22, v24

    invoke-static/range {v17 .. v23}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    :goto_0
    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert3(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert4(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v10

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v12

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v13

    sget-object v14, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v15, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-static/range {v10 .. v16}, Lspace/earlygrey/shapedrawer/Joiner;->prepareFlatEndpoint(FFFFLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert1(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert2(Lcom/badlogic/gdx/math/Vector2;)V

    if-eqz p2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lspace/earlygrey/shapedrawer/PathDrawer;->x3()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lspace/earlygrey/shapedrawer/PathDrawer;->y3()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lspace/earlygrey/shapedrawer/PathDrawer;->x4()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lspace/earlygrey/shapedrawer/PathDrawer;->y4()F

    move-result v4

    goto :goto_1

    :cond_1
    sget-object v17, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v18, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v19, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v20, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v21, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    const/16 v23, 0x1

    move/from16 v22, v24

    invoke-static/range {v17 .. v23}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v2, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v4, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    :goto_1
    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v4

    invoke-virtual {v7, v8, v8, v8, v8}, Lspace/earlygrey/shapedrawer/PathDrawer;->color(FFFF)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    if-nez p2, :cond_2

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v14, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v15, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v0, p0

    move/from16 v16, v3

    move-object v3, v4

    move-object v4, v14

    move v14, v5

    move-object v5, v15

    move/from16 v25, v6

    move/from16 v6, v24

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->drawSmoothJoinFill(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    goto :goto_2

    :cond_2
    move/from16 v16, v3

    move v14, v5

    move/from16 v25, v6

    :goto_2
    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForQuad()V

    invoke-virtual {v7, v12, v13}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert1(FF)V

    invoke-virtual {v7, v10, v11}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert2(FF)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v6, v0, -0x2

    if-eqz p2, :cond_3

    move/from16 v3, v16

    :goto_3
    if-ge v3, v6, :cond_4

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v2, v3, -0x2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    iget-object v2, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    iget-object v2, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    iget-object v4, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v10, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v11, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v13, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v14, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move/from16 v15, v24

    invoke-static/range {v10 .. v15}, Lspace/earlygrey/shapedrawer/Joiner;->preparePointyJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert3(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert4(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual/range {p0 .. p0}, Lspace/earlygrey/shapedrawer/PathDrawer;->x3()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lspace/earlygrey/shapedrawer/PathDrawer;->y3()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lspace/earlygrey/shapedrawer/PathDrawer;->x4()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lspace/earlygrey/shapedrawer/PathDrawer;->y4()F

    move-result v4

    invoke-virtual {v7, v8, v8, v8, v8}, Lspace/earlygrey/shapedrawer/PathDrawer;->color(FFFF)V

    iget-object v5, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v5}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    iget-object v5, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v5}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForQuad()V

    invoke-virtual {v7, v3, v4}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert1(FF)V

    invoke-virtual {v7, v0, v1}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert2(FF)V

    move v3, v2

    goto :goto_3

    :cond_3
    move/from16 v3, v16

    :goto_4
    if-ge v3, v6, :cond_4

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v2, v3, -0x2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    iget-object v2, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    iget-object v2, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v10, v3, 0x2

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    iget-object v2, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v17, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v18, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v19, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v20, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v21, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    const/16 v23, 0x0

    move/from16 v22, v24

    invoke-static/range {v17 .. v23}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert3(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert4(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v17, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v18, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v19, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v20, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v21, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    const/16 v23, 0x1

    invoke-static/range {v17 .. v23}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v14, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v8, v8, v8, v8}, Lspace/earlygrey/shapedrawer/PathDrawer;->color(FFFF)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v0, p0

    move v15, v6

    move/from16 v6, v24

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->drawSmoothJoinFill(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForQuad()V

    invoke-virtual {v7, v13, v14}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert1(FF)V

    invoke-virtual {v7, v11, v12}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert2(FF)V

    move v3, v10

    move v6, v15

    goto/16 :goto_4

    :cond_4
    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    div-float/2addr v0, v9

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, v4, v0}, Lspace/earlygrey/shapedrawer/Joiner;->prepareFlatEndpoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert3(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert4(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {v7, v8, v8, v8, v8}, Lspace/earlygrey/shapedrawer/PathDrawer;->color(FFFF)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    return-void
.end method

.method private drawPathWithJoin_Org(ZZ)V
    .locals 19

    move-object/from16 v7, p0

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget v8, v0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForQuad()V

    const/4 v9, 0x2

    move v0, v9

    :goto_0
    iget-object v1, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v1, v9

    const/4 v10, 0x3

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    if-ge v0, v1, :cond_6

    div-int/lit8 v1, v0, 0x2

    iget-object v5, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    div-float/2addr v5, v3

    iget-object v6, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    div-float v6, v1, v3

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v11, v0, -0x2

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    iget-object v11, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    invoke-virtual {v1, v3, v11}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    iget-object v11, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    invoke-virtual {v1, v3, v11}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v15, v0, 0x2

    invoke-virtual {v3, v15}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    iget-object v11, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v12, v0, 0x3

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    invoke-virtual {v1, v3, v11}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    if-eqz p2, :cond_0

    sget-object v11, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v13, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v14, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move/from16 v18, v15

    move-object v15, v1

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Lspace/earlygrey/shapedrawer/Joiner;->preparePointyJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F

    goto :goto_1

    :cond_0
    move/from16 v18, v15

    sget-object v11, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v13, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v14, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v15, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    const/16 v17, 0x0

    move/from16 v16, v6

    invoke-static/range {v11 .. v17}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    :goto_1
    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v1}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert3(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v1}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert4(Lcom/badlogic/gdx/math/Vector2;)V

    if-ne v0, v9, :cond_3

    if-eqz p1, :cond_1

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v12

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v13

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v14

    sget-object v15, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v16, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move/from16 v17, v5

    invoke-static/range {v11 .. v17}, Lspace/earlygrey/shapedrawer/Joiner;->prepareFlatEndpoint(FFFFLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert1(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert2(Lcom/badlogic/gdx/math/Vector2;)V

    goto :goto_3

    :cond_1
    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->vec1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v2, v9

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    iget-object v2, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    if-eqz p2, :cond_2

    sget-object v11, Lspace/earlygrey/shapedrawer/PathDrawer;->vec1:Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v13, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget-object v14, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->D0:Lcom/badlogic/gdx/math/Vector2;

    iget-object v15, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->E0:Lcom/badlogic/gdx/math/Vector2;

    move/from16 v16, v5

    invoke-static/range {v11 .. v16}, Lspace/earlygrey/shapedrawer/Joiner;->preparePointyJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F

    goto :goto_2

    :cond_2
    sget-object v11, Lspace/earlygrey/shapedrawer/PathDrawer;->vec1:Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v13, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget-object v14, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->D0:Lcom/badlogic/gdx/math/Vector2;

    iget-object v15, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->E0:Lcom/badlogic/gdx/math/Vector2;

    const/16 v17, 0x1

    move/from16 v16, v5

    invoke-static/range {v11 .. v17}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    :goto_2
    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->E0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert1(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->D0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert2(Lcom/badlogic/gdx/math/Vector2;)V

    :cond_3
    :goto_3
    if-eqz p2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lspace/earlygrey/shapedrawer/PathDrawer;->x3()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lspace/earlygrey/shapedrawer/PathDrawer;->y3()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lspace/earlygrey/shapedrawer/PathDrawer;->x4()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lspace/earlygrey/shapedrawer/PathDrawer;->y4()F

    move-result v3

    goto :goto_4

    :cond_4
    sget-object v11, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v13, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v14, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v15, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    const/16 v17, 0x1

    move/from16 v16, v6

    invoke-static/range {v11 .. v17}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v2, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    :goto_4
    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    invoke-virtual {v7, v8, v8, v8, v8}, Lspace/earlygrey/shapedrawer/PathDrawer;->color(FFFF)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    if-nez p2, :cond_5

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->drawSmoothJoinFill(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    :cond_5
    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForQuad()V

    invoke-virtual {v7, v12, v13}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert1(FF)V

    invoke-virtual {v7, v10, v11}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert2(FF)V

    move/from16 v0, v18

    goto/16 :goto_0

    :cond_6
    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    div-float v6, v0, v3

    if-eqz p1, :cond_7

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, v1, v2, v3, v6}, Lspace/earlygrey/shapedrawer/Joiner;->prepareFlatEndpoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert3(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert4(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {v7, v8, v8, v8, v8}, Lspace/earlygrey/shapedrawer/PathDrawer;->color(FFFF)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    goto/16 :goto_5

    :cond_7
    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    div-float v18, v0, v3

    if-eqz p2, :cond_8

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    iget-object v2, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v11, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v13, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v14, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v15, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Lspace/earlygrey/shapedrawer/Joiner;->preparePointyJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert3(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert4(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {v7, v8, v8, v8, v8}, Lspace/earlygrey/shapedrawer/PathDrawer;->color(FFFF)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForQuad()V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert1(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert2(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->E0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert3(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->D0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert4(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {v7, v8, v8, v8, v8}, Lspace/earlygrey/shapedrawer/PathDrawer;->color(FFFF)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    goto/16 :goto_5

    :cond_8
    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    iget-object v2, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v11, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v13, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v14, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v15, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    const/16 v17, 0x0

    move/from16 v16, v6

    invoke-static/range {v11 .. v17}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert3(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert4(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {v7, v8, v8, v8, v8}, Lspace/earlygrey/shapedrawer/PathDrawer;->color(FFFF)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->drawSmoothJoinFill(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpaceForQuad()V

    sget-object v11, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v13, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v14, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v15, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    const/16 v17, 0x1

    invoke-static/range {v11 .. v17}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert3(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert4(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    iget-object v2, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v11, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v12, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v13, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v14, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v15, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    const/16 v17, 0x0

    move/from16 v16, v18

    invoke-static/range {v11 .. v17}, Lspace/earlygrey/shapedrawer/Joiner;->prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert1(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->vert2(Lcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {v7, v8, v8, v8, v8}, Lspace/earlygrey/shapedrawer/PathDrawer;->color(FFFF)V

    iget-object v0, v7, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    sget-object v1, Lspace/earlygrey/shapedrawer/PathDrawer;->B:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lspace/earlygrey/shapedrawer/PathDrawer;->C:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lspace/earlygrey/shapedrawer/PathDrawer;->A:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lspace/earlygrey/shapedrawer/PathDrawer;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lspace/earlygrey/shapedrawer/PathDrawer;->E:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v0, p0

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->drawSmoothJoinFill(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    :goto_5
    return-void
.end method

.method private setLineWidths([FILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;)V
    .locals 7

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->CONSTANT_LINE_WIDTH:Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p3, v0, :cond_1

    invoke-interface {p3, v2, v1}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result p1

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object p3, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lspace/earlygrey/shapedrawer/ShapeUtils;->pathLength([F)F

    move-result v0

    :goto_1
    add-int/lit8 v3, p2, -0x1

    if-ge v2, v3, :cond_2

    div-float v3, v1, v0

    iget-object v4, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-interface {p3, v2, v3}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    mul-int/lit8 v3, v2, 0x2

    aget v4, p1, v3

    add-int/lit8 v5, v3, 0x1

    aget v5, p1, v5

    add-int/lit8 v6, v3, 0x2

    aget v6, p1, v6

    add-int/lit8 v3, v3, 0x3

    aget v3, p1, v3

    invoke-static {v4, v5, v6, v3}, Lcom/badlogic/gdx/math/Vector2;->dst(FFFF)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p3, v3, p2}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    return-void
.end method


# virtual methods
.method path(Lcom/badlogic/gdx/utils/FloatArray;Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 7

    iget-object v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v2, 0x0

    iget v3, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FIILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;F",
            "Lspace/earlygrey/shapedrawer/JoinType;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lspace/earlygrey/shapedrawer/PathDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 7
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

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->tempPath:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(FF)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->tempPath:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v2, 0x0

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->tempPath:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FIIFLspace/earlygrey/shapedrawer/JoinType;Z)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->tempPath:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    return-void
.end method

.method path(Ljava/lang/Iterable;Lspace/earlygrey/shapedrawer/JoinType;ZLspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lspace/earlygrey/shapedrawer/JoinType;",
            "Z",
            "Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->tempPath:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(FF)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->tempPath:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v2, 0x0

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->tempPath:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move-object v0, p0

    move-object v4, p4

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FIILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;Z)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->tempPath:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    return-void
.end method

.method path([FFLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 6

    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FIIFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method path([FFLspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 7

    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FIIFLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method path([FIIFLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FIIFLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method path([FIIFLspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 8

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->CONSTANT_LINE_WIDTH:Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    invoke-virtual {v0, p4}, Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;->width(F)Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FIILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method path([FIILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;Z)V
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

    invoke-virtual/range {v0 .. v10}, Lspace/earlygrey/shapedrawer/PathDrawer;->path([FIILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;ZFFFF)V

    return-void
.end method

.method path([FIILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;ZFFFF)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    array-length v5, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    return-void

    :cond_0
    iget-object v5, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    aget v7, v1, p2

    add-float v7, v7, p7

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget-object v5, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v7, p2, 0x1

    aget v7, v1, v7

    add-float v7, v7, p8

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    const/4 v5, 0x2

    add-int/lit8 v7, p2, 0x2

    move v8, p3

    :goto_0
    if-ge v7, v8, :cond_3

    add-int/lit8 v9, v7, -0x2

    aget v9, v1, v9

    aget v10, v1, v7

    invoke-static {v9, v10}, Lspace/earlygrey/shapedrawer/ShapeUtils;->epsilonEquals(FF)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v9, v7, -0x1

    aget v9, v1, v9

    add-int/lit8 v10, v7, 0x1

    aget v10, v1, v10

    invoke-static {v9, v10}, Lspace/earlygrey/shapedrawer/ShapeUtils;->epsilonEquals(FF)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    iget-object v9, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    aget v10, v1, v7

    mul-float v10, v10, p9

    add-float v10, p7, v10

    add-int/lit8 v11, v7, 0x1

    aget v11, v1, v11

    mul-float v11, v11, p10

    add-float v11, p8, v11

    invoke-virtual {v9, v10, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(FF)V

    :cond_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v1, v6, :cond_4

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    return-void

    :cond_4
    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v1, v6, :cond_5

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->drawer:Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;

    iget-object v1, v1, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

    iget-object v3, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v3, v3, v7

    iget-object v4, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v4, v4, v8

    iget-object v6, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v5, v6, v5

    iget-object v6, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v9, 0x3

    aget v6, v6, v9

    const/4 v9, 0x0

    invoke-interface {v2, v7, v9}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v7

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {v2, v8, v9}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v2

    const/4 v8, 0x0

    move-object p1, v1

    move p2, v3

    move p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v2

    move/from16 p8, v8

    invoke-virtual/range {p1 .. p8}, Lspace/earlygrey/shapedrawer/LineDrawer;->line(FFFFFFZ)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    return-void

    :cond_5
    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v6, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    div-int/2addr v6, v5

    invoke-direct {p0, v1, v6, v2}, Lspace/earlygrey/shapedrawer/PathDrawer;->setLineWidths([FILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->startCaching()Z

    move-result v1

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    if-ne v3, v2, :cond_6

    invoke-direct {p0, v4}, Lspace/earlygrey/shapedrawer/PathDrawer;->drawPathNoJoin(Z)V

    goto :goto_1

    :cond_6
    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    if-ne v3, v2, :cond_7

    move v7, v8

    :cond_7
    invoke-direct {p0, v4, v7}, Lspace/earlygrey/shapedrawer/PathDrawer;->drawPathWithJoin(ZZ)V

    :goto_1
    if-nez v1, :cond_8

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->endCaching()V

    :cond_8
    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    return-void
.end method

.method path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V
    .locals 3
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

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, p5

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, p6

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(FF)V

    goto :goto_0

    :cond_0
    sget-object p1, Lspace/earlygrey/shapedrawer/PathDrawer;->CONSTANT_LINE_WIDTH:Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    invoke-virtual {p1, p2}, Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;->width(F)Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lspace/earlygrey/shapedrawer/PathDrawer;->path2(Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method path2(Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    return-void

    :cond_0
    iget-object v4, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v4, v5, :cond_1

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->drawer:Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;

    iget-object v9, v2, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v10, v2, v8

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v11, v2, v7

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v12, v2, v6

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v3, 0x3

    aget v13, v2, v3

    const/4 v2, 0x0

    invoke-interface {v1, v8, v2}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v14

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v7, v2}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lspace/earlygrey/shapedrawer/LineDrawer;->line(FFFFFFZ)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    return-void

    :cond_1
    iget-object v4, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v5, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    div-int/2addr v5, v6

    invoke-direct {v0, v4, v5, v1}, Lspace/earlygrey/shapedrawer/PathDrawer;->setLineWidths([FILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->startCaching()Z

    move-result v1

    sget-object v4, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    if-ne v2, v4, :cond_2

    invoke-direct {v0, v3}, Lspace/earlygrey/shapedrawer/PathDrawer;->drawPathNoJoin(Z)V

    goto :goto_1

    :cond_2
    sget-object v4, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    move v7, v8

    :goto_0
    invoke-direct {v0, v3, v7}, Lspace/earlygrey/shapedrawer/PathDrawer;->drawPathWithJoin(ZZ)V

    :goto_1
    if-nez v1, :cond_4

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->endCaching()V

    :cond_4
    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    return-void
.end method

.method path2_Double(Ljava/lang/Iterable;FF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;FF)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, p2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method path2_Double(Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v4, v5, :cond_1

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->drawer:Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;

    iget-object v9, v2, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v10, v2, v8

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v11, v2, v7

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v12, v2, v6

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v3, 0x3

    aget v13, v2, v3

    const/4 v2, 0x0

    invoke-interface {v1, v8, v2}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v14

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v7, v2}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lspace/earlygrey/shapedrawer/LineDrawer;->line(FFFFFFZ)V

    return-void

    :cond_1
    iget-object v4, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v5, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    div-int/2addr v5, v6

    invoke-direct {v0, v4, v5, v1}, Lspace/earlygrey/shapedrawer/PathDrawer;->setLineWidths([FILspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;)V

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->startCaching()Z

    move-result v1

    sget-object v4, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    if-ne v2, v4, :cond_2

    invoke-direct {v0, v3}, Lspace/earlygrey/shapedrawer/PathDrawer;->drawPathNoJoin(Z)V

    goto :goto_1

    :cond_2
    sget-object v4, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    move v7, v8

    :goto_0
    invoke-direct {v0, v3, v7}, Lspace/earlygrey/shapedrawer/PathDrawer;->drawPathWithJoin(ZZ)V

    :goto_1
    if-nez v1, :cond_4

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v1}, Lspace/earlygrey/shapedrawer/BatchManager;->endCaching()V

    :cond_4
    iget-object v1, v0, Lspace/earlygrey/shapedrawer/PathDrawer;->lineWidths:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    return-void
.end method

.method path2_Double2(FLspace/earlygrey/shapedrawer/JoinType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(F",
            "Lspace/earlygrey/shapedrawer/JoinType;",
            "Z)V"
        }
    .end annotation

    sget-object v0, Lspace/earlygrey/shapedrawer/PathDrawer;->CONSTANT_LINE_WIDTH:Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;->width(F)Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lspace/earlygrey/shapedrawer/PathDrawer;->path2_Double(Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;Lspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method public path2_Double2_End()V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/PathDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    return-void
.end method
