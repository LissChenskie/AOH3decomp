.class public Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;
.super Ljava/lang/Object;
.source "ProvinceConstructedBuilding.java"


# instance fields
.field private b0:I

.field private b1:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->b0:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->b1:I

    return-void
.end method


# virtual methods
.method public getBuilding()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->b0:I

    return v0
.end method

.method public getBuildingID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->b1:I

    return v0
.end method

.method public setBuilding(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->b0:I

    return-void
.end method

.method public setBuildingID(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->b1:I

    return-void
.end method
