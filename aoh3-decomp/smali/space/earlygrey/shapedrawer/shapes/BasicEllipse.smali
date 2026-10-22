.class public Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;
.super Lspace/earlygrey/shapedrawer/shapes/BasicShape;
.source "BasicEllipse.java"

# interfaces
.implements Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedEllipse;


# instance fields
.field centre:Lcom/badlogic/gdx/math/Vector2;

.field radiusX:F

.field radiusY:F

.field rotation:F


# direct methods
.method protected constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 0

    invoke-direct {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicShape;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->centre:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public centre(FF)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->centre:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->centre:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public bridge synthetic centre(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledEllipse;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->centre(FF)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledEllipse;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    move-result-object p1

    return-object p1
.end method

.method public color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->color:F

    return-object p0
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/Shape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    move-result-object p1

    return-object p1
.end method

.method public draw()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->color:F

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(F)F

    move-result v1

    iget-boolean v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->filled:Z

    if-eqz v2, :cond_0

    iget-object v3, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->centre:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->centre:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->radiusX:F

    iget v7, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->radiusY:F

    iget v8, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->rotation:F

    invoke-virtual/range {v3 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledEllipse(FFFFF)V

    goto :goto_0

    :cond_0
    iget-object v9, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->centre:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->centre:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->radiusX:F

    iget v13, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->radiusY:F

    iget v14, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->rotation:F

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->lineWidth:Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v15

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    move-object/from16 v16, v2

    invoke-virtual/range {v9 .. v16}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->ellipse(FFFFFFLspace/earlygrey/shapedrawer/JoinType;)V

    :goto_0
    iget-object v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    invoke-virtual {v2, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(F)F

    return-void
.end method

.method public joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;
    .locals 0

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    return-object p0
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedEllipse;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    move-result-object p1

    return-object p1
.end method

.method public lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->setLineWidth(F)V

    return-object p0
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedEllipse;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    move-result-object p1

    return-object p1
.end method

.method public radiusX(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->radiusX:F

    return-object p0
.end method

.method public bridge synthetic radiusX(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledEllipse;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->radiusX(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    move-result-object p1

    return-object p1
.end method

.method public radiusY(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->radiusY:F

    return-object p0
.end method

.method public bridge synthetic radiusY(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledEllipse;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->radiusY(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    move-result-object p1

    return-object p1
.end method

.method reset(Z)V
    .locals 0

    invoke-super {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->reset(Z)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->centre:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->radiusX:F

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->radiusY:F

    const/4 p1, 0x0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->rotation:F

    return-void
.end method

.method public rotate(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->rotation:F

    return-object p0
.end method

.method public bridge synthetic rotate(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledEllipse;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->rotate(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    move-result-object p1

    return-object p1
.end method

.method public rotation(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->rotation:F

    return-object p0
.end method

.method public bridge synthetic rotation(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledEllipse;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->rotation(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    move-result-object p1

    return-object p1
.end method
