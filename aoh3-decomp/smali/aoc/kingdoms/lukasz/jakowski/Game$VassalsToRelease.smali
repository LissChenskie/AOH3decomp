.class public Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VassalsToRelease"
.end annotation


# instance fields
.field public iCivID:I

.field public iNumOfProvinces:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iCivID:I

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iNumOfProvinces:I

    return-void
.end method
