.class public Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;
.super Ljava/lang/Object;
.source "MercenariesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/MercenariesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BestArmy"
.end annotation


# instance fields
.field public iArmyID:I

.field public iUnitID:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;->iUnitID:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;->iArmyID:I

    return-void
.end method
