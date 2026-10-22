.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;
.super Ljava/lang/Object;
.source "ProvinceData9.java"


# instance fields
.field public e:I

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->s:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->e:I

    return-void
.end method


# virtual methods
.method public getColonizationGrowthRateExtra()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->e:I

    return v0
.end method

.method public getColonizationStartedTurnID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->s:I

    return v0
.end method

.method public setColonizationGrowthRateExtra(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->e:I

    return-void
.end method

.method public setColonizationStartedTurnID(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->s:I

    return-void
.end method
