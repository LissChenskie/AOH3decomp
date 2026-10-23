.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;
.super Ljava/lang/Object;
.source "ProvinceData7.java"


# instance fields
.field private g:F

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->g:F

    return-void
.end method


# virtual methods
.method public getIncreasedGrowthRate()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->g:F

    return v0
.end method

.method public getReligionID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->n:I

    return v0
.end method

.method public setIncreasedGrowthRate(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->g:F

    return-void
.end method

.method public setReligionID(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->n:I

    return-void
.end method
