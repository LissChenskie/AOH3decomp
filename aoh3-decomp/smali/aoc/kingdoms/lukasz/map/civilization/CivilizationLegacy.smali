.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;
.super Ljava/lang/Object;
.source "CivilizationLegacy.java"


# instance fields
.field public id:I

.field public lvl:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    return-void
.end method
