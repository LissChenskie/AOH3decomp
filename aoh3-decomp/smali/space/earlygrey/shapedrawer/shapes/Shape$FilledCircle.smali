.class public interface abstract Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle;
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
    name = "FilledCircle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lspace/earlygrey/shapedrawer/shapes/Shape<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract centre(FF)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation
.end method

.method public abstract centre(Lcom/badlogic/gdx/math/Vector2;)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract radius(F)Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation
.end method
