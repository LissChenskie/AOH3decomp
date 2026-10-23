.class public Laoc/kingdoms/lukasz/map/war/WarCivilization;
.super Ljava/lang/Object;
.source "WarCivilization.java"


# instance fields
.field public iCasualties:I

.field public iCivID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    return-void
.end method
