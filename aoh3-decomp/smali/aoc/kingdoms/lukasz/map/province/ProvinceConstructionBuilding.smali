.class public Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;
.super Ljava/lang/Object;
.source "ProvinceConstructionBuilding.java"


# instance fields
.field private building:I

.field private buildingID:I

.field private iConstructionTime:I

.field public iConstructionTimeLeft:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->building:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->buildingID:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTime:I

    iput p4, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTimeLeft:I

    return-void
.end method


# virtual methods
.method public getBuilding()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->building:I

    return v0
.end method

.method public getBuildingID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->buildingID:I

    return v0
.end method

.method public getConstructionTime()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTime:I

    return v0
.end method

.method public getConstructionTimeLeft()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTimeLeft:I

    return v0
.end method

.method public setBuilding(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->building:I

    return-void
.end method

.method public setBuildingID(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->buildingID:I

    return-void
.end method

.method public setConstructionTime(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTime:I

    return-void
.end method

.method public setConstructionTimeLeft(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTimeLeft:I

    return-void
.end method
