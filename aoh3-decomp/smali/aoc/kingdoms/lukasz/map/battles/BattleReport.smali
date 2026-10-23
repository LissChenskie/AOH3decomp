.class public Laoc/kingdoms/lukasz/map/battles/BattleReport;
.super Ljava/lang/Object;
.source "BattleReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;
    }
.end annotation


# instance fields
.field public civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

.field public civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

.field public fWarScore:F

.field public iProvinceID:I

.field public iTurnID:I

.field public key:Ljava/lang/String;

.field public leftSideWon:Z

.field public playerWon:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IFZZILaoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->key:Ljava/lang/String;

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->iProvinceID:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->fWarScore:F

    iput-boolean p4, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->leftSideWon:Z

    iput-boolean p5, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->playerWon:Z

    iput-object p7, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iput-object p8, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iput p6, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->iTurnID:I

    return-void
.end method
