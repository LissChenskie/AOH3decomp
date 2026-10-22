.class public interface abstract Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspace/earlygrey/shapedrawer/shapes/Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OutlinedTriangle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle<",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle<",
        "TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;
.end method

.method public abstract lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;
.end method
