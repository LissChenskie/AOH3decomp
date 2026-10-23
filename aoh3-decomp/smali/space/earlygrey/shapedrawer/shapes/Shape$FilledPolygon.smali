.class public interface abstract Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Lspace/earlygrey/shapedrawer/shapes/Shape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspace/earlygrey/shapedrawer/shapes/Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FilledPolygon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lspace/earlygrey/shapedrawer/shapes/Shape<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract addVertex(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation
.end method

.method public abstract addVertex(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract offset(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation
.end method

.method public abstract scale(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation
.end method

.method public abstract vertices(Lcom/badlogic/gdx/utils/FloatArray;)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/FloatArray;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract vertices(Ljava/lang/Iterable;)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">(",
            "Ljava/lang/Iterable<",
            "TV;>;)TT;"
        }
    .end annotation
.end method

.method public abstract vertices([F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)TT;"
        }
    .end annotation
.end method
