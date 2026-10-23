.class public Laoc/kingdoms/lukasz/map/civilization/save/CivData3;
.super Ljava/lang/Object;
.source "CivData3.java"


# instance fields
.field public a:I

.field public c:F

.field public e:F

.field public t:F

.field public w:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->a:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->w:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->e:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->t:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->c:F

    return-void
.end method


# virtual methods
.method public getCorruption()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->c:F

    return v0
.end method

.method public getInflation()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->t:F

    return v0
.end method

.method public setCorruption(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->c:F

    return-void
.end method

.method public setInflation(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->t:F

    return-void
.end method
