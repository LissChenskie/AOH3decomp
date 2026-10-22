.class Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;
.super Lspace/earlygrey/shapedrawer/shapes/BasicShape;
.source "BasicRectangle.java"

# interfaces
.implements Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspace/earlygrey/shapedrawer/shapes/BasicShape<",
        "Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;",
        ">;",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;"
    }
.end annotation


# instance fields
.field height:F

.field rotation:F

.field width:F

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 0

    invoke-direct {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicShape;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    return-void
.end method


# virtual methods
.method public color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->color:F

    return-object p0
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/Shape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

    move-result-object p1

    return-object p1
.end method

.method public draw()V
    .locals 1

    iget-boolean v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->filled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle$$ExternalSyntheticLambda0;-><init>(Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;)V

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->draw(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle$$ExternalSyntheticLambda1;-><init>(Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;)V

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->draw(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;
    .locals 0

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    return-object p0
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$draw$0$space-earlygrey-shapedrawer-shapes-BasicRectangle()V
    .locals 6

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->x:F

    iget v2, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->y:F

    iget v3, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->width:F

    iget v4, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->height:F

    iget v5, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->rotation:F

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledRectangle(FFFFF)V

    return-void
.end method

.method synthetic lambda$draw$1$space-earlygrey-shapedrawer-shapes-BasicRectangle()V
    .locals 8

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->x:F

    iget v2, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->y:F

    iget v3, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->width:F

    iget v4, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->height:F

    iget-object v5, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->lineWidth:Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v5

    iget v6, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->rotation:F

    iget-object v7, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual/range {v0 .. v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->rectangle(FFFFFFLspace/earlygrey/shapedrawer/JoinType;)V

    return-void
.end method

.method public lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->setLineWidth(F)V

    return-object p0
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic position(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRectangle;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->position(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic position(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRectangle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->position(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;

    move-result-object p1

    return-object p1
.end method

.method public position(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->x:F

    iput p2, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->y:F

    return-object p0
.end method

.method public position(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->position(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;

    move-result-object p1

    return-object p1
.end method

.method reset(Z)V
    .locals 1

    invoke-super {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->reset(Z)V

    const/4 p1, 0x0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->x:F

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->y:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->width:F

    iput v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->height:F

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->rotation:F

    return-void
.end method

.method public bridge synthetic rotate(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRectangle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->rotate(F)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;

    move-result-object p1

    return-object p1
.end method

.method public rotate(F)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->rotation:F

    return-object p0
.end method

.method public bridge synthetic rotation(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRectangle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->rotation(F)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;

    move-result-object p1

    return-object p1
.end method

.method public rotation(F)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->rotation:F

    return-object p0
.end method

.method public bridge synthetic size(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRectangle;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->size(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;

    move-result-object p1

    return-object p1
.end method

.method public size(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->width:F

    iput p2, p0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->height:F

    return-object p0
.end method
