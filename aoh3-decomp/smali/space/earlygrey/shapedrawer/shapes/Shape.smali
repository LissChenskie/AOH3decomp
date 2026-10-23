.class public interface abstract Lspace/earlygrey/shapedrawer/shapes/Shape;
.super Ljava/lang/Object;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRectangle;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$Arc;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$Sector;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRegularPolygon;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$PolyLine;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedPolygon;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$Line;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedEllipse;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$FilledEllipse;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedCircle;,
        Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lspace/earlygrey/shapedrawer/shapes/Shape;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract color(Lcom/badlogic/gdx/graphics/Color;)Lspace/earlygrey/shapedrawer/shapes/Shape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract draw()V
.end method
