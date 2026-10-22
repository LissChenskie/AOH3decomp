.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;
.super Ljava/lang/Object;
.source "ProvinceData2.java"


# instance fields
.field public d:F

.field public l:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->l:F

    return-void
.end method


# virtual methods
.method public getDevastation()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->d:F

    return v0
.end method

.method public getLoot()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->l:F

    return v0
.end method

.method public setDevastation(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->d:F

    return-void
.end method

.method public setLoot(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->l:F

    return-void
.end method
