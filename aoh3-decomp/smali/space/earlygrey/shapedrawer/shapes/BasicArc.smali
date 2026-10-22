.class public Lspace/earlygrey/shapedrawer/shapes/BasicArc;
.super Lspace/earlygrey/shapedrawer/shapes/BasicShape;
.source "BasicArc.java"

# interfaces
.implements Lspace/earlygrey/shapedrawer/shapes/Shape$Arc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspace/earlygrey/shapedrawer/shapes/BasicShape<",
        "Lspace/earlygrey/shapedrawer/shapes/BasicArc;",
        ">;",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$Arc;"
    }
.end annotation


# instance fields
.field centre:Lcom/badlogic/gdx/math/Vector2;

.field radians:F

.field radius:F

.field sides:I

.field startAngle:F


# direct methods
.method protected constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 0

    invoke-direct {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicShape;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->centre:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public centre(FF)Lspace/earlygrey/shapedrawer/shapes/BasicArc;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->centre:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicArc;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->centre:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public bridge synthetic centre(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$Sector;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->centre(FF)Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$Sector;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    move-result-object p1

    return-object p1
.end method

.method public color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicArc;
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->color:F

    return-object p0
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/Shape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    move-result-object p1

    return-object p1
.end method

.method public draw()V
    .locals 1

    iget-boolean v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->filled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicArc$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lspace/earlygrey/shapedrawer/shapes/BasicArc$$ExternalSyntheticLambda0;-><init>(Lspace/earlygrey/shapedrawer/shapes/BasicArc;)V

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->draw(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicArc$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lspace/earlygrey/shapedrawer/shapes/BasicArc$$ExternalSyntheticLambda1;-><init>(Lspace/earlygrey/shapedrawer/shapes/BasicArc;)V

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->draw(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicArc;
    .locals 0

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    return-object p0
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/Shape$Arc;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$draw$0$space-earlygrey-shapedrawer-shapes-BasicArc()V
    .locals 7

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->centre:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->centre:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->radius:F

    iget v4, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->startAngle:F

    iget v5, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->radians:F

    iget v6, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->sides:I

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->sector(FFFFFI)V

    return-void
.end method

.method synthetic lambda$draw$1$space-earlygrey-shapedrawer-shapes-BasicArc()V
    .locals 9

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->centre:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->centre:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->radius:F

    iget v4, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->startAngle:F

    iget v5, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->radians:F

    iget-object v6, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->lineWidth:Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v6

    iget-object v7, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    iget v8, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->sides:I

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->arc(FFFFFFLspace/earlygrey/shapedrawer/JoinType;I)V

    return-void
.end method

.method public lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicArc;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->setLineWidth(F)V

    return-object p0
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/Shape$Arc;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    move-result-object p1

    return-object p1
.end method

.method public radians(F)Lspace/earlygrey/shapedrawer/shapes/BasicArc;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->radians:F

    return-object p0
.end method

.method public bridge synthetic radians(F)Lspace/earlygrey/shapedrawer/shapes/Shape$Sector;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->radians(F)Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    move-result-object p1

    return-object p1
.end method

.method public radius(F)Lspace/earlygrey/shapedrawer/shapes/BasicArc;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->radius:F

    return-object p0
.end method

.method public bridge synthetic radius(F)Lspace/earlygrey/shapedrawer/shapes/Shape$Sector;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->radius(F)Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    move-result-object p1

    return-object p1
.end method

.method reset(Z)V
    .locals 0

    invoke-super {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->reset(Z)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->centre:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    const p1, 0x40490fdb    # (float)Math.PI

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->radians:F

    const/4 p1, 0x0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->startAngle:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->radius:F

    const/4 p1, 0x6

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->sides:I

    return-void
.end method

.method public sides(I)Lspace/earlygrey/shapedrawer/shapes/BasicArc;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->sides:I

    return-object p0
.end method

.method public bridge synthetic sides(I)Lspace/earlygrey/shapedrawer/shapes/Shape$Sector;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->sides(I)Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    move-result-object p1

    return-object p1
.end method

.method public startAngle(F)Lspace/earlygrey/shapedrawer/shapes/BasicArc;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->startAngle:F

    return-object p0
.end method

.method public bridge synthetic startAngle(F)Lspace/earlygrey/shapedrawer/shapes/Shape$Sector;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->startAngle(F)Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    move-result-object p1

    return-object p1
.end method
