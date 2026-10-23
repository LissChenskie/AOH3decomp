.class public Lspace/earlygrey/shapedrawer/DefaultSideEstimator;
.super Ljava/lang/Object;
.source "DefaultSideEstimator.java"

# interfaces
.implements Lspace/earlygrey/shapedrawer/SideEstimator;


# instance fields
.field protected maximumSides:I

.field protected minimumSides:I

.field protected sideMultiplier:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xfa0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x14

    invoke-direct {p0, v2, v0, v1}, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;->minimumSides:I

    iput p2, p0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;->maximumSides:I

    iput p3, p0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;->sideMultiplier:F

    return-void
.end method


# virtual methods
.method public estimateSidesRequired(FFF)I
    .locals 4

    mul-float v0, p2, p2

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x401921fb60000000L    # 6.2831854820251465

    mul-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr p1, v1

    div-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float/2addr v0, v0

    mul-float/2addr p2, p2

    div-float/2addr v0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    int-to-float p1, p1

    mul-float/2addr p2, p1

    iget p3, p0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;->sideMultiplier:F

    mul-float/2addr p2, p3

    div-float/2addr p2, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    iget p2, p0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;->minimumSides:I

    iget p3, p0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;->maximumSides:I

    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p1

    return p1
.end method

.method public getMaximumSides()I
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;->maximumSides:I

    return v0
.end method

.method public getMinimumSides()I
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;->minimumSides:I

    return v0
.end method

.method public getSideMultiplier()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;->sideMultiplier:F

    return v0
.end method

.method public setMaximumSides(I)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;->maximumSides:I

    return-void
.end method

.method public setMinimumSides(I)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;->minimumSides:I

    return-void
.end method

.method public setSideMultiplier(F)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/DefaultSideEstimator;->sideMultiplier:F

    return-void
.end method
