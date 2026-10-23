.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
.super Ljava/lang/Object;
.source "SaveGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveDetails"
.end annotation


# instance fields
.field public AI_AGGRESSIVENESS:I

.field public AOC_MODE:Z

.field public DIFFICULTY:I

.field public ENABLE_CALL_VASSALS:Z

.field public FOG_OF_WAR:Z

.field public HOURS_PER_TURN:I

.field public SANDBOX:Z

.field public SCENARIO_EVENTS:Z

.field public SPECTATOR_MODE:Z

.field public iDay:I

.field public iMonth:I

.field public iTurnID:I

.field public iYear:I

.field public sCivTag:Ljava/lang/String;

.field public scenarioTAG:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->SCENARIO_EVENTS:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->AOC_MODE:Z

    const/16 v0, 0x18

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->HOURS_PER_TURN:I

    return-void
.end method
