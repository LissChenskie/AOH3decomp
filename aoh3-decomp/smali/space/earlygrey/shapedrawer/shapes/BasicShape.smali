.class public abstract Lspace/earlygrey/shapedrawer/shapes/BasicShape;
.super Ljava/lang/Object;
.source "BasicShape.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lspace/earlygrey/shapedrawer/shapes/BasicShape;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final CONSTANT_LINE_WIDTH:Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

.field color:F

.field final drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

.field filled:Z

.field joinType:Lspace/earlygrey/shapedrawer/JoinType;

.field lineWidth:Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;


# direct methods
.method constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    invoke-direct {v0}, Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;-><init>()V

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->CONSTANT_LINE_WIDTH:Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    return-void
.end method


# virtual methods
.method abstract color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")TT;"
        }
    .end annotation
.end method

.method draw(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->color:F

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(F)F

    move-result v0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    invoke-virtual {p1, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(F)F

    return-void
.end method

.method abstract joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lspace/earlygrey/shapedrawer/JoinType;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/BasicShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation
.end method

.method reset(Z)V
    .locals 1

    iput-boolean p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->filled:Z

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->CONSTANT_LINE_WIDTH:Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getDefaultLineWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;->width(F)Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    move-result-object p1

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->lineWidth:Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;

    sget-object p1, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getPackedColor()F

    move-result p1

    iput p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->color:F

    return-void
.end method

.method setLineWidth(F)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->CONSTANT_LINE_WIDTH:Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;->width(F)Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;

    move-result-object p1

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicShape;->lineWidth:Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;

    return-void
.end method
