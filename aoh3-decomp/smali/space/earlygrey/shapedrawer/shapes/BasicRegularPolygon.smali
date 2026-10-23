.class Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;
.super Lspace/earlygrey/shapedrawer/shapes/BasicShape;
.source "BasicRegularPolygon.java"

# interfaces
.implements Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRegularPolygon;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspace/earlygrey/shapedrawer/shapes/BasicShape<",
        "Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;",
        ">;",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRegularPolygon;"
    }
.end annotation


# instance fields
.field centre:Lcom/badlogic/gdx/math/Vector2;

.field rotation:F

.field scaleX:F

.field scaleY:F

.field sides:I


# direct methods
.method protected constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 0

    invoke-direct {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicShape;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->centre:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->centre:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public bridge synthetic centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method

.method public color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->color:F

    return-object p0
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/Shape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method

.method public draw()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->color:F

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(F)F

    move-result v1

    iget-boolean v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->filled:Z

    if-eqz v2, :cond_0

    iget-object v3, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->centre:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->centre:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->sides:I

    iget v7, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->scaleX:F

    iget v8, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->scaleY:F

    iget v9, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->rotation:F

    invoke-virtual/range {v3 .. v9}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledPolygon(FFIFFF)V

    goto :goto_0

    :cond_0
    iget-object v10, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->centre:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->centre:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v13, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->sides:I

    iget v14, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->scaleX:F

    iget v15, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->scaleY:F

    iget v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->rotation:F

    iget-object v3, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->lineWidth:Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v17

    iget-object v3, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    move/from16 v16, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v10 .. v18}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->polygon(FFIFFFFLspace/earlygrey/shapedrawer/JoinType;)V

    :goto_0
    iget-object v2, v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    invoke-virtual {v2, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(F)F

    return-void
.end method

.method public joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;
    .locals 0

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    return-object p0
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRegularPolygon;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method

.method public lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->setLineWidth(F)V

    return-object p0
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRegularPolygon;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method

.method public radius(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->scaleX:F

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->scaleY:F

    return-object p0
.end method

.method public bridge synthetic radius(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->radius(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method

.method public radiusX(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->scaleX:F

    return-object p0
.end method

.method public bridge synthetic radiusX(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->radiusX(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method

.method public radiusY(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->scaleY:F

    return-object p0
.end method

.method public bridge synthetic radiusY(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->radiusY(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method

.method reset(Z)V
    .locals 0

    invoke-super {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->reset(Z)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->centre:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->scaleX:F

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->scaleY:F

    const/4 p1, 0x0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->rotation:F

    const/4 p1, 0x6

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->sides:I

    return-void
.end method

.method public rotate(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->rotation:F

    return-object p0
.end method

.method public bridge synthetic rotate(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->rotate(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method

.method public rotation(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->rotation:F

    return-object p0
.end method

.method public bridge synthetic rotation(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->rotation(F)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method

.method public sides(I)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->sides:I

    return-object p0
.end method

.method public bridge synthetic sides(I)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->sides(I)Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    move-result-object p1

    return-object p1
.end method
