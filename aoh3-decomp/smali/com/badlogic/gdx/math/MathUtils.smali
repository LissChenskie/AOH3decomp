.class public final Lcom/badlogic/gdx/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/MathUtils$Sin;
    }
.end annotation


# static fields
.field private static final BIG_ENOUGH_CEIL:D = 16384.999999999996

.field private static final BIG_ENOUGH_FLOOR:D = 16384.0

.field private static final BIG_ENOUGH_INT:I = 0x4000

.field private static final BIG_ENOUGH_ROUND:D = 16384.5

.field private static final CEIL:D = 0.9999999

.field public static final E:F = 2.7182817f

.field public static final FLOAT_ROUNDING_ERROR:F = 1.0E-6f

.field public static final HALF_PI:F = 1.5707964f

.field public static final PI:F = 3.1415927f

.field public static final PI2:F = 6.2831855f

.field private static final SIN_BITS:I = 0xe

.field private static final SIN_COUNT:I = 0x4000

.field private static final SIN_MASK:I = 0x3fff

.field private static final degFull:F = 360.0f

.field public static final degRad:F = 0.017453292f

.field private static final degToIndex:F = 45.511112f

.field public static final degreesToRadians:F = 0.017453292f

.field public static final nanoToSec:F = 1.0E-9f

.field public static final radDeg:F = 57.295776f

.field private static final radFull:F = 6.2831855f

.field private static final radToIndex:F = 2607.5945f

.field public static final radiansToDegrees:F = 57.295776f

.field public static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/RandomXS128;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acos(F)F
    .locals 9

    mul-float v0, p0, p0

    mul-float v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    const v3, 0x3c996e30

    const v4, 0x3d981627

    const v5, 0x3e593484

    const v6, 0x3fc90da4

    const/high16 v7, 0x3f800000    # 1.0f

    if-ltz v2, :cond_0

    sub-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr p0, v5

    sub-float/2addr v6, p0

    mul-float/2addr v0, v4

    add-float/2addr v6, v0

    mul-float/2addr v1, v3

    sub-float/2addr v6, v1

    mul-float/2addr v2, v6

    return v2

    :cond_0
    add-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr p0, v5

    add-float/2addr p0, v6

    mul-float/2addr v0, v4

    add-float/2addr p0, v0

    mul-float/2addr v1, v3

    add-float/2addr p0, v1

    mul-float/2addr v2, p0

    const p0, 0x40490fdb    # (float)Math.PI

    sub-float/2addr p0, v2

    return p0
.end method

.method public static acosDeg(F)F
    .locals 9

    mul-float v0, p0, p0

    mul-float v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    const v3, 0x3f895ba9

    const v4, 0x408827aa

    const v5, 0x414273c0

    const v6, 0x42b3fe05    # 89.99613f

    const/high16 v7, 0x3f800000    # 1.0f

    if-ltz v2, :cond_0

    sub-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr p0, v5

    sub-float/2addr v6, p0

    mul-float/2addr v0, v4

    add-float/2addr v6, v0

    mul-float/2addr v1, v3

    sub-float/2addr v6, v1

    mul-float/2addr v2, v6

    return v2

    :cond_0
    add-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr p0, v5

    add-float/2addr p0, v6

    mul-float/2addr v0, v4

    add-float/2addr p0, v0

    mul-float/2addr v1, v3

    add-float/2addr p0, v1

    mul-float/2addr v2, p0

    const/high16 p0, 0x43340000    # 180.0f

    sub-float/2addr p0, v2

    return p0
.end method

.method public static asin(F)F
    .locals 9

    mul-float v0, p0, p0

    mul-float v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    const v3, 0x3c996e30

    const v4, 0x3d981627

    const v5, 0x3e593484

    const v6, 0x3fc90da4

    const/high16 v7, 0x3f800000    # 1.0f

    if-ltz v2, :cond_0

    sub-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr p0, v5

    sub-float/2addr v6, p0

    mul-float/2addr v0, v4

    add-float/2addr v6, v0

    mul-float/2addr v1, v3

    sub-float/2addr v6, v1

    mul-float/2addr v2, v6

    const p0, 0x3fc90fdb

    sub-float/2addr p0, v2

    return p0

    :cond_0
    add-float/2addr v7, p0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr p0, v5

    add-float/2addr p0, v6

    mul-float/2addr v0, v4

    add-float/2addr p0, v0

    mul-float/2addr v1, v3

    add-float/2addr p0, v1

    mul-float/2addr v2, p0

    const p0, -0x4036f025

    add-float/2addr v2, p0

    return v2
.end method

.method public static asinDeg(F)F
    .locals 10

    mul-float v0, p0, p0

    mul-float v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    const/high16 v3, 0x42b40000    # 90.0f

    const v4, 0x3f895baa

    const v5, 0x408827aa

    const v6, 0x414273c1

    const v7, 0x42b3fe05    # 89.99613f

    const/high16 v8, 0x3f800000    # 1.0f

    if-ltz v2, :cond_0

    sub-float/2addr v8, p0

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float/2addr p0, v6

    sub-float/2addr v7, p0

    mul-float/2addr v0, v5

    add-float/2addr v7, v0

    mul-float/2addr v1, v4

    sub-float/2addr v7, v1

    mul-float/2addr v2, v7

    sub-float/2addr v3, v2

    return v3

    :cond_0
    add-float/2addr v8, p0

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float/2addr p0, v6

    add-float/2addr p0, v7

    mul-float/2addr v0, v5

    add-float/2addr p0, v0

    mul-float/2addr v1, v4

    add-float/2addr p0, v1

    mul-float/2addr v2, p0

    sub-float/2addr v2, v3

    return v2
.end method

.method public static atan(F)F
    .locals 14

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v2

    add-double/2addr v0, v2

    div-double/2addr v4, v0

    mul-double v0, v4, v4

    mul-double v2, v4, v0

    mul-double v6, v2, v0

    mul-double v8, v6, v0

    mul-double v10, v8, v0

    mul-double/2addr v0, v10

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    const-wide v12, 0x3fefffd04f8e32b3L    # 0.99997726

    mul-double/2addr v4, v12

    const-wide v12, 0x3fd549b3f3620ce5L    # 0.33262347

    mul-double/2addr v2, v12

    sub-double/2addr v4, v2

    const-wide v2, 0x3fc8c6083786ffe4L    # 0.19354346

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    const-wide v2, 0x3fbdce8b68d454d6L    # 0.11643287

    mul-double/2addr v8, v2

    sub-double/2addr v4, v8

    const-wide v2, 0x3faaf5603eda0570L    # 0.05265332

    mul-double/2addr v10, v2

    add-double/2addr v4, v10

    const-wide v2, 0x3f880148d55be787L    # 0.0117212

    mul-double/2addr v0, v2

    sub-double/2addr v4, v0

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v4, v0

    double-to-float v0, v4

    mul-float/2addr p0, v0

    return p0
.end method

.method public static atan2(FF)F
    .locals 3

    div-float v0, p0, p1

    cmpl-float v1, v0, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    sub-float v1, v0, v0

    cmpl-float v1, v1, v1

    if-eqz v1, :cond_2

    move p1, v2

    :cond_2
    :goto_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_3

    float-to-double p0, v0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/MathUtils;->atanUnchecked(D)F

    move-result p0

    return p0

    :cond_3
    cmpg-float v1, p1, v2

    if-gez v1, :cond_5

    cmpl-float p0, p0, v2

    const p1, 0x40490fdb    # (float)Math.PI

    if-ltz p0, :cond_4

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->atanUnchecked(D)F

    move-result p0

    add-float/2addr p0, p1

    return p0

    :cond_4
    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->atanUnchecked(D)F

    move-result p0

    sub-float/2addr p0, p1

    return p0

    :cond_5
    cmpl-float v0, p0, v2

    const v1, 0x3fc90fdb

    if-lez v0, :cond_6

    add-float/2addr p1, v1

    return p1

    :cond_6
    cmpg-float v0, p0, v2

    if-gez v0, :cond_7

    sub-float/2addr p1, v1

    return p1

    :cond_7
    add-float/2addr p1, p0

    return p1
.end method

.method public static atan2Deg(FF)F
    .locals 3

    div-float v0, p0, p1

    cmpl-float v1, v0, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    sub-float v1, v0, v0

    cmpl-float v1, v1, v1

    if-eqz v1, :cond_2

    move p1, v2

    :cond_2
    :goto_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_3

    float-to-double p0, v0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/MathUtils;->atanUncheckedDeg(D)D

    move-result-wide p0

    :goto_1
    double-to-float p0, p0

    return p0

    :cond_3
    cmpg-float v1, p1, v2

    if-gez v1, :cond_5

    cmpl-float p0, p0, v2

    const-wide v1, 0x4066800000000000L    # 180.0

    if-ltz p0, :cond_4

    float-to-double p0, v0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/MathUtils;->atanUncheckedDeg(D)D

    move-result-wide p0

    add-double/2addr p0, v1

    goto :goto_1

    :cond_4
    float-to-double p0, v0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/MathUtils;->atanUncheckedDeg(D)D

    move-result-wide p0

    sub-double/2addr p0, v1

    goto :goto_1

    :cond_5
    cmpl-float v0, p0, v2

    const/high16 v1, 0x42b40000    # 90.0f

    if-lez v0, :cond_6

    add-float/2addr p1, v1

    return p1

    :cond_6
    cmpg-float v0, p0, v2

    if-gez v0, :cond_7

    sub-float/2addr p1, v1

    return p1

    :cond_7
    add-float/2addr p1, p0

    return p1
.end method

.method public static atan2Deg360(FF)F
    .locals 3

    div-float v0, p0, p1

    cmpl-float v1, v0, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    sub-float v1, v0, v0

    cmpl-float v1, v1, v1

    if-eqz v1, :cond_2

    move p1, v2

    :cond_2
    :goto_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_4

    cmpl-float p0, p0, v2

    if-ltz p0, :cond_3

    float-to-double p0, v0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/MathUtils;->atanUncheckedDeg(D)D

    move-result-wide p0

    :goto_1
    double-to-float p0, p0

    return p0

    :cond_3
    float-to-double p0, v0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/MathUtils;->atanUncheckedDeg(D)D

    move-result-wide p0

    const-wide v0, 0x4076800000000000L    # 360.0

    :goto_2
    add-double/2addr p0, v0

    goto :goto_1

    :cond_4
    cmpg-float v1, p1, v2

    if-gez v1, :cond_5

    float-to-double p0, v0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/MathUtils;->atanUncheckedDeg(D)D

    move-result-wide p0

    const-wide v0, 0x4066800000000000L    # 180.0

    goto :goto_2

    :cond_5
    cmpl-float v0, p0, v2

    if-lez v0, :cond_6

    const/high16 p0, 0x42b40000    # 90.0f

    :goto_3
    add-float/2addr p1, p0

    return p1

    :cond_6
    cmpg-float v0, p0, v2

    if-gez v0, :cond_7

    const/high16 p0, 0x43870000    # 270.0f

    goto :goto_3

    :cond_7
    add-float/2addr p1, p0

    return p1
.end method

.method public static atanDeg(F)F
    .locals 16

    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v2

    add-double/2addr v0, v2

    div-double/2addr v4, v0

    mul-double v0, v4, v4

    mul-double v2, v4, v0

    mul-double v6, v2, v0

    mul-double v8, v6, v0

    mul-double v10, v8, v0

    mul-double/2addr v0, v10

    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->signum(F)F

    move-result v12

    float-to-double v12, v12

    const-wide v14, 0x404ca5b168d25f28L    # 57.2944766070562

    mul-double/2addr v4, v14

    const-wide v14, 0x40330ed3e9182561L    # 19.05792099799635

    mul-double/2addr v2, v14

    sub-double/2addr v4, v2

    const-wide v2, 0x40262daeb0db0f40L    # 11.089223410359068

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    const-wide v2, 0x401aaf37ff217eb5L    # 6.6711120475953765

    mul-double/2addr v8, v2

    sub-double/2addr v4, v8

    const-wide v2, 0x4008226edc73f1c7L    # 3.016813013351768

    mul-double/2addr v10, v2

    add-double/2addr v4, v10

    const-wide v2, 0x3fe57d8b76dd27f8L    # 0.6715752908287405

    mul-double/2addr v0, v2

    sub-double/2addr v4, v0

    const-wide v0, 0x4046800000000000L    # 45.0

    add-double/2addr v4, v0

    mul-double/2addr v12, v4

    double-to-float v0, v12

    return v0
.end method

.method public static atanUnchecked(D)F
    .locals 14

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v2

    add-double/2addr v0, v2

    div-double/2addr v4, v0

    mul-double v0, v4, v4

    mul-double v2, v4, v0

    mul-double v6, v2, v0

    mul-double v8, v6, v0

    mul-double v10, v8, v0

    mul-double/2addr v0, v10

    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide p0

    const-wide v12, 0x3fefffd04f8e32b3L    # 0.99997726

    mul-double/2addr v4, v12

    const-wide v12, 0x3fd549b3f3620ce5L    # 0.33262347

    mul-double/2addr v2, v12

    sub-double/2addr v4, v2

    const-wide v2, 0x3fc8c6083786ffe4L    # 0.19354346

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    const-wide v2, 0x3fbdce8b68d454d6L    # 0.11643287

    mul-double/2addr v8, v2

    sub-double/2addr v4, v8

    const-wide v2, 0x3faaf5603eda0570L    # 0.05265332

    mul-double/2addr v10, v2

    add-double/2addr v4, v10

    const-wide v2, 0x3f880148d55be787L    # 0.0117212

    mul-double/2addr v0, v2

    sub-double/2addr v4, v0

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v4, v0

    mul-double/2addr p0, v4

    double-to-float p0, p0

    return p0
.end method

.method public static atanUncheckedDeg(D)D
    .locals 14

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v2

    add-double/2addr v0, v2

    div-double/2addr v4, v0

    mul-double v0, v4, v4

    mul-double v2, v4, v0

    mul-double v6, v2, v0

    mul-double v8, v6, v0

    mul-double v10, v8, v0

    mul-double/2addr v0, v10

    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide p0

    const-wide v12, 0x404ca5b168d25f28L    # 57.2944766070562

    mul-double/2addr v4, v12

    const-wide v12, 0x40330ed3e9182561L    # 19.05792099799635

    mul-double/2addr v2, v12

    sub-double/2addr v4, v2

    const-wide v2, 0x40262daeb0db0f40L    # 11.089223410359068

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    const-wide v2, 0x401aaf37ff217eb5L    # 6.6711120475953765

    mul-double/2addr v8, v2

    sub-double/2addr v4, v8

    const-wide v2, 0x4008226edc73f1c7L    # 3.016813013351768

    mul-double/2addr v10, v2

    add-double/2addr v4, v10

    const-wide v2, 0x3fe57d8b76dd27f8L    # 0.6715752908287405

    mul-double/2addr v0, v2

    sub-double/2addr v4, v0

    const-wide v0, 0x4046800000000000L    # 45.0

    add-double/2addr v4, v0

    mul-double/2addr p0, v4

    return-wide p0
.end method

.method public static ceil(F)I
    .locals 4

    const-wide/high16 v0, 0x40d0000000000000L    # 16384.0

    float-to-double v2, p0

    sub-double/2addr v0, v2

    double-to-int p0, v0

    rsub-int p0, p0, 0x4000

    return p0
.end method

.method public static ceilPositive(F)I
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x3fefffffca501acbL    # 0.9999999

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public static clamp(DDD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static clamp(JJJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmp-long p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0
.end method

.method public static clamp(SSS)S
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static cos(F)F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x3fc90fdb

    add-float/2addr p0, v1

    const v1, 0x4522f983

    mul-float/2addr p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

.method public static cosDeg(F)F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr p0, v1

    const v1, 0x42360b61

    mul-float/2addr p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

.method public static floor(F)I
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0000000000000L    # 16384.0

    add-double/2addr v0, v2

    double-to-int p0, v0

    add-int/lit16 p0, p0, -0x4000

    return p0
.end method

.method public static floorPositive(F)I
    .locals 0

    float-to-int p0, p0

    return p0
.end method

.method public static isEqual(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEqual(FFF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1

    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isZero(F)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x358637bd    # 1.0E-6f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isZero(FF)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lerp(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static lerpAngle(FFF)F
    .locals 2

    sub-float/2addr p1, p0

    const v0, 0x40c90fdb

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    const v1, 0x40490fdb    # (float)Math.PI

    add-float/2addr p1, v1

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    rem-float/2addr p0, v0

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    return p0
.end method

.method public static lerpAngleDeg(FFF)F
    .locals 2

    sub-float/2addr p1, p0

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr p1, v1

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    rem-float/2addr p0, v0

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    return p0
.end method

.method public static log(FF)F
    .locals 2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static log2(F)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Lcom/badlogic/gdx/math/MathUtils;->log(FF)F

    move-result p0

    return p0
.end method

.method public static map(FFFFF)F
    .locals 0

    sub-float/2addr p4, p0

    sub-float/2addr p3, p2

    mul-float/2addr p4, p3

    sub-float/2addr p1, p0

    div-float/2addr p4, p1

    add-float/2addr p2, p4

    return p2
.end method

.method public static nextPowerOfTwo(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v1, p0, 0x1

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x2

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x4

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x8

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x10

    or-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method public static norm(FFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method public static random()F
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static random(F)F
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static random(FF)F
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    add-float/2addr p0, v0

    return p0
.end method

.method public static random(I)I
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public static random(II)I
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static random(J)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/badlogic/gdx/math/MathUtils;->random(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static random(JJ)J
    .locals 9

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    cmp-long v2, p2, p0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, p0

    move-wide p0, p2

    move-wide p2, v7

    :goto_0
    sub-long/2addr p0, p2

    const-wide/16 v2, 0x1

    add-long/2addr p0, v2

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    and-long/2addr v2, p0

    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    ushr-long/2addr p0, v6

    mul-long/2addr v2, v0

    ushr-long/2addr v2, v6

    add-long/2addr p2, v2

    mul-long/2addr v4, p0

    ushr-long v2, v4, v6

    add-long/2addr p2, v2

    mul-long/2addr v0, p0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method public static randomBoolean()Z
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static randomBoolean(F)Z
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static randomSign()I
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1f

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static randomTriangular()F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static randomTriangular(F)F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static randomTriangular(FF)F
    .locals 2

    add-float v0, p0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/MathUtils;->randomTriangular(FFF)F

    move-result p0

    return p0
.end method

.method public static randomTriangular(FFF)F
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    sub-float v2, p2, p0

    div-float v3, v2, v1

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    add-float/2addr p0, p1

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    mul-float/2addr p0, v1

    sub-float p2, p1, p2

    mul-float/2addr p0, p2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method public static round(F)I
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x40d0002000000000L    # 16384.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    add-int/lit16 p0, p0, -0x4000

    return p0
.end method

.method public static roundPositive(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static sin(F)F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x4522f983

    mul-float/2addr p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

.method public static sinDeg(F)F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x42360b61

    mul-float/2addr p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

.method public static tan(F)F
    .locals 6

    const v0, 0x40490fdb    # (float)Math.PI

    div-float/2addr p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float p0, v2

    sub-float/2addr p0, v1

    mul-float/2addr p0, v0

    mul-float v0, p0, p0

    mul-float v1, v0, v0

    const v2, 0x3a8ab356

    mul-float/2addr v2, v1

    const v3, 0x3de38e39

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float/2addr p0, v2

    const v2, 0x3c820821

    mul-float/2addr v1, v2

    const v2, 0x3ee38e39

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    add-float/2addr v1, v3

    div-float/2addr p0, v1

    return p0
.end method

.method public static tanDeg(F)F
    .locals 5

    const v0, 0x3bb60b61

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float p0, v1

    sub-float/2addr p0, v0

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p0, v0

    mul-float v0, p0, p0

    mul-float v1, v0, v0

    const v2, 0x3a8ab356

    mul-float/2addr v2, v1

    const v3, 0x3de38e39

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float/2addr p0, v2

    const v2, 0x3c820821

    mul-float/2addr v1, v2

    const v2, 0x3ee38e39

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    add-float/2addr v1, v3

    div-float/2addr p0, v1

    return p0
.end method
