.class public Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;
.super Lspace/earlygrey/shapedrawer/scene2d/ShapeDrawerDrawable;
.source "GraphDrawerDrawable.java"


# instance fields
.field private color:F

.field private domainBegin:F

.field private domainEnd:F

.field private transient graphDrawer:Lspace/earlygrey/shapedrawer/GraphDrawer;

.field private interpolation:Lcom/badlogic/gdx/math/Interpolation;

.field private joinType:Lspace/earlygrey/shapedrawer/JoinType;

.field private lineWidth:F

.field private plotBegin:F

.field private plotEnd:F

.field private rescale:Z

.field private samples:I


# direct methods
.method public constructor <init>(Lspace/earlygrey/shapedrawer/GraphDrawer;)V
    .locals 2

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/GraphDrawer;->getShapeDrawer()Lspace/earlygrey/shapedrawer/ShapeDrawer;

    move-result-object v0

    invoke-direct {p0, v0}, Lspace/earlygrey/shapedrawer/scene2d/ShapeDrawerDrawable;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->color:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->lineWidth:F

    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    iput-object v1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    const/16 v1, 0x32

    iput v1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->samples:I

    const/4 v1, 0x0

    iput v1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->plotBegin:F

    iput v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->plotEnd:F

    iput v1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->domainBegin:F

    iput v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->domainEnd:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->rescale:Z

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->graphDrawer:Lspace/earlygrey/shapedrawer/GraphDrawer;

    return-void
.end method


# virtual methods
.method public drawShapes(Lspace/earlygrey/shapedrawer/ShapeDrawer;FFFF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getPackedColor()F

    move-result v2

    iget v3, v0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->color:F

    invoke-virtual {v1, v3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(F)F

    invoke-virtual/range {p1 .. p1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getDefaultLineWidth()F

    move-result v3

    iget v4, v0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->lineWidth:F

    invoke-virtual {v1, v4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setDefaultLineWidth(F)F

    iget-object v5, v0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->graphDrawer:Lspace/earlygrey/shapedrawer/GraphDrawer;

    iget-object v6, v0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    iget-object v11, v0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    iget v12, v0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->samples:I

    iget v13, v0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->plotBegin:F

    iget v14, v0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->plotEnd:F

    iget v15, v0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->domainBegin:F

    iget v4, v0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->domainEnd:F

    iget-boolean v10, v0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->rescale:Z

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v17, v10

    move/from16 v10, p5

    move/from16 v16, v4

    invoke-virtual/range {v5 .. v17}, Lspace/earlygrey/shapedrawer/GraphDrawer;->draw(Lcom/badlogic/gdx/math/Interpolation;FFFFLspace/earlygrey/shapedrawer/JoinType;IFFFFZ)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(F)F

    invoke-virtual {v1, v3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setDefaultLineWidth(F)F

    return-void
.end method

.method public getDomainBegin()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->domainBegin:F

    return v0
.end method

.method public getDomainEnd()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->domainEnd:F

    return v0
.end method

.method public getGraphDrawer()Lspace/earlygrey/shapedrawer/GraphDrawer;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->graphDrawer:Lspace/earlygrey/shapedrawer/GraphDrawer;

    return-object v0
.end method

.method public getInterpolation()Lcom/badlogic/gdx/math/Interpolation;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    return-object v0
.end method

.method public getJoinType()Lspace/earlygrey/shapedrawer/JoinType;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->lineWidth:F

    return v0
.end method

.method public getPackedColor()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->color:F

    return v0
.end method

.method public getPlotBegin()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->plotBegin:F

    return v0
.end method

.method public getPlotEnd()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->plotEnd:F

    return v0
.end method

.method public getSamples()I
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->samples:I

    return v0
.end method

.method public isRescale()Z
    .locals 1

    iget-boolean v0, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->rescale:Z

    return v0
.end method

.method public setColor(F)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->color:F

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->color:F

    return-void
.end method

.method public setDomainBegin(F)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->domainBegin:F

    return-void
.end method

.method public setDomainEnd(F)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->domainEnd:F

    return-void
.end method

.method public setGraphDrawer(Lspace/earlygrey/shapedrawer/GraphDrawer;)V
    .locals 0

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->graphDrawer:Lspace/earlygrey/shapedrawer/GraphDrawer;

    return-void
.end method

.method public setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method

.method public setJoinType(Lspace/earlygrey/shapedrawer/JoinType;)V
    .locals 0

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->lineWidth:F

    return-void
.end method

.method public setPlotBegin(F)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->plotBegin:F

    return-void
.end method

.method public setPlotEnd(F)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->plotEnd:F

    return-void
.end method

.method public setRescale(Z)V
    .locals 0

    iput-boolean p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->rescale:Z

    return-void
.end method

.method public setSamples(I)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/scene2d/GraphDrawerDrawable;->samples:I

    return-void
.end method
