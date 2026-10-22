.class public Lspace/earlygrey/shapedrawer/shapes/BasicCircle;
.super Ljava/lang/Object;
.source "BasicCircle.java"

# interfaces
.implements Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedCircle;


# instance fields
.field private ellipse:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;


# direct methods
.method protected constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    invoke-direct {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->ellipse:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    return-void
.end method


# virtual methods
.method public centre(FF)Lspace/earlygrey/shapedrawer/shapes/BasicCircle;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->ellipse:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    invoke-virtual {v0, p1, p2}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->centre(FF)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    return-object p0
.end method

.method public centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicCircle;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->ellipse:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    return-object p0
.end method

.method public bridge synthetic centre(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->centre(FF)Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

    move-result-object p1

    return-object p1
.end method

.method public color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicCircle;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->ellipse:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    return-object p0
.end method

.method public bridge synthetic color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/Shape;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

    move-result-object p1

    return-object p1
.end method

.method public draw()V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->ellipse:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->draw()V

    return-void
.end method

.method public joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicCircle;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->ellipse:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    return-object p0
.end method

.method public bridge synthetic joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedCircle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

    move-result-object p1

    return-object p1
.end method

.method public lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicCircle;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->ellipse:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->setLineWidth(F)V

    return-object p0
.end method

.method public bridge synthetic lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedCircle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

    move-result-object p1

    return-object p1
.end method

.method public radius(F)Lspace/earlygrey/shapedrawer/shapes/BasicCircle;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->ellipse:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->radiusX(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->ellipse:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->radiusY(F)Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    return-object p0
.end method

.method public bridge synthetic radius(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle;
    .locals 0

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->radius(F)Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

    move-result-object p1

    return-object p1
.end method

.method reset(Z)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->ellipse:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->reset(Z)V

    return-void
.end method
