.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;
.super Ljava/lang/Object;
.source "CivilizationGoldenAge.java"


# instance fields
.field private m:I

.field private p:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->p:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->m:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->s:I

    return-void
.end method


# virtual methods
.method public getGoldenAgeMilitary()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->m:I

    return v0
.end method

.method public getGoldenAgeProsperity()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->p:I

    return v0
.end method

.method public getGoldenAgeScience()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->s:I

    return v0
.end method

.method public setGoldenAgeMilitary(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->m:I

    return-void
.end method

.method public setGoldenAgeProsperity(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->p:I

    return-void
.end method

.method public setGoldenAgeScience(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->s:I

    return-void
.end method
