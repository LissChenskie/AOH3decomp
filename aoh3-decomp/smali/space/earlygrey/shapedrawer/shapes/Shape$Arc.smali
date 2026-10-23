.class public interface abstract Lspace/earlygrey/shapedrawer/shapes/Shape$Arc;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Lspace/earlygrey/shapedrawer/shapes/Shape$Sector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspace/earlygrey/shapedrawer/shapes/Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Arc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$Arc<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$Sector<",
        "Lspace/earlygrey/shapedrawer/shapes/Shape$Arc<",
        "TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract joinType(Lspace/earlygrey/shapedrawer/JoinType;)Lspace/earlygrey/shapedrawer/shapes/Shape$Arc;
.end method

.method public abstract lineWidth(F)Lspace/earlygrey/shapedrawer/shapes/Shape$Arc;
.end method
