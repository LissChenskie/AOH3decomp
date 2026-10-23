.class Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "GameThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateNewMonth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$1;->this$0:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->buildCivilizationRanking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
