.class public Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;
.super Ljava/lang/Object;
.source "CivilizationEventsData3.java"


# instance fields
.field public a:I

.field public p:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->w:I

    return-void
.end method


# virtual methods
.method public addConqueredProvinces(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    return-void
.end method

.method public addNumOfWars(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->w:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->w:I

    return-void
.end method

.method public addRecruitedAdvisors(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    return-void
.end method

.method public getConqueredProvinces()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    return v0
.end method

.method public getNumOfWars()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->w:I

    return v0
.end method

.method public getRecruitedAdvisors()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    return v0
.end method
