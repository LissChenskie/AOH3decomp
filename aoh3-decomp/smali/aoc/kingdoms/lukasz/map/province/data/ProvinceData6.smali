.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;
.super Ljava/lang/Object;
.source "ProvinceData6.java"


# instance fields
.field public e:F

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->e:F

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->n:I

    return-void
.end method


# virtual methods
.method public getEconomy()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->e:F

    return v0
.end method

.method public getInfrastructure()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->n:I

    return v0
.end method

.method public setEconomy(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->e:F

    return-void
.end method

.method public setInfrastructure(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->n:I

    return-void
.end method
