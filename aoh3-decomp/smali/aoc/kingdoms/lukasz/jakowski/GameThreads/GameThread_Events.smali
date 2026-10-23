.class public Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;
.super Ljava/lang/Thread;
.source "GameThread_Events.java"


# static fields
.field public static THREAD_TURN_ID:I


# instance fields
.field public iLastUpdateTurnID:I

.field public running:Z

.field public timeSleep:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->running:Z

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->iLastUpdateTurnID:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->running:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->timeSleep:J

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->iLastUpdateTurnID:I

    if-eq v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->THREAD_TURN_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->THREAD_TURN_ID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->runEvents(I)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->THREAD_TURN_ID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->runEvents_Global(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->updateEvents()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->iLastUpdateTurnID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->timeSleep:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
