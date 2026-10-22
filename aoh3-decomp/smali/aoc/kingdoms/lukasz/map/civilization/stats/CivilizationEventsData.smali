.class public Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;
.super Ljava/lang/Object;
.source "CivilizationEventsData.java"


# instance fields
.field public d:I

.field public e:I

.field public g:I

.field public m:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    return-void
.end method


# virtual methods
.method public addDevelopedInfrastructure(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    return-void
.end method

.method public addIncreasedGrowthRate(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    return-void
.end method

.method public addIncreasedManpower(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    return-void
.end method

.method public addIncreasedTaxEfficiency(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    return-void
.end method

.method public addInvestedInEconomy(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    return-void
.end method

.method public getDevelopedInfrastructure()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    return v0
.end method

.method public getIncreasedGrowthRate()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    return v0
.end method

.method public getIncreasedManpower()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    return v0
.end method

.method public getIncreasedTaxEfficiency()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    return v0
.end method

.method public getInvestedInEconomy()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    return v0
.end method

.method public setDevelopedInfrastructure(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    return-void
.end method

.method public setIncreasedGrowthRate(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    return-void
.end method

.method public setIncreasedManpower(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    return-void
.end method

.method public setIncreasedTaxEfficiency(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    return-void
.end method

.method public setInvestedInEconomy(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    return-void
.end method
