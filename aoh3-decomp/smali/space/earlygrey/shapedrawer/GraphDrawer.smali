.class public Lspace/earlygrey/shapedrawer/GraphDrawer;
.super Ljava/lang/Object;
.source "GraphDrawer.java"


# static fields
.field private static final path:Lcom/badlogic/gdx/utils/FloatArray;


# instance fields
.field private domainBegin:F

.field private domainEnd:F

.field private joinType:Lspace/earlygrey/shapedrawer/JoinType;

.field private plotBegin:F

.field private plotEnd:F

.field private rescale:Z

.field private samples:I

.field private shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/GraphDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    return-void
.end method

.method public constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    const/16 v0, 0x32

    iput v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->samples:I

    const/4 v0, 0x0

    iput v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotBegin:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotEnd:F

    iput v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainBegin:F

    iput v1, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainEnd:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->rescale:Z

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/math/Interpolation;FFFF)V
    .locals 14

    move-object v13, p0

    iget-object v6, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    iget v7, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->samples:I

    iget v8, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotBegin:F

    iget v9, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotEnd:F

    iget v10, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainBegin:F

    iget v11, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainEnd:F

    iget-boolean v12, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->rescale:Z

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v12}, Lspace/earlygrey/shapedrawer/GraphDrawer;->draw(Lcom/badlogic/gdx/math/Interpolation;FFFFLspace/earlygrey/shapedrawer/JoinType;IFFFFZ)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/math/Interpolation;FFFFLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 14

    move-object v13, p0

    iget v7, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->samples:I

    iget v8, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotBegin:F

    iget v9, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotEnd:F

    iget v10, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainBegin:F

    iget v11, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainEnd:F

    iget-boolean v12, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->rescale:Z

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v12}, Lspace/earlygrey/shapedrawer/GraphDrawer;->draw(Lcom/badlogic/gdx/math/Interpolation;FFFFLspace/earlygrey/shapedrawer/JoinType;IFFFFZ)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/math/Interpolation;FFFFLspace/earlygrey/shapedrawer/JoinType;IFFFFZ)V
    .locals 10

    move/from16 v0, p7

    cmpl-float v1, p8, p9

    if-gez v1, :cond_d

    cmpl-float v1, p10, p11

    if-gez v1, :cond_c

    const/4 v1, 0x2

    if-le v0, v1, :cond_b

    sget-object v1, Lspace/earlygrey/shapedrawer/GraphDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v4, p8

    move v3, v2

    move v2, v1

    :goto_0
    mul-int/lit8 v5, v0, 0x2

    if-ge v3, v5, :cond_7

    sub-float v5, v4, p8

    sub-float v6, p9, p8

    div-float/2addr v5, v6

    mul-float/2addr v5, p4

    add-float/2addr v5, p2

    move-object v7, p1

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v8

    mul-float/2addr v8, p5

    add-float/2addr v8, p3

    cmpl-float v9, v4, p10

    if-ltz v9, :cond_0

    sget-object v9, Lspace/earlygrey/shapedrawer/GraphDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    :cond_0
    if-nez v3, :cond_1

    move v1, v8

    move v2, v1

    goto :goto_1

    :cond_1
    cmpl-float v5, v8, v1

    if-lez v5, :cond_2

    move v1, v8

    :cond_2
    cmpg-float v5, v8, v2

    if-gez v5, :cond_3

    move v2, v8

    :cond_3
    :goto_1
    cmpl-float v5, v4, p9

    if-gez v5, :cond_7

    cmpl-float v5, v4, p11

    if-ltz v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    cmpl-float v5, v4, p9

    if-lez v5, :cond_5

    move/from16 v4, p9

    :cond_5
    cmpl-float v5, v4, p11

    if-lez v5, :cond_6

    move/from16 v4, p11

    :cond_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_7
    :goto_2
    const/4 v0, 0x1

    if-eqz p12, :cond_a

    cmpg-float v3, v2, p3

    if-gez v3, :cond_9

    sub-float v2, p3, v2

    move v3, v0

    :goto_3
    sget-object v4, Lspace/earlygrey/shapedrawer/GraphDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v3, v5, :cond_8

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    add-float/2addr v5, v2

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_8
    add-float/2addr v1, v2

    :cond_9
    add-float v2, p3, p5

    cmpl-float v2, v1, v2

    if-lez v2, :cond_a

    sub-float/2addr v1, p3

    div-float v1, p5, v1

    move v2, v0

    :goto_4
    sget-object v3, Lspace/earlygrey/shapedrawer/GraphDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v2, v4, :cond_a

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v4

    sub-float/2addr v4, p3

    mul-float/2addr v4, v1

    add-float/2addr v4, p3

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/FloatArray;->set(IF)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_a
    move-object v1, p0

    iget-object v2, v1, Lspace/earlygrey/shapedrawer/GraphDrawer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object v3, Lspace/earlygrey/shapedrawer/GraphDrawer;->path:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getDefaultLineWidth()F

    move-result v4

    move-object/from16 v5, p6

    invoke-virtual {v2, v3, v4, v5, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Lcom/badlogic/gdx/utils/FloatArray;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void

    :cond_b
    move-object v1, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "samples must be greater than 2"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v1, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "domainBegin must be less than domainEnd"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object v1, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/DrawOver/SQ/XjthpFh;->ZWqnYASFhBL:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Lcom/badlogic/gdx/math/Interpolation;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 13

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v6, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    iget v7, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->samples:I

    iget v8, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotBegin:F

    iget v9, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotEnd:F

    iget v10, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainBegin:F

    iget v11, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainEnd:F

    iget-boolean v12, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->rescale:Z

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v12}, Lspace/earlygrey/shapedrawer/GraphDrawer;->draw(Lcom/badlogic/gdx/math/Interpolation;FFFFLspace/earlygrey/shapedrawer/JoinType;IFFFFZ)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/math/Interpolation;Lcom/badlogic/gdx/math/Rectangle;Lspace/earlygrey/shapedrawer/JoinType;)V
    .locals 14

    move-object v13, p0

    move-object/from16 v0, p2

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v5, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v7, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->samples:I

    iget v8, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotBegin:F

    iget v9, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotEnd:F

    iget v10, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainBegin:F

    iget v11, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainEnd:F

    iget-boolean v12, v13, Lspace/earlygrey/shapedrawer/GraphDrawer;->rescale:Z

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v12}, Lspace/earlygrey/shapedrawer/GraphDrawer;->draw(Lcom/badlogic/gdx/math/Interpolation;FFFFLspace/earlygrey/shapedrawer/JoinType;IFFFFZ)V

    return-void
.end method

.method public getDomainBegin()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainBegin:F

    return v0
.end method

.method public getDomainEnd()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainEnd:F

    return v0
.end method

.method public getJoinType()Lspace/earlygrey/shapedrawer/JoinType;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    return-object v0
.end method

.method public getPlotBegin()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotBegin:F

    return v0
.end method

.method public getPlotEnd()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotEnd:F

    return v0
.end method

.method public getSamples()I
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->samples:I

    return v0
.end method

.method public getShapeDrawer()Lspace/earlygrey/shapedrawer/ShapeDrawer;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    return-object v0
.end method

.method public isRescale()Z
    .locals 1

    iget-boolean v0, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->rescale:Z

    return v0
.end method

.method public setDomainBegin(F)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainBegin:F

    return-void
.end method

.method public setDomainEnd(F)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->domainEnd:F

    return-void
.end method

.method public setJoinType(Lspace/earlygrey/shapedrawer/JoinType;)V
    .locals 0

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    return-void
.end method

.method public setPlotBegin(F)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotBegin:F

    return-void
.end method

.method public setPlotEnd(F)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->plotEnd:F

    return-void
.end method

.method public setRescale(Z)V
    .locals 0

    iput-boolean p1, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->rescale:Z

    return-void
.end method

.method public setSamples(I)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->samples:I

    return-void
.end method

.method public setShapeDrawer(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 0

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/GraphDrawer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    return-void
.end method
