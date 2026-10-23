.class public Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;
.super Ljava/lang/Object;
.source "BattleReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/battles/BattleReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CivReport"
.end annotation


# instance fields
.field public iCasualties:I

.field public iCivID:I

.field public iRetreated:I

.field public iSoldiers:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCivID:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iSoldiers:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCasualties:I

    iput p4, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iRetreated:I

    return-void
.end method
