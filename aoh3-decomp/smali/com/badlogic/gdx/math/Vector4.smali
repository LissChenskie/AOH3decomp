.class public Lcom/badlogic/gdx/math/Vector4;
.super Ljava/lang/Object;
.source "Vector4.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/badlogic/gdx/math/Vector<",
        "Lcom/badlogic/gdx/math/Vector4;",
        ">;"
    }
.end annotation


# static fields
.field public static final W:Lcom/badlogic/gdx/math/Vector4;

.field public static final X:Lcom/badlogic/gdx/math/Vector4;

.field public static final Y:Lcom/badlogic/gdx/math/Vector4;

.field public static final Z:Lcom/badlogic/gdx/math/Vector4;

.field public static final Zero:Lcom/badlogic/gdx/math/Vector4;

.field private static final serialVersionUID:J = -0x4adb96582b156f9cL


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/math/Vector4;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector4;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector4;->X:Lcom/badlogic/gdx/math/Vector4;

    new-instance v0, Lcom/badlogic/gdx/math/Vector4;

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/badlogic/gdx/math/Vector4;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector4;->Y:Lcom/badlogic/gdx/math/Vector4;

    new-instance v0, Lcom/badlogic/gdx/math/Vector4;

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/badlogic/gdx/math/Vector4;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector4;->Z:Lcom/badlogic/gdx/math/Vector4;

    new-instance v0, Lcom/badlogic/gdx/math/Vector4;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/math/Vector4;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector4;->W:Lcom/badlogic/gdx/math/Vector4;

    new-instance v0, Lcom/badlogic/gdx/math/Vector4;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector4;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector4;->Zero:Lcom/badlogic/gdx/math/Vector4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;FF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector4;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget p1, p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    return-void
.end method

.method public static dot(FFFFFFFF)F
    .locals 0

    mul-float/2addr p0, p4

    mul-float/2addr p1, p5

    add-float/2addr p0, p1

    mul-float/2addr p2, p6

    add-float/2addr p0, p2

    mul-float/2addr p3, p7

    add-float/2addr p0, p3

    return p0
.end method

.method public static dst(FFFFFFFF)F
    .locals 0

    sub-float/2addr p4, p0

    sub-float/2addr p5, p1

    sub-float/2addr p6, p2

    sub-float/2addr p7, p3

    mul-float/2addr p4, p4

    mul-float/2addr p5, p5

    add-float/2addr p4, p5

    mul-float/2addr p6, p6

    add-float/2addr p4, p6

    mul-float/2addr p7, p7

    add-float/2addr p4, p7

    float-to-double p0, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static dst2(FFFFFFFF)F
    .locals 0

    sub-float/2addr p4, p0

    sub-float/2addr p5, p1

    sub-float/2addr p6, p2

    sub-float/2addr p7, p3

    mul-float/2addr p4, p4

    mul-float/2addr p5, p5

    add-float/2addr p4, p5

    mul-float/2addr p6, p6

    add-float/2addr p4, p6

    mul-float/2addr p7, p7

    add-float/2addr p4, p7

    return p4
.end method

.method public static len(FFFF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    mul-float/2addr p3, p3

    add-float/2addr p0, p3

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static len2(FFFF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    mul-float/2addr p3, p3

    add-float/2addr p0, p3

    return p0
.end method


# virtual methods
.method public add(F)Lcom/badlogic/gdx/math/Vector4;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    add-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public add(FFFF)Lcom/badlogic/gdx/math/Vector4;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    add-float/2addr p1, p2

    iget p2, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    add-float/2addr p2, p3

    iget p3, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    add-float/2addr p3, p4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/badlogic/gdx/math/Vector4;)Lcom/badlogic/gdx/math/Vector4;
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Vector4;->add(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->add(Lcom/badlogic/gdx/math/Vector4;)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public clamp(FF)Lcom/badlogic/gdx/math/Vector4;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector4;->len2()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    mul-float/2addr p2, p2

    cmpl-float v1, v0, p2

    if-lez v1, :cond_1

    div-float/2addr p2, v0

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->scl(F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1

    :cond_1
    mul-float/2addr p1, p1

    cmpg-float p2, v0, p1

    if-gez p2, :cond_2

    div-float/2addr p1, v0

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->scl(F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p0
.end method

.method public bridge synthetic clamp(FF)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->clamp(FF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public cpy()Lcom/badlogic/gdx/math/Vector4;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector4;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Vector4;-><init>(Lcom/badlogic/gdx/math/Vector4;)V

    return-object v0
.end method

.method public bridge synthetic cpy()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector4;->cpy()Lcom/badlogic/gdx/math/Vector4;

    move-result-object v0

    return-object v0
.end method

.method public dot(FFFF)F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    mul-float/2addr p1, p3

    add-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    mul-float/2addr p1, p4

    add-float/2addr v0, p1

    return v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Vector4;)F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public bridge synthetic dot(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->dot(Lcom/badlogic/gdx/math/Vector4;)F

    move-result p1

    return p1
.end method

.method public dst(FFFF)F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    sub-float/2addr p4, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    mul-float/2addr p3, p3

    add-float/2addr p1, p3

    mul-float/2addr p4, p4

    add-float/2addr p1, p4

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public dst(Lcom/badlogic/gdx/math/Vector4;)F
    .locals 4

    iget v0, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    sub-float/2addr v2, v3

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    sub-float/2addr p1, v3

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public bridge synthetic dst(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->dst(Lcom/badlogic/gdx/math/Vector4;)F

    move-result p1

    return p1
.end method

.method public dst2(FFFF)F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    sub-float/2addr p4, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    mul-float/2addr p3, p3

    add-float/2addr p1, p3

    mul-float/2addr p4, p4

    add-float/2addr p1, p4

    return p1
.end method

.method public dst2(Lcom/badlogic/gdx/math/Vector4;)F
    .locals 4

    iget v0, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    sub-float/2addr v2, v3

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    sub-float/2addr p1, v3

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method public bridge synthetic dst2(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->dst2(Lcom/badlogic/gdx/math/Vector4;)F

    move-result p1

    return p1
.end method

.method public epsilonEquals(FFFF)Z
    .locals 6

    const v5, 0x358637bd    # 1.0E-6f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/Vector4;->epsilonEquals(FFFFF)Z

    move-result p1

    return p1
.end method

.method public epsilonEquals(FFFFF)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p5

    const/4 v0, 0x0

    if-lez p1, :cond_0

    return v0

    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p5

    if-lez p1, :cond_1

    return v0

    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p5

    if-lez p1, :cond_2

    return v0

    :cond_2
    iget p1, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    sub-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p5

    if-lez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector4;)Z
    .locals 1

    const v0, 0x358637bd    # 1.0E-6f

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/Vector4;->epsilonEquals(Lcom/badlogic/gdx/math/Vector4;F)Z

    move-result p1

    return p1
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector4;F)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_2

    return v0

    :cond_2
    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_3

    return v0

    :cond_3
    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic epsilonEquals(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->epsilonEquals(Lcom/badlogic/gdx/math/Vector4;F)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    invoke-static {p1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result p1

    if-eq v2, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public fromString(Ljava/lang/String;)Lcom/badlogic/gdx/math/Vector4;
    .locals 8

    const/16 v0, 0x2c

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    if-eq v4, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_0

    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed Vector4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasOppositeDirection(Lcom/badlogic/gdx/math/Vector4;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->dot(Lcom/badlogic/gdx/math/Vector4;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic hasOppositeDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector4;)Z

    move-result p1

    return p1
.end method

.method public hasSameDirection(Lcom/badlogic/gdx/math/Vector4;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->dot(Lcom/badlogic/gdx/math/Vector4;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic hasSameDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->hasSameDirection(Lcom/badlogic/gdx/math/Vector4;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public idt(Lcom/badlogic/gdx/math/Vector4;)Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public interpolate(Lcom/badlogic/gdx/math/Vector4;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector4;
    .locals 0

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->lerp(Lcom/badlogic/gdx/math/Vector4;F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic interpolate(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector4;->interpolate(Lcom/badlogic/gdx/math/Vector4;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector4;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->isOnLine(Lcom/badlogic/gdx/math/Vector4;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->hasSameDirection(Lcom/badlogic/gdx/math/Vector4;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector4;F)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->isOnLine(Lcom/badlogic/gdx/math/Vector4;F)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->hasSameDirection(Lcom/badlogic/gdx/math/Vector4;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->isCollinear(Lcom/badlogic/gdx/math/Vector4;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->isCollinear(Lcom/badlogic/gdx/math/Vector4;F)Z

    move-result p1

    return p1
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector4;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->isOnLine(Lcom/badlogic/gdx/math/Vector4;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector4;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector4;F)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->isOnLine(Lcom/badlogic/gdx/math/Vector4;F)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector4;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector4;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector4;F)Z

    move-result p1

    return p1
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector4;)Z
    .locals 1

    const v0, 0x358637bd    # 1.0E-6f

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/Vector4;->isOnLine(Lcom/badlogic/gdx/math/Vector4;F)Z

    move-result p1

    return p1
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector4;F)Z
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    invoke-static {v0, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    invoke-static {v0, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    move v4, v2

    move v0, v3

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    div-float/2addr v0, v4

    move v4, v1

    :goto_0
    iget v5, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    invoke-static {v5, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    invoke-static {v5, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v5

    if-nez v5, :cond_2

    return v2

    :cond_2
    move v5, v3

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    div-float/2addr v5, v6

    or-int/lit8 v4, v4, 0x2

    :goto_1
    iget v6, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    invoke-static {v6, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    invoke-static {v6, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v6

    if-nez v6, :cond_4

    return v2

    :cond_4
    move v6, v3

    goto :goto_2

    :cond_5
    iget v6, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v7, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    div-float/2addr v6, v7

    or-int/lit8 v4, v4, 0x4

    :goto_2
    iget v7, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    invoke-static {v7, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v7

    if-eqz v7, :cond_6

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_6
    iget v3, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    div-float/2addr v3, p1

    or-int/lit8 v4, v4, 0x8

    :cond_7
    packed-switch v4, :pswitch_data_0

    invoke-static {v0, v5, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {v0, v6, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {v0, v3, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_7

    :pswitch_0
    invoke-static {v5, v6, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v5, v3, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    return v1

    :pswitch_1
    invoke-static {v0, v6, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v0, v3, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_4
    return v1

    :pswitch_2
    invoke-static {v6, v3, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    return p1

    :pswitch_3
    invoke-static {v0, v5, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v0, v3, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    return v1

    :pswitch_4
    invoke-static {v5, v3, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    return p1

    :pswitch_5
    invoke-static {v0, v3, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    return p1

    :pswitch_6
    invoke-static {v0, v5, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {v0, v6, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    move v1, v2

    :goto_6
    return v1

    :pswitch_7
    invoke-static {v5, v6, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    return p1

    :pswitch_8
    invoke-static {v0, v6, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    return p1

    :pswitch_9
    invoke-static {v0, v5, p2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p1

    return p1

    :pswitch_a
    return v1

    :cond_c
    move v1, v2

    :goto_7
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->isOnLine(Lcom/badlogic/gdx/math/Vector4;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->isOnLine(Lcom/badlogic/gdx/math/Vector4;F)Z

    move-result p1

    return p1
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector4;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->dot(Lcom/badlogic/gdx/math/Vector4;)F

    move-result p1

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result p1

    return p1
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector4;F)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->dot(Lcom/badlogic/gdx/math/Vector4;)F

    move-result p1

    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->isPerpendicular(Lcom/badlogic/gdx/math/Vector4;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->isPerpendicular(Lcom/badlogic/gdx/math/Vector4;F)Z

    move-result p1

    return p1
.end method

.method public isUnit()Z
    .locals 1

    const v0, 0x3089705f    # 1.0E-9f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector4;->isUnit(F)Z

    move-result v0

    return v0
.end method

.method public isUnit(F)Z
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector4;->len2()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isZero()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero(F)Z
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector4;->len2()F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public len()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public len2()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Vector4;F)Lcom/badlogic/gdx/math/Vector4;
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    sub-float/2addr p1, v0

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    return-object p0
.end method

.method public bridge synthetic lerp(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->lerp(Lcom/badlogic/gdx/math/Vector4;F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public limit(F)Lcom/badlogic/gdx/math/Vector4;
    .locals 0

    mul-float/2addr p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->limit2(F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic limit(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->limit(F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public limit2(F)Lcom/badlogic/gdx/math/Vector4;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector4;->len2()F

    move-result v0

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->scl(F)Lcom/badlogic/gdx/math/Vector4;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic limit2(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->limit2(F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector4;F)Lcom/badlogic/gdx/math/Vector4;
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    return-object p0
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector4;Lcom/badlogic/gdx/math/Vector4;)Lcom/badlogic/gdx/math/Vector4;
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector4;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector4;->w:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    return-object p0
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->mulAdd(Lcom/badlogic/gdx/math/Vector4;F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    check-cast p2, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->mulAdd(Lcom/badlogic/gdx/math/Vector4;Lcom/badlogic/gdx/math/Vector4;)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public nor()Lcom/badlogic/gdx/math/Vector4;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector4;->len2()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector4;->scl(F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic nor()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector4;->nor()Lcom/badlogic/gdx/math/Vector4;

    move-result-object v0

    return-object v0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Vector4;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    mul-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public scl(FFFF)Lcom/badlogic/gdx/math/Vector4;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    mul-float/2addr p2, p3

    iget p3, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    mul-float/2addr p3, p4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector4;)Lcom/badlogic/gdx/math/Vector4;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    mul-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic scl(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->scl(F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic scl(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->scl(Lcom/badlogic/gdx/math/Vector4;)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public set(FFFF)Lcom/badlogic/gdx/math/Vector4;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    iput p2, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    iput p3, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    iput p4, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;FF)Lcom/badlogic/gdx/math/Vector4;
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector4;
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/badlogic/gdx/math/Vector4;)Lcom/badlogic/gdx/math/Vector4;
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public set([F)Lcom/badlogic/gdx/math/Vector4;
    .locals 4

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget p1, p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->set(Lcom/badlogic/gdx/math/Vector4;)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public setLength(F)Lcom/badlogic/gdx/math/Vector4;
    .locals 0

    mul-float/2addr p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->setLength2(F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLength(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->setLength(F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public setLength2(F)Lcom/badlogic/gdx/math/Vector4;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector4;->len2()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->scl(F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public bridge synthetic setLength2(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->setLength2(F)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public setToRandomDirection()Lcom/badlogic/gdx/math/Vector4;
    .locals 13

    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v3

    sub-float/2addr v3, v1

    mul-float/2addr v3, v2

    mul-float v4, v0, v0

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v5

    if-gez v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-eqz v7, :cond_0

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    const-wide/high16 v11, -0x4000000000000000L    # -2.0

    mul-double/2addr v9, v11

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v3

    sub-float/2addr v3, v1

    mul-float/2addr v3, v2

    mul-float v4, v0, v0

    mul-float v7, v3, v3

    add-float/2addr v4, v7

    cmpl-float v7, v4, v5

    if-gez v7, :cond_1

    cmpl-float v7, v4, v6

    if-eqz v7, :cond_1

    float-to-double v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v4, v11

    div-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector4;->nor()Lcom/badlogic/gdx/math/Vector4;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setToRandomDirection()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector4;->setToRandomDirection()Lcom/badlogic/gdx/math/Vector4;

    move-result-object v0

    return-object v0
.end method

.method public setZero()Lcom/badlogic/gdx/math/Vector4;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    return-object p0
.end method

.method public bridge synthetic setZero()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector4;->setZero()Lcom/badlogic/gdx/math/Vector4;

    move-result-object v0

    return-object v0
.end method

.method public sub(F)Lcom/badlogic/gdx/math/Vector4;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    sub-float/2addr v2, p1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    sub-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public sub(FFFF)Lcom/badlogic/gdx/math/Vector4;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    sub-float/2addr p2, p3

    iget p3, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    sub-float/2addr p3, p4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector4;->set(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public sub(Lcom/badlogic/gdx/math/Vector4;)Lcom/badlogic/gdx/math/Vector4;
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector4;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector4;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector4;->z:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector4;->w:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Vector4;->sub(FFFF)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector4;->sub(Lcom/badlogic/gdx/math/Vector4;)Lcom/badlogic/gdx/math/Vector4;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector4;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector4;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
