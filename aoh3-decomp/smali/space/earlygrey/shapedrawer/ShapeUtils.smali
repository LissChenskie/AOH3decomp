.class public Lspace/earlygrey/shapedrawer/ShapeUtils;
.super Ljava/lang/Object;
.source "ShapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspace/earlygrey/shapedrawer/ShapeUtils$ConstantLineWidth;,
        Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;
    }
.end annotation


# static fields
.field public static final EPSILON:F = 0.001f

.field public static final PI:F = 3.1415927f

.field public static final PI2:F = 6.2831855f

.field public static final PI_2:F = 1.5707964f

.field public static final PI_4:F = 0.7853982f

.field public static final SQRT2:F

.field public static final SQRT3:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lspace/earlygrey/shapedrawer/ShapeUtils;->SQRT2:F

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lspace/earlygrey/shapedrawer/ShapeUtils;->SQRT3:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static angleRad(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr p0, p1

    add-float/2addr v2, p0

    float-to-double p0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static ceil(FF)F
    .locals 2

    div-float/2addr p0, p1

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    float-to-double p0, p1

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static epsilonEquals(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static floor(FF)F
    .locals 2

    div-float/2addr p0, p1

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    float-to-double p0, p1

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static normaliseAngleToPositive(F)F
    .locals 1

    const v0, 0x40c90fdb

    rem-float/2addr p0, v0

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    return p0
.end method

.method static pathLength([F)F
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    aget v3, p0, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, p0, v4

    add-int/lit8 v5, v0, 0x2

    aget v6, p0, v5

    add-int/lit8 v0, v0, 0x3

    aget v0, p0, v0

    invoke-static {v3, v4, v6, v0}, Lcom/badlogic/gdx/math/Vector2;->dst(FFFF)F

    move-result v0

    add-float/2addr v1, v0

    move v0, v5

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static snap(FFF)F
    .locals 0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr p0, p2

    return p0
.end method
