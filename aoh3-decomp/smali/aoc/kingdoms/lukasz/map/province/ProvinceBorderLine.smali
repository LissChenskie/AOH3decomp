.class public Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;
.super Ljava/lang/Object;
.source "ProvinceBorderLine.java"


# instance fields
.field private fAngle:F

.field private iPosX:I

.field private iPosY:I

.field private iWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->iPosX:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->iPosY:I

    sub-int v0, p3, p1

    mul-int/2addr v0, v0

    sub-int/2addr p2, p4

    mul-int p4, p2, p2

    add-int/2addr v0, p4

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    iput p4, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->iWidth:I

    int-to-double v0, p2

    neg-int p1, p1

    add-int/2addr p1, p3

    int-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, p3

    double-to-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->fAngle:F

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->fAngle:F

    return v0
.end method

.method public getPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->iPosX:I

    return v0
.end method

.method public getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->iPosY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->iWidth:I

    return v0
.end method
