.class public Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;
.super Ljava/lang/Object;
.source "CivilizationEventsData2.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public e:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->b:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->a:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->e:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->m:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->c:I

    return-void
.end method


# virtual methods
.method public addAdministrativeBuildingsConstructed(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->a:I

    return-void
.end method

.method public addBuildingsConstructed(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->b:I

    return-void
.end method

.method public addCapitalBuildingsConstructed(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->c:I

    return-void
.end method

.method public addEconomyBuildingsConstructed(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->e:I

    return-void
.end method

.method public addMilitaryBuildingsConstructed(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->m:I

    return-void
.end method

.method public getAdministrativeBuildingsConstructed()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->a:I

    return v0
.end method

.method public getBuildingsConstructed()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->b:I

    return v0
.end method

.method public getCapitalBuildingsConstructed()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->c:I

    return v0
.end method

.method public getEconomyBuildingsConstructed()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->e:I

    return v0
.end method

.method public getMilitaryBuildingsConstructed()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->m:I

    return v0
.end method
