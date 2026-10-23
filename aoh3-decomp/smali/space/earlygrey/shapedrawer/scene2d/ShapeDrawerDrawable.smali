.class public abstract Lspace/earlygrey/shapedrawer/scene2d/ShapeDrawerDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
.source "ShapeDrawerDrawable.java"


# instance fields
.field public transient shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/scene2d/ShapeDrawerDrawable;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 6

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/scene2d/ShapeDrawerDrawable;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/scene2d/ShapeDrawerDrawable;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lspace/earlygrey/shapedrawer/scene2d/ShapeDrawerDrawable;->drawShapes(Lspace/earlygrey/shapedrawer/ShapeDrawer;FFFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \"batch\" does not match \"shapeDrawer.batch\""

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "shapeDrawer must be defined before the Drawable can be drawn."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract drawShapes(Lspace/earlygrey/shapedrawer/ShapeDrawer;FFFF)V
.end method

.method public getShapeDrawer()Lspace/earlygrey/shapedrawer/ShapeDrawer;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/scene2d/ShapeDrawerDrawable;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    return-object v0
.end method

.method public setShapeDrawer(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 0

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/scene2d/ShapeDrawerDrawable;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    return-void
.end method
