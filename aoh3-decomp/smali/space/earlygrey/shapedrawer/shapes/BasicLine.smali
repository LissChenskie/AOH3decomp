.class public Lspace/earlygrey/shapedrawer/shapes/BasicLine;
.super Lspace/earlygrey/shapedrawer/shapes/BasicShape;
.source "BasicLine.java"

# interfaces
.implements Lspace/earlygrey/shapedrawer/shapes/Shape$Line;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspace/earlygrey/shapedrawer/shapes/BasicShape<",
        "Lspace/earlygrey/shapedrawer/shapes/BasicLine;",
        ">;",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$Line;"
    }
.end annotation


# instance fields
.field private endColor:F

.field private from:Lcom/badlogic/gdx/math/Vector2;

.field snap:Z

.field private startColor:F

.field private to:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method protected constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 0

    invoke-direct {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicShape;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->from:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->to:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->startColor(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->endColor(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    return-object p0
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/Shape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method

.method public draw()V
    .locals 9

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->from:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->from:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->to:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->to:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->lineWidth:Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v5

    iget-boolean v6, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->snap:Z

    iget v7, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->startColor:F

    iget v8, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->endColor:F

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFFFZFF)V

    return-void
.end method

.method public endColor(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->endColor:F

    return-object p0
.end method

.method public bridge synthetic endColor(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/Shape$Line;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->endColor(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method

.method public from(FF)Lspace/earlygrey/shapedrawer/shapes/BasicLine;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->from:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public from(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->from:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public bridge synthetic from(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$Line;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->from(FF)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic from(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$Line;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->from(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method

.method public joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;
    .locals 0

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    return-object p0
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/Shape$Line;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method

.method public lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicLine;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->setLineWidth(F)V

    return-object p0
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/Shape$Line;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method

.method reset(Z)V
    .locals 0

    invoke-super {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->reset(Z)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->from:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->to:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getPackedColor()F

    move-result p1

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->startColor:F

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getPackedColor()F

    move-result p1

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->endColor:F

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->isDefaultSnap()Z

    move-result p1

    iput-boolean p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->snap:Z

    return-void
.end method

.method public snap(Z)Lspace/earlygrey/shapedrawer/shapes/BasicLine;
    .locals 0

    iput-boolean p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->snap:Z

    return-object p0
.end method

.method public bridge synthetic snap(Z)Lspace/earlygrey/shapedrawer/shapes/Shape$Line;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->snap(Z)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method

.method public startColor(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->startColor:F

    return-object p0
.end method

.method public bridge synthetic startColor(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/Shape$Line;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->startColor(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method

.method public to(FF)Lspace/earlygrey/shapedrawer/shapes/BasicLine;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->to:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public to(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->to:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public bridge synthetic to(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$Line;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->to(FF)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic to(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$Line;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->to(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    move-result-object p1

    return-object p1
.end method
