.class public Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;
.super Ljava/lang/Object;
.source "ShapeUtils.java"

# interfaces
.implements Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspace/earlygrey/shapedrawer/ShapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstantLineWidth"
.end annotation


# instance fields
.field width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWidth(IF)F
    .locals 0

    iget p1, p0, Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;->width:F

    return p1
.end method

.method public width(F)Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;->width:F

    return-object p0
.end method
