.class Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;
.super Lspace/earlygrey/shapedrawer/shapes/BasicShape;
.source "BasicTriangle.java"

# interfaces
.implements Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspace/earlygrey/shapedrawer/shapes/BasicShape<",
        "Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;",
        ">;",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;"
    }
.end annotation


# instance fields
.field a:Lcom/badlogic/gdx/math/Vector2;

.field b:Lcom/badlogic/gdx/math/Vector2;

.field c:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 0

    invoke-direct {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicShape;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->a:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->b:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->c:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->a(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->a(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;

    move-result-object p1

    return-object p1
.end method

.method public a(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public a(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public bridge synthetic b(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->b(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->b(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;

    move-result-object p1

    return-object p1
.end method

.method public b(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public b(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public bridge synthetic c(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->c(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->c(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;

    move-result-object p1

    return-object p1
.end method

.method public c(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public c(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

    move-result-object p1

    return-object p1
.end method

.method public color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->color:F

    return-object p0
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/Shape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

    move-result-object p1

    return-object p1
.end method

.method public draw()V
    .locals 1

    iget-boolean v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->filled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle$$ExternalSyntheticLambda0;-><init>(Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;)V

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->draw(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle$$ExternalSyntheticLambda1;-><init>(Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;)V

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->draw(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

    move-result-object p1

    return-object p1
.end method

.method public joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;
    .locals 0

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    return-object p0
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$draw$0$space-earlygrey-shapedrawer-shapes-BasicTriangle()V
    .locals 4

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->a:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->b:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1, v2, v3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledTriangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method synthetic lambda$draw$1$space-earlygrey-shapedrawer-shapes-BasicTriangle()V
    .locals 7

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->a:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->b:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->c:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->lineWidth:Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;->getWidth(IF)F

    move-result v4

    iget-object v5, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    iget v6, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->color:F

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->triangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLspace/earlygrey/shapedrawer/JoinType;F)V

    return-void
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

    move-result-object p1

    return-object p1
.end method

.method public lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->setLineWidth(F)V

    return-object p0
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

    move-result-object p1

    return-object p1
.end method

.method reset(Z)V
    .locals 3

    invoke-super {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->reset(Z)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->a:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->b:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method
