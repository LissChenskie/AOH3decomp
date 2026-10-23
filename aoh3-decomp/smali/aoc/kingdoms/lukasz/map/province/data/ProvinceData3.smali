.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;
.super Ljava/lang/Object;
.source "ProvinceData3.java"


# instance fields
.field private m:F

.field private t:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->t:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->m:F

    return-void
.end method


# virtual methods
.method public getManpower()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->m:F

    return v0
.end method

.method public getTaxEfficiency()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->t:F

    return v0
.end method

.method public setManpower(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->m:F

    return-void
.end method

.method public setTaxEfficiency(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->t:F

    return-void
.end method
